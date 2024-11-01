Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB5F9B8FD9
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A2110E9A5;
	Fri,  1 Nov 2024 10:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0B7010E9A0;
 Fri,  1 Nov 2024 10:58:04 +0000 (UTC)
Received: from 91-155-254-188.elisa-laajakaista.fi ([91.155.254.188]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t6pLs-00000001ENF-02ZX; Fri, 01 Nov 2024 12:58:01 +0200
Message-ID: <8026370f36407f12f7b12015d07d3271be26cc71.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Fri, 01 Nov 2024 12:57:58 +0200
In-Reply-To: <20241021222744.294371-2-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 01/13] drm/xe: Mimic i915 behavior for non-sleeping MMIO
 wait
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
> In upcoming display changes, we will modify the DMC wakelock MMIO
> waiting code to choose a non-sleeping variant implementation, because
> the wakelock is also taking in atomic context.
>=20
> While xe provides an explicit parameter (namely "atomic") to prevent
> xe_mmio_wait32() from sleeping, i915 does not and implements that
> behavior when slow_timeout_ms is zero.
>=20
> So, for now, let's mimic what i915 does to allow for display to use
> non-sleeping MMIO wait. In the future, we should come up with a better
> and explicit interface for this behavior in i915, at least while display
> code is not an independent entity with proper interfaces between xe and
> i915.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---

Makes sense.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Just one question/comment below.


>  .../gpu/drm/xe/compat-i915-headers/intel_uncore.h   | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/driv=
ers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> index 0382beb4035b..5a57f76c1760 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> @@ -117,10 +117,21 @@ __intel_wait_for_register(struct intel_uncore *unco=
re, i915_reg_t i915_reg,
>  			  unsigned int slow_timeout_ms, u32 *out_value)
>  {
>  	struct xe_reg reg =3D XE_REG(i915_mmio_reg_offset(i915_reg));
> +	bool atomic;
> +
> +	/*
> +	 * FIXME: We are trying to replicate the behavior from i915 here, in
> +	 * which sleep is not performed if slow_timeout_ms =3D=3D 0. This hack =
is
> +	 * necessary because of paths in display code that are executed in
> +	 * atomic context. Setting the atomic flag based on timeout values
> +	 * doesn't feel very robust. Ideally, we should have a proper interface
> +	 * for explicitly choosing non-sleeping behavior.

I think this is just a matter of semantics.  It would look nicer to
have a more intuitive interface, but I don't think the i915
implementation is any less robust per se.  If this behavior is
documented properly, I don't see it as a real issue.

--
Cheers,
Luca.

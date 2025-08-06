Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 794EFB1C226
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 10:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D3C10E3CA;
	Wed,  6 Aug 2025 08:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F57410E3CA;
 Wed,  6 Aug 2025 08:27:46 +0000 (UTC)
Received: from 91-155-254-205.elisa-laajakaista.fi ([91.155.254.205]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1ujZUt-00000009VFl-2m8s; Wed, 06 Aug 2025 11:27:44 +0300
Message-ID: <0ca49257031e62eff87221c4d9c9d08e3d4a973d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Wed, 06 Aug 2025 11:27:42 +0300
In-Reply-To: <2c74fa7f2b7d5ecf8247aa5bff05d104ad60cf9e.1753953530.git.jani.nikula@intel.com>
References: <cover.1753953530.git.jani.nikula@intel.com>
 <2c74fa7f2b7d5ecf8247aa5bff05d104ad60cf9e.1753953530.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 3/3] drm/i915/display: keep forward declarations together
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

On Thu, 2025-07-31 at 12:19 +0300, Jani Nikula wrote:
> Adhere to prevalent style.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_global_state.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers/=
gpu/drm/i915/display/intel_global_state.h
> index 4f304e2c47e0..e1efa530cc86 100644
> --- a/drivers/gpu/drm/i915/display/intel_global_state.h
> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
> @@ -11,6 +11,7 @@
> =20
>  struct intel_atomic_state;
>  struct intel_display;
> +struct intel_global_commit;
>  struct intel_global_obj;
>  struct intel_global_state;
> =20
> @@ -26,8 +27,6 @@ struct intel_global_obj {
>  	const struct intel_global_state_funcs *funcs;
>  };
> =20
> -struct intel_global_commit;
> -
>  struct intel_global_state {
>  	struct intel_global_obj *obj;
>  	struct intel_atomic_state *state;

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EC19B9322
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 15:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AD610E1F2;
	Fri,  1 Nov 2024 14:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8745C10E1F2;
 Fri,  1 Nov 2024 14:27:13 +0000 (UTC)
Received: from 91-155-254-188.elisa-laajakaista.fi ([91.155.254.188]
 helo=[192.168.100.133])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t6scJ-00000001Fba-3DMr; Fri, 01 Nov 2024 16:27:11 +0200
Message-ID: <1b9bcc81c5eada5cf7d3cc4610cee6ef9b69aac9.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Fri, 01 Nov 2024 16:27:10 +0200
In-Reply-To: <20241021222744.294371-14-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-14-gustavo.sousa@intel.com>
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
Subject: Re: [PATCH 13/13] drm/i915/xe3lpd: Use DMC wakelock by default
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
> Although Bspec doesn't explicitly mentions that, as of Xe3_LPD, using
> DMC wakelock is the officially recommended way of accessing registers
> that would be off during DC5/DC6 and the legacy method (where the DMC
> intercepts MMIO to wake up the hardware) is to be avoided.
>=20
> As such, update the driver to use the DMC wakelock by default starting
> with Xe3_LPD. Since the feature is somewhat new to the driver, also
> allow disabling it via a module parameter for debugging purposes.
>=20
> For that, make the existing parameter allow values -1 (per-chip
> default), 0 (disabled) and 1 (enabled), similarly to what is done for
> other parameters.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 6 +++++-
>  3 files changed, 8 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 024de8abcb1a..bf00e5f1f145 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -123,10 +123,10 @@ intel_display_param_named_unsafe(enable_psr2_sel_fe=
tch, bool, 0400,
>  	"(0=3Ddisabled, 1=3Denabled) "
>  	"Default: 1");
> =20
> -intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
> +intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>  	"Enable DMC wakelock "
>  	"(0=3Ddisabled, 1=3Denabled) "
> -	"Default: 0");
> +	"Default: -1 (use per-chip default)");

We're already explaining the possible values in the previous
parentheses, so maybe the -1 should also be explained there?

--
Cheers,
Luca.

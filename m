Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B8E9F8E53
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 09:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1E7C10E055;
	Fri, 20 Dec 2024 08:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C62110E055
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 08:55:05 +0000 (UTC)
Received: from 91-155-254-69.elisa-laajakaista.fi ([91.155.254.69]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tOYml-000000038g2-0rf8; Fri, 20 Dec 2024 10:55:03 +0200
Message-ID: <4c17b6ff17eabe467e0b1241b85d81b83a3182f6.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2024 10:55:02 +0200
In-Reply-To: <20241219130827.22830-7-ville.syrjala@linux.intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
 <20241219130827.22830-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 6/8] drm/i915/scaler: Pimp scaler debugs
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

On Thu, 2024-12-19 at 15:08 +0200, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Include the standard "[CRTC:...]" information in the scaler debugs
> to make life easier.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 25 +++++++++++++++--------
>  1 file changed, 16 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index cbc71e44fcbb..f6d76ef1a854 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -166,7 +166,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>  	if (DISPLAY_VER(display) >=3D 9 && crtc_state->hw.enable &&
>  	    need_scaler && adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
>  		drm_dbg_kms(display->drm,
> -			    "Pipe/Plane scaling not supported with IF-ID mode\n");
> +			    "[CRTC:%d:%s] scaling not supported with IF-ID mode\n",
> +			    crtc->base.base.id, crtc->base.name);

You're losing the "Pipe/Plane" string from this log, which could cause
issues if anyone is grepping for it in some scripts, but it seems
redundant to me anyway, so scripts (if any) should be fixed instead. ;)

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4857533B48
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC7E10E822;
	Wed, 25 May 2022 11:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E26A10E822
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476954; x=1685012954;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=wNKNqtJBEUPEFyJG76Z1astWPzC74qSNbcO2et0KEIs=;
 b=ZAOUGPtfMQw72xPxNBgpekPA43cR6yWn1OYmV6e5cNNjo3ULWCCBX0IP
 o7sxkBXG2vUr7a40l+6qkX6d1kAWNjX5JmDENwRRu+Efjql0dsVdIa5C8
 2Y+3fK2dO8fWv5dcyP+fScsbNSH2c68HiNmbHxQ6nKL1WIzMu+oftk5du
 pMkp9ef3Dw3zH45P/G4zPMgk/X9BxqRUKxahfDnsi+p5XQsApQO9SMmlq
 JutFHlHZ8xfvBujURr2pXiUlv5YUpge89T6s4yRojpe0X4HW/y0TTuXJ6
 NwzF77bTBajqH7sZhHYsSUWTcR9LNTDOYqeIDOyH2TX/3eIe42pSmMa2s A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="253659267"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="253659267"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:09:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="601854562"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:09:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-20-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-20-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:09:09 +0300
Message-ID: <87r14huawa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 19/26] drm/i915: Skip
 intel_modeset_pipe_config_late() if the pipe is not enabled
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> No sense in calling intel_modeset_pipe_config_late() for a disabled
> pipe.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 11e974d66c29..a81d866bdb19 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7669,9 +7669,11 @@ static int intel_atomic_check(struct drm_device *d=
ev,
>  		if (!intel_crtc_needs_modeset(new_crtc_state))
>  			continue;
>=20=20
> -		ret =3D intel_modeset_pipe_config_late(state, crtc);
> -		if (ret)
> -			goto fail;
> +		if (new_crtc_state->hw.enable) {
> +			ret =3D intel_modeset_pipe_config_late(state, crtc);
> +			if (ret)
> +				goto fail;
> +		}
>=20=20
>  		intel_crtc_check_fastset(old_crtc_state, new_crtc_state);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center

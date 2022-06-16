Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D29D54DF69
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 12:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BAC11A11C;
	Thu, 16 Jun 2022 10:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C130911A11C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 10:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655376443; x=1686912443;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=KB2T1a/yXis6Aqf6vOpx5I2VdPYtSbZKpnOYuDZ1ynw=;
 b=jL3Ly9QcUAhFajSxM09HMtFXeSE36OJK7JInSrFq5w1R3fttkc/Ivb6T
 t4S/kbO8ohyy5T7vaP7hPYwnYU4IpwnGv2l9ISxefKALqgznMApOYpL7Z
 exA15jVvHIiwrQ1TTZVlpPikR0A5YynPZ99SAjl4Vx20zzdJFx29B56uF
 Qo8X+52dsFhBrxYd4/j23zu2Sy7LNwnYjyVzapNjinY1u0AibGXg90aCs
 6TLQZNSjzeushMs3VSA3v4w784pElMa1OICsFBvPO8dmq+KdIGm7TXOTB
 Kj/27R/2j0y5vsW2E8z1lTBy0M/Xjfh3R48HL0bJGJQUQ2D4fgFFNSPPM A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="279936492"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="279936492"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:47:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="641486951"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:47:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220615151445.8531-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
 <20220615151445.8531-2-ville.syrjala@linux.intel.com>
Date: Thu, 16 Jun 2022 13:47:19 +0300
Message-ID: <87letwx4ug.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/bios: Don't parse the DPS
 panel type when the VBT does not have it
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

On Wed, 15 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Older VBTs don't have all the stuff we've defined for the
> LVDS options block (40). In particular we're currently parsing
> the DPS panel type bits even though they may not exist, which
> could mean we end up flagging the machine as supporting static
> DRRS when the VBT declared no such thing.
>
> We don't actually have a clear idea which VBT versions have
> which bits so we rely on the block size instead.
>
> Here's a quick list from my VBT stash:
> mgm version 108 -> 4 bytes
> alv version 120 -> 4 bytes
> cst version 134 -> 14 bytes
> pnv version 144 -> 14 bytes
> cl  version 142 -> 16 bytes
> ctg version 155 -> 24 bytes
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index df52f406e1ae..807184fd5618 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -758,6 +758,14 @@ parse_panel_options(struct drm_i915_private *i915,
>=20=20
>  	panel->vbt.lvds_dither =3D lvds_options->pixel_dither;
>=20=20
> +	/*
> +	 * Empirical evidence indicates the block size can be
> +	 * either 4,14,16,24+ bytes. For older VBTs no clear
> +	 * relationship between the block size vs. BDB version.
> +	 */
> +	if (get_blocksize(lvds_options) < 16)
> +		return;
> +
>  	drrs_mode =3D (lvds_options->dps_panel_type_bits
>  				>> (panel_type * 2)) & MODE_MASK;
>  	/*

--=20
Jani Nikula, Intel Open Source Graphics Center

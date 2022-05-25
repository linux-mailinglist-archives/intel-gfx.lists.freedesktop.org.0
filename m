Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDFA533B17
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 12:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 777A910F184;
	Wed, 25 May 2022 10:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8058210F184
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 10:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476303; x=1685012303;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=sjXTPm41sq4/mDHKUiz0ZLW9ohdiL/BIaP+2Pgn68mo=;
 b=NA164QV5OsuoSbP6o6kDuRJu6LHK767VzmzVHoHyBJdH6abMbmxpnfJw
 lo2YXnalpSB1CvLuCNzv7WOp8lE4GDqmV+e9WkEL07w0dG4ici4H2QBm5
 xmQ0wozUxP6JgHcw/dE916ppCmDrq5QCEsz4sUI3w2dFSCBMzzghgA4b6
 DG7tlJNn21SF7EcOlRArfdQ3AogyJ9Lph1+F2n0uYslQwjW/ydekAjWtu
 D8zB/B5vAoQymdWZp1BR3ITzQyp+1TEqAgjXiQ4PKY4lrOY8L5YSYqQFo
 KPTPa9co8emMzJdRpFsKD/Bg6gxGzysNniXOeiAj1++2yMqSyu3vBLyQ0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="336835317"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336835317"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:58:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="601848242"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:58:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-15-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-15-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 13:58:19 +0300
Message-ID: <875yltvpys.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 14/26] drm/i915: Skip FDI vs. dotclock
 sanity check during readout
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
> The VBIOS/GOP may not program the FDI M/n vs. dotclock entirely
> consistently. Eg. on a SNB Thinkpad X220 LVDS I see dotclock of
> 69.286 MHz (the best the DPLL can do) vs. FDI M/N 69.3 MHz
> (matches what the EDID actually declares).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1a25addadc21..86971be92e57 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10248,8 +10248,6 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  			crtc_state->min_voltage_level;
>=20=20
>  		intel_bw_crtc_update(bw_state, crtc_state);
> -
> -		intel_pipe_config_sanity_check(dev_priv, crtc_state);
>  	}
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center

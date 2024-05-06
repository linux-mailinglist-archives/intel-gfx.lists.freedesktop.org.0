Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC678BCAA7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EBCA10EDFB;
	Mon,  6 May 2024 09:29:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KxqL2XMy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611E510EDF7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714987789; x=1746523789;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=f9rMcg/2dl2YW7p/mpH8oonQePs8k/eYDj0Mizej6nY=;
 b=KxqL2XMyNr5F9d62tkqbJTbFeZ+4/XtWhHUvT/J/yXghFWRVolEj58WP
 PBw/FoIyVhWeBCDBnPxDq/ddKE+L0YKITFOg4BROvQo25qOAcISg4ErKf
 zwPAI7t/t+jY20Rwc/CmRF1XRy/Fg1PqT1wp6TYh9bCKZldxFgVuepebD
 shO6eNEIHRzCYzF3dQLJbNlXtfwRMDfGKsFqPjyb1Dpc8gqTGoYfpwii1
 0oMUMxeXrakMJ9zXZ88WfNL32cA966pRSRudCs6q7LtSoZj5RrJMQgmE8
 3SbLKNMQQZiGhEaAJw2iVUvwsWQ0DH2belhgl1tULowST5Z40PW7IlGTI Q==;
X-CSE-ConnectionGUID: iyDMuwFCSSuR3MGTrr1UiQ==
X-CSE-MsgGUID: zd2m0QUMREiEmk2ZE/u53A==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10849335"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10849335"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:28:38 -0700
X-CSE-ConnectionGUID: CqMVbnuQTAGCdX8DKA0lew==
X-CSE-MsgGUID: wwJxAPmCSw+V8FWVFoIXvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28123719"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:28:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 13/35] drm/i915/bios: Define VBT block 10 (Mode Removal
 Table) contents
In-Reply-To: <20240503122449.27266-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-14-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:28:33 +0300
Message-ID: <878r0nnvb2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define the contents of VBT block 10 (Mode Removal Table).
>
> There seem to be two variants:
> - 8 byte entries for desktop systems
> - 10 byte entries for mobile systems, with the extra
>   panel_flags being a bitmask of LFPs
>
> It seems starting from HSW only the mobile variant is
> used anymore.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Awful stuff.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 4f0b8be3034c..d78523cd4214 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -677,6 +677,29 @@ struct bdb_psr {
>  	u32 psr2_tp2_tp3_wakeup_time;				/* 226+ */
>  } __packed;
>=20=20
> +/*
> + * Block 10 - Mode Removal Table
> + */
> +
> +struct mode_removal_table {
> +	u16 x_res;
> +	u16 y_res;
> +	u8 bpp;
> +	u16 refresh_rate;
> +	u8 removal_flags;
> +	u16 panel_flags;
> +} __packed;
> +
> +struct bdb_mode_removal {
> +	u8 row_size; /* 8 or 10 bytes */
> +	/*
> +	 * VBT spec says this is always 20 entries,
> +	 * but ALM seems to have only 15 entries.
> +	 */
> +	struct mode_removal_table modes[];
> +	/* u16 terminator; 0x0000 */
> +} __packed;
> +
>  /*
>   * Block 12 - Driver Features Data Block
>   */

--=20
Jani Nikula, Intel

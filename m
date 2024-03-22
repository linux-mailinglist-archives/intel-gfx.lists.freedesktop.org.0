Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AF8886A1A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C764B10F573;
	Fri, 22 Mar 2024 10:20:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qh6dHwnA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399EE10F1FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711102822; x=1742638822;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=teArZ8ty/dAprs7thuD2WAwR2jkSK29/Iwpgvl856dI=;
 b=Qh6dHwnA1YsiN0kCFSQZizeUuXcjzw/Uktzod0GdoE0OkInyK7MPubtd
 rv0DU2eYIkp8zYdRO1JiVRifO7bEAGnIwkLcE9oDiT2NtxPcDI0hsjGtq
 UhNEQ4kfmwejmGewBd9uwLIoGERsGs0akViDNXTB7XajEQSgh2ShpTDXe
 niYucyDyc9ThRjxxmokt1jAraatVHcL5vo91IPg+C5fWsGmDPQOW+Uckm
 iZyfXLh5IS82MPLgx4iiZnhFURiheCrSzhMlHb0kzC2BGuooAxLQP7DDr
 yxXEB4cn/5uNLfK2nZLv0//z+Q8hY5mkEtEMCglptpuHDuHnXoeAkgyxQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="9947477"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="9947477"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:20:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="14826770"
Received: from ghoshsu1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.6])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:20:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/bios: Define the (obsolete) backlight i2c
 VBT stuff
In-Reply-To: <20240321161806.31714-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
 <20240321161806.31714-5-ville.syrjala@linux.intel.com>
Date: Fri, 22 Mar 2024 12:20:14 +0200
Message-ID: <87wmpuk1pd.fsf@intel.com>
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

On Thu, 21 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The VBT backlight entries include various fields for i2c
> controlled backlights. These have been obsoleted at some
> unknown point in time, but let's define them anyway so that
> we have a full picture of what has been in there.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 5da8ae407dfd..bcd1b239eb65 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -881,11 +881,12 @@ struct bdb_lvds_lfp_data_tail {
>  struct lfp_backlight_data_entry {
>  	u8 type:2;
>  	u8 active_low_pwm:1;
> -	u8 obsolete1:5;
> +	u8 i2c_pin:3;						/* obsolete since ? */
> +	u8 i2c_speed:2;						/* obsolete since ? */
>  	u16 pwm_freq_hz;
>  	u8 min_brightness;					/* ???-233 */
> -	u8 obsolete2;
> -	u8 obsolete3;
> +	u8 i2c_address;						/* obsolete since ? */
> +	u8 i2c_command;						/* obsolete since ? */
>  } __packed;
>=20=20
>  struct lfp_backlight_control_method {

--=20
Jani Nikula, Intel

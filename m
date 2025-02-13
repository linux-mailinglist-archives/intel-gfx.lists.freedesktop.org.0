Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ED9A339E5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 09:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EF3A10EA20;
	Thu, 13 Feb 2025 08:27:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P6nfotPl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B1C10E03A;
 Thu, 13 Feb 2025 08:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739435253; x=1770971253;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jBkyjW5SjxzCg5cfeUyuUXSB+DbW1YQehPdypDcCdw0=;
 b=P6nfotPlfZl5ctzGr6e/XZlwsYwwD0tIu64j2qX/WW7Dd+wKwhpmMSUh
 9jCExzvkbVNpTEPcr3eM3P2maKAJ6Bp9LJPvssMJNYVv/7VXFFT8Vuo0F
 dKIIcku2ZtH/sx49CEfjLtX5h7baPqyKQLbajqOcN7sQGvgLsJKRoovgG
 iYjAtZ7FGhwxtlKTHwUgRbVOyplqtRt31G95G3Awq9Q1yQVAGTOxu78YZ
 Md8fwoqxr7yHtoXdTx9iiXeNXujQza76Y9HYly7kRMnVJDWRIpZWoJtqZ
 gH0I3lrlDKESk6pNLKT2brhHXbT86RoJZktBR/ufkzFho1DTDamTVF31y Q==;
X-CSE-ConnectionGUID: +UMwI5i9Ty6mF6UyCXFkIg==
X-CSE-MsgGUID: acdkk0aCQUeEoBTwV3TXQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="43776072"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="43776072"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:27:32 -0800
X-CSE-ConnectionGUID: Vbfto6ZBTGynR0e7xiuYjg==
X-CSE-MsgGUID: PlqKhN7URWGUb0oN2VVZ2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113605516"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.243])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 00:27:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/14] drm/i915/display: conversions to struct
 intel_display
In-Reply-To: <Z6zXjEfwCj8BxQSh@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1739378095.git.jani.nikula@intel.com>
 <Z6zXjEfwCj8BxQSh@intel.com>
Date: Thu, 13 Feb 2025 10:27:27 +0200
Message-ID: <87y0yaxn9s.fsf@intel.com>
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

On Wed, 12 Feb 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 12, 2025 at 06:36:29PM +0200, Jani Nikula wrote:
>> Convert a bunch of files and functions to struct intel display.
>>=20
>> The approach is to mostly convert a file, then see what the stragglers
>> are, convert those too, and repeat.
>>=20
>> The PCH checks are starting to become a big straggler for further
>> conversions.
>
> Aye. I wonder if we should in fact change all the HAS_PCH_FOO()
> stuff to some kind of "south display type" thing. The current
> situation is a bit of a mess due to:
> - DG1/2 declare some kind of fake PCH type
> - BXT/GLK don't declare one and yet we still use many
>   PCH/south display registers

I'm also thinking most or all of the PCH checks outside of display
should be removed.

> Anyways, series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din!

>
>>=20
>> BR,
>> Jani.
>>=20
>> Jani Nikula (14):
>>   drm/i915/dp: convert g4x_dp.[ch] to struct intel display
>>   drm/i915/hdmi: convert g4x_hdmi.[ch] to struct intel_display
>>   drm/i915/ips: convert hsw_ips.c to struct intel_display
>>   drm/i915/display: convert assert_transcoder*() to struct intel_display
>>   drm/i915/display: convert assert_port_valid() to struct intel_display
>>   drm/i915/hpd: drop dev_priv parameter from intel_hpd_pin_default()
>>   drm/i915/display: convert
>>     intel_set_{cpu,pch}_fifo_underrun_reporting() to intel_display
>>   drm/i915/sdvo: convert intel_sdvo.[ch] to struct intel_display
>>   drm/i915/display: convert intel_cpu_transcoder_mode_valid() to
>>     intel_display
>>   drm/i915/display: convert intel_mode_valid_max_plane_size() to
>>     intel_display
>>   drm/i915/dsi: convert platform checks to display->platform.<platform>
>>     style
>>   drm/i915/combo-phy: convert intel_combo_phy.[ch] to struct
>>     intel_display
>>   drm/i915/display: convert intel_fifo_underrun.[ch] to struct
>>     intel_display
>>   drm/i915/display: convert i915_pipestat_enable_mask() to struct
>>     intel_display
>>=20
>>  drivers/gpu/drm/i915/display/g4x_dp.c         |  99 +++---
>>  drivers/gpu/drm/i915/display/g4x_dp.h         |  14 +-
>>  drivers/gpu/drm/i915/display/g4x_hdmi.c       | 154 +++++----
>>  drivers/gpu/drm/i915/display/g4x_hdmi.h       |   6 +-
>>  drivers/gpu/drm/i915/display/hsw_ips.c        |  26 +-
>>  drivers/gpu/drm/i915/display/icl_dsi.c        |  21 +-
>>  .../gpu/drm/i915/display/intel_combo_phy.c    | 180 ++++++-----
>>  .../gpu/drm/i915/display/intel_combo_phy.h    |   8 +-
>>  drivers/gpu/drm/i915/display/intel_crt.c      |  21 +-
>>  drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
>>  drivers/gpu/drm/i915/display/intel_display.c  | 155 ++++-----
>>  drivers/gpu/drm/i915/display/intel_display.h  |  10 +-
>>  .../gpu/drm/i915/display/intel_display_irq.c  |  37 +--
>>  .../gpu/drm/i915/display/intel_display_irq.h  |   5 +-
>>  .../drm/i915/display/intel_display_power.c    |   5 +-
>>  .../i915/display/intel_display_power_well.c   |   3 +-
>>  drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
>>  drivers/gpu/drm/i915/display/intel_dpll.c     |  30 +-
>>  drivers/gpu/drm/i915/display/intel_dsi.c      |   8 +-
>>  drivers/gpu/drm/i915/display/intel_dvo.c      |   8 +-
>>  drivers/gpu/drm/i915/display/intel_fdi.c      |   3 +-
>>  .../drm/i915/display/intel_fifo_underrun.c    | 181 ++++++-----
>>  .../drm/i915/display/intel_fifo_underrun.h    |  18 +-
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
>>  drivers/gpu/drm/i915/display/intel_hotplug.c  |   4 +-
>>  drivers/gpu/drm/i915/display/intel_hotplug.h  |   3 +-
>>  drivers/gpu/drm/i915/display/intel_lvds.c     |   6 +-
>>  .../drm/i915/display/intel_modeset_setup.c    |   6 +-
>>  .../gpu/drm/i915/display/intel_pch_display.c  |   4 +-
>>  drivers/gpu/drm/i915/display/intel_pps.c      |  11 +-
>>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 293 +++++++++---------
>>  drivers/gpu/drm/i915/display/intel_sdvo.h     |  10 +-
>>  drivers/gpu/drm/i915/display/intel_tv.c       |   6 +-
>>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   8 +-
>>  36 files changed, 671 insertions(+), 700 deletions(-)
>>=20
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel

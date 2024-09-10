Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 617BA9738B1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFB410E7E6;
	Tue, 10 Sep 2024 13:32:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e2kUGHYO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65EF410E7E7;
 Tue, 10 Sep 2024 13:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725975173; x=1757511173;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=BqhsXpf/Yeer5G0zUJl+iS+8JiVtM67KPm6pUAu9lkU=;
 b=e2kUGHYOTxBI/wO0ez17mp3D002c+NICfsEK6cyL8hgMj2L3cAWsUPZL
 Lqb3cwKnisOSAUd2j8SKRXWhnJLDp7CyTp++LAQQPW4WoNxoD567CNjU3
 5F1rB1xKniXhchZbU5WvOVoKl64SREBx7fpCWjU98RJaIzsge+xFn4kqe
 jHh+zboX5lvSaoFk7KWs+DvBVwWVvqZxOPKzjW4ETCxtQ2IX1Jdcr+9l9
 lbQwtMPp0mwlQAJVSD66wkI7KDhG7ZDLS4kHq6Gx4APZ3aLg2yUnBut2W
 ujdtxl4UmzRnRPkxnqyr1AtxVnKc3T9bDEftyx24c1Zjx0lEpEXhNJlGS A==;
X-CSE-ConnectionGUID: W04ekVX6SW6JXLXejshKeA==
X-CSE-MsgGUID: 3Sn3A7DWSOuaMP2aVoBM7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35859685"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="35859685"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:32:52 -0700
X-CSE-ConnectionGUID: VTOKcIKZQsiU38gHQZrM8g==
X-CSE-MsgGUID: QNnopD9gRX6xcqZp6W1JZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="71151161"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:32:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/11] drm/i915: split out display regs
In-Reply-To: <Zt9iq8wJg1neQWct@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725908151.git.jani.nikula@intel.com>
 <Zt9iq8wJg1neQWct@intel.com>
Date: Tue, 10 Sep 2024 16:32:47 +0300
Message-ID: <87mskfk51c.fsf@intel.com>
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

On Tue, 10 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Sep 09, 2024 at 09:58:51PM +0300, Jani Nikula wrote:
>> We've split out register macros from i915_reg.h functionally, but it has
>> slowed down quite a bit. At this stage, split out all the display regs
>> from i915_reg.h.
>>=20
>> The first ten patches are manual style cleanup, primarily to help the
>> automation to do the split in patch 11.
>>=20
>> This should pave the way for further cleanups.
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> Jani Nikula (11):
>>   drm/i915/reg: fix transcoder timing register style
>>   drm/i915/reg: fix g4x pipe data/link m/n register style
>>   drm/i915/reg: fix pipe conf, stat etc. register style
>>   drm/i915/reg: fix pipe data/link m/n register style
>>   drm/i915/reg: fix SKL scaler register style
>>   drm/i915/reg: fix PCH transcoder timing and data/link m/n style
>>   drm/i915/reg: fix DIP CTL register style
>>   drm/i915/reg: fix small register style issues here and there
>>   drm/i915/reg: remove unused DSI register macros
>>   drm/i915/reg: remove superfluous whitespace
>>   drm/i915: split out display regs from i915_reg.h
>
> The last patch had some confusion which probably needs looking at,
> and one earlier patch has tabs and spaces mixed up a bit.
>
> Apart from those the series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks!

Fixed the indentation in patch 5 with a new patch, and sent everything
but the last one in a separate series [1]. Feel free to clean up the SPI
etc. on top of that, and I'll try to see what can be done about the irq
regs. After those, it's trivial to regenerate the last patch with my
scripts, and, with any luck, the result will be better.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1725974820.git.jani.nikula@intel.com


>
>>=20
>>  drivers/gpu/drm/i915/display/g4x_dp.c         |    1 +
>>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |    1 +
>>  drivers/gpu/drm/i915/display/hsw_ips.c        |    1 +
>>  drivers/gpu/drm/i915/display/i9xx_plane.c     |    2 +
>>  drivers/gpu/drm/i915/display/i9xx_wm.c        |    1 +
>>  drivers/gpu/drm/i915/display/icl_dsi.c        |    1 +
>>  .../gpu/drm/i915/display/intel_backlight.c    |    2 +-
>>  drivers/gpu/drm/i915/display/intel_bios.c     |    1 +
>>  drivers/gpu/drm/i915/display/intel_bw.c       |    3 +-
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    |    3 +-
>>  .../gpu/drm/i915/display/intel_combo_phy.c    |    1 +
>>  drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |    2 +
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |    1 +
>>  drivers/gpu/drm/i915/display/intel_display.c  |    3 +-
>>  .../drm/i915/display/intel_display_debugfs.c  |    1 +
>>  .../drm/i915/display/intel_display_device.c   |    6 +-
>>  .../gpu/drm/i915/display/intel_display_irq.c  |    2 +
>>  .../drm/i915/display/intel_display_power.c    |    1 +
>>  .../i915/display/intel_display_power_map.c    |    5 +-
>>  .../i915/display/intel_display_power_well.c   |    1 +
>>  .../gpu/drm/i915/display/intel_display_regs.h | 2986 ++++++++++++++++
>>  .../gpu/drm/i915/display/intel_display_wa.c   |    1 +
>>  drivers/gpu/drm/i915/display/intel_dmc.c      |    1 +
>>  drivers/gpu/drm/i915/display/intel_dp.c       |    4 +-
>>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |    1 +
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |    3 +-
>>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |    1 +
>>  drivers/gpu/drm/i915/display/intel_dpll.c     |    1 +
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |    1 +
>>  .../gpu/drm/i915/display/intel_dpt_common.c   |    1 +
>>  drivers/gpu/drm/i915/display/intel_drrs.c     |    1 +
>>  drivers/gpu/drm/i915/display/intel_dsb.c      |    1 +
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |    3 +-
>>  drivers/gpu/drm/i915/display/intel_dvo.c      |    1 +
>>  drivers/gpu/drm/i915/display/intel_fbc.c      |    3 +
>>  drivers/gpu/drm/i915/display/intel_fdi.c      |    3 +-
>>  .../drm/i915/display/intel_fifo_underrun.c    |    1 +
>>  drivers/gpu/drm/i915/display/intel_gmbus.c    |    1 +
>>  drivers/gpu/drm/i915/display/intel_hdcp.c     |    1 +
>>  drivers/gpu/drm/i915/display/intel_hdmi.c     |    1 +
>>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |    1 +
>>  drivers/gpu/drm/i915/display/intel_lspcon.c   |    3 +-
>>  drivers/gpu/drm/i915/display/intel_lvds.c     |    3 +-
>>  .../drm/i915/display/intel_modeset_setup.c    |    3 +-
>>  drivers/gpu/drm/i915/display/intel_overlay.c  |    2 +
>>  drivers/gpu/drm/i915/display/intel_panel.c    |    1 +
>>  .../gpu/drm/i915/display/intel_pch_display.c  |    1 +
>>  .../gpu/drm/i915/display/intel_pch_refclk.c   |    1 +
>>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |    1 +
>>  drivers/gpu/drm/i915/display/intel_pmdemand.c |    1 +
>>  drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
>>  drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
>>  drivers/gpu/drm/i915/display/intel_psr_regs.h |    1 +
>>  drivers/gpu/drm/i915/display/intel_sdvo.c     |    1 +
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c |    1 +
>>  drivers/gpu/drm/i915/display/intel_tc.c       |    1 +
>>  drivers/gpu/drm/i915/display/intel_vblank.c   |    1 +
>>  drivers/gpu/drm/i915/display/intel_vga.c      |    2 +
>>  drivers/gpu/drm/i915/display/intel_vrr.c      |    3 +-
>>  drivers/gpu/drm/i915/display/skl_scaler.c     |    1 +
>>  .../drm/i915/display/skl_universal_plane.c    |    4 +-
>>  drivers/gpu/drm/i915/display/skl_watermark.c  |    1 +
>>  drivers/gpu/drm/i915/display/vlv_dsi.c        |    1 +
>>  drivers/gpu/drm/i915/gvt/display.c            |    1 +
>>  drivers/gpu/drm/i915/gvt/fb_decoder.c         |    1 +
>>  drivers/gpu/drm/i915/gvt/handlers.c           |    1 +
>>  drivers/gpu/drm/i915/gvt/interrupt.c          |    1 +
>>  drivers/gpu/drm/i915/gvt/mmio.c               |    1 +
>>  drivers/gpu/drm/i915/i915_reg.h               | 3016 +----------------
>>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    1 +
>>  71 files changed, 3098 insertions(+), 3016 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_regs.h
>>=20
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F996C8694
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 21:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E2A10E1A8;
	Fri, 24 Mar 2023 20:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 738C010E1A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 20:13:11 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 p12-20020a05600c468c00b003ef5e6c39cdso673997wmo.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 13:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1679688790; x=1682280790;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=PWt/K1MzCkHY7UBJTyBEOoBzetssGcsIvKBdVSH7npQ=;
 b=f5RA/BURCZEBMqHspyAE8iIlN47CGfb2pRk+YauieNss765vY5fhtUrdUWhOBMv6YS
 8ur/hdqa+pCtplM8otoU8jIIs8wbJqYMz2OauRNVE4m9K7XrofHvWgf0ZY1lFnf0WWH8
 J7ChwugGoWT5l9CeU0jFO8awBKyiQCpkvAIME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679688790; x=1682280790;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PWt/K1MzCkHY7UBJTyBEOoBzetssGcsIvKBdVSH7npQ=;
 b=PwaaN3XE+R/TvibtxKI2tcfB3VmHW/MXwjMibzIQaQlCdnMV1zBLYEfQWSgpnzJSHL
 u23VkWZa2iTXxxdtx1bt7UIPrV0nxuSC3X3oX29sgHnCDYie+yHd9xGgMfLVKgv5bk5x
 t1Q9bYbxycS7h+SlzHjTd1vxqWM5MN1uO5VJ1Y81If0j4XytD2G9yRe3hHRCouTr4UgX
 NGA9tMUu88WHRu+WjzyHWylzprtqEFKiHaF16VYperURIt8b1p6m3mo/91miaCVessKb
 Bxgqf6v6/zzsaql9edUXUpHkJNOlE+F/xAXDiiWvk4k7BIF6cRXpGr/uih6Bpt06iKEi
 VQjQ==
X-Gm-Message-State: AO0yUKVnbJtnn7sZ3+WCrdWX/qnGxD0F8ZGYKiy6QjiWSR1OiGPkliri
 HJvgxN/5sjdSmUDlJaPYwLBQXA==
X-Google-Smtp-Source: AK7set9WHl27thWnJyX91xuMCgmJBcQf7XIjwzeovWWDQWeQIMH2s7S6CM0x778pyQoXMYuEpF4vxA==
X-Received: by 2002:a05:600c:5111:b0:3ed:c956:4854 with SMTP id
 o17-20020a05600c511100b003edc9564854mr3061694wms.3.1679688789821; 
 Fri, 24 Mar 2023 13:13:09 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 f20-20020a1c6a14000000b003edcc2223c6sm5776869wmc.28.2023.03.24.13.13.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Mar 2023 13:13:09 -0700 (PDT)
Date: Fri, 24 Mar 2023 21:13:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <ZB4EU1YfWZmST3oI@phenom.ffwll.local>
References: <ZBy56qc9C00tCLOY@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBy56qc9C00tCLOY@intel.com>
X-Operating-System: Linux phenom 6.1.0-6-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-next
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@gmail.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 23, 2023 at 04:43:22PM -0400, Rodrigo Vivi wrote:
> Hi Daniel,
> 
> Here goes drm-intel-next-2023-03-23:
> 
> Core Changes:
> - drm: Add SDP Error Detection Configuration Register (Arun)
> 
> Driver Changes:
> - Meteor Lake enabling and fixes (RK, Jose, Madhumitha)
> - Lock the fbdev obj before vma pin (Tejas)
> - DSC fixes (Stanislav)
> - Fixes and clean-up on opregion code (Imre)
> - More wm/vblank stuff (Ville)
> - More general display code organization (Jani)
> - DP Fixes (Stanislav, Ville)
> - Introduce flags to ignore long HPD and link training issues \
>   for handling spurious issues on CI (Vinod)
> - Plane cleanups and extra registers (Ville)
> - Update audio keepalive clock values (Clint)
> - Rename find_section to bdb_find_section (Maarten)
> - DP SDP CRC16 for 128b132b link layer (Arun)
> - Fix various issues with noarm register writes (Ville)
> - Fix a few TypeC / MST issues (Imre)
> - Create GSC submission targeting HDCP and PXP usages on MTL+ (Suraj)
> - Enable HDCP2.x via GSC CS (Suraj)
> 
> Thanks,
> Rodrigo.
> 
> The following changes since commit 4b736ed40583631e0cf32c55dbc1e5ec0434a74b:
> 
>   drm/i915: Get rid of the gm45 HPD live state nonsense (2023-03-07 19:09:20 +0200)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-2023-03-23

Pulled, thanks.

> 
> for you to fetch changes up to 883631771038d1b0c10c0929e31bbd5ffb5e682c:
> 
>   drm/i915/mtl: Add HDCP GSC interface (2023-03-23 12:17:22 +0530)
> 
> ----------------------------------------------------------------
> Core Changes:
> - drm: Add SDP Error Detection Configuration Register (Arun)
> 
> Driver Changes:
> - Meteor Lake enabling and fixes (RK, Jose, Madhumitha)
> - Lock the fbdev obj before vma pin (Tejas)
> - DSC fixes (Stanislav)
> - Fixes and clean-up on opregion code (Imre)
> - More wm/vblank stuff (Ville)
> - More general display code organization (Jani)
> - DP Fixes (Stanislav, Ville)
> - Introduce flags to ignore long HPD and link training issues \
>   for handling spurious issues on CI (Vinod)
> - Plane cleanups and extra registers (Ville)
> - Update audio keepalive clock values (Clint)
> - Rename find_section to bdb_find_section (Maarten)
> - DP SDP CRC16 for 128b132b link layer (Arun)
> - Fix various issues with noarm register writes (Ville)
> - Fix a few TypeC / MST issues (Imre)
> - Create GSC submission targeting HDCP and PXP usages on MTL+ (Suraj)
> - Enable HDCP2.x via GSC CS (Suraj)
> 
> ----------------------------------------------------------------
> Ankit Nautiyal (1):
>       drm/i915/dp: Don't roundup max bpp, while computing compressed bpp
> 
> Anshuman Gupta (1):
>       drm/i915/hdcp: Use generic names for HDCP helpers and structs
> 
> Arun R Murthy (2):
>       drm: Add SDP Error Detection Configuration Register
>       i915/display/dp: SDP CRC16 for 128b132b link layer
> 
> Clint Taylor (1):
>       drm/i915/audio: update audio keepalive clock values
> 
> Imre Deak (18):
>       drm/i915/opregion: Fix opregion setup during system resume on platforms without display
>       drm/i915/opregion: Cleanup opregion after errors during driver loading
>       drm/i915/opregion: Register display debugfs later, after initialization steps
>       drm/i915/opregion: Fix CONFIG_ACPI=n builds adding missing intel_opregion_cleanup() prototype
>       drm/i915/tc: Abort DP AUX transfer on a disconnected TC port
>       drm/i915/tc: Fix TC port link ref init for DP MST during HW readout
>       drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state
>       drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks
>       drm/i915/tc: Wait for IOM/FW PHY initialization of legacy TC ports
>       drm/i915/tc: Factor out helpers converting HPD mask to TC mode
>       drm/i915/tc: Fix target TC mode for a disconnected legacy port
>       drm/i915/tc: Fix TC mode for a legacy port if the PHY is not ready
>       drm/i915/tc: Fix initial TC mode on disabled legacy ports
>       drm/i915/tc: Make the TC mode readout consistent in all PHY states
>       drm/i915/tc: Assume a TC port is legacy if VBT says the port has HDMI
>       drm/i915: Add encoder hook to get the PLL type used by TC ports
>       drm/i915/tc: Factor out a function querying active links on a TC port
>       drm/i915/tc: Check the PLL type used by an enabled TC port
> 
> Jani Nikula (6):
>       drm/i915/debugfs: move IPS debugfs to hsw_ips.c
>       drm/i915/psr: move PSR debugfs to intel_psr.c
>       drm/i915/psr: switch PSR debugfs to struct intel_connector
>       drm/i915/psr: clean up PSR debugfs sink status error handling
>       drm/i915/debugfs: switch crtc debugfs to struct intel_crtc
>       drm/i915/debugfs: add crtc i915_pipe debugfs file
> 
> José Roberto de Souza (1):
>       drm/i915/display/mtl: Program latch to phy reset
> 
> Maarten Lankhorst (1):
>       drm/i915/bios: Rename find_section to find_bdb_section
> 
> Madhumitha Tolakanahalli Pradeep (1):
>       drm/i915/dmc: Load DMC on MTL
> 
> Radhakrishna Sripada (1):
>       drm/i915/mtl: Fix Wa_16015201720 implementation
> 
> Stanislav Lisovskiy (1):
>       drm/i915: Ensure DSC has enough BW and stays within HW limits
> 
> Suraj Kandpal (5):
>       drm/i915/gsc: Create GSC request submission mechanism
>       drm/i915/hdcp: HDCP2.x Refactoring to agnostic hdcp
>       drm/i915/hdcp: Refactor HDCP API structures
>       drm/i915/mtl: Add function to send command to GSC CS
>       drm/i915/mtl: Add HDCP GSC interface
> 
> Tejas Upadhyay (1):
>       drm/i915/fbdev: lock the fbdev obj before vma pin
> 
> Ville Syrjälä (23):
>       drm/i915: Preserve crtc_state->inherited during state clearing
>       drm/i915: Extract skl_wm_latency()
>       drm/i915: Reject wm levels that exceed vblank time
>       drm/i915: Don't switch to TPS1 when disabling DP_TP_CTL
>       drm/i915: Don't send idle pattern after DP2.0 link training
>       drm/i915: Stop using pipe_offsets[] for PIPE_MISC*
>       drm/i915: s/PIPEMISC/PIPE_MISC/
>       drm/i915: Define more pipe timestamp registers
>       drm/i915: Program VLV/CHV PIPE_MSA_MISC register
>       drm/i915: Define skl+ universal plane SURFLIVE registers
>       drm/i915: Define vlv/chv sprite plane SURFLIVE registers
>       drm/i915: Clean up skl+ plane alpha bits
>       drm/i915: Relocate intel_plane_check_src_coordinates()
>       drm/i915: Extract intel_sprite_uapi.c
>       drm/i915: Update vblank timestamping stuff on seamless M/N change
>       drm/i915: Add belts and suspenders locking for seamless M/N changes
>       drm/i915: Relocate intel_crtc_update_active_timings()
>       drm/i915: Extract intel_crtc_scanline_offset()
>       drm/i915: Split icl_color_commit_noarm() from skl_color_commit_noarm()
>       drm/i915: Move CSC load back into .color_commit_arm() when PSR is enabled on skl/glk
>       drm/i915: Add a .color_post_update() hook
>       drm/i915: Workaround ICL CSC_MODE sticky arming
>       drm/i915: Disable DC states for all commits
> 
> Vinod Govindapillai (2):
>       drm/i915/display: ignore long HPDs based on a flag
>       drm/i915/display: ignore link training failures in CI
> 
>  drivers/gpu/drm/i915/Makefile                      |   3 +
>  drivers/gpu/drm/i915/display/hsw_ips.c             |  37 +
>  drivers/gpu/drm/i915/display/hsw_ips.h             |   2 +
>  drivers/gpu/drm/i915/display/icl_dsi.c             |   2 +-
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  |  60 +-
>  drivers/gpu/drm/i915/display/intel_atomic_plane.h  |   1 +
>  drivers/gpu/drm/i915/display/intel_audio.c         |   6 +-
>  drivers/gpu/drm/i915/display/intel_bios.c          |  46 +-
>  drivers/gpu/drm/i915/display/intel_color.c         | 101 ++-
>  drivers/gpu/drm/i915/display/intel_color.h         |   1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c          |  10 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c        |   1 -
>  drivers/gpu/drm/i915/display/intel_ddi.c           |  61 +-
>  drivers/gpu/drm/i915/display/intel_ddi.h           |   3 +
>  drivers/gpu/drm/i915/display/intel_display.c       | 157 ++--
>  drivers/gpu/drm/i915/display/intel_display.h       |   3 +-
>  drivers/gpu/drm/i915/display/intel_display_core.h  |  19 +-
>  .../gpu/drm/i915/display/intel_display_debugfs.c   | 353 +--------
>  .../gpu/drm/i915/display/intel_display_debugfs.h   |   6 +-
>  drivers/gpu/drm/i915/display/intel_display_power.c |   8 +
>  drivers/gpu/drm/i915/display/intel_display_types.h |   8 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c           |  36 +-
>  drivers/gpu/drm/i915/display/intel_dp.c            |  39 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c        |  15 +-
>  .../gpu/drm/i915/display/intel_dp_link_training.c  |  48 +-
>  .../gpu/drm/i915/display/intel_dp_link_training.h  |   2 +
>  drivers/gpu/drm/i915/display/intel_fbdev.c         |  24 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c           |   4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c          | 158 ++--
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c      | 831 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h      |  26 +
>  drivers/gpu/drm/i915/display/intel_hotplug.c       |   9 +
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c |   1 +
>  drivers/gpu/drm/i915/display/intel_opregion.c      |  40 +-
>  drivers/gpu/drm/i915/display/intel_opregion.h      |   5 +
>  drivers/gpu/drm/i915/display/intel_psr.c           | 299 ++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h           |   3 +
>  drivers/gpu/drm/i915/display/intel_sprite.c        | 183 -----
>  drivers/gpu/drm/i915/display/intel_sprite_uapi.c   | 127 ++++
>  drivers/gpu/drm/i915/display/intel_sprite_uapi.h   |  15 +
>  drivers/gpu/drm/i915/display/intel_tc.c            | 322 ++++++--
>  drivers/gpu/drm/i915/display/intel_tc.h            |   5 +-
>  drivers/gpu/drm/i915/display/intel_vblank.c        |  92 +++
>  drivers/gpu/drm/i915/display/intel_vblank.h        |   2 +
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |   1 -
>  drivers/gpu/drm/i915/display/skl_watermark.c       | 156 +++-
>  drivers/gpu/drm/i915/display/vlv_dsi.c             |   2 +-
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h       |   2 +
>  .../drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c  | 109 +++
>  .../drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h  |  61 ++
>  drivers/gpu/drm/i915/i915_driver.c                 |   6 +-
>  drivers/gpu/drm/i915/i915_reg.h                    |  87 ++-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c        |   6 +-
>  drivers/misc/mei/hdcp/mei_hdcp.c                   | 105 ++-
>  drivers/misc/mei/hdcp/mei_hdcp.h                   | 354 ---------
>  include/drm/display/drm_dp.h                       |   3 +
>  include/drm/i915_hdcp_interface.h                  | 539 +++++++++++++
>  include/drm/i915_mei_hdcp_interface.h              | 184 -----
>  58 files changed, 3322 insertions(+), 1467 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_sprite_uapi.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_sprite_uapi.h
>  create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
>  create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h
>  create mode 100644 include/drm/i915_hdcp_interface.h
>  delete mode 100644 include/drm/i915_mei_hdcp_interface.h

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

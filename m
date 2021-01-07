Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC9B2ECF4C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 13:02:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4436E43D;
	Thu,  7 Jan 2021 12:02:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2DD6E444
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 12:02:39 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id q18so5425799wrn.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Jan 2021 04:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=JvU1aC1A9UKjCfFt/giBfqyTYtaAQHWCeq4Oq+LK8r0=;
 b=HK2d41TzgoegcOgPBBLoh4/MHq69o/91ofru6EBRE1JaEwYfuwhm65Kbcxxh/fIpmV
 Y8ERuHJ838N4enOKeURBxnSwNQqjX3Bqz5JjXWUh4l6kHONd9RRzlZqWktY/U8REVWcO
 7Udz6jBSLV0aqalR7M8TUNBpubyObT5s9Al9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JvU1aC1A9UKjCfFt/giBfqyTYtaAQHWCeq4Oq+LK8r0=;
 b=WnnHnUSAoFwvj9Js6/RzCvmpSGD8gFJCvJN19pkstGs/CofBr3HuS6QC2eyPZRH4az
 MDQoXANavOh2OzTv6eOpW4Evel+Xdw6aUSc5RQwVEA+EH7gPiM3VaAuGuyFvs1gpn7C8
 i3KmndjJHZ2HfM2Il14wetIIiH5GFm5p8Co1CBqgFalhG5puJBb9MNnYMhtL78MDcTPl
 BxTO8lhxfSlIzoQ0jXHF6pUO4DAobLg5i1l47zURynBzJOCPxX4zjUe5oVc218oyktUc
 m7WaGS50m/x7ujyVFFimPmlQ/3xCH0KUD0bFnJReCw9cSBBLa459DYBcuQDQ77Fs43+F
 bmgg==
X-Gm-Message-State: AOAM533t7Hqclq3J4LRGCShh8ef7WTSk8TP0k0C9LCv16B81wJRJBtbB
 xwGhbM2RjE8GBtcojJQ8NqHTTw==
X-Google-Smtp-Source: ABdhPJyUDM8jyFTkZL7SE+IWEMBFA1+GLdX7Tm8RkimgogU6U682PPmD/8HTSyRZwJGtzcqcPh+Exw==
X-Received: by 2002:adf:dc10:: with SMTP id t16mr8900910wri.345.1610020958344; 
 Thu, 07 Jan 2021 04:02:38 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a65sm7364555wmc.35.2021.01.07.04.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 04:02:37 -0800 (PST)
Date: Thu, 7 Jan 2021 13:02:35 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <X/b4W/gKZvaCLtyf@phenom.ffwll.local>
References: <20210104211018.GA1094707@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104211018.GA1094707@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
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
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 04, 2021 at 01:10:18PM -0800, Rodrigo Vivi wrote:
> Hi Dave and Daniel,
> =

> Happy New Year.
> =

> Here goes the first pull request targeting 5.12.
> =

> drm-intel-next-2021-01-04:
> - Display hotplug fix for gen2/gen3 (Chris)
> - Remove trailing semicolon (Tom)
> - Suppress display warnings for old ifwi presend on our CI (Chris)
> - OA/Perf related workaround (Lionel)
> - Replace I915_READ/WRITE per new uncore and display read/write functions=
 (Jani)\
> .
> - PSR improvements (Jose)
> - HDR and other color changes on LSPCON (Uma, Ville)
> - FBC fixes for TGL (Uma)
> - Record plane update times for debugging (Chris)
> - Refactor panel backlight control functions (Dave)
> - Display power improvements (Imre)
> - Add VRR register definition (Manasi)
> - Atomic modeset improvements for bigjoiner pipes (Ville)
> - Switch off the scanout during driver unregister (Chris)
> - Clean-up DP's FEW enable (Manasi)
> - Fix VDSCP slice count (Manasi)
> - Fix and clean up around rc_model_size for DSC (Jani)
> - Remove Type-C noisy debug warn message (Sean)
> - Display HPD code clean-up (Ville)
> - Refactor Intel Display (Dave)
> - Start adding support for Intel's eDP backlight controls (Lyude)

Pulled, thanks.
-Daniel

> =

> Thanks,
> Rodrigo.
> =

> The following changes since commit b3bf99daaee96a141536ce5c60a0d6dba6ec1d=
23:
> =

>   drm/i915/display: Defer initial modeset until after GGTT is initialised=
 (2020-11-26 11:01:52 +0000)
> =

> are available in the Git repository at:
> =

>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-2021-01=
-04
> =

> for you to fetch changes up to b3304591f14b437b6bccd8dbff06006c11837031:
> =

>   drm/i915/dp: Track pm_qos per connector (2020-12-30 21:22:55 +0000)
> =

> ----------------------------------------------------------------
> - Display hotplug fix for gen2/gen3 (Chris)
> - Remove trailing semicolon (Tom)
> - Suppress display warnings for old ifwi presend on our CI (Chris)
> - OA/Perf related workaround (Lionel)
> - Replace I915_READ/WRITE per new uncore and display read/write functions=
 (Jani)\
> .
> - PSR improvements (Jose)
> - HDR and other color changes on LSPCON (Uma, Ville)
> - FBC fixes for TGL (Uma)
> - Record plane update times for debugging (Chris)
> - Refactor panel backlight control functions (Dave)
> - Display power improvements (Imre)
> - Add VRR register definition (Manasi)
> - Atomic modeset improvements for bigjoiner pipes (Ville)
> - Switch off the scanout during driver unregister (Chris)
> - Clean-up DP's FEW enable (Manasi)
> - Fix VDSCP slice count (Manasi)
> - Fix and clean up around rc_model_size for DSC (Jani)
> - Remove Type-C noisy debug warn message (Sean)
> - Display HPD code clean-up (Ville)
> - Refactor Intel Display (Dave)
> - Start adding support for Intel's eDP backlight controls (Lyude)
> =

> ----------------------------------------------------------------
> Chris Wilson (6):
>       Revert "drm/i915: re-order if/else ladder for hpd_irq_setup"
>       drm/i915/display: Suppress "Combo PHY A HW state changed unexpected=
ly"
>       drm/i915/display: Record the plane update times for debugging
>       drm/i915/gem: Spring clean debugfs
>       drm/i915: Disable outputs during unregister
>       drm/i915/dp: Track pm_qos per connector
> =

> Dave Airlie (6):
>       drm/i915: refactor panel backlight control functions. (v2)
>       drm/i915/display: move needs_modeset to an inline in header
>       drm/i915/display: move to_intel_frontbuffer to header
>       drm/i915/display: fix misused comma
>       drm/i915: refactor cursor code out of i915_display.c
>       drm/i915: refactor i915 plane code into separate file.
> =

> Imre Deak (10):
>       drm/i915: Use CRTC index consistently during getting/putting CRTC p=
ower domains
>       drm/i915: Factor out helpers to get/put a set of tracked power doma=
ins
>       drm/i915: Track power references taken for enabled CRTCs
>       drm/i915/ddi: Track power reference taken for encoder DDI IO use
>       drm/i915/ddi: Track power reference taken for encoder main lane AUX=
 use
>       drm/i915: Track power reference taken for eDP VDD
>       drm/i915: Rename power_domains.wakeref to init_wakeref
>       drm/i915: Track power reference taken to disable power well functio=
nality
>       drm/i915: Make intel_display_power_put_unchecked() an internal-only=
 function
>       drm/i915/icl: Fix initing the DSI DSC power refcount during HW read=
out
> =

> Jani Nikula (15):
>       drm/i915/debugfs: remove RPS autotuning details from i915_rps_boost=
_info
>       drm/i915: remove last traces of I915_READ_FW() and I915_WRITE_FW()
>       drm/i915/cdclk: prefer intel_de_write() over I915_WRITE()
>       drm/i915/debugfs: remove the i915_cache_sharing debugfs file
>       drm/i915/debugfs: replace I915_READ() with intel_uncore_read()
>       drm/i915/suspend: replace I915_READ()/WRITE() with intel_de_read()/=
write()
>       drm/i915/pm: replace I915_READ()/WRITE() with intel_uncore_read()/w=
rite()
>       drm/i915/irq: replace I915_READ()/WRITE() with intel_uncore_read()/=
write()
>       drm/i915/gvt: replace I915_WRITE with intel_uncore_write
>       drm/i915: remove last traces of I915_READ(), I915_WRITE() and POSTI=
NG_READ()
>       drm/dsc: use rc_model_size from DSC config for PPS
>       drm/i915/dsc: configure hardware using specified rc_model_size
>       drm/i915/dsc: make rc_model_size an encoder defined value
>       drm/dsc: add helper for calculating rc buffer size from DPCD
>       drm/i915/bios: fill in DSC rc_model_size from VBT
> =

> Jos=E9 Roberto de Souza (1):
>       drm/i915/display/psr: Calculate selective fetch plane registers
> =

> Lionel Landwerlin (1):
>       drm/i915/perf: also include Gen11 in OATAILPTR workaround
> =

> Lyude Paul (5):
>       drm/i915/dp: Program source OUI on eDP panels
>       drm/i915: Rename pwm_* backlight callbacks to ext_pwm_*
>       drm/i915: Pass down brightness values to enable/disable backlight c=
allbacks
>       drm/i915/dp: Rename eDP VESA backlight interface functions
>       drm/i915/dp: Add register definitions for Intel HDR backlight inter=
face
> =

> Manasi Navare (3):
>       drm/i915: Add VRR_CTL_LINE_COUNT field to VRR_CTL register def
>       drm/i915/dp: No need to poll FEC Enable Live bit
>       drm/i915/display/dp: Compute the correct slice count for VDSC on DP
> =

> Sean Paul (1):
>       drm/i915/display/tc: Only WARN once for bogus tc port flag
> =

> Tom Rix (1):
>       drm/i915: remove trailing semicolon in macro definition
> =

> Uma Shankar (15):
>       drm/i915/display: Add HDR Capability detection for LSPCON
>       drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
>       drm/i915/display: Attach HDR property for capable Gen9 devices
>       drm/i915/display: Fixes quantization range for YCbCr output
>       drm/i915/display: Add a WARN for invalid output range and format
>       drm/i915/display: Attach content type property for LSPCON
>       drm/i915/display: Enable colorspace programming for LSPCON devices
>       drm/i915/display: Nuke bogus lspcon check
>       drm/i915/display: Enable HDR for Parade based lspcon
>       drm/i915/lspcon: Create separate infoframe_enabled helper
>       drm/i915/display: Implement infoframes readback for LSPCON
>       drm/i915/display: Implement DRM infoframe read for LSPCON
>       drm/i915/lspcon: Do not send DRM infoframes to non-HDMI sinks
>       drm/i915/display/tgl: Disable FBC with PSR2
>       Revert "drm/i915/display/fbc: Disable fbc by default on TGL"
> =

> Ville Syrj=E4l=E4 (6):
>       drm/i915: Split intel_attach_colorspace_property() into HDMI vs. DP=
 variants
>       drm/i915: Track logically enabled planes for hw state
>       drm/i915: Add intel_atomic_add_affected_planes()
>       drm/i915: Properly flag modesets for all bigjoiner pipes
>       drm/i915: Call kill_bigjoiner_slave() earlier
>       drm/i915: Reduce duplicated switch cases in hpd code
> =

>  drivers/gpu/drm/drm_dsc.c                          |   30 +-
>  drivers/gpu/drm/i915/Makefile                      |    4 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c          |  704 ++++++++
>  drivers/gpu/drm/i915/display/i9xx_plane.h          |   24 +
>  drivers/gpu/drm/i915/display/icl_dsi.c             |    7 +-
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  |    3 +
>  drivers/gpu/drm/i915/display/intel_bios.c          |   11 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c         |    7 +-
>  drivers/gpu/drm/i915/display/intel_combo_phy.c     |   20 +-
>  drivers/gpu/drm/i915/display/intel_connector.c     |   29 +-
>  drivers/gpu/drm/i915/display/intel_connector.h     |    3 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c        |  806 +++++++++
>  drivers/gpu/drm/i915/display/intel_cursor.h        |   17 +
>  drivers/gpu/drm/i915/display/intel_ddi.c           |   83 +-
>  drivers/gpu/drm/i915/display/intel_display.c       | 1794 ++------------=
------
>  drivers/gpu/drm/i915/display/intel_display.h       |   13 +-
>  .../gpu/drm/i915/display/intel_display_debugfs.c   |  124 ++
>  .../gpu/drm/i915/display/intel_display_debugfs.h   |    3 +
>  drivers/gpu/drm/i915/display/intel_display_power.c |  127 +-
>  drivers/gpu/drm/i915/display/intel_display_power.h |   37 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h |   57 +-
>  drivers/gpu/drm/i915/display/intel_dp.c            |   95 +-
>  .../gpu/drm/i915/display/intel_dp_aux_backlight.c  |  115 +-
>  .../gpu/drm/i915/display/intel_dsi_dcs_backlight.c |   21 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c           |    4 -
>  drivers/gpu/drm/i915/display/intel_fbc.c           |   19 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c          |   26 +-
>  drivers/gpu/drm/i915/display/intel_lspcon.c        |  162 +-
>  drivers/gpu/drm/i915/display/intel_lspcon.h        |   12 +
>  drivers/gpu/drm/i915/display/intel_panel.c         |  226 ++-
>  drivers/gpu/drm/i915/display/intel_psr.c           |   22 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c        |   50 +-
>  drivers/gpu/drm/i915/display/intel_sprite.h        |   10 +
>  drivers/gpu/drm/i915/display/intel_tc.c            |    2 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c          |    4 +-
>  drivers/gpu/drm/i915/gvt/handlers.c                |    2 +-
>  drivers/gpu/drm/i915/i915_debugfs.c                |  582 +------
>  drivers/gpu/drm/i915/i915_drv.c                    |    8 +-
>  drivers/gpu/drm/i915/i915_drv.h                    |   41 +-
>  drivers/gpu/drm/i915/i915_irq.c                    |  382 ++---
>  drivers/gpu/drm/i915/i915_perf.c                   |    2 +-
>  drivers/gpu/drm/i915/i915_reg.h                    |    7 +-
>  drivers/gpu/drm/i915/i915_suspend.c                |   33 +-
>  drivers/gpu/drm/i915/intel_device_info.c           |    2 +-
>  drivers/gpu/drm/i915/intel_pm.c                    |  552 +++---
>  drivers/gpu/drm/i915/intel_sideband.c              |    4 +-
>  drivers/gpu/drm/i915/intel_uncore.c                |    4 +-
>  drivers/gpu/drm/i915/intel_uncore.h                |    6 +-
>  include/drm/drm_dsc.h                              |    1 +
>  49 files changed, 3222 insertions(+), 3075 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/i9xx_plane.c
>  create mode 100644 drivers/gpu/drm/i915/display/i9xx_plane.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cursor.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cursor.h

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

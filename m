Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A2C149037
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 22:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8C56E048;
	Fri, 24 Jan 2020 21:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3256E048
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 21:36:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 13:35:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="375620548"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 24 Jan 2020 13:35:53 -0800
Date: Fri, 24 Jan 2020 13:35:53 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200124213553.GH459881@mdroper-desk1.amr.corp.intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [RFC 00/33] drm/i915/display: mass conversion to
 intel_de_*() register accessors
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2020 at 03:25:21PM +0200, Jani Nikula wrote:
> Hey all,
> =

> So I sent [1] to convert some forcewake register accessors... but what if=
 we
> just ripped off the bandage once and for all? It's going to hurt, a lot, =
but
> we'd get it done.
> =

> This completely rids us of the "dev_priv" dependency in display/.
> =

> All the patches here are per-file and independent of each other. We could=
 also
> pick and apply the ones that are least likely to conflict.
> =

> Opinions?
> =

> =

> BR,
> Jani.
> =

> =

> PS. I didn't bother looking at the checkpatch warnings this may generate =
at this
> point. I just used the --linux-spacing option for spatch, and closed my e=
yes. I
> completely scripted the generation of the series, apart from just a coupl=
e of
> build fixes.
> =

> =

> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> [1] https://patchwork.freedesktop.org/series/72476/
> =

> =

> Jani Nikula (33):
>   drm/i915/icl_dsi: use intel_de_*() functions for register access
>   drm/i915/audio: use intel_de_*() functions for register access
>   drm/i915/cdclk: use intel_de_*() functions for register access
>   drm/i915/color: use intel_de_*() functions for register access
>   drm/i915/combo_phy: use intel_de_*() functions for register access
>   drm/i915/crt: use intel_de_*() functions for register access
>   drm/i915/ddi: use intel_de_*() functions for register access
>   drm/i915/display: use intel_de_*() functions for register access
>   drm/i915/display_power: use intel_de_*() functions for register access
>   drm/i915/dp: use intel_de_*() functions for register access
>   drm/i915/dpio_phy: use intel_de_*() functions for register access
>   drm/i915/dpll_mgr: use intel_de_*() functions for register access
>   drm/i915/dp_mst: use intel_de_*() functions for register access
>   drm/i915/dsb: use intel_de_*() functions for register access
>   drm/i915/dvo: use intel_de_*() functions for register access
>   drm/i915/fbc: use intel_de_*() functions for register access
>   drm/i915/fifo_underrun: use intel_de_*() functions for register access
>   drm/i915/gmbus: use intel_de_*() functions for register access
>   drm/i915/hdcp: use intel_de_*() functions for register access
>   drm/i915/hdmi: use intel_de_*() functions for register access
>   drm/i915/lpe_audio: use intel_de_*() functions for register access
>   drm/i915/lvds: use intel_de_*() functions for register access
>   drm/i915/overlay: use intel_de_*() functions for register access
>   drm/i915/panel: use intel_de_*() functions for register access
>   drm/i915/pipe_crc: use intel_de_*() functions for register access
>   drm/i915/psr: use intel_de_*() functions for register access
>   drm/i915/sdvo: use intel_de_*() functions for register access
>   drm/i915/sprite: use intel_de_*() functions for register access
>   drm/i915/tv: use intel_de_*() functions for register access
>   drm/i915/vdsc: use intel_de_*() functions for register access
>   drm/i915/vga: use intel_de_*() functions for register access
>   drm/i915/vlv_dsi: use intel_de_*() functions for register access
>   drm/i915/vlv_dsi_pll: use intel_de_*() functions for register access
> =

>  drivers/gpu/drm/i915/display/icl_dsi.c        |  271 ++--
>  drivers/gpu/drm/i915/display/intel_audio.c    |  112 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  133 +-
>  drivers/gpu/drm/i915/display/intel_color.c    |  204 +--
>  .../gpu/drm/i915/display/intel_combo_phy.c    |   66 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |   51 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  474 +++----
>  drivers/gpu/drm/i915/display/intel_display.c  | 1171 +++++++++--------
>  .../drm/i915/display/intel_display_power.c    |  294 +++--
>  drivers/gpu/drm/i915/display/intel_dp.c       |  234 ++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   11 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |   77 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  388 +++---
>  drivers/gpu/drm/i915/display/intel_dsb.c      |   24 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |   34 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  106 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |   37 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |   74 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  142 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  258 ++--
>  .../gpu/drm/i915/display/intel_lpe_audio.c    |   14 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   57 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  |   45 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |  255 ++--
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |   20 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      |   70 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   30 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   |  320 +++--
>  drivers/gpu/drm/i915/display/intel_tv.c       |  138 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  413 +++---
>  drivers/gpu/drm/i915/display/intel_vga.c      |    7 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |  345 ++---
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   49 +-
>  33 files changed, 3158 insertions(+), 2766 deletions(-)

There's a lot of display (watermark) code in intel_pm.c as well, even
though it doesn't live in the display/ directory.  We should probably
pull the watermark stuff out into a separate display/intel_wm.c or
something soon, but in the meantime we'll probably want to switch a
bunch of that code over to using these new functions.  But I guess you
can't do that with coccinelle though since there are parts of the file
that aren't display-related and shouldn't use the same display helpers.


Matt

> =

> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

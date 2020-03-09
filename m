Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DA117E33D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 16:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED4AB6E17F;
	Mon,  9 Mar 2020 15:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9EF6E17F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 15:15:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 08:15:39 -0700
X-IronPort-AV: E=Sophos;i="5.70,533,1574150400"; d="scan'208";a="230955725"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 08:15:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1583766715.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1583766715.git.jani.nikula@intel.com>
Date: Mon, 09 Mar 2020 17:15:34 +0200
Message-ID: <87blp5o8yx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915/display: conversion to
 drm_device based logging macros
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
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Please ignore this, I seem to have some smtp trouble which fails some of
tha patches. This will be incomplete.

Wambui, I'll resend this later.

BR,
Jani.

On Mon, 09 Mar 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> Rebase of Wambui's series [1] to drm-tip, with a couple of manual
> conversions included.
>
> BR,
> Jani.
>
> [1] https://patchwork.freedesktop.org/series/72760/
>
>
> Wambui Karuga (10):
>   drm/i915/dsb: convert to drm_device based logging macros.
>   drm/i915/fbc: convert to drm_device based logging macros.
>   drm/i915/fbdev: convert to drm_device based logging.
>   drm/i915/fifo_underrun: convert to drm_device based logging.
>   drm/i915/gmbus: convert to drm_device based logging,
>   drm/i915/hdcp: convert to struct drm_device based logging.
>   drm/i915/hotplug: convert to drm_device based logging.
>   drm/i915/lpe_audio: convert to drm_device based logging macros.
>   drm/i915/lvds: convert to drm_device based logging macros.
>   drm/i915/overlay: convert to drm_device based logging.
>
>  drivers/gpu/drm/i915/display/intel_dsb.c      | 28 +++---
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 30 +++---
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 96 +++++++++++--------
>  .../drm/i915/display/intel_fifo_underrun.c    | 29 +++---
>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 33 ++++---
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 40 ++++----
>  .../gpu/drm/i915/display/intel_lpe_audio.c    | 23 +++--
>  drivers/gpu/drm/i915/display/intel_lvds.c     | 43 +++++----
>  drivers/gpu/drm/i915/display/intel_overlay.c  | 11 ++-
>  10 files changed, 195 insertions(+), 141 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

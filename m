Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC44514DC71
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 15:07:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 983FB6E831;
	Thu, 30 Jan 2020 14:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DBA96E831
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 14:07:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 06:07:52 -0800
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="222803769"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 06:07:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
Date: Thu, 30 Jan 2020 16:07:46 +0200
Message-ID: <87tv4d9gwd.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/8] drm/i915/gt conversion to new drm
 logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Jan 2020, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> This series continues the conversion to the new drm logging macros
> focused on the drm/i915/gt folder. This was done both manually and using
> coccinelle.

Thanks for the patches, for now pushed only the non-contentions ones
that don't convert DRM_DEBUG() -> drm_dbg().

BR,
Jani.


>
> Wambui Karuga (8):
>   drm/i915/gt: conversion to struct drm_device macros when struct
>     drm_i915_private is available.
>   drm/i915/ggtt: use new drm logging macros in gt/intel_ggtt.c
>   drm/i915/reset: conversion to new drm logging macros in
>     gt/intel_reset.c
>   drm/i915/engine_cs: use new drm logging macros in gt/intel_engine_cs.c
>   drm/i915/lrc: conversion to new drm logging macros in gt/intel_lrc.c
>   drm/i915/gt: convert to new logging macros in gt/intel_gt.c
>   drm/i915/ring: convert to new logging macros in
>     gt/intel_ring_submission.c
>   drm/i915/rps: move to new drm logging macros in gt/intel_rps.c
>
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 11 +--
>  drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 63 +++++++++------
>  drivers/gpu/drm/i915/gt/intel_gt.c            | 49 ++++++-----
>  drivers/gpu/drm/i915/gt/intel_lrc.c           | 24 +++---
>  drivers/gpu/drm/i915/gt/intel_rc6.c           | 30 ++++---
>  drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         | 48 ++++++-----
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 36 +++++----
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 81 +++++++++----------
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  7 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  3 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  4 +-
>  13 files changed, 196 insertions(+), 164 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6DE136F26
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 15:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC97E6EA28;
	Fri, 10 Jan 2020 14:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85056EA24;
 Fri, 10 Jan 2020 14:17:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 06:17:41 -0800
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="212276227"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 06:17:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
In-Reply-To: <cover.1578409433.git.wambui.karugax@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1578409433.git.wambui.karugax@gmail.com>
Date: Fri, 10 Jan 2020 16:17:35 +0200
Message-ID: <8736cno0ow.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915: conversion to new drm logging
 macros.
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
Cc: intel-gfx@lists.freedesktop.org, seanpaul@chromium.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 07 Jan 2020, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> This series begins the conversion to using the new struct drm_device
> based logging macros in drm/i915.
>
> Wambui Karuga (5):
>   drm/i915: convert to using the drm_dbg_kms() macro.
>   drm/i915: use new struct drm_device logging macros.
>   drm/i915: use new struct drm_device based logging macros.
>   drm/i915: convert to using new struct drm_device logging macros
>   drm/i915: use new struct drm_device based macros.

Thanks for the patches, pushed to drm-intel-next-queued.

As it's impossible to distinguish the commits from each other by the
subject line alone, I've amended the prefix while pushing as follows:

drm/i915/pch: convert to using the drm_dbg_kms() macro.
drm/i915/pm: use new struct drm_device logging macros.
drm/i915/lmem: use new struct drm_device based logging macros.
drm/i915/sideband: convert to using new struct drm_device logging macros
drm/i915/uncore: use new struct drm_device based macros.

Please pay attention to this in future work. It's not always obvious
what the prefix should be, but 'git log -- path/to/file.c' will go a
long way.

BR,
Jani.


>
>  drivers/gpu/drm/i915/intel_pch.c         |  46 +--
>  drivers/gpu/drm/i915/intel_pm.c          | 351 +++++++++++++----------
>  drivers/gpu/drm/i915/intel_region_lmem.c |  10 +-
>  drivers/gpu/drm/i915/intel_sideband.c    |  29 +-
>  drivers/gpu/drm/i915/intel_uncore.c      |  25 +-
>  5 files changed, 254 insertions(+), 207 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

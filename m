Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9715F140E4C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 16:50:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA236F60F;
	Fri, 17 Jan 2020 15:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF136F60F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 15:50:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:49:25 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="218941862"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:49:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
In-Reply-To: <157915478536.12911.15228178797622825279@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200114095107.21197-1-wambui.karugax@gmail.com>
 <157915478536.12911.15228178797622825279@emeril.freedesktop.org>
Date: Fri, 17 Jan 2020 17:49:21 +0200
Message-ID: <874kwugk1q.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_conversion_to_new_drm_logging_macros=2E?=
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

On Thu, 16 Jan 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: conversion to new drm logging macros.
> URL   : https://patchwork.freedesktop.org/series/72096/
> State : failure
>
> == Summary ==
>
> Applying: drm/i915/atomic: use new logging macros for debug
> Applying: drm/i915/audio: convert to new drm logging macros.
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/display/intel_audio.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/display/intel_audio.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_audio.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch' to see the failed patch
> Patch failed at 0002 drm/i915/audio: convert to new drm logging macros.
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

When you see this, please rebase and repost. We don't apply patches
unless they've passed our CI.

Thanks,
Jani.

>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

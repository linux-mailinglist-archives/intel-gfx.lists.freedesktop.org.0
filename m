Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE1F2F5F9B
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 12:15:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F2C8891C1;
	Thu, 14 Jan 2021 11:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E889891C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 11:15:17 +0000 (UTC)
IronPort-SDR: pVS4dLHBzsNnqsvlLMSboSmeaCaCB8qDAEqn6eKNBkWLCr5Jea9mE/84MAdFHLY6Yg9hCguEvO
 pMMbVbe+PCeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="157528191"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="157528191"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 03:15:16 -0800
IronPort-SDR: nbT9z56gow4TT/kShgWOZboDnTLkDm5kWYsFcYIchNRXcnhJNiwryc5trLN2QDUdU5XcOFF2WU
 KJCFqnvvFXZQ==
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="400865451"
Received: from dforourk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.254.146])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 03:15:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Dave Airlie <airlied@gmail.com>
In-Reply-To: <161061890008.19649.17011974074477553738@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210114090522.22750-1-airlied@gmail.com>
 <161061890008.19649.17011974074477553738@emeril.freedesktop.org>
Date: Thu, 14 Jan 2021 13:15:11 +0200
Message-ID: <87pn27py68.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/11=5D_drm/i915=3A_refactor_some_crtc_?=
 =?utf-8?q?code_out_of_intel_display=2E_=28v2=29?=
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

On Thu, 14 Jan 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: series starting with [01/11] drm/i915: refactor some crtc code out of intel display. (v2)
> URL   : https://patchwork.freedesktop.org/series/85846/
> State : failure
>
> == Summary ==
>
> Applying: drm/i915: refactor some crtc code out of intel display. (v2)
> Applying: drm/i915: refactor pll code out into intel_dpll.c
> Applying: drm/i915: split fdi code out from intel_display.c
> Applying: drm/i915: refactor ddi translations into a separate file
> Applying: drm/i915: migrate hsw fdi code to new file.
> Applying: drm/i915: migrate skl planes code new file (v3)
> error: sha1 information is lacking or useless (drivers/gpu/drm/i915/Makefile).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0006 drm/i915: migrate skl planes code new file (v3)
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

My bad, just pushed some stuff that conflicted, I rebased and resent the
series: https://patchwork.freedesktop.org/series/85867/

BR,
Jani.


>
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

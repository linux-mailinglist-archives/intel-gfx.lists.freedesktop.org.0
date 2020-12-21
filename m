Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 174632DFA3A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 10:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEBDD6E466;
	Mon, 21 Dec 2020 09:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9DFB6E466
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 09:03:56 +0000 (UTC)
IronPort-SDR: 6Pi9tlPyRkQnhxp8F22XCAQ6MnJxgmRBdXKC2dKHproorvbITuggYsh+UUlYpX8mKMDVUjKX1y
 z6MzkMlav7vA==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="175848478"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="175848478"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 01:03:52 -0800
IronPort-SDR: eU3EYIEyy1jXFxObt6LV5MnFMJ96+o19dzOQhwK5JuRqNzHJTP1N8KVZCxvKnbB5kTxqasVb4q
 9GaZUPzKDqTA==
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="372376327"
Received: from mlesiews-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.213.22.241])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 01:03:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Dave Airlie <airlied@gmail.com>
In-Reply-To: <160852415582.418.5446735673143476891@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201221040357.4928-1-airlied@gmail.com>
 <160852415582.418.5446735673143476891@emeril.freedesktop.org>
Date: Mon, 21 Dec 2020 11:03:42 +0200
Message-ID: <87r1njpm35.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/16=5D_drm/i915/display=3A_move_needs?=
 =?utf-8?q?=5Fmodeset_to_an_inline_in_header?=
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

On Mon, 21 Dec 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: series starting with [01/16] drm/i915/display: move needs_modeset to an inline in header
> URL   : https://patchwork.freedesktop.org/series/85129/
> State : failure
>
> == Summary ==
>
> Applying: drm/i915/display: move needs_modeset to an inline in header
> Applying: drm/i915/display: move to_intel_frontbuffer to header
> Applying: drm/i915/display: fix misused comma
> Applying: drm/i915: refactor cursor code out of i915_display.c
> Applying: drm/i915: refactor i915 plane code into separate file.
> Applying: drm/i915: refactor some crtc code out of intel display. (v2)
> error: sha1 information is lacking or useless (drivers/gpu/drm/i915/Makefile).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0006 drm/i915: refactor some crtc code out of intel display. (v2)
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

I wonder what gives here. The same thing has been happening for several
versions of the series, including mine. I would've applied the early
patches already if I'd gotten some test results.

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

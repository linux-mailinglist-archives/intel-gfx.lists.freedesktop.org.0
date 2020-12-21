Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 376702DFA54
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 10:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 788726E461;
	Mon, 21 Dec 2020 09:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B4B46E47E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Dec 2020 09:42:14 +0000 (UTC)
IronPort-SDR: V2QEzbfc2c8XAWZ8oagkVkDF+CbJtD+eO2HhH1ejCtE2JksWn/eyhwEcrgh6O97E5Wu4PELGxI
 S4IWdyPRJgJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="154919097"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="154919097"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 01:42:13 -0800
IronPort-SDR: mhEN88Z8Yc/VXcSrUIlBta36VDJ0bIfEdYGivoaAf0J0X8noJhMDceF3JExzjabH41jJG09aVP
 J4oW6igvwlqA==
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="415740248"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 01:42:12 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1krHhh-0002AR-P9; Mon, 21 Dec 2020 11:42:09 +0200
Date: Mon, 21 Dec 2020 11:42:09 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201221094209.GK7444@platvala-desk.ger.corp.intel.com>
References: <20201221040357.4928-1-airlied@gmail.com>
 <160852415582.418.5446735673143476891@emeril.freedesktop.org>
 <87r1njpm35.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r1njpm35.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Mon, Dec 21, 2020 at 11:03:42AM +0200, Jani Nikula wrote:
> On Mon, 21 Dec 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> > == Series Details ==
> >
> > Series: series starting with [01/16] drm/i915/display: move needs_modeset to an inline in header
> > URL   : https://patchwork.freedesktop.org/series/85129/
> > State : failure
> >
> > == Summary ==
> >
> > Applying: drm/i915/display: move needs_modeset to an inline in header
> > Applying: drm/i915/display: move to_intel_frontbuffer to header
> > Applying: drm/i915/display: fix misused comma
> > Applying: drm/i915: refactor cursor code out of i915_display.c
> > Applying: drm/i915: refactor i915 plane code into separate file.
> > Applying: drm/i915: refactor some crtc code out of intel display. (v2)
> > error: sha1 information is lacking or useless (drivers/gpu/drm/i915/Makefile).
> > error: could not build fake ancestor
> > hint: Use 'git am --show-current-patch=diff' to see the failed patch
> > Patch failed at 0006 drm/i915: refactor some crtc code out of intel display. (v2)
> > When you have resolved this problem, run "git am --continue".
> > If you prefer to skip this patch, run "git am --skip" instead.
> > To restore the original branch and stop patching, run "git am --abort".
> 
> I wonder what gives here. The same thing has been happening for several
> versions of the series, including mine. I would've applied the early
> patches already if I'd gotten some test results.


What gives is the part of the patch that contains

-#define INTEL_CRTC_FUNCS \
-	 .gamma_set = drm_atomic_helper_legacy_gamma_set, \


which doesn't apply anymore after


commit 6ca2ab8086af8434a4c0990882321a345c3cc2c6
Author: Tomi Valkeinen <tomi.valkeinen@ti.com>
Date:   Fri Dec 11 13:42:36 2020 +0200

    drm: automatic legacy gamma support


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

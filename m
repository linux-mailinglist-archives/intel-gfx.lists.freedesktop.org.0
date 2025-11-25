Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C88DC86320
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 18:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA5E10E56A;
	Tue, 25 Nov 2025 17:24:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MItXFNEG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8D110E578
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764091474; x=1795627474;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=C1psyIie9ctzl3TYwgOkwTbaK04ShQhqk5PNlbP2l34=;
 b=MItXFNEGoMmIaycVFzQJPrvAuxo6TfRWM6fcOp487CGv5z3xlLu/dH4d
 iT6OtcrXVysaFnGVZpt0nwEegCtNQqCqw6pFtbAoFHJ+K1coO94D7iBQD
 GyourEMWtMndR3wBwBI6M9iXKVDtyLm1poeOr6UGEOo9u7uK4BlDERGD2
 97ov44lrXTMWzBgDAn4FyAkvMI2zs3vcuZ70MVhctdHYzanX/Du8BgEKc
 06JPav7QzxlvPuj5HKai2IHlSMjE2dLcn++xwrNuSwPrilCKm3otN4/gK
 dsFLZfwgYtWbBYtzIjsredpKSsbzVq2hmeb4CHCNq25kUGFPUdhIu+20l g==;
X-CSE-ConnectionGUID: 3ApnOZ99Q86iAs/2ZO3Hfw==
X-CSE-MsgGUID: DwjeyZ4rTMSX2SPdFNoSvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="76441912"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="76441912"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:24:33 -0800
X-CSE-ConnectionGUID: C8jlCO4RSmm5GKLSGQfgNg==
X-CSE-MsgGUID: NDbb94/tTlSzlweWJ6thQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="223378759"
Received: from bkammerd-mobl.amr.corp.intel.com (HELO localhost)
 ([10.124.222.230])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 09:24:32 -0800
Date: Tue, 25 Nov 2025 19:24:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: "Lankhorst, Maarten" <maarten.lankhorst@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdisplay?= =?utf-8?Q?=3A?= stop using the
 configurable fence timeout (rev2)
Message-ID: <aSXmTMWeOXjnYNSB@intel.com>
References: <20251112155612.8320-1-jani.nikula@intel.com>
 <176310680567.54560.8073003092226406962@10055242dc62>
 <3692f126b907c442d76a93957073660d7d9ffd12@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3692f126b907c442d76a93957073660d7d9ffd12@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 25, 2025 at 03:55:02PM +0200, Jani Nikula wrote:
> On Fri, 14 Nov 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> > == Series Details ==
> >
> > Series: drm/i915/display: stop using the configurable fence timeout (rev2)
> > URL   : https://patchwork.freedesktop.org/series/157441/
> > State : failure
> >
> > == Summary ==
> >
> > CI Bug Log - changes from CI_DRM_17544_full -> Patchwork_157441v2_full
> > ====================================================
> >
> > Summary
> > -------
> >
> >   **FAILURE**
> >
> >   Serious unknown changes coming with Patchwork_157441v2_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_157441v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> >
> >   
> >
> > Participating hosts (10 -> 11)
> > ------------------------------
> >
> >   Additional (1): shard-dg2-set2 
> >
> > Possible new issues
> > -------------------
> >
> >   Here are the unknown changes that may have been introduced in Patchwork_157441v2_full:
> >
> > ### IGT changes ###
> >
> > #### Possible regressions ####
> >
> >   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a:
> >     - shard-mtlp:         [PASS][1] -> [DMESG-WARN][2] +5 other tests dmesg-warn
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-mtlp-7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-mtlp-3/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html
> >
> >   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b:
> >     - shard-snb:          [PASS][3] -> [DMESG-WARN][4] +3 other tests dmesg-warn
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
> >
> >   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d:
> >     - shard-dg2:          [PASS][5] -> [DMESG-WARN][6] +5 other tests dmesg-warn
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg2-6/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg2-5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html
> >
> >   * igt@kms_busy@extended-modeset-hang-oldfb-with-reset:
> >     - shard-dg1:          [PASS][7] -> [DMESG-WARN][8] +2 other tests dmesg-warn
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg1-12/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg1-18/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
> 
> Maarten, Ville, any ideas what to do about these?

Looks like we need the timeout to unbreak the modeset vs. reset
deadlock in a timely fashion.

I'm not where we signal/error the fences the modeset is waiting
for, but I guess that must be happening after the whole reset
sequence is done. Doing that earlier would seem like another
solution, but dunno what other fallout it would have.

-- 
Ville Syrjälä
Intel

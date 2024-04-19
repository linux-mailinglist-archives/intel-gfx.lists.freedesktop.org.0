Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438528AB3E8
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 18:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7DF10EB7C;
	Fri, 19 Apr 2024 16:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QWJTb5Ye";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD9E10FCF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 16:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713545817; x=1745081817;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J+funGCRnxDZC6rGiPMWWcmW0S7HYGCEl3l2KeGajJ8=;
 b=QWJTb5YeloIsQ8ghD4pTg/jRoL5inFo9atHNORGCbfklM6/K+c22WPbW
 BUR8qwZ64LeMdUIYaRbIEUSa08BcThLCq0LO00zOOhMuOKw8eRZrlP+A9
 a1mDqQ6TEg4YGzLrZXQw1o/p9cMIVWuwuOJrvdsb0EDnZX1mmfgZA5yAn
 EKDtWdKqXDb757Z+NSXBjE8yFO35Vn9YT0mqRc/qMnulCKGxTf25UVj0V
 OspI+jAK56KuHfK7congZMVKPlnTxLz2pSnfygv008UCfpKzSsisPouyO
 wWymvxYF3QrhtHUqJFk6gAf8eIZ+U2JBrG6uZuPOfBNgo3Wa23HHf3jzX A==;
X-CSE-ConnectionGUID: yGyzSdpOSYCsJnel2PM0kg==
X-CSE-MsgGUID: 2Xj8ZMW7SPq0cCRhEFGB8Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="19764537"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="19764537"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 09:56:57 -0700
X-CSE-ConnectionGUID: mXQYUfnxRxGy93w1vr1NpQ==
X-CSE-MsgGUID: RyskK0c1RtGyYbTh2qRZyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23455086"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Apr 2024 09:56:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Apr 2024 19:56:53 +0300
Date: Fri, 19 Apr 2024 19:56:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Musial, Ewelina" <ewelina.musial@intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>,
 LGCI Bug Filing <lgci.bug.filing@intel.com>,
 "Grabski, Mateusz" <mateusz.grabski@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLkJBVDogc3VjY2Vz?= =?utf-8?Q?s_fo?=
 =?utf-8?Q?r?= drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup (rev3)
Message-ID: <ZiKiVQ0WHfRCi2pY@intel.com>
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
 <171337812744.1482849.14997719345480382947@8e613ede5ea5>
 <87r0f2wrnh.fsf@intel.com>
 <PH7PR11MB70736EC611E2EC85B0133FB8930D2@PH7PR11MB7073.namprd11.prod.outlook.com>
 <87cyqlwy72.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87cyqlwy72.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Apr 19, 2024 at 11:31:29AM +0300, Jani Nikula wrote:
> 
> Got the results in the middle of the night; Ville, please merge. :)

Unfortunately GLK was AWOL at the time, so we didn't actually test
anything :( I've hit the retest button for good measure.

> 
> BR,
> Jani.
> 
> On Fri, 19 Apr 2024, "Musial, Ewelina" <ewelina.musial@intel.com> wrote:
> > + @Grabski, Mateusz please check it 
> >
> > Thanks,
> > Ewelina
> >
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com> 
> > Sent: Thursday, April 18, 2024 6:41 PM
> > To: Patchwork <patchwork@emeril.freedesktop.org>; Ville Syrjala <ville.syrjala@linux.intel.com>; LGCI Bug Filing <lgci.bug.filing@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: ✓ Fi.CI.BAT: success for drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup (rev3)
> >
> > On Wed, 17 Apr 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> >> == Series Details ==
> >>
> >> Series: drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup (rev3)
> >> URL   : https://patchwork.freedesktop.org/series/132390/
> >> State : success
> >>
> >> == Summary ==
> >>
> >> CI Bug Log - changes from CI_DRM_14597 -> Patchwork_132390v3 
> >> ====================================================
> >>
> >> Summary
> >> -------
> >>
> >>   **SUCCESS**
> >>
> >>   No regressions found.
> >>
> >>   External URL: 
> >> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html
> >
> > What happened here? BAT passed, but there are no IGT results, and the shards queue is empty?
> >
> > BR,
> > Jani.
> >
> >
> >>
> >> Participating hosts (38 -> 32)
> >> ------------------------------
> >>
> >>   Missing    (6): bat-dg1-7 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-dg2-11 bat-arls-3 
> >>
> >> Known issues
> >> ------------
> >>
> >>   Here are the changes found in Patchwork_132390v3 that come from known issues:
> >>
> >> ### IGT changes ###
> >>
> >> #### Issues hit ####
> >>
> >>   * igt@i915_selftest@live@gem:
> >>     - bat-dg2-9:          [PASS][1] -> [ABORT][2] ([i915#10366])
> >>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14597/bat-dg2-9/igt@i915_selftest@live@gem.html
> >>    [2]: 
> >> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/bat-dg2-9/
> >> igt@i915_selftest@live@gem.html
> >>
> >>   
> >>   [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
> >>
> >>
> >> Build changes
> >> -------------
> >>
> >>   * Linux: CI_DRM_14597 -> Patchwork_132390v3
> >>
> >>   CI-20190529: 20190529
> >>   CI_DRM_14597: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ git://anongit.freedesktop.org/gfx-ci/linux
> >>   IGT_7810: 189483744e9ff56ea573e07a049c5365404c7ecb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> >>   Patchwork_132390v3: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ 
> >> git://anongit.freedesktop.org/gfx-ci/linux
> >>
> >> == Logs ==
> >>
> >> For more details see: 
> >> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html
> >
> > --
> > Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel

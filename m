Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DA5433E6B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 20:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28BD6E879;
	Tue, 19 Oct 2021 18:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1166E879
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 18:29:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="228472592"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="228472592"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 11:29:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="444002990"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 19 Oct 2021 11:29:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 21:29:31 +0300
Date: Tue, 19 Oct 2021 21:29:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Claudio Suarez <cssk@net-c.es>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YW8Oipmj1zer0pjc@intel.com>
References: <20211016184226.3862-1-cssk@net-c.es>
 <163449070635.7564.15511861952406358587@emeril.freedesktop.org>
 <YW04qDtX4gpsLAZM@gineta.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YW04qDtX4gpsLAZM@gineta.localdomain>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgcmVw?=
 =?utf-8?q?lace_drm=5Fdetect=5Fhdmi=5Fmonitor=28=29_with_drm=5Fdisplay=5Fi?=
 =?utf-8?b?bmZvLmlzX2hkbWkgKHJldjMp?=
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

On Mon, Oct 18, 2021 at 11:04:40AM +0200, Claudio Suarez wrote:
> 
> Hi all,
> 
> On Sun, Oct 17, 2021 at 05:11:46PM -0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: replace drm_detect_hdmi_monitor() with drm_display_info.is_hdmi (rev3)
> > URL   : https://patchwork.freedesktop.org/series/95880/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_10744_full -> Patchwork_21360_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_21360_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_21360_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_21360_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@kms_bw@linear-tiling-6-displays-3840x2160p:
> >     - shard-tglb:         NOTRUN -> [SKIP][1]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21360/shard-tglb2/igt@kms_bw@linear-tiling-6-displays-3840x2160p.html
> 
> This is a false positive, isn't it ?

Yes, looks like unrelated nonsense.

> 
> - The test is skiped, not failed:
> 
> Test requirement not met in function run_test_linear_tiling, file ../tests/kms_bw.c:155:
> Test requirement: !(pipe > num_pipes)
> ASIC does not have 5 pipes
> Subtest linear-tiling-6-displays-3840x2160p: SKIP (0.000s)
> Starting subtest: linear-tiling-6-displays-3840x2160p
> Subtest linear-tiling-6-displays-3840x2160p: SKIP (0.000s)
> 
> 
> - linear-tiling-6-* is not even listed in https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21359/index.html
> 
> Do I have to do anything ? I have verified manually.
> 
> Where can I find the "bug team" ? Is this list ?

I've occasionally wondered about that myself...

-- 
Ville Syrjälä
Intel

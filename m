Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 751EB44E451
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 11:03:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B46266EBC4;
	Fri, 12 Nov 2021 10:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C419C6EBA8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 10:03:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="213837130"
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="213837130"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 02:03:33 -0800
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="504829152"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.185])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 02:03:31 -0800
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1mlTO4-0002a3-2Z; Fri, 12 Nov 2021 12:02:24 +0200
Date: Fri, 12 Nov 2021 12:02:24 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Message-ID: <YY47sFjDvh6Zm8lk@platvala-desk.ger.corp.intel.com>
References: <20211102222511.534310-1-matthew.d.roper@intel.com>
 <163590580286.11278.13067637281447506289@emeril.freedesktop.org>
 <20211111191352.GX137318@mdroper-desk1.amr.corp.intel.com>
 <9f63ba4e044e4bceb5d5ea44cf68fcca@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9f63ba4e044e4bceb5d5ea44cf68fcca@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Initial_workarounds_for_Xe=5FHP_SDV_and_DG2?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 11, 2021 at 09:57:34PM +0200, Vudum, Lakshminarayana wrote:
> spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3 test is not in CI bug log yet.
> 
> So, I can address this failure and re-report the results. FYI @Latvala, Petri

piglit results from postmerge are fed to cibuglog only if there's
failures to keep the cpu usage required by test listing under
control. Because of that, handling premerge failures like this is a
bit awkward. Recommendation for this is to just ignore it, looks like
snb just had a bad day running anything.


-- 
Petri Latvala


> 
> Lakshmi.
> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com> 
> Sent: Thursday, November 11, 2021 11:14 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>
> Subject: Re: ✗ Fi.CI.IGT: failure for i915: Initial workarounds for Xe_HP SDV and DG2
> 
> On Wed, Nov 03, 2021 at 02:16:42AM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: i915: Initial workarounds for Xe_HP SDV and DG2
> > URL   : https://patchwork.freedesktop.org/series/96513/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_10830_full -> Patchwork_21509_full 
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_21509_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_21509_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Participating hosts (10 -> 11)
> > ------------------------------
> > 
> >   Additional (1): pig-snb-2600
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_21509_full:
> > 
> > ### Piglit changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3 (NEW):
> >     - pig-snb-2600:       NOTRUN -> [FAIL][1] +25298 similar issues
> >    [1]: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21509/pig-snb-2600/
> > spec@arb_gpu_shader_fp64@execution@built-in-functions@fs-abs-dvec3.htm
> > l
> 
> piglit: error: waffle_display_connect failed due to
> WAFFLE_ERROR_UNKNOWN: open drm file for gbm failed
> 
> Seems to be a problem with piglit opening the DRM file handle on this new machine; the Xe_HP SDV and DG2 patches here wouldn't have affected the behavior of SNB.
> 
> Series applies to drm-intel-gt-next.  Thanks Clint and Anusha for the reviews.
> 
> 
> Matt
> 
> > 
> >   
> > New tests
> > ---------
> > 
> >   New tests have been introduced between CI_DRM_10830_full and Patchwork_21509_full:
> > 
> > ### New Piglit tests (24855) ###
> > 
> >   * fast_color_clear@all-colors:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * fast_color_clear@fast-slow-clear-interaction:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * fast_color_clear@fcc-blit-between-clears:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * fast_color_clear@fcc-read-after-clear blit rb:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * fast_color_clear@fcc-read-after-clear blit tex:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * fast_color_clear@fcc-read-after-clear copy rb:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * fast_color_clear@fcc-read-after-clear copy tex:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * fast_color_clear@fcc-read-after-clear read_pixels rb:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * fast_color_clear@fcc-read-after-clear read_pixels tex:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * fast_color_clear@fcc-read-after-clear sample tex:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * fast_color_clear@fcc-read-to-pbo-after-clear:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * fast_color_clear@non-redundant-clear:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * fast_color_clear@redundant-clear:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * hiz@hiz-depth-read-fbo-d24-s0:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-depth-read-fbo-d24-s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * hiz@hiz-depth-read-fbo-d24s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-depth-read-window-stencil0:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * hiz@hiz-depth-read-window-stencil1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-depth-stencil-test-fbo-d0-s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-depth-stencil-test-fbo-d24-s0:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * hiz@hiz-depth-stencil-test-fbo-d24-s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.09] s
> > 
> >   * hiz@hiz-depth-stencil-test-fbo-d24s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * hiz@hiz-depth-test-fbo-d24-s0:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-depth-test-fbo-d24-s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * hiz@hiz-depth-test-fbo-d24s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * hiz@hiz-depth-test-window-stencil0:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.09] s
> > 
> >   * hiz@hiz-depth-test-window-stencil1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-stencil-read-fbo-d0-s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-stencil-read-fbo-d24-s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * hiz@hiz-stencil-read-fbo-d24s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * hiz@hiz-stencil-read-window-depth0:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-stencil-read-window-depth1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * hiz@hiz-stencil-test-fbo-d0-s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * hiz@hiz-stencil-test-fbo-d24-s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * hiz@hiz-stencil-test-fbo-d24s8:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * hiz@hiz-stencil-test-window-depth0:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * hiz@hiz-stencil-test-window-depth1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@buffer with glbitmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@buffer with glblitframebuffer:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@buffer with glclear:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@buffer with glcleartexsubimage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@buffer with glcopyimagesubdata:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@buffer with glcopypixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@buffer with glcopytexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@buffer with gldrawpixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * object namespace pollution@buffer with glgeneratemipmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@buffer with glgetteximage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@buffer with glgetteximage-compressed:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@buffer with gltexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@framebuffer with glbitmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@framebuffer with glblitframebuffer:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@framebuffer with glclear:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.08] s
> > 
> >   * object namespace pollution@framebuffer with glcleartexsubimage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * object namespace pollution@framebuffer with glcopyimagesubdata:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@framebuffer with glcopypixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@framebuffer with glcopytexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@framebuffer with gldrawpixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@framebuffer with glgeneratemipmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.08] s
> > 
> >   * object namespace pollution@framebuffer with glgetteximage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.08] s
> > 
> >   * object namespace pollution@framebuffer with glgetteximage-compressed:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@framebuffer with gltexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@program with glbitmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@program with glblitframebuffer:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@program with glclear:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * object namespace pollution@program with glcleartexsubimage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * object namespace pollution@program with glcopyimagesubdata:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@program with glcopypixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@program with glcopytexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * object namespace pollution@program with glgeneratemipmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@program with glgetteximage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * object namespace pollution@program with glgetteximage-compressed:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * object namespace pollution@program with gltexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * object namespace pollution@renderbuffer with glbitmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@renderbuffer with glblitframebuffer:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * object namespace pollution@renderbuffer with glclear:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@renderbuffer with glcleartexsubimage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@renderbuffer with glcopyimagesubdata:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@renderbuffer with glcopypixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@renderbuffer with glcopytexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@renderbuffer with gldrawpixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * object namespace pollution@renderbuffer with glgeneratemipmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * object namespace pollution@renderbuffer with glgetteximage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@texture with glcleartexsubimage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * object namespace pollution@texture with glcopyimagesubdata:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * object namespace pollution@texture with glcopypixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@texture with glcopytexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@texture with gldrawpixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@texture with glgeneratemipmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@texture with glgetteximage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@texture with glgetteximage-compressed:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@texture with gltexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * object namespace pollution@vertex-array with glbitmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * object namespace pollution@vertex-array with glblitframebuffer:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * object namespace pollution@vertex-array with glclear:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * object namespace pollution@vertex-array with glcleartexsubimage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@vertex-array with glcopyimagesubdata:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@vertex-array with glcopypixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@vertex-array with glcopytexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@vertex-array with gldrawpixels:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@vertex-array with glgeneratemipmap:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * object namespace pollution@vertex-array with glgetteximage:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * object namespace pollution@vertex-array with glgetteximage-compressed:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * object namespace pollution@vertex-array with gltexsubimage2d:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * security@initialized-fbo:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.09] s
> > 
> >   * security@initialized-vbo:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@activeprogram-bad-program:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.08] s
> > 
> >   * shaders@activeprogram-get:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.08] s
> > 
> >   * shaders@attribute0:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@complex-loop-analysis-bug:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@createshaderprogram-attached-shaders:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@createshaderprogram-bad-type:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.11] s
> > 
> >   * shaders@dead-code-break-interaction:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@dependency-hints@exp2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@fragcoord_w:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@getuniform-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.09] s
> > 
> >   * shaders@getuniform-02:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@getuniform-03:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl link two programs, global initializer:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-algebraic-add-add-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-add-add-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-add-add-3:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-add-add-4:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-algebraic-add-sub-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-algebraic-add-sub-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-add-zero:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-add-zero-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-div-one:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-div-one-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-algebraic-logicand-false:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-algebraic-logicand-false-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-logicand-true:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-logicand-true-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-algebraic-logicor-false:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-logicor-false-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-logicor-true:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-algebraic-logicor-true-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-logicxor-false:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-algebraic-logicxor-true:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-mul-mul-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-mul-one:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-mul-one-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-mul-zero:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-algebraic-neg-neg:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-not-equals:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-not-notequals:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-pow-two:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-rcp-rcp:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-rcp-rsq:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-rcp-sqrt:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-rcp-sqrt-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-algebraic-sub-sub-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-sub-zero:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-algebraic-sub-zero-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-algebraic-sub-zero-3:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-algebraic-sub-zero-4:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-arb-fragment-coord-conventions:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.08] s
> > 
> >   * shaders@glsl-array-bounds-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-array-bounds-02:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-array-bounds-03:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-array-bounds-04:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-array-bounds-05:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-array-bounds-06:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-array-bounds-07:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-array-bounds-08:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-array-bounds-09:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-array-bounds-10:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-array-bounds-11:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-array-bounds-12:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-array-bounds-13:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-array-compare:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-array-compare-02:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-array-length:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-array-uniform:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-array-uniform-length:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-array-varying-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-bindattriblocation:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-bug-22603:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-cache-fallback-shader-source:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.09] s
> > 
> >   * shaders@glsl-clamp-vertex-color:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-complex-subscript:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-abs:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-acos:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-const-builtin-all:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-any:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-asin:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-atan:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-ceil:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-const-builtin-clamp:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-cos:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-cosh:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-cross:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-const-builtin-degrees:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-const-builtin-derivatives:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-distance:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-const-builtin-dot:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-const-builtin-equal:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-equal-bool:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.08] s
> > 
> >   * shaders@glsl-const-builtin-exp:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-exp2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-faceforward:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-floor:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-fract:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-greaterthan:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-greaterthanequal:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-inversesqrt:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-length:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-const-builtin-lessthan:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-lessthanequal:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-const-builtin-log:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-log2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-matrixcompmult:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-max:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-min:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-mix:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-mod:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-normalize:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-not:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-outerproduct:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-pow:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-const-builtin-radians:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-reflect:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-refract:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-sign:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-sin:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-builtin-smoothstep:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-const-builtin-sqrt:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-step:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-tan:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-builtin-transpose:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-const-folding-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-initializer-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-const-initializer-02:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-const-initializer-03:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-constant-folding-call-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-copy-propagation-if-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-copy-propagation-if-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-copy-propagation-if-3:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-copy-propagation-loop-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-copy-propagation-loop-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-copy-propagation-self-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-copy-propagation-self-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-copy-propagation-vector-indexing:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-cos:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.09] s
> > 
> >   * shaders@glsl-deadcode-call:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-deadcode-self-assign:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-deadcode-varying:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-derivs:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-derivs-abs:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-derivs-abs-sign:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-derivs-sign:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-derivs-swizzle:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-derivs-varyings:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-dlist-getattriblocation:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-empty-vs-no-fs:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-floating-constant-120:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-abs-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-abs-02:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-abs-03:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-abs-04:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-abs-neg:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-fs-abs-neg-with-intermediate:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-add-masked:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-all-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-fs-all-02:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-fs-any:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-array-redeclaration:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-asin:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-atan-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-atan-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-atan-3:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-bit-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-bit-02:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-bug25902:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.10] s
> > 
> >   * shaders@glsl-fs-ceil:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-fs-clamp-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-fs-clamp-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-fs-clamp-3:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-clamp-4:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-clamp-5:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-color-matrix:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.11] s
> > 
> >   * shaders@glsl-fs-conditional-output-write:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-continue-in-switch-in-do-while:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-fs-continue-inside-do-while:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-convolution-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-convolution-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-copy-propagation-texcoords-1:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-copy-propagation-texcoords-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-fs-cross:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-fs-cross-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-cross-3:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-discard-01:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.05] s
> > 
> >   * shaders@glsl-fs-discard-02:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.12] s
> > 
> >   * shaders@glsl-fs-discard-03:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.03] s
> > 
> >   * shaders@glsl-fs-discard-04:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.06] s
> > 
> >   * shaders@glsl-fs-dot-vec2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.07] s
> > 
> >   * shaders@glsl-fs-dot-vec2-2:
> >     - Statuses : 1 fail(s)
> >     - Exec time: [0.04] s
> > 
> >   * shaders@glsl-
> > 
> > == Logs ==
> > 
> > For more details see: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21509/index.html
> 
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

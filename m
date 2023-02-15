Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6B4697711
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 08:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1047C10E111;
	Wed, 15 Feb 2023 07:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B952D10E111;
 Wed, 15 Feb 2023 07:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676444759; x=1707980759;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v0HZJmds0TuG9z0N2FOHhx57xtypMjsdYvZDGJXnunQ=;
 b=ikuhZA/nd8FAmE8h1bO+A8H8Am83I+VuixP+EGJRhSZOBZIPQ+whGfb6
 BWJNz2tYvnN3LyGvkOxrIoPrMeZtG5a2lqDSfext+RTTKaSFDp/BST66x
 eArFt5ZSdowuL4sOuKHyfr19CX0B0ib7C3+ILgJdgIVAFYgNKSBpJuOVB
 EWoWAR1rhVVjeplW1eUkDiStxW7C5q8DT6R2yz/vvSo2RDg5NKdZNu/fD
 0BM6XeXRtsDn5qqOsPANoLeD1WsAEOXXcErt+MuSvxFcOFrCxOC/3l0g+
 uxYtOoIqBfZCDn8m+0OyoXsarqrxCqZhJI2ZTfX4XgWC6j52D5+g0msnd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329079751"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="329079751"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 23:05:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="758296074"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="758296074"
Received: from liuzhao-optiplex-7080.sh.intel.com (HELO localhost)
 ([10.239.160.112])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Feb 2023 23:05:48 -0800
Date: Wed, 15 Feb 2023 15:13:36 +0800
From: Zhao Liu <zhao1.liu@linux.intel.com>
To: Ira Weiny <ira.weiny@intel.com>
Message-ID: <Y+yGIPcTfirmdIdK@liuzhao-OptiPlex-7080>
References: <20221017093726.2070674-1-zhao1.liu@linux.intel.com>
 <63ec5ea4d162d_18bf5929443@iweiny-mobl.notmuch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63ec5ea4d162d_18bf5929443@iweiny-mobl.notmuch>
Subject: Re: [Intel-gfx] [PATCH 0/9] drm/i915: Replace kmap_atomic() with
 kmap_local_page()
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
Cc: dri-devel@lists.freedesktop.org, Zhenyu Wang <zhenyu.z.wang@intel.com>,
 Thomas =?utf-8?B?SGVsbHN0cu+/vW0=?= <thomas.hellstrom@linux.intel.com>,
 "Fabio M . De Francesco" <fmdefrancesco@gmail.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Zhao Liu <zhao1.liu@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Christian =?utf-8?B?S++/vW5pZw==?= <christian.koenig@amd.com>,
 Zhao Liu <zhao1.liu@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 14, 2023 at 08:25:08PM -0800, Ira Weiny wrote:
> Date: Tue, 14 Feb 2023 20:25:08 -0800
> From: Ira Weiny <ira.weiny@intel.com>
> Subject: Re: [PATCH 0/9] drm/i915: Replace kmap_atomic() with
>  kmap_local_page()
> 
> Zhao Liu wrote:
> > From: Zhao Liu <zhao1.liu@intel.com>
> > 
> > The use of kmap_atomic() is being deprecated in favor of
> > kmap_local_page()[1].
> 
> Zhao,
> 
> Was there ever a v2 of this series?  I'm not finding it on Lore.

Sorry Ira, my delay is too long, I was busy with other patch work,
I will refresh v2 soon, and push this forward!

Best Regards,
Zhao

> 
> Thanks,
> Ira
> 
> > 
> > In the following patches, we can convert the calls of kmap_atomic() /
> > kunmap_atomic() to kmap_local_page() / kunmap_local(), which can
> > instead do the mapping / unmapping regardless of the context.
> > 
> > With kmap_local_page(), the mapping is per thread, CPU local and not
> > globally visible.
> > 
> > [1]: https://lore.kernel.org/all/20220813220034.806698-1-ira.weiny@intel.com
> > ---
> > Zhao Liu (9):
> >   drm/i915: Use kmap_local_page() in gem/i915_gem_object.c
> >   drm/i915: Use kmap_local_page() in gem/i915_gem_pyhs.c
> >   drm/i915: Use kmap_local_page() in gem/i915_gem_shmem.c
> >   drm/i915: Use kmap_local_page() in gem/selftests/huge_pages.c
> >   drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_coherency.c
> >   drm/i915: Use kmap_local_page() in gem/selftests/i915_gem_context.c
> >   drm/i915: Use memcpy_from_page() in gt/uc/intel_uc_fw.c
> >   drm/i915: Use kmap_local_page() in i915_cmd_parser.c
> >   drm/i915: Use kmap_local_page() in gem/i915_gem_execbuffer.c
> > 
> >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c       | 10 +++++-----
> >  drivers/gpu/drm/i915/gem/i915_gem_object.c           |  8 +++-----
> >  drivers/gpu/drm/i915/gem/i915_gem_phys.c             |  8 ++++----
> >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c            |  6 ++++--
> >  drivers/gpu/drm/i915/gem/selftests/huge_pages.c      |  6 +++---
> >  .../gpu/drm/i915/gem/selftests/i915_gem_coherency.c  | 12 ++++--------
> >  .../gpu/drm/i915/gem/selftests/i915_gem_context.c    |  8 ++++----
> >  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c             |  5 +----
> >  drivers/gpu/drm/i915/i915_cmd_parser.c               |  4 ++--
> >  9 files changed, 30 insertions(+), 37 deletions(-)
> > 
> > -- 
> > 2.34.1
> > 
> 
> 

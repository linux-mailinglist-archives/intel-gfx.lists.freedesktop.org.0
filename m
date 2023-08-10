Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0D3777885
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 14:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB17410E513;
	Thu, 10 Aug 2023 12:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5885210E513
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 12:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691670903; x=1723206903;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RQd3bPXHis8rkbY1FQYBwd1w8XRKEHA1h5DfaxjO0S0=;
 b=fpmU3BEVViO0hu2gB+zHnYJZ6lmzbBpRL539L8kKy3830DiQiN//tQsS
 tEEPWTqOTbaLLg6363wdgIsJ3t+2C1JUh7NbXfY0a9sXvgRNezrlaOZWC
 TyAtDGewMEgGnJj958CWctyMHxvVtcrk53nopIsxLW1dzQA3bEGtM6qI1
 0qZ0CTAHYlRJvmanJUy6Fd8E3FADAK3fSX2aAONQXfNAcg8cablhET9vk
 yqOaib8cnSfZYLk/9npk0s43oGoY9p1lko/otfC+5bGqKGd/nOmD2VPWN
 8r0Qgm0XA22brLrSXcSZGkbePDg2B5tIWNzV6p1iJsmOpQI+W2Yiqqjkk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="457746541"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="457746541"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 05:35:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="822239266"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="822239266"
Received: from astheime-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.40.6])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 05:35:00 -0700
Date: Thu, 10 Aug 2023 14:34:57 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZNTZcahC8n2/nNpd@ashyti-mobl2.lan>
References: <20230801153242.2445478-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230801153242.2445478-1-jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: Fix Wa_22016122933
 implementation
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

pushed in drm-intel-gt-next.

I added two links to the commit logs: the first one refers to
this series, while the second refers to the series sent to CI
which includes the rebase conflict fix.

Hope this is fine.

Thanks,
Andi

On Tue, Aug 01, 2023 at 08:32:39AM -0700, Jonathan Cavitt wrote:
> WA_22016122933 was recently applied to all MeteorLake engines, which is
> simultaneously too broad (should only apply to Media engines) and too
> specific (should apply to all platforms that use the same media engine
> as MeteorLake).  Correct this for all current use cases.
> 
> There are two additional changes that deserve special attention:
> 
> 
> First, the usage of the workaround in i915_coherent_map_type required
> a more invasive change to check the gt, which was split into its own
> patch.
> 
> Second, the addition of write barriers during ct_read and
> gsc_fw_load_prepare were found to be unconditional, so the workaround
> tags were removed as the usages were not platform dependent.
> 
> v2:
> - Refactor i915_coherent_map_type to intel_gt_coherent_map_type and move
>   it to the gt folder as it now takes an intel_gt instead of a
>   drm_i915_private.
> 
> v3:
> - Remove additional gt requirement from shmem_create_from_object.
>   Instead of passing a gt to check if the workaround applies in
>   intel_gt_coherent_map_type, only check if the object is lmem to
>   determine the map type to use.
> 
> v4:
> - Fix formatting warnings.
> - Add this cover letter and all missing revision notes.
> - Add missing acks and reviews to commit messages.
> - Fix contributor ordering in commit messages.
> 
> Jonathan Cavitt (3):
>   drm/i915/gt: Simplify shmem_create_from_object map_type selection
>   drm/i915: Make i915_coherent_map_type GT-centric
>   drm/i915/gt: Apply workaround 22016122933 correctly
> 
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c    |  3 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h       |  4 ----
>  drivers/gpu/drm/i915/gem/i915_gem_pages.c        | 15 ---------------
>  .../drm/i915/gem/selftests/i915_gem_migrate.c    | 12 ++++++------
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c               | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt.h               |  9 +++++++++
>  drivers/gpu/drm/i915/gt/intel_gtt.c              |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_lrc.c              | 13 +++++++------
>  drivers/gpu/drm/i915/gt/intel_ring.c             |  3 ++-
>  drivers/gpu/drm/i915/gt/selftest_context.c       |  5 +++--
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c     |  4 ++--
>  drivers/gpu/drm/i915/gt/selftest_lrc.c           |  6 +++---
>  drivers/gpu/drm/i915/gt/shmem_utils.c            |  3 +--
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c        |  7 +------
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c           | 11 ++++++-----
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c        |  4 ----
>  drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c        |  3 +--
>  drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c         |  3 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c       |  3 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c         |  5 ++++-
>  drivers/gpu/drm/i915/selftests/igt_spinner.c     |  2 +-
>  22 files changed, 71 insertions(+), 66 deletions(-)
> 
> -- 
> 2.25.1

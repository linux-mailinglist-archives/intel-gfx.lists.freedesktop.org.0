Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD6B40F434
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 10:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08C1B6EC11;
	Fri, 17 Sep 2021 08:34:31 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212726EC10;
 Fri, 17 Sep 2021 08:34:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222790780"
X-IronPort-AV: E=Sophos;i="5.85,300,1624345200"; d="scan'208";a="222790780"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 01:34:15 -0700
X-IronPort-AV: E=Sophos;i="5.85,300,1624345200"; d="scan'208";a="554516520"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 01:34:13 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1mR9NA-0001cy-Ba; Fri, 17 Sep 2021 11:37:28 +0300
Date: Fri, 17 Sep 2021 11:37:28 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Slawomir Milczarek <slawomir.milczarek@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Message-ID: <YURTyDN+Y2Odmm1B@platvala-desk.ger.corp.intel.com>
References: <20210915215558.2473428-1-John.C.Harrison@Intel.com>
 <20210915215558.2473428-2-John.C.Harrison@Intel.com>
 <YUMHcIsB1+9UmWKV@platvala-desk.ger.corp.intel.com>
 <e4f66112-8628-0870-81a3-622838cdd86a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4f66112-8628-0870-81a3-622838cdd86a@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/1] tests/i915/query: Query,
 parse and validate the hwconfig table
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

On Thu, Sep 16, 2021 at 10:27:41AM -0700, John Harrison wrote:
> On 9/16/2021 01:59, Petri Latvala wrote:
> > On Wed, Sep 15, 2021 at 02:55:58PM -0700, John.C.Harrison@Intel.com wrote:
> > > From: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > 
> > > Newer platforms have an embedded table giving details about that
> > > platform's hardware configuration. This table can be retrieved from
> > > the KMD via the existing query API. So add a test for it as both an
> > > example of how to fetch the table and to validate the contents as much
> > > as is possible.
> > > 
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > Cc: Slawomir Milczarek <slawomir.milczarek@intel.com>
> > > Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> > > ---
> > >   include/drm-uapi/i915_drm.h |   1 +
> > >   lib/intel_hwconfig_types.h  | 106 +++++++++++++++++++++++
> > >   tests/i915/i915_query.c     | 168 ++++++++++++++++++++++++++++++++++++
> > >   3 files changed, 275 insertions(+)
> > >   create mode 100644 lib/intel_hwconfig_types.h
> > > 
> > > diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
> > > index b9632bb2c..ae0c8dfad 100644
> > > --- a/include/drm-uapi/i915_drm.h
> > > +++ b/include/drm-uapi/i915_drm.h
> > > @@ -2451,6 +2451,7 @@ struct drm_i915_query_item {
> > >   #define DRM_I915_QUERY_ENGINE_INFO	2
> > >   #define DRM_I915_QUERY_PERF_CONFIG      3
> > >   #define DRM_I915_QUERY_MEMORY_REGIONS   4
> > > +#define DRM_I915_QUERY_HWCONFIG_TABLE   5
> > >   /* Must be kept compact -- no holes and well documented */
> > Please update i915_drm.h with a copy from the kernel and state in the
> > commit message which kernel commit sha it's from. If this change is
> > not in the kernel yet, add this token to lib/i915/i915_drm_local.h
> > instead.
> > 
> > 
> Neither side is merged yet. My understanding is that all sides need to be
> posted in parallel for CI to work. Once green and reviewed, the kernel side
> gets merged first. Then the IGT/UMD patches get updated with the official
> kernel headers, reposted and then merged.

That lockstep dancing removal is the point of i915_drm_local.h. IGT
side can even be merged that way before kernel side is ready, then
updated with the real thing later at whatever cadence.


-- 
Petri Latvala

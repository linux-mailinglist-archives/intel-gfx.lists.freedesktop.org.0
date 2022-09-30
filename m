Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5265F0D97
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 16:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033F410ED32;
	Fri, 30 Sep 2022 14:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F8C10ED32
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 14:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664548339; x=1696084339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xE0WrHNEJe5Af4hDCqJMcMYl15QP7YYy34er/iV/AFA=;
 b=LhUmVhV2PzcKp9Cbtym0cQPXYLxgzdWh4h0epal1BKsNirRsbzmVXbrx
 vxZyErLQCWDpqlI5d7P53X0tXW3PkRJjmcPZBduj10SYR+ExmwOfIecom
 cVzZ/ct/+Zh402yRk9pyHgmx//kxOvCHBy2JrjM/ebi27XNHcsrqpaiht
 HEUo74X7lvYN90xYnRU7Lf98XA8DaXvIRVG5HMRex6FnMvX0ZzYDYtjrc
 88yiJimvOzaoIL97MelPpUkUDwXf45u1gIhLSxBr1HmlidSxL3qdrbZmH
 tm8VtRZZS7iqEatAAwFG4Yvjmvv117/oAKv+RHfqgyB5g+if7OH5Zd7eg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="388482511"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="388482511"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:32:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="867828769"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="867828769"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 30 Sep 2022 07:32:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Sep 2022 17:32:15 +0300
Date: Fri, 30 Sep 2022 17:32:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Yzb97150RzdA9Sai@intel.com>
References: <20220930134731.389416-1-matthew.auld@intel.com>
 <Yzb2iHBSFpr6i8B2@intel.com>
 <09fcae20-0f50-d43f-336e-7f82293ce97c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <09fcae20-0f50-d43f-336e-7f82293ce97c@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 30, 2022 at 03:10:41PM +0100, Matthew Auld wrote:
> On 30/09/2022 15:00, Ville Syrjälä wrote:
> > On Fri, Sep 30, 2022 at 02:47:30PM +0100, Matthew Auld wrote:
> >> For these types of display buffers, we need to able to CPU access some
> >> part of the backing memory in prepare_plane_clear_colors(). As a result
> >> we need to ensure we always place in the mappable part of lmem, which
> >> becomes necessary on small-bar systems.
> >>
> >> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
> >> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
> >> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Cc: Nirmoy Das <nirmoy.das@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_fb_pin.c   | 11 ++++--
> >>   drivers/gpu/drm/i915/gem/i915_gem_object.c    | 37 ++++++++++++++++++-
> >>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 ++
> >>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
> >>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  5 ++-
> >>   5 files changed, 53 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> >> index c86e5d4ee016..f83cf41ddd63 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> >> @@ -139,9 +139,14 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> >>   	ret = i915_gem_object_lock(obj, &ww);
> >>   	if (!ret && phys_cursor)
> >>   		ret = i915_gem_object_attach_phys(obj, alignment);
> >> -	else if (!ret && HAS_LMEM(dev_priv))
> >> -		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> >> -	/* TODO: Do we need to sync when migration becomes async? */
> > 
> > Why is the TODO being removed?
> 
> Just because we now know we do a fence sync below, when binding into the 
> GGTT (this comment was from before we had async moves/migrations). I can 
> a make a note of that in the commit message. Or perhaps change the 
> comment to "Should we rather make this async, currently we sync below 
> which is maybe not optimal?" :)

Shrug. As long as the commit message will get some explanation
we should be good. Could even be a separate patch since it
seems entirely orthogonal to the actual contents of this patch.

-- 
Ville Syrjälä
Intel

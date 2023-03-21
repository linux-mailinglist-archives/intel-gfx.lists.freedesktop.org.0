Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E076C3E88
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 00:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E713510E195;
	Tue, 21 Mar 2023 23:33:29 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1688910E20C
 for <Intel-GFX@lists.freedesktop.org>; Tue, 21 Mar 2023 23:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679441607; x=1710977607;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4EJZ/wBxUV+J/7gAtpTvErQIJo9fOMcnRfO0/vpqby4=;
 b=SME0MY1jkuO4aDvnIwqJtUzSLhYlvxjxNaaXCivUnTf6o2+amJTyYUMr
 oR7Hcvz2uh2VzYdsyRkOFs4L7S5Wkcfw9gxhByydqxgRmiX22Vt3iJaOg
 oE02fVS3nIdJvttPqZAr1qb4NbXjYE9ey9X2PYWEBX275Sg7+zBDP1Z5/
 S0U+7ZhmUw6aVQg5Cad9U3fIYeLd1uCG8uL57yTSiRumwuxy/OC9paLrj
 Dk698dkoTvqVZj8VtxaRWANVgVXv5GR7WMMLaZdAtV13K9QKWNGBe0Ik9
 4uYpdMa3xj85XPRmoZMRnOwR2ziyox/98O2CIWhl1oNOWw0KX2A20gBr7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="322925186"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="322925186"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 16:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="770839575"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="770839575"
Received: from rbirkl-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.222.70])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 16:33:24 -0700
Date: Wed, 22 Mar 2023 00:33:01 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZBo+rVL0s8JuNi0t@ashyti-mobl2.lan>
References: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
 <eeec7ffd-0e77-9360-6bd3-9054c23b77a5@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eeec7ffd-0e77-9360-6bd3-9054c23b77a5@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
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
Cc: Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> > diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.h b/drivers/gpu/drm/i915/selftests/igt_live_test.h
> > index 36ed42736c52..209b0548c603 100644
> > --- a/drivers/gpu/drm/i915/selftests/igt_live_test.h
> > +++ b/drivers/gpu/drm/i915/selftests/igt_live_test.h
> > @@ -27,9 +27,9 @@ struct igt_live_test {
> >    * e.g. if the GPU was reset.
> >    */
> >   int igt_live_test_begin(struct igt_live_test *t,
> > -			struct drm_i915_private *i915,
> > +			struct intel_gt *gt,
> >   			const char *func,
> >   			const char *name);
> > -int igt_live_test_end(struct igt_live_test *t);
> > +int igt_live_test_end(struct igt_live_test *t, struct intel_gt *gt);
> 
> Back in the day the plan was that live selftests are device focused and then
> we also have intel_gt_live_subtests, which are obviously GT focused. So in
> that sense adding a single GT parameter to igt_live_test_begin isn't
> something I immediately understand.
> 
> Could you explain in one or two practical examples what is not working
> properly and how is this patch fixing it?

Tejas, would it help to split this patch in several patches?

Andi

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB71C7C8341
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 12:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E207610E073;
	Fri, 13 Oct 2023 10:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D978B10E073
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 10:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697193471; x=1728729471;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Ay7xRdohOdZbhRR6pTWf3lj5N0BLAH0TikNsah6ZliY=;
 b=EoWzyjz4hLbCd2uq0jxRborXYvEquA8Gg1WIuFCsMX+RbVUv2/S8XVVa
 ZR2MEF/lhHRLihK3cF3StZo/P9l2nlmVE2MXe8oLTVU4UlNTjVdORsosw
 pQdZX9lfKRUNFO2ZuSwqFrf1lC+LR2beXPbnA14uP46Dg3g51zxi64ANM
 GI5WqQihqZJt7CDqj5Mr6GG59uEz9mtoDPZSyaFz7sq8KlNuPuWKtJeHn
 quuvQsC+37u8/sgqNiytIejfaDs+NFU/8VT9XVq60r/EatedYHhG9xaZV
 V9eKNPcJCQT5h1pW3dp2lX4hV1Me9lvH+QHRoyJszUNnA3NBdGZDwP8E0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="388002820"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="388002820"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:37:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="704606321"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="704606321"
Received: from kesooi-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.215.155.173])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:37:43 -0700
Date: Fri, 13 Oct 2023 12:37:38 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZSkd8m9xIbWESqRj@ashyti-mobl2.lan>
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
 <20231012223826.2556700-4-jonathan.cavitt@intel.com>
 <b40599f6-1808-44e0-88c0-0b7ff30ed74d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b40599f6-1808-44e0-88c0-0b7ff30ed74d@intel.com>
Subject: Re: [Intel-gfx] [PATCH v13 3/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 saurabhg.gupta@intel.com, chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi John,

...

> >   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
> >   {
> >   	struct drm_i915_private *i915 = ggtt->vm.i915;
> > +	struct intel_gt *gt;
> > -	gen8_ggtt_invalidate(ggtt);
> > -
> > -	if (GRAPHICS_VER(i915) >= 12) {
> > -		struct intel_gt *gt;
> > +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> > +		gen8_ggtt_invalidate(ggtt);
> This has not changed? As per comments from Matthew Roper and Nirmoy Das,
> there needs to be a fixup patch first to stop gen8_ggtt_invalidate() from
> being called on invalid platforms.

Nirmoy has been working on this, meantime.

https://patchwork.freedesktop.org/series/125111/

Andi

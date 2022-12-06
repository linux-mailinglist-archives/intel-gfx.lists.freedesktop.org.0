Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 353B564489F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 17:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4926E10E0AC;
	Tue,  6 Dec 2022 16:02:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DDAF10E0AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 16:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670342541; x=1701878541;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=f3uFMffh+yEsJhSG+F7KaZrdhs+PMYuAGPmAwu2gY/I=;
 b=YV397FwnLmaxc21HpPk/K6oewlxko1Eh/dIDjhC8nmRVwJBTRgKs8iTL
 UXrtDPdGMQ/VGRDp/hqDDfrvIP3bh2a5JSHvhi/MzuyMiG07VnDg3e1jB
 6RGfgvegEq9z99bjvDbE4ibC2XheQ3fm+wnmTsLKYDr3ldFFFWJsA8UcL
 JV0qUjOq1VO625vTGfvZMQ8UjWQji5ExTFWgorZISeBSgh4X0SwVeKUxt
 7RIsrivtHBp0E7exGUItlyJsuGFV/b1dZkSZAJDtV0d7WDkw8Wp3laYWX
 Ba0RIfG8eN41mcPlxbXeGH1C/BEr4Fj0vBwc3dHTHaL1BsaxsX65hahS5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="380951492"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="380951492"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 08:01:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="975120062"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="975120062"
Received: from jhaapako-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.214.21])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 08:01:11 -0800
Date: Tue, 6 Dec 2022 17:01:07 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y49nQw5QJE3ZPdvK@ashyti-mobl2.lan>
References: <20221202122844.428006-1-matthew.auld@intel.com>
 <20221202122844.428006-2-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221202122844.428006-2-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915/selftests: use
 live_subtests for live_migrate
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
 Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Fri, Dec 02, 2022 at 12:28:43PM +0000, Matthew Auld wrote:
> Probably a good idea to do an igt_flush_test() at the end of each
> subtest, just to be sure the previous work has been flushed and doesn't
> somehow interfere with the current subtest.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

[...]

> @@ -647,7 +661,7 @@ int intel_migrate_live_selftests(struct drm_i915_private *i915)
>  	if (!gt->migrate.context)
>  		return 0;
>  
> -	return i915_subtests(tests, &gt->migrate);
> +	return intel_gt_live_subtests(tests, gt);

yes... this calls the gt teardown function that waits for all the
works to end and yields to userspace signals... makes sense.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

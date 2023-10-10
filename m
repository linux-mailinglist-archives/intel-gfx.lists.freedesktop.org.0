Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6184B7C0177
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026E810E39E;
	Tue, 10 Oct 2023 16:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1EF10E39E
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 16:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696954776; x=1728490776;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SySycLK+BbsyVJpRwMZSvDVr8Ayoh4Np2Wzh6Jbqaac=;
 b=K7aSuMklmqVtDlvwIvgEjbZlTT5z3fDE2jMLZ0B2XYuL+ZXC5k9uZgOW
 q2YK0hqC5219Fnnjwe1NdxnYAEVaC4fOHHxfIWaN9KN2Hq5DXJVN24qpp
 5ioINxtTX3JWtE1onEKjWTLw1p/wuQxf11ym160FFQ0L+BHv01YCXFjoY
 PvaqwbMtorsbVoQvkUB8ycZu7f/aDzb8YGJHbphDj+YyxQn8rRMPc+w4f
 MbXU/3rDVf7x8ujzc2hsyQvdImBedtUpkc4hRllVeenMbG72mR2UkcRkF
 kDgeL8MxkLesoefewlKj+8AUjnntDnZ7ZqCP1kf1rWBIPQ1I238/A18om A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="6002076"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="6002076"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:17:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000754543"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000754543"
Received: from ppalanyk-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.148.82])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:17:32 -0700
Date: Tue, 10 Oct 2023 18:17:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZSV5F4NHv/I8Q0PH@ashyti-mobl2.lan>
References: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
 <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
 <ZSVpunHMTkvNoX77@ashyti-mobl2.lan>
 <20231010160150.GF5757@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010160150.GF5757@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> > > > FIXME: CAT errors are cropping up on MTL.  This removes them,
> > > > but the real root cause must still be diagnosed.
> > > 
> > > Do you have a link to specific IGT test(s) that illustrate the CAT
> > > errors so that we can ensure that they now appear fixed in CI?
> > 
> > this one:
> > 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124599v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html
> > 
> > Andi
> 
> Wait, now I'm confused.  That's a failure caused by a different patch
> series (one that we won't be moving forward with).  The live@hugepages
> test is always passing on drm-tip today:
> https://intel-gfx-ci.01.org/tree/drm-tip/igt@i915_selftest@live@hugepages.html

yes, true, but that patch allows us to move forward with the
testing and hit the CAT error.

(it was the most reachable link I found :))

> Is there a test that's giving CAT errors on drm-tip itself (even
> sporadically) that we can monitor to see the impact of Jonathan's patch
> here?

Otherwise this one:

https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13667/re-mtlp-3/igt@gem_exec_fence@parallel.html#dmesg-warnings11

Andi

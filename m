Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68B174EC3C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 13:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07CD310E36E;
	Tue, 11 Jul 2023 11:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C05F10E36E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 11:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689073581; x=1720609581;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=P4qBqir9MPMzI8S/sVgTpCob0zP9Vu9qoNMVyuj2ukY=;
 b=FRrcw+xcaiVHuN2EfIRtp/YF/nE3l0U6YOJ0VHz/TVD8Oe5kTJGNgX4w
 N4o/MWqX0Moonu850IGQpwZCvV3ubLdjSL6O6/q7UnCcXRKBm46LjicAO
 PX7bLhe68a3iShKcLmC1X+S7L1CzPVeOb0auaqWjB8MGDb24lqVIf34WK
 E04O6TF5aIArjkK11AlNPblQOcKpS+GVGQ439sQKHouygFs5Ho72wrtA4
 o/Cn0Mj85SHgfkxKc3hAxxzLF3oJ2CQBZw/MswlQ+EZcQxdPY3nX8a06E
 yREJ4sKR1PjQ6IJsR/3SiANsWqoflljZHMZiOp+D1r+T/YJ5cYPbZf6QX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344908204"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="344908204"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 04:06:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="834642671"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="834642671"
Received: from sbodin-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.13])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 04:06:11 -0700
Date: Tue, 11 Jul 2023 13:06:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZK03m76B7LFaDszp@ashyti-mobl2.lan>
References: <20230704080727.2665-1-shawn.c.lee@intel.com>
 <ZK0vdPlGUbHKa6jo@ashyti-mobl2.lan> <87y1jmhgtd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y1jmhgtd.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine mmio debug flow to avoid
 bad unlock balance detected.
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

> >> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> >> index 796ebfe6c550..9d665978cc43 100644
> >> --- a/drivers/gpu/drm/i915/intel_uncore.c
> >> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> >> @@ -1931,9 +1931,6 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
> >>  		    const bool read,
> >>  		    const bool before)
> >>  {
> >> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
> >> -		return;
> >> -
> >
> > this is a very good catch! I'm fine with the change from my side:
> >
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Nope, there's a bug in the patch.
> 
> https://lore.kernel.org/r/87ilb00zot.fsf@intel.com

OK, I missed your reply.

Thanks, Jani!

Andi

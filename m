Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BA8879D05
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 21:38:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E991110EECA;
	Tue, 12 Mar 2024 20:38:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j0dOAMSp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14CC10EE25;
 Tue, 12 Mar 2024 20:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710275883; x=1741811883;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=wUxiOyax77zUtSgs22IqO/hNnlK6lYN7E6k4/7hTRDQ=;
 b=j0dOAMSpdIR83qQk7Wt70MODje5V9PzzNdqDvAk2AknVsCn3V4wdDaUL
 alUsWPwoKF6Zv61R/bLVlawgGeNH9uI745dR4Z28gVk0Oomw4LnSGAdJk
 fOU88JqTiZVQ3729I0ZjqpfUZCjVWcx7nbYN2vBrTgOjLCJ56dGmzcCVJ
 1cAxKkpWedPupkC2r30q4H105v9doF8Rlw2K0TqNUUyzSnGbrFr5+trXt
 rzgBoAylcYLkq1V5Kzq6Z0B8u2kZL/+kHVTt7gyc8/wZRA9CLhvVrxAmP
 4p/TcFvAmPuaPAuLlb/f+qc5RGRGEC9C4nWHuz/GBugeT6M+lwNhqnQB/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4861902"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4861902"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 13:38:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16311033"
Received: from unknown (HELO intel.com) ([10.247.118.142])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 13:37:56 -0700
Date: Tue, 12 Mar 2024 21:37:50 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 John Harrison <John.C.Harrison@intel.com>, stable@vger.kernel.org,
 Andi Shyti <andi.shyti@kernel.org>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v5 1/4] drm/i915/gt: Disable HW load balancing for CCS
Message-ID: <ZfC9Ho6zAxjZDQ-O@ashyti-mobl2.lan>
References: <20240308202223.406384-1-andi.shyti@linux.intel.com>
 <20240308202223.406384-2-andi.shyti@linux.intel.com>
 <20240312165825.GK718896@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240312165825.GK718896@mdroper-desk1.amr.corp.intel.com>
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

Hi Matt,

...

> >  #define GEN12_RCU_MODE				_MMIO(0x14800)
> >  #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
> > +#define   XEHP_RCU_MODE_FIXED_SLICE_CCS_MODE	REG_BIT(1)
> 
> Nitpick: we usually order register bits in descending order.  Aside from
> that,

I can take care of it.

> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!
Andi

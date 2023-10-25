Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 904227D6AA9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25ED510E59B;
	Wed, 25 Oct 2023 12:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 428 seconds by postgrey-1.36 at gabe;
 Wed, 25 Oct 2023 12:00:33 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F37D10E59B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698235233; x=1729771233;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TNzg+MIBwG6SSa/l4BUCesBK7A6YbR+V303xAXDElSA=;
 b=Lz/qIYHTuFRnkxKwVGrXIKk/b6DOtbmWgQ84AJA7bTXo2tDDP2ZJW69h
 eil0Q/GfaYKrdTRZHT+tkK1fjsBnAWBF8KFICasaN9GYdpOhmjv31oDpp
 aNy9Ni3ep9GEHEvGovOQPXmJWMHerPMX3/KCps4RpZ8Y3T2SLjml3fckV
 may5yqrehg6JiLKfC4MFc3IO4hW5r2ZArMa/DCkUq7lfJilvZh2+bGRpl
 R7nbQmgYU91gYqBbGcW+FdkReWxmyaRKijO4R/Z0sKw5b08fQAZDDYuMG
 vw0xC0fAb+NgRgPFdZclo6uG2AN7EWBP/3pex4cN/MD5sQCeuPOv3xNlB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="44869"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="44869"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:53:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758847846"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="758847846"
Received: from shenkel-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.63.39])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 04:53:23 -0700
Date: Wed, 25 Oct 2023 13:53:20 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Message-ID: <ZTkBsAW2l6ESAlnB@ashyti-mobl2.lan>
References: <20231020152441.3764850-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020152441.3764850-1-umesh.nerlige.ramappa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Check if pmu is closed before
 stopping event
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Umesh,

On Fri, Oct 20, 2023 at 08:24:41AM -0700, Umesh Nerlige Ramappa wrote:
> When the driver unbinds, pmu is unregistered and i915->uabi_engines is
> set to RB_ROOT. Due to this, when i915 PMU tries to stop the engine
> events, it issues a warn_on because engine lookup fails.
> 
> All perf hooks are taking care of this using a pmu->closed flag that is
> set when PMU unregisters. The stop event seems to have been left out.
> 
> Check for pmu->closed in pmu_event_stop as well.
> 
> Based on discussion here -
> https://patchwork.freedesktop.org/patch/492079/?series=105790&rev=2
> 
> v2: s/is/if/ in commit title
> v3: Add fixes tag and cc stable
> 
> Cc: <stable@vger.kernel.org> # v5.11+
> Fixes: b00bccb3f0bb ("drm/i915/pmu: Handle PCI unbind")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

the failure from the shards tests looks unrelated.

Please next time don't forget to add a versioning to the patches
you are sending.

Pushed in drm-intel-gt-next.

Thank you,
Andi

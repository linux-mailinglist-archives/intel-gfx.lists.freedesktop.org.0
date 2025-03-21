Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8867FA6BB4B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 13:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 110D710E7C2;
	Fri, 21 Mar 2025 12:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="glgvuH12";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E3310E7C2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 12:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742561906; x=1774097906;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SNvWpm1iAG7GlOpGw61hX9SsGUGWjbf2PSHwTanCpPg=;
 b=glgvuH12TAAkJUk7YV67xku1JXfV/iPb2CO/uwHmeF/UrmhCUkSbRuF/
 XN9GekZOcOx8j9cSj6SuFEHk/z5k8aG12i6G8NbBZ9QZ4fBXZdCB2SMPv
 HtB8a6yWzknj1mo5CkTGuDIwN4O3vUc1YRIq93rD1w5Aqi++bW5jM/m0y
 KbDqi5MWlB2YpTPvl9OwDqwqGKemjfpQTsqs12nfYU9X3yR3/Bjqco2iF
 vtiPWTyU9EY69Spues+P7xcl4XsXxUkJlLyAs8ayqq2PrYfrd+SusIkFO
 A6jscPognttF4Q0pX7TiU9D0Otppe7o8JdZ71PqyxArVnu1QB3M53yP8m w==;
X-CSE-ConnectionGUID: 62yUM3NvTEeYY/kk43hY1g==
X-CSE-MsgGUID: CnKi9BMWTFmVfBelHtgqbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="31417883"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="31417883"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:58:26 -0700
X-CSE-ConnectionGUID: 2ulQE3a/Riywo10rqTRQUQ==
X-CSE-MsgGUID: FcarTUp4Sdught9L62h7JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123098441"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 05:58:23 -0700
Date: Fri, 21 Mar 2025 13:58:20 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: =?iso-8859-15?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Subject: Re: [PATCH] drm/i915: Increase I915_PARAM_MMAP_GTT_VERSION version
 to indicate support for partial mmaps
Message-ID: <Z91ibMuhW8nxvjVl@ashyti-mobl2.lan>
References: <20250306210827.171147-1-jose.souza@intel.com>
 <Z91hlFGB7ukxrWyG@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z91hlFGB7ukxrWyG@ashyti-mobl2.lan>
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

On Fri, Mar 21, 2025 at 01:54:44PM +0100, Andi Shyti wrote:
> Hi Jose,
> 
> On Thu, Mar 06, 2025 at 01:08:27PM -0800, José Roberto de Souza wrote:
> > Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")
> > was the last patch of several patches fixing multiple partial mmaps.
> > But without a bump in I915_PARAM_MMAP_GTT_VERSION there is no clean
> > way for UMD to know if it can do multiple partial mmaps.
> 
> right! Thanks for taking care of this.
> 
> > Fixes: 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Nirmoy Das <nirmoy.das@intel.com>
> > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Oh, OK, this was already merged.

Andi

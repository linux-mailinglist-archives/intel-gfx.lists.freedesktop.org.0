Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF784A97F9
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 11:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E684610F5F5;
	Fri,  4 Feb 2022 10:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7892B10F5F5;
 Fri,  4 Feb 2022 10:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643971237; x=1675507237;
 h=message-id:subject:from:to:date:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=44oZ1/Yun3afCQ1D2PbMgnS5Zbokw7eHUG0rPJZ+uqU=;
 b=NzYkxa2D46Ev/exM8Mc0RFOiVohjA5OZ9IoH+dCrowW1okowhx2nA2AE
 yCc5haG5aQMgHmXdR4UK18gYkwXLGwnfpayMZsHwn9iXrOGossf8sPqX1
 CmP4nOOZ6A+hQOYqQWpzGRxHLPUZMXiW46J02bqqOL5I2aVWsfNVFw3mQ
 bQ8ClkqxVEyy9ARAIIA0x+gS9aeyWtC8Am0jhz7/Elq60Dllq/McFM/cM
 IHWWT5O6o0hgsTtSv88O1Grs3loW8rtvRg/QiP4JWpzEdAwUnm8LvulY/
 kuiFcDq1ts9EP7NSWT47A9yxHfaSMC9Q82zTnF/ToWR6Kb5uUaDl44d8G g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="231915575"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="231915575"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 02:40:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="498448050"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.124])
 ([10.249.254.124])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 02:40:34 -0800
Message-ID: <c722ceda1ffed0d9065f0d6ed63faa5d3f2e7a9a.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 sumit.semwal@linaro.org, daniel.vetter@ffwll.ch,
 dri-devel@lists.freedesktop.org,  linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Fri, 04 Feb 2022 11:40:32 +0100
In-Reply-To: <20220204100429.2049-1-christian.koenig@amd.com>
References: <20220204100429.2049-1-christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] Add warning for nesting dma_fence containers
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

On Fri, 2022-02-04 at 11:04 +0100, Christian König wrote:
> Hi everyone,
> 
> Since some operations can then lead to recursive handling nesting
> dma_fence containers into each other is only allowed under some
> restrictions.
> 
> dma_fence_array containers can be attached to dma_fence_chain
> containers and dma_fence_chain containers by chaining them together.
> 
> In all other cases the individual fences should be extracted with
> the appropriate iterators and added to the new containers
> individually.
> 
> I've separated the i915 cleanup from this change since it is
> generally a different functionality and the build bots complained
> about some issues with those patches.
> 
> Most patches are already reviewd, but especially the first one still
> needs an rb tag.
> 
> Please review and comment,

I see you dropped the i915 patch (probably due to lack of reviews?),
Got distracted with other things, but I'll see if I can resurrect that
and get it reviewed and merged.

Thanks, 
Thomas


> Christian.
> 
> 



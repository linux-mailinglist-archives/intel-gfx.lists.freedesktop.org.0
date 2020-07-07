Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1904F216913
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 11:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7264C89BA5;
	Tue,  7 Jul 2020 09:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7468389BA5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 09:31:48 +0000 (UTC)
IronPort-SDR: GmabZWAfaDJlbhu2WNjs9coWg7E+eMKzGIptk7lftmw31fNLvv2V7woayCRutMnxGlLtfrHcGe
 qv6qv3DWICdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="145662916"
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="145662916"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 02:31:47 -0700
IronPort-SDR: KlYuzDFSlEgOyavfzGBJGqRhi9E0NET0kohh6cl5WWEXwvpoH8QVjtN/m8iPwtxA0hQ0SkQkV5
 2hLC09NaNHIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="427418646"
Received: from gyosipov-mobl1.ger.corp.intel.com (HELO [10.251.181.28])
 ([10.251.181.28])
 by orsmga004.jf.intel.com with ESMTP; 07 Jul 2020 02:31:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706224308.22636-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <270a2568-9ee4-1ef5-8e76-a7c110350300@intel.com>
Date: Tue, 7 Jul 2020 10:31:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200706224308.22636-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update dma-attributes for our sg
 DMA
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 06/07/2020 23:43, Chris Wilson wrote:
> Looking through the attributes for DMA mappings, it appears that by
> default dma_map_sg will try and create a kernel accessible map of the
> page. We never access this, as we either have a struct page already or
> an iomap, so we can request that the dma mapper does not create one.
> Without a kernel map in place, one presumes the rest of the memory
> control attributes do not apply. We also explicitly control the caches
> around the mappings, so we can ask it not to bother synchronising itself.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

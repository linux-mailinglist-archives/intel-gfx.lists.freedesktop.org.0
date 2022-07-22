Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D53AB57DF60
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jul 2022 12:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFBD93087;
	Fri, 22 Jul 2022 10:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7F293084;
 Fri, 22 Jul 2022 10:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658484847; x=1690020847;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=SKPrtA2rILFUjYQxZJSiARCkKS6SUAGjnJyVAykGQWc=;
 b=aZ9Cqg33yt+muvaXEDs+k590VUPE30+5aY+azQTVbwGEDkzECZxGDioO
 vQ6GDOsBuKswFcxz6eaapWXUX1BtJ2JZJkKqmpXjJ1ExTAyOr2BcRlYzI
 eSyWOhaDZW2AeF/8bJDZCanGVsztm5FW3t8x1GhwdBGEGlzMnqtvf9JQS
 pUUrmCe289Y2oLrlWmM66B+Ky0OjjUEAx9xJgbdbGVRx1XGAtU3w2mf69
 qKbEwkrk/2OFSP3GOOdsHDDDmtBBRcYcbEHu0WzhprwVpGv71X2mAa2Pk
 t+E8w7vNUuZcQ8m+mCYfeGmWuuIea5DY7U609uVPIDn7sg4UZG8rWvobM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="267679331"
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="267679331"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 03:14:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="574119258"
Received: from lflintof-mobl1.ger.corp.intel.com (HELO [10.213.217.10])
 ([10.213.217.10])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 03:14:03 -0700
Message-ID: <a71371c5-8b56-a8a6-64eb-180180edfb89@linux.intel.com>
Date: Fri, 22 Jul 2022 11:13:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>
References: <20220721174307.1085741-1-bob.beckett@collabora.com>
 <a0a7a734-d3dd-960e-f130-39f86b04b24d@linux.intel.com>
 <20220722095859.GB14113@lst.de>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220722095859.GB14113@lst.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop using swiotlb
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 kernel@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 22/07/2022 10:58, Christoph Hellwig wrote:
> On Fri, Jul 22, 2022 at 10:45:54AM +0100, Tvrtko Ursulin wrote:
>>> -	unsigned int size = swiotlb_max_segment();
>>> -
>>> -	if (size == 0)
>>> -		size = UINT_MAX;
>>
>> On a more detailed look, there was a CI failure which makes me think this
>> cap might need to stay. Because max sg segment is unsigned int. So I wonder
>> if sg contstruction overflows without it.
>>
>> If this quick analysis is right, you could leave i915_sg_segment_size
>> helper and cap the return from dma_max_mapping_size to UINT_MAX in it.
> 
> As dma_max_mapping_size retuns a size_t it would be good to make
> all variables using it a size_t as well.  In places where that gets
> lower to an unsigned int your probably want this cap.

Yep. Problem we have is struct scatterlist length field, which is 
unsigned int, since all our backing storage handling is built on top of 
it. Therefore I think capping in this helper should be good.

Regards,

Tvrtko

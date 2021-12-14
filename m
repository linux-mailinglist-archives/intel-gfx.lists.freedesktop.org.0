Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F12894746A8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 16:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CCE10E552;
	Tue, 14 Dec 2021 15:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639F510E552
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 15:40:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="237739590"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="237739590"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 07:40:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="518293023"
Received: from phenderx-mobl1.ger.corp.intel.com (HELO [10.213.226.89])
 ([10.213.226.89])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 07:40:21 -0800
Message-ID: <31edf68b-1970-b7fa-67ff-42a05d4ba883@linux.intel.com>
Date: Tue, 14 Dec 2021 15:40:17 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: "Yang, Dong" <dong.yang@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20211210013147.2256699-1-dong.yang@intel.com>
 <d8e9dfad-7665-cc29-9f53-ff350c8a402d@linux.intel.com>
 <DM6PR11MB3051330D8484CC5EA0290DB0F2749@DM6PR11MB3051.namprd11.prod.outlook.com>
 <c15f9066-4119-2f97-ed93-1fc5a8d3d0fe@linux.intel.com>
 <DM6PR11MB305167D0445A11B70F7DEECEF2759@DM6PR11MB3051.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <DM6PR11MB305167D0445A11B70F7DEECEF2759@DM6PR11MB3051.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request
 to intel_context twice
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


On 14/12/2021 05:58, Yang, Dong wrote:
> Thanks Tvrtko, I will try the patch you mentioned.
> 
> BTW, how do you think we use this patch in our project, any side-effect it may have?  If no side-effect we can take it as WA for temporally fix till we got the final root fixed.

For side effects I can't be sure. Best to try backporting and see if it 
fixes your issue, but note backporting may be tricky and you may end up 
pulling other patches as well.

Regards,

Tvrtko

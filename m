Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1188761A62
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 15:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F9810E3D8;
	Tue, 25 Jul 2023 13:47:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A17210E146;
 Tue, 25 Jul 2023 13:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690292825; x=1721828825;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+OP3tS0a6vPFOecpYmL8uA5ooqpSQiEgNnaksnOSZtQ=;
 b=bb7HfaBzkEk+MyncxF9qHtjbHTowxedaHPFbP5Mrknsf7XEzcDAiGexr
 aqavvuV+SdEdYGkafyMHSDC5l7N2OarRg2WIhNAFYEtOWOOlFTiMsn3Td
 SNGwrCYWUJrzZMlOUvqFStHSLkNmOxiDbyW4QrY0q1nxHhmm5KLu8PQlb
 5jvMrp8BafVNri0m03OpvI5aQlt5yxz+QUX10Pq42WjOWT/rH/huZ06D8
 X4XJmb3SX3HhYA1j1hc5jaweHnFuFlDxJpURlmg7VKdLlZ8uLfh5VrWw6
 faFG/oyqH3jA/v8BXy9TTSIjxcngx1zjo/pR+EP/3p87tUqEd4Co32g14 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="352624104"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="352624104"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 06:47:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="755763480"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="755763480"
Received: from grdarcy-mobl1.ger.corp.intel.com (HELO [10.213.228.4])
 ([10.213.228.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 06:47:00 -0700
Message-ID: <9200b403-6376-96da-d84c-783a3371f73f@linux.intel.com>
Date: Tue, 25 Jul 2023 14:46:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Tejun Heo <tj@kernel.org>
References: <20230712114605.519432-1-tvrtko.ursulin@linux.intel.com>
 <20230712114605.519432-13-tvrtko.ursulin@linux.intel.com>
 <ZLsEEYDFlJZwrJiV@slm.duckdns.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZLsEEYDFlJZwrJiV@slm.duckdns.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 12/17] cgroup/drm: Introduce weight based
 drm cgroup control
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Dave Airlie <airlied@redhat.com>,
 =?UTF-8?Q?St=c3=a9phane_Marchesin?= <marcheu@chromium.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Michal_Koutn=c3=bd?= <mkoutny@suse.com>,
 Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>,
 cgroups@vger.kernel.org, "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/07/2023 23:17, Tejun Heo wrote:
> On Wed, Jul 12, 2023 at 12:46:00PM +0100, Tvrtko Ursulin wrote:
>> +DRM scheduling soft limits
>> +~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Please don't say soft limits for this. It means something different for
> memcg, so it gets really confusing. Call it "weight based CPU time control"
> and maybe call the triggering points as thresholds.

Yes sorry, you said that before and I forgot to reword it all when 
re-spinning. I have now marked it as TODO in my email client so 
hopefully next time round I don't forget.

Regards,

Tvrtko

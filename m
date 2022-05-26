Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6F9534BDD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 10:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5157E10ED44;
	Thu, 26 May 2022 08:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4903110E59E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 08:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653554396; x=1685090396;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=19apU3dwNsX83/1kK5Il34LNMsq2Umgm+6W8aO06xfQ=;
 b=NLlcTLhHN5EasLdnmcQThN1dhrMp90cJOacXvnUHXqLXsgtY+/aKz8LZ
 D7cNJo5Yof0KCrRDpCkXnm38KgwEhB3sGyNKRu5TDW59xn2OIp88oEeHK
 paHfWf9222etQRZsdaqmqxp/27RVhZQyWPrYRl2TEo9AS0MvW+lb0rk2p
 VqpClPd2PLizkMFBA9p3HsDAiNX8+IC2TOUg/YpEXWkQ9+fFP74rY0pXe
 3tpTUA7YyQfjmtJyRK/vbJtl8Gd0W9VDwSqCWHvfcLnYPm0bYYvEwnZQ0
 Tjiqav6UWz8gplErC2rq7w9jFIR1RsPddg6XdkXYpbyfS6AciB5ayjjDC A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="334725772"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="334725772"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 01:39:55 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="664836050"
Received: from tkinch-mobl.ger.corp.intel.com (HELO [10.213.214.182])
 ([10.213.214.182])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 01:39:54 -0700
Message-ID: <fb8e48f7-dcd9-56fe-f329-97053d8e0126@linux.intel.com>
Date: Thu, 26 May 2022 09:39:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <cover.1652405421.git.ashutosh.dixit@intel.com>
 <a44eef23-282d-1739-cc05-bedcb8e991fc@linux.intel.com>
 <877d6ahvkd.wl-ashutosh.dixit@intel.com>
 <87v8ts7lw4.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87v8ts7lw4.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 0/7] drm/i915: Media freq factor and
 per-gt enhancements/fixes
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/05/2022 09:12, Dixit, Ashutosh wrote:
> On Wed, 25 May 2022 01:21:06 -0700, Dixit, Ashutosh wrote:
>>
>> On Mon, 23 May 2022 01:57:51 -0700, Tvrtko Ursulin wrote:
>>>
>>> On 13/05/2022 02:36, Ashutosh Dixit wrote:
>>>> Some recent Intel dGfx platforms allow media IP to work at a different
>>>> frequency from the base GT. This patch series exposes sysfs controls for
>>>> this functionality in the new per-gt sysfs. Some enhancements and fixes to
>>>> previous per-gt functionality are also included to complete the new
>>>> functionality:
>>>> * Patches 1 and 2 implement basic sysfs controls for media freq
>>>> * Patch 3 extends previous pcode functions for multiple gt's
>>>> * Patch 4 inits pcode on different gt's
>>>> * Patch 5 adds a couple of pcode helpers
>>>> * Patch 6 uses the new pcode functions to retrieve media RP0/RPn freq
>>>> * Patch 7 fixes memory leaks in the previous per-gt sysfs implementation
>>>>     and some code refactoring
>>>
>>> Patches 1, 3 and 5 have been merged to drm-intel-next, and then branch
>>> cross-merged into drm-intel-gt-next.
>>>
>>> You can try re-sending the rest of the series now and see if that goes
>>> smoothly.
>>
>> I sent the patches out Mon but am struggling to get a satisfactory CI run
>> from what it looks like are CI issues (CI runs were fine on previous
>> versions). Will update after we have successful CI. Thanks.
> 
> Hi Tvrtko,
> 
> We now have CI results. They look good to me (except that there is a false
> positive). In case you think this is good enough to merge these patches
> now:
> 
> https://patchwork.freedesktop.org/series/102665/#rev10

Pushed, with no conflicts even! :)

Regards,

Tvrtko



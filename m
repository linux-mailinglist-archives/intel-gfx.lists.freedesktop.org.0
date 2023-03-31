Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F556D1A2D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 10:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484A910E31B;
	Fri, 31 Mar 2023 08:35:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E4D10E31B;
 Fri, 31 Mar 2023 08:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680251725; x=1711787725;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=je0I5iROlVyoByNGogpREttITQp0mzNKe/6HkPr7EJg=;
 b=icYotjuOV/NV4mGOHMXlnY3JmPWQSYG/ZwLoOF/iyLZ0DK0BYThaReod
 /h8g5FqJxErGIa3Af4pkSV0nFMW+dkmJfAupgmtpoWjm9MvqhjFaB7a3i
 +H49FZYJCk5W1QUeCkAUEvg01xFwwLAzAWr2GSA+CVucRQ6J6TWf/x8bt
 ftZf4BsaHpLW+hBkWe8FMlLpUg9s8k2X5WXmdVT7XXhPeQDhRxuAeklTj
 sHNm3sZemCSSur61Jttf6p9fZudc8nPkMFUJEpOS7LNYqr1GBcdsy46r2
 BNW6yNhdHEZi3ciC+HRsMer9VhuYrJ4djUUJ9CoZxp5Yb10nxP1dfCoDs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="321051727"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="321051727"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 01:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="1014743077"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="1014743077"
Received: from bpower-mobl3.ger.corp.intel.com (HELO [10.213.225.27])
 ([10.213.225.27])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 01:35:09 -0700
Message-ID: <ef0b3c48-799e-70fb-ecbc-4d62c75058a9@linux.intel.com>
Date: Fri, 31 Mar 2023 09:35:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20230320151423.1708436-1-tvrtko.ursulin@linux.intel.com>
 <CAM0jSHMFF7VeRFMqRwfbvVtRdc6-6RXipe3nvLijrCtTNdKweQ@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAM0jSHMFF7VeRFMqRwfbvVtRdc6-6RXipe3nvLijrCtTNdKweQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix context runtime accounting
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
Cc: Intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 31/03/2023 07:25, Matthew Auld wrote:
> On Mon, 20 Mar 2023 at 15:14, Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> When considering whether to mark one context as stopped and another as
>> started we need to look at whether the previous and new _contexts_ are
>> different and not just requests. Otherwise the software tracked context
>> start time was incorrectly updated to the most recent lite-restore time-
>> stamp, which was in some cases resulting in active time going backward,
>> until the context switch (typically the hearbeat pulse) would synchronise
>> with the hardware tracked context runtime. Easiest use case to observe
>> this behaviour was with a full screen clients with close to 100% engine
>> load.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Fixes: bb6287cb1886 ("drm/i915: Track context current active time")
>> Cc: <stable@vger.kernel.org> # v5.19+
> 
> Seems reasonable to me, fwiw,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Thanks, pushed!

Regards,

Tvrtko

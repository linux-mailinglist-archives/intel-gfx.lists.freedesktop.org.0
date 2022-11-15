Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F6162A127
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 19:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F6810E0E0;
	Tue, 15 Nov 2022 18:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2F010E0C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 18:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668536040; x=1700072040;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=B9jf/fILG892w4A8Cz7+9CuBi3OdrpBnv2CRTjSt0hM=;
 b=QQhUIWcT1il1oY+z0MQOuWwMtT5bWo/a7KvfV0fmLbp5rOUyg79OfvA9
 Rd7ohblM1NkzQfvmdRH3rHoKgjBwShJZ8nHtrpKzmeh8NMv1c7FaNX/gZ
 PpKjuiXAFy0WxwBXETnQP4tXNPdBmR1Me2Sbyn9n1Ju4oh6urOB3uyg1s
 FzMiAfGIH9vqY5v0bAGN0YqRgKcOxBHkCFvqu3uGwlH196xTGMKRbk7uG
 zSe2g4rJDD9YMXNmcAU6TuLDf5nfLFc1JFLKvnXDLygvRwaQoqPjAoGmq
 8tNmRW9nyEbdELkpX7J+Is9j+0YoqNS3X38nUatem0N4BgLmy95lDVLst g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="309956778"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="309956778"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 10:13:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="728051834"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="728051834"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.10.166])
 ([10.213.10.166])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 10:13:43 -0800
Message-ID: <3e63077f-2f62-7a52-21f7-095d1db5a7b5@intel.com>
Date: Tue, 15 Nov 2022 19:13:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221019215906.295296-1-andrzej.hajda@intel.com>
 <20221019215906.295296-2-andrzej.hajda@intel.com>
 <bf3d58d5-1c9c-5a88-e0eb-feffdd93d443@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <bf3d58d5-1c9c-5a88-e0eb-feffdd93d443@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: call
 i915_request_await_object from _i915_vma_move_to_active
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 08.11.2022 11:24, Matthew Auld wrote:
> On 19/10/2022 22:59, Andrzej Hajda wrote:
>> Since almost all calls to i915_vma_move_to_active are prepended with
>> i915_request_await_object, let's call the latter from
>> _i915_vma_move_to_active by default and add flag allowing bypassing it.
>> Adjust all callers accordingly.
>> The patch should not introduce functional changes.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> 
> I thought someone already reviewed this series. Anyway,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Gently ping for merge.

Regards
Andrzej


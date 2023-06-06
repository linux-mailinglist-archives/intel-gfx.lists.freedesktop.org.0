Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC3C723E0C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 11:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E9810E242;
	Tue,  6 Jun 2023 09:44:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6CD10E242;
 Tue,  6 Jun 2023 09:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686044696; x=1717580696;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=CeqsDQff5E1xGNdXtSOjNowwyPUBwr+HUwOaehqV7go=;
 b=j0nYbChK/4HqjZsLFAf56EH5nd5yFuLBPH11xVQ30lTCdLNMqDaNwtr0
 gq8oPjLEHKcJohadoB66yaY/Q3n/K+O5aRja4e6tNX5/aa2Y4kHYDfTY+
 TwJ6sgncr6DP9hFSa5KWf8pLuvnq5h0x+l0vgwqXWBJmyJOV7NrlqgkiV
 ZifdL4IQDg02EBtgRRY9tnyde72yf1UNTWyfhtmN2QHNcrjECs9DXrhyR
 0q9DFed4U1W0NI0AKBnU5kwn+ekwf1VcUBRnXI0yW8c244uw7Nuyw/eTp
 o1YTispwAE1kkTELLRCSH6G42yF8N3gh/2RpjKi7gwE1ZWq7enNSjK+Br g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="355472245"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="355472245"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 02:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="742080505"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="742080505"
Received: from wacarey-mobl1.ger.corp.intel.com (HELO [10.213.192.12])
 ([10.213.192.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 02:44:25 -0700
Message-ID: <fd23f39f-b219-9f9d-2a4b-91e263d5e140@linux.intel.com>
Date: Tue, 6 Jun 2023 10:44:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20230605123224.373633-1-tvrtko.ursulin@linux.intel.com>
 <ZH5cnHHd7Iz+/ygs@ashyti-mobl2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZH5cnHHd7Iz+/ygs@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use the fdinfo helper
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
Cc: Rob Clark <robdclark@chromium.org>, Intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/06/2023 23:07, Andi Shyti wrote:
> Hi Tvrtko,
> 
> On Mon, Jun 05, 2023 at 01:32:24PM +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Use the common fdinfo helper for printing the basics. Remove now unused
>> client id allocation code.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Rob Clark <robdclark@chromium.org>
> 
> looks good to me:
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks, pushed!

Regards,

Tvrtko


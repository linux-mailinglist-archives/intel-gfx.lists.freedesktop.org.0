Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0E43002AE
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 13:17:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1ED6E9D8;
	Fri, 22 Jan 2021 12:17:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F14B6E9D8;
 Fri, 22 Jan 2021 12:17:52 +0000 (UTC)
IronPort-SDR: Zq6JQRyb/wB14wAbCTSwOMtm8OrFm4v0AZv912Kg23ZlkUfOFZv7NNdN+DYCKZW0nvrPk7mi+b
 qFk4k5vhXJTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="240979256"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="240979256"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 04:17:51 -0800
IronPort-SDR: NTe+3PeuqmdCZiwOYxicUuDWSCsEbR2nHXEiaIYijEFBMzsqlsDFRde1dOSzHx05RaskQXa+Qs
 otIcXNK2U70w==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="385738681"
Received: from gtidhar-mobl.ger.corp.intel.com (HELO [10.214.206.196])
 ([10.214.206.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 04:17:49 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20210121181005.762333-1-tvrtko.ursulin@linux.intel.com>
 <20210122115524.768221-1-tvrtko.ursulin@linux.intel.com>
 <161131773470.3166.13248329911713611140@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c5c67e55-2bd2-e39d-3362-782c15232a60@linux.intel.com>
Date: Fri, 22 Jan 2021 12:17:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161131773470.3166.13248329911713611140@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v6] intel-gpu-top: Support
 for client stats
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/01/2021 12:15, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-01-22 11:55:24)
>> +static int client_cmp(const void *_a, const void *_b)
>> +{
>> +       const struct client *a = _a;
>> +       const struct client *b = _b;
>> +       long tot_a, tot_b;
>> +
>> +       /*
>> +        * Sort clients in descending order of runtime in the previous sampling
>> +        * period for active ones, followed by inactive. Tie-breaker is client
>> +        * id.
>> +        */
>> +
>> +       tot_a = a->status == ALIVE ? a->total : -1;
>> +       tot_b = b->status == ALIVE ? b->total : -1;
>> +
>> +       tot_b -= tot_a;
>> +       if (!tot_b)
>> +               return (int)b->id - a->id;
>> +
>> +       if (tot_b > 0)
>> +               return 1;
>> +       if (tot_b < 0)
>> +               return -1;
>> +       return 0;
> 
> Nit, this is clearly now
> 
> 	if (tot_b > 0)
>                 return 1;
> 	if (tot_b < 0)
>                 return -1;
> 
> 	return (int)b->id - a->id;
> 
> And the decision flow now neatly matches the comment.

Fair enough, I forgot some other bits I wanted to do anyway. :)

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

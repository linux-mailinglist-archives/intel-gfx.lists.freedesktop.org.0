Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 858A8245049
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Aug 2020 02:36:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96D96EC51;
	Sat, 15 Aug 2020 00:36:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F4516EC51
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Aug 2020 00:36:13 +0000 (UTC)
IronPort-SDR: q53nqGbDRbqIZdd2/SNY0Q+83TWnkRxC6JqvzSf/rDGc3hyVffuWGMf9V/5NZ5Eh+UgQx0Zmtr
 smocu/HIQ4jg==
X-IronPort-AV: E=McAfee;i="6000,8403,9713"; a="216027664"
X-IronPort-AV: E=Sophos;i="5.76,314,1592895600"; d="scan'208";a="216027664"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 17:36:12 -0700
IronPort-SDR: i6qVsiXYGQ/RlYo64Kg1rfFBOPsW8tVV/8f5Aher8QNQJnGR+QqcY9WWCahdikh35ZU1XiowHL
 it7MahLk6bMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,314,1592895600"; d="scan'208";a="319049230"
Received: from orsmsx602-2.jf.intel.com (HELO ORSMSX602.amr.corp.intel.com)
 ([10.22.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 14 Aug 2020 17:36:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 14 Aug 2020 17:36:11 -0700
Received: from [10.209.97.116] (10.22.254.132) by ORSMSX610.amr.corp.intel.com
 (10.22.229.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 14 Aug
 2020 17:36:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, <intel-gfx@lists.freedesktop.org>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <20200814155735.29138-2-chris@chris-wilson.co.uk>
 <4e8f3929-06d9-9183-f5ed-9cf18abf40dc@intel.com>
 <159743033592.31882.10893400044974332038@build.alporthouse.com>
From: "Chang, Bruce" <yu.bruce.chang@intel.com>
Message-ID: <66272f87-c6c1-2b45-87f4-cf54303ab44b@intel.com>
Date: Fri, 14 Aug 2020 17:36:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <159743033592.31882.10893400044974332038@build.alporthouse.com>
Content-Language: en-US
X-Originating-IP: [10.22.254.132]
X-ClientProxiedBy: orsmsx602.amr.corp.intel.com (10.22.229.15) To
 ORSMSX610.amr.corp.intel.com (10.22.229.23)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Wait for CSB entries on
 Tigerlake
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


>>> @@ -2498,9 +2498,22 @@ invalidate_csb_entries(const u64 *first, const u64 *last)
>>>     */
>>>    static inline bool gen12_csb_parse(const u64 *csb)
>>>    {
>>> -     u64 entry = READ_ONCE(*csb);
>>> -     bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(entry));
>>> -     bool new_queue =
>>> +     bool ctx_away_valid;
>>> +     bool new_queue;
>>> +     u64 entry;
>>> +
>>> +     /* XXX HSD */
>>> +     entry = READ_ONCE(*csb);
>>> +     if (unlikely(entry == -1)) {
>>> +             preempt_disable();
>>> +             if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
>>> +                     GEM_WARN_ON("50us CSB timeout");
>> Out tests showed that 10us is not long enough, but 20us worked well. So
>> 50us should be good enough.

Just realized this may not fully work, as one of the common issue we run 
into is that higher 32bit is updated from the HW, but lower 32bit update 
at a later time: meaning the csb will read like 0xFFFFFFFF:xxxxxxxx 
(low:high) . So this check (!= -1) can still pass but with a partial 
invalid csb status. So, we may need to check each 32bit separately.

>>> +             preempt_enable();
>>> +     }
>>> +     WRITE_ONCE(*(u64 *)csb, -1);
>> A wmb() is probably needed here. it should be ok if CSB is in SMEM, but
>> in the case CSB is allocated in LMEM, the memory type will be WC, so the
>> memory write (WRITE_ONCE) is potentially still in the write combine
>> buffer and not in any cache system, i.e., not visible to HW.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

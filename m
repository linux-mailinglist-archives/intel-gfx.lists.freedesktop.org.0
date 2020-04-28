Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C70D1BC798
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 20:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B78889DC5;
	Tue, 28 Apr 2020 18:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310AE89DC5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 18:11:48 +0000 (UTC)
IronPort-SDR: vcv+mSb3qGwVMKjJjTCDNcX61ECgh6WqSodCpwcg1YhokSQZtTyDY+6oOi6WFAQziisI+5RlgU
 6MWfnq1jUKTA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 11:11:47 -0700
IronPort-SDR: +l/FPHivrGEjgUMHr5nsyu+XU6cop1FeZByyvZE5uRoEiQngoERIMX68FjOGCmntHh4NlvP07O
 xMmfDEUIDEWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="336707517"
Received: from pbooyens-mobl1.ger.corp.intel.com (HELO [10.252.37.143])
 ([10.252.37.143])
 by orsmga001.jf.intel.com with ESMTP; 28 Apr 2020 11:11:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200428100816.951014-1-lionel.g.landwerlin@intel.com>
 <20200428100816.951014-4-lionel.g.landwerlin@intel.com>
 <158806942253.24122.7411647690599477455@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <759399e0-f757-5fa6-d4f8-4eed2e152729@intel.com>
Date: Tue, 28 Apr 2020 21:11:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158806942253.24122.7411647690599477455@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 3/4] drm/i915/perf: prepare driver to
 receive multiple ctx handles
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

On 28/04/2020 13:23, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-04-28 11:08:15)
>> +static int ctx_id_equal(const void *key, const void *elem)
>> +{
>> +       const struct i915_perf_context_detail *details = elem;
>> +
>> +       return ((int)details->id) - *((int *)key);
>> +}
>> +
>> +static inline bool ctx_id_match(struct i915_perf_stream *stream,
>> +                               u32 masked_ctx_id)
>> +{
>> +       return bsearch(&masked_ctx_id,
> You might as well just (void *)(uintptr_t)masked_ctx_id and
>
> static int ctx_id_cmp(const void *key, const void *elem)
> {
>         const struct i915_perf_context_detail *details = elem;
>
>         return details->id - (uinptr_t)key;
> }

Oops, forgot to add that change.

I have it locally and it works fine, will resend tomorrow.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

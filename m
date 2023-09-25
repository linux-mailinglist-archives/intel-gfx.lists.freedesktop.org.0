Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 454507ACF16
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 06:25:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD7510E1CB;
	Mon, 25 Sep 2023 04:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF55E10E1C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 04:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=w4XXZlfw+xZ3KRqTeBP98yMWcU3Sg6iOetUlD/igc34=; b=pvQSeP0BXwKuh1EWIHnXj0L0Ru
 DUo9+xbJ800/DNzBXfbJiMNV5/+TaJTgJQSVSjy+lDURSF2eklfDFunDVPEfzIAYAdCUf4RkMGnhI
 7n1ffAW3I0EACo7vdDxfHMHOt3W/VVTrpXuxfCLG/eEho2ti5ZqX+fnWiJFhHY49XlIostAuLZQcx
 mxrVbtBy0MelCjsKPCHam85NLlv7Xw+qoVPRTokDnVWD+0bYADMdY7JyrJcnD5Y9UaxXW93FTb6d1
 Gf6lfDlrs2/TJC3mxXi53RIG3pgAyogg+3UJnXO61gvEQhxOvbLcZcwXV7EOZHieoVsR/PloHQFBP
 S6tA1Ymg==;
Received: from [2601:1c2:980:9ec0::9fed]
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1qkdA3-00DIAq-1B; Mon, 25 Sep 2023 04:25:31 +0000
Message-ID: <aa6270c5-46d7-4082-ab5a-9a850616b6fe@infradead.org>
Date: Sun, 24 Sep 2023 21:25:29 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Matthew Brost <matthew.brost@intel.com>,
 "Dr. David Alan Gilbert" <dave@treblig.org>
References: <ZQ+Fo9WKyGphwI8R@gallifrey>
 <ZREKJpfMx7ZEcw3n@DUT025-TGLU.fm.intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <ZREKJpfMx7ZEcw3n@DUT025-TGLU.fm.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] ERR_PTR(0) in a couple of places
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
Cc: krzysztof.kozlowski@linaro.org, airlied@gmail.com, mgreer@animalcreek.com,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 9/24/23 21:18, Matthew Brost wrote:
> On Sun, Sep 24, 2023 at 12:41:07AM +0000, Dr. David Alan Gilbert wrote:
>> Hi,
>>   I randomly noticed there are a couple of places in the kernel that
>> do
>>    ERR_PTR(0);
>>
>> and thought that was odd - shouldn't those just be NULL's ?
>>
>> 1) i915
>>   drivers/gpu/drm/i915/gt/uc/selftest_guc_multi_lrc.c : 47
>>
>>     if (i <= 1)
>>       return ERR_PTR(0);
> 
> Yes, s/ERR_PTR(0)/ERR_PTR(NULL)/
> 
> Matt

I agree with Dave's original suggestion since casting NULL isn't needed.

> 
>>
>>   from f9d72092cb490 
>>
>> 2) trf7970a
>>   drivers/nfc/trf7970a.c : 896
>>
>>       trf->ignore_timeout =
>>          !cancel_delayed_work(&trf->timeout_work);
>>       trf->rx_skb = ERR_PTR(0);
>>       trf7970a_send_upstream(trf);
>>
>>    from 1961843ceeca0
>>
>> Dave
>> -- 
>>  -----Open up your eyes, open up your mind, open up your code -------   
>> / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
>> \        dave @ treblig.org |                               | In Hex /
>>  \ _________________________|_____ http://www.treblig.org   |_______/

-- 
~Randy

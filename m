Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F4230081B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 17:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC2C6EA09;
	Fri, 22 Jan 2021 16:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E746EA09
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 16:03:41 +0000 (UTC)
IronPort-SDR: 72t12CKFMSZOuAA8wkux/BM4Z/VWPj8LOZ1CweEnYEYTBMJz476ufy0oI32lxsLiunmUc4p+LL
 1IZSkCV4BAmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="241005262"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="241005262"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 08:03:40 -0800
IronPort-SDR: V0PFeMn9LYC5/Vrb2ouzmWZRxPQwd/Ew095GG/Gx1w1Qr0xI+Mpas+mjv8tV7iCOmpOV9QrpIs
 OzA6FcBFXcVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="392350415"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 22 Jan 2021 08:03:39 -0800
Received: from [10.249.130.160] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.130.160])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 10MG3cQp031696; Fri, 22 Jan 2021 16:03:38 GMT
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210122150622.21088-1-chris@chris-wilson.co.uk>
 <2721424e-f72d-5531-aa75-a7f4ef59f823@intel.com>
 <161133054107.24506.1300566437760977949@build.alporthouse.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <89716fee-f77d-a9cc-7f4e-eb592b59d7eb@intel.com>
Date: Fri, 22 Jan 2021 17:03:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161133054107.24506.1300566437760977949@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/gt: SPDX cleanup
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 22.01.2021 16:49, Chris Wilson wrote:
> Quoting Michal Wajdeczko (2021-01-22 15:43:26)
>>
>>
>> On 22.01.2021 16:06, Chris Wilson wrote:
>>> Clean up the SPDX licence declarations to comply with checkpatch.
>>
>> typo here and in the commit message 04/10
> 
> s/paramters/parameters/

and what about meme ;)

> 
> But what's the typo here? I used 'licence' as the noun, and I don't see
> any others :(

ok, you win here (being non-native speaker I'm using US English
dictionary, which obviously does not work well with you ;)

Michal
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

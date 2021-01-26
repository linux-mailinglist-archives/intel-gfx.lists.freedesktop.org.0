Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 842B0303A7C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 11:38:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53D189D60;
	Tue, 26 Jan 2021 10:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A3E89D60
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 10:38:54 +0000 (UTC)
IronPort-SDR: i1yPJghFd+a5cW9F9lzLKmY9FRCY5LLB/EksqC55BkoJiP+K40s7e9+zqns4c/gQr9OTfBwvrM
 AGDQjZSZmV4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="167553045"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="167553045"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 02:38:52 -0800
IronPort-SDR: YyzMw081D4Iem/701l/ZDigOQ2nd6K2Rs1uYWYGKRdg6F24Oh1LFJyR9l9kh5FN04/SA1yzUKr
 LNnpXLTFE1mQ==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="472691589"
Received: from shogg-mobl.ger.corp.intel.com (HELO [10.252.19.250])
 ([10.252.19.250])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 02:38:51 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210126094612.163290-1-matthew.auld@intel.com>
 <20210126094612.163290-2-matthew.auld@intel.com>
 <161165682293.29150.8098339484779184026@build.alporthouse.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <d211416f-bb7c-b147-5c38-83972f9c40d1@intel.com>
Date: Tue, 26 Jan 2021 10:38:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <161165682293.29150.8098339484779184026@build.alporthouse.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: reserve stolen for LMEM region
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

On 26/01/2021 10:27, Chris Wilson wrote:
> Quoting Matthew Auld (2021-01-26 09:46:07)
>> @@ -162,7 +165,8 @@ setup_lmem(struct drm_i915_private *i915)
>>                  drm_dbg(&i915->drm, "Intel graphics LMEM: %pR\n", &mem->region);
>>                  drm_dbg(&i915->drm, "Intel graphics LMEM IO start: %pa\n",
>>                           &mem->io_start);
>> -               drm_info(&i915->drm, "Intel graphics LMEM size: %pa\n", &size);
>> +               drm_info(&i915->drm, "Intel graphics LMEM size: %pa\n",
>> +                        &lmem_size);
> 
> LMEM is Intel jargon. Intel is more or less redundant here as we have
> the device and driver already in the message.
> 
> drm_info(&i915->drm, "Local memory available: %pa\n", &lmem_size);

Ok, makes sense.

> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A61964575D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 11:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E2310E38D;
	Wed,  7 Dec 2022 10:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0465210E38D
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 10:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670408231; x=1701944231;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=MuU4Of9zlvAgXLBCGogyg0PemPmukQu1IOTI1y2YTM4=;
 b=PSYGi/OO3C4EhyPqOamkkcp3LPitxTQXWujS/D+cMoiXEVvj5jrE2Xip
 vX/BvY8G6V0Ep+smljjksZHZfBvqikXPZIkh9v4XasX2ba2xeE/2lnUj3
 Am1qXcyHba77x8QnnlHnrXtqAQbF9jESPQ2aze5rGB45b8mpNOt7l5AyO
 Hp77BWpxi17pZKODCNbisdgkP0wnSODqMCFW3nXDDk3mQacnT79JAbAk0
 LHRYdKLBHRWtGQDBPdZcd2Y7bQQdarSfycrVuZfaux+S2Xyy6e0trsUzO
 L7EFNokXk+nbFVpKtQSdMqW1qF1CaGM1GsNDOg82UlMqQ7k+HLCUAX659 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="343886906"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="343886906"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 02:17:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="715136789"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="715136789"
Received: from nsafari-mobl3.ger.corp.intel.com (HELO [10.213.213.175])
 ([10.213.213.175])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 02:17:10 -0800
Message-ID: <b42fdf70-6c5c-54e3-49aa-dd615e5c69a1@linux.intel.com>
Date: Wed, 7 Dec 2022 10:17:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-3-alan.previn.teres.alexis@intel.com>
 <1f453b64-3444-9d0e-bf9b-668229e763ef@linux.intel.com>
 <53fb72c915990cb4c5bf0fe8ebd976203f5556ea.camel@intel.com>
 <bf11bfe51f218f8104af21d1a93535281eb92abc.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <bf11bfe51f218f8104af21d1a93535281eb92abc.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/guc: Add unaligned wc
 memcpy for copying GuC Log
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/12/2022 09:20, Teres Alexis, Alan Previn wrote:
> 
> 
> On Tue, 2022-12-06 at 21:35 +0000, Teres Alexis, Alan Previn wrote:
>> On Tue, 2022-12-06 at 10:14 +0000, Tvrtko Ursulin wrote:
>>> On 06/12/2022 09:20, Alan Previn wrote:
>>>> Add usage of unaligned wc mempy in read_update_log_buffer
>>>> as newer formats of GuC debug-log-events are no longer
>>>> guaranteed to be exactly 4-dwords long per event.
>>>
>>> If this "newer format" applies to DG2 and GuC log has been "productized"
>>> there (as in we expect to tell users please collect and attach), pick a
>>> fixes tag so this gets into 6.2.
>>
>>
> 
> the jump to possible 5 dword log-event was at 77b6f79df66ed2919dedb834edea630f40079f12.
> Will fix this on next rev.

Right, Fixes: and cc stable 5.18+ then (for ADL-P), *if* the upstream 
logger tool actually works and we expect to asks users to use it.

Regards,

Tvrtko

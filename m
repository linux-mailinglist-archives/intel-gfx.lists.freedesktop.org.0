Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1302311CA47
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 11:09:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604096ECF7;
	Thu, 12 Dec 2019 10:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32E866ECF1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 10:09:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 02:09:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="225859132"
Received: from maenach-mobl1.ger.corp.intel.com (HELO [10.252.51.42])
 ([10.252.51.42])
 by orsmga002.jf.intel.com with ESMTP; 12 Dec 2019 02:09:36 -0800
To: Manasi Navare <manasi.d.navare@intel.com>
References: <20191114160522.9699-1-maarten.lankhorst@linux.intel.com>
 <20191212002752.GC19224@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <3a05c8d1-8be2-0c91-8b3b-ca7ea16d8f4d@linux.intel.com>
Date: Thu, 12 Dec 2019 11:09:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191212002752.GC19224@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/11] HAX to make DSC work on the icelake
 test system
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 12-12-2019 om 01:27 schreef Manasi Navare:
> On Thu, Nov 14, 2019 at 05:05:12PM +0100, Maarten Lankhorst wrote:
>> DSC is available on the display emulator, but not set in DPCD.
>> Override the entries to allow bigjoiner testing.
> In general for these hacks for specific emulator, can we base it on certain i915 parameter like
> dsc_emaulator or something to override these values else we might actually affect DSC
> behaviour for the actual dsc panels.
>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>  drivers/gpu/drm/drm_dp_helper.c | 4 ++--
>>  include/drm/drm_dp_helper.h     | 1 +
>>  2 files changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
>> index 2c7870aef469..3d6038f35ea2 100644
>> --- a/drivers/gpu/drm/drm_dp_helper.c
>> +++ b/drivers/gpu/drm/drm_dp_helper.c
>> @@ -1261,7 +1261,7 @@ u8 drm_dp_dsc_sink_max_slice_count(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>>  		if (slice_cap1 & DP_DSC_4_PER_DP_DSC_SINK)
>>  			return 4;
>>  		if (slice_cap1 & DP_DSC_2_PER_DP_DSC_SINK)
>> -			return 2;
>> +			return 4;
> Is this also needed for the big joiner since it doesnt return 4 slice count?
>
> Manasi
This patch is not for upstream, just a hack to make it work on the tgl with the emulator.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

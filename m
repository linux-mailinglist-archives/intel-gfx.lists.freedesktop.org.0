Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3201E145FFC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 01:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 943836F957;
	Thu, 23 Jan 2020 00:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBC7A6F957
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 00:35:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 16:35:53 -0800
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="220496778"
Received: from unknown (HELO [10.1.27.15]) ([10.1.27.15])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 22 Jan 2020 16:35:52 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200122001822.12872-1-fernando.pacheco@intel.com>
 <20200122001822.12872-2-fernando.pacheco@intel.com>
 <157969752459.7477.17596563244499908955@skylake-alporthouse-com>
From: Fernando Pacheco <fernando.pacheco@intel.com>
Message-ID: <876b8257-7ec8-e5d2-0bff-e17394d3561f@intel.com>
Date: Wed, 22 Jan 2020 16:35:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <157969752459.7477.17596563244499908955@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 2/2] HAX: force enable_guc=2
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


On 1/22/20 4:52 AM, Chris Wilson wrote:
> Quoting Fernando Pacheco (2020-01-22 00:18:22)
>> Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_params.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
>> index 947d0a38fa3c..4d17235c33bd 100644
>> --- a/drivers/gpu/drm/i915/i915_params.h
>> +++ b/drivers/gpu/drm/i915/i915_params.h
>> @@ -56,7 +56,7 @@ struct drm_printer;
>>         param(int, disable_power_well, -1, 0400) \
>>         param(int, enable_ips, 1, 0600) \
>>         param(int, invert_brightness, 0, 0600) \
>> -       param(int, enable_guc, 0, 0400) \
>> +       param(int, enable_guc, 2, 0400) \
>>         param(int, guc_log_level, -1, 0400) \
>>         param(char *, guc_firmware_path, NULL, 0400) \
>>         param(char *, huc_firmware_path, NULL, 0400) \
> intel_guc_reset_engine() is only used in guc submission mode. This tests
> nothing.

The mmio list is only important when GuC owns the engine reset (new interface).
Just want to see here that the mmio list is constructed and formatted correctly when
we hand the info off via the ADS.

The reset flow will be fully tested during the push to turn submission on and the
contents of the list can/will be tweaked as part of that validation.

Fernando

> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AF8427405
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Oct 2021 01:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA2BA6E06B;
	Fri,  8 Oct 2021 23:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 705206E06B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 23:08:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="226560803"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="226560803"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 16:08:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="440089353"
Received: from sujarith-mobl1.amr.corp.intel.com (HELO [10.254.13.222])
 ([10.254.13.222])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 16:08:24 -0700
To: Andi Shyti <andi.shyti@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Dale B Stimson <dale.b.stimson@intel.com>
References: <20211008204454.11680-1-sujaritha.sundaresan@intel.com>
 <YWDOQ/wEs1KmIUNi@intel.intel>
From: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
Message-ID: <2afb8624-1a09-b6f6-73da-39b7007bcfe8@intel.com>
Date: Fri, 8 Oct 2021 16:08:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YWDOQ/wEs1KmIUNi@intel.intel>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/1] RFC : drm/i915: Adding new sysfs
 frequency attributes
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


On 10/8/2021 4:03 PM, Andi Shyti wrote:
> Hi Sujaritha,
>
> On Fri, Oct 08, 2021 at 01:44:54PM -0700, Sujaritha Sundaresan wrote:
>> This patch adds the following new sysfs frequency attributes;
>> 	- punit_req_freq_mhz
>> 	- throttle_reason_status
>> 	- throttle_reason_pl1
>> 	- throttle_reason_pl2
>> 	- throttle_reason_pl4
>> 	- throttle_reason_thermal
>> 	- throttle_reason_prochot
>> 	- throttle_reason_ratl
>> 	- throttle_reason_vr_thermalert
>> 	- throttle_reason_vr_tdc
>>
>> Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
>> Cc: Dale B Stimson <dale.b.stimson@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_rps.c |  83 +++++++++++++++++
>>   drivers/gpu/drm/i915/gt/intel_rps.h |  10 +++
>>   drivers/gpu/drm/i915/i915_reg.h     |  11 +++
>>   drivers/gpu/drm/i915/i915_sysfs.c   | 135 ++++++++++++++++++++++++++++
> if we add these here we're stuck forever! Can this hold a few
> days?
>
> The rest of the patch looks OK to me.
>
> Andi

Hi Andi,

Thanks for the quick review. I intended to wait for your patch, hence 
sent it out as an RFC patch :) So yes I should be able to hold it for a 
few days.

Suja


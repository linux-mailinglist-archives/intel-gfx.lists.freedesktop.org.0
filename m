Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E13237B9DAD
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A0810E40A;
	Thu,  5 Oct 2023 13:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E387C10E40A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696514042; x=1728050042;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=SP8WNYdgZ6GOkESnanhMf9LsPIsTvDXfrIpKL/gyctI=;
 b=NzlpBsVTm7aNsOi1/6t3Pcna8b0a55OL4YBWO59MKsweCd5LiINuxCNE
 IQH7PkfId8Vrf50U/HviQZU+hNfJ4cFFSXUja4HGG2yhQS0bqSwH4hyKg
 5+cfBUTABnfrHbGKagcXrqQ4ALsJZUaZGE8+jkiMPPM63QU6RRVEdI4/u
 lT3BChnf0pT02LhzDatp4n6vd/u/F5i74r/nQBlt4q0ij3a/qw+h2Mtdn
 jxL4HHDv/MXTSS1yT/NzOWWuJAKfY6Qlh93bbNplnxdossaPQXMFPD7Ss
 YNk+p4dQctiqa4IY9gnwJHtrHbi7yeNBTTsmpK+f6t4CSpFa+LNrTW0MI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="380780613"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="380780613"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:54:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="817596225"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="817596225"
Received: from ijbeckin-mobl2.ger.corp.intel.com (HELO [10.213.192.200])
 ([10.213.192.200])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:53:59 -0700
Message-ID: <6e5e447f-4bee-5c72-3191-f81eb775216c@linux.intel.com>
Date: Thu, 5 Oct 2023 14:53:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231005054500.2053070-1-jouni.hogander@intel.com>
 <87lechcjto.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87lechcjto.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH 0/4] Framework for display parameters
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/10/2023 13:52, Jani Nikula wrote:
> On Thu, 05 Oct 2023, Jouni Högander <jouni.hogander@intel.com> wrote:
>> Currently all module parameters are handled by i915_param.c/h. This
>> is a problem for display parameters when Xe driver is used.
>>
>> This patch set adds a mechanism to add parameters specific to the
>> display. This is mainly copied from existing i915 parameters
>> implementation with some naming changes and taking into account
>> varying driver name.
>>
>> Also fbc and psr related parameter are moved as an example.
> 
> Added some more Cc's as FYI.
> 
> It's not perfect, but I'm okay with the general approach. I've hoped for
> a beautiful solution to the problem, but hopes don't turn into code.
> 
> I'll reply with some bikeshedding comments to the individual patches.

Looks fine to me.

If one day display becomes a separate .ko and we maybe allow not 
building it for headless then the interface is a bit too intimate, but 
until then it looks like it will work fine.

Regards,

Tvrtko

> 
> BR,
> Jani.
> 
> 
>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>
>> Jouni Högander (4):
>>    drm/i915/display: Add framework to add parameters specific to display
>>    drm/i915/display: Dump also display parameters into GPU error dump
>>    drm/i915/display: Move enable_fbc module parameter under display
>>    drm/i915/display: Move psr related module parameters under display
>>
>>   drivers/gpu/drm/i915/Makefile                 |   2 +
>>   drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
>>   .../gpu/drm/i915/display/intel_display_core.h |   2 +
>>   .../drm/i915/display/intel_display_debugfs.c  |   2 +
>>   .../display/intel_display_debugfs_params.c    | 239 ++++++++++++++++++
>>   .../display/intel_display_debugfs_params.h    |  14 +
>>   .../drm/i915/display/intel_display_device.c   |   8 +
>>   .../drm/i915/display/intel_display_device.h   |   1 +
>>   .../drm/i915/display/intel_display_params.c   | 166 ++++++++++++
>>   .../drm/i915/display/intel_display_params.h   |  65 +++++
>>   drivers/gpu/drm/i915/display/intel_fbc.c      |  10 +-
>>   drivers/gpu/drm/i915/display/intel_psr.c      |  14 +-
>>   drivers/gpu/drm/i915/i915_driver.c            |   2 +
>>   drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +
>>   drivers/gpu/drm/i915/i915_gpu_error.h         |   2 +
>>   drivers/gpu/drm/i915/i915_params.c            |  19 --
>>   drivers/gpu/drm/i915/i915_params.h            |   4 -
>>   17 files changed, 519 insertions(+), 36 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h
> 

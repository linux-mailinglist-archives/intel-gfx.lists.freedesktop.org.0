Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEA97F44AF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 12:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E49D10E5FD;
	Wed, 22 Nov 2023 11:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A98810E5FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 11:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700651144; x=1732187144;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YhaKzd/QzkqtDRW/+Pp4ZGpuCyWqAp3xHKwFLBFw0uw=;
 b=JCPsppcfmz+0EuMVcXZYqvMqDku9OmRec35Oa4WNlKZ/+8APfLztICwo
 Ol5IgvY8Z0M1/HjpF48V9dn95TDkxWQ1xKPk6qeMKFVfQmkIWj/KQjSOd
 zO6Eyiitv+qlaMG18g/AMeQz7UtwcOP2iNqDWvFnpfWtcNnuA8rRdMFVT
 rMEHpc+Y006lFcdv34IL3gIEg3QRswDjErJaO59Gyu2ql9to6jTaoQZAm
 Wz/tFiL1XYY7Dn3O7XBE7gesgSwrsO4/jLJ7/h74/F4T5UPLVIUN9paXo
 G+4LUEXD4Hy5+VkNffchK4ZEsMdf3XIVdtpeiE8P8VPaSgkoBMhxkFQ7l A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="5174021"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; 
   d="scan'208";a="5174021"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 03:05:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="884568504"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="884568504"
Received: from tjquresh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.76])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 03:05:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87cyw2m4le.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231122065926.4076690-1-mitulkumar.ajitkumar.golani@intel.com>
 <87cyw2m4le.fsf@intel.com>
Date: Wed, 22 Nov 2023 13:05:39 +0200
Message-ID: <87a5r6m4jg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/3] Implement CMRR Support
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

On Wed, 22 Nov 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 22 Nov 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
>> CMRR is a display feature that uses adaptive sync
>> framework to vary Vtotal slightly to match the
>> content rate exactly without frame drops. This
>> feature is a variation of VRR where it varies Vtotal
>> slightly (between additional 0 and 1 Vtotal scanlines)
>> to match content rate exactly without frame drops
>> using the adaptive sync framework.
>
> Please check and use the -v<N> option of git-send-email.

More precisely it's a git format-patch option, but send-email passes it
along.

>
> BR,
> Jani.
>
>
>>
>> enable this feature by programing new registers for
>> CMRR enable, CMRR_M, CMRR_N, vmin=vmax=flipline.The
>> CMRR_M/CMRR_N ratio represents the fractional part
>> in (actual refresh rate/target refresh rate) * origVTotal.
>>
>> Mitul Golani (3):
>>   drm/i915: Define and compute Transcoder CMRR registers
>>   drm/i915: Add Enable/Disable for CMRR based on VRR state
>>   drm/i915: Compute CMRR and calculate vtotal
>>
>>  .../drm/i915/display/intel_crtc_state_dump.c  |   4 +-
>>  drivers/gpu/drm/i915/display/intel_display.c  |  54 +++++++-
>>  .../drm/i915/display/intel_display_device.h   |   1 +
>>  .../drm/i915/display/intel_display_types.h    |   6 +
>>  drivers/gpu/drm/i915/display/intel_vrr.c      | 129 ++++++++++++++++--
>>  drivers/gpu/drm/i915/i915_reg.h               |  10 ++
>>  6 files changed, 184 insertions(+), 20 deletions(-)

-- 
Jani Nikula, Intel

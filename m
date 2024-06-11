Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26AC90465E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 23:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16BC410E176;
	Tue, 11 Jun 2024 21:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TPvyIUuF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CEF810E5DB;
 Tue, 11 Jun 2024 21:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718142344; x=1749678344;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MBd3qhbaNSOjwfdlVhVpSROMt3IuycXcIHrRLMSiHdE=;
 b=TPvyIUuFqlY+C2RiiiUUdTIP7q3SqWPVvvsSpaaaRF9hMutnTmuDsVN0
 ICuNCstZTI0QvAoLSVMnFoBtYbRvpOp4+trkFVRxTEO8c4KVQGT+tUZOk
 iM3qN7RTj0EH5iVAgOxCtQh8tgv1/Q1uBgdMZT7TOKNkHXP27gy3a/9oA
 h5Qp12SpKpIzZSrkKcram/KuB4E25C2untIuwHR32L308raj49/+JHk4g
 qM/rh54KiBjGj5mUIdw55zg5gLo6CYIFPZFFa6EgBvyUC82LVGvbncXev
 kWI156nrqFgKXsn3wXWelI0xH2P6/8BnJR8BOuqzdtAJN6BDax+hQN0rI w==;
X-CSE-ConnectionGUID: NcvrorEYSyCjrll6+foUcw==
X-CSE-MsgGUID: dVTzhQG+SsCPfHxk5KcBDA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="14714753"
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="14714753"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 14:45:41 -0700
X-CSE-ConnectionGUID: 1Rs+qiawR1KgHayjvGevEA==
X-CSE-MsgGUID: a12tJjCES7KkKMJU5jS/mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="44001909"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 11 Jun 2024 14:45:38 -0700
Received: from [10.94.248.185] (mwajdecz-MOBL.ger.corp.intel.com
 [10.94.248.185])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id CBC7233E98;
 Tue, 11 Jun 2024 22:45:25 +0100 (IST)
Message-ID: <a0d7968d-81c5-4328-8654-9feab682655d@intel.com>
Date: Tue, 11 Jun 2024 23:45:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 0/7] Promote GuC ABI headers to shared location
To: John Harrison <john.c.harrison@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
 <2d9b0d82-3e2f-478a-bc7b-b6e589c70b38@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <2d9b0d82-3e2f-478a-bc7b-b6e589c70b38@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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



On 11.06.2024 22:32, John Harrison wrote:
> On 6/11/2024 07:30, Michal Wajdeczko wrote:
>> There are many GuC ABI definitions named in the same way by the i915
>> and Xe drivers, preventing proper generation of the documentation.
>>
>> Promote GuC ABI definitions to shared location that can be used by
>> both drivers and can be included in documentation.
> I still very strongly feel that this is the wrong place for such
> documentation. We do not document any of the hardware registers in the
> driver, nor the MI_ instructions, etc. Why is this any different? The
> GuC ABI is not under the control of the Linux kernel driver, either i915
> or Xe. It is effectively a hardware interface no different to any other
> hardware interface. It is already fully documented by the owners of that
> interface. Rather than just copying random chunks of that documentation
> into the kernel driver, we should just be publishing the official
> document itself. Same as we do for the rest of the hardware.

so go publish this official document

in the meantime IMO it is useful to show, with really little effort, on
what grounds the communication between i915/Xe and GuC works, so
everyone, not just selected engineers, can understand and review our
implementation and check its correctness

furthermore, if you don't like any hw documentation then we should
revisit what is already in gpu/i915 section and also reconsider all our
efforts to document all non-static driver functions, as those functions
are still internal to the driver, not to be used outside

> 
> John.
> 
> 
>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>
>> Michal Wajdeczko (7):
>>    drm/xe/guc: Promote GuC ABI headers to shared location
>>    Documentation/gpu: Separate GuC ABI section
>>    Documentation/gpu: Switch to shared GuC ABI definitions
>>    drm/intel/guc: Update CTB communication ABI
>>    drm/intel/guc: Add new KLV definitions
>>    drm/i915: Use shared GuC ABI definitions
>>    drm/xe: Promote SR-IOV GuC ABI definitions to shared location
>>
>>   Documentation/gpu/drivers.rst                 |   1 +
>>   Documentation/gpu/guc.rst                     |  23 ++
>>   Documentation/gpu/i915.rst                    |   9 -
>>   drivers/gpu/drm/i915/Makefile                 |   5 +
>>   .../gt/uc/abi/guc_communication_ctb_abi.h     | 170 -----------
>>   .../gt/uc/abi/guc_communication_mmio_abi.h    |  49 ----
>>   drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 112 --------
>>   .../gpu/drm/i915/gt/uc/abi/guc_messages_abi.h | 264 ------------------
>>   .../guc}/abi/guc_actions_sriov_abi.h          |   0
>>   .../guc}/abi/guc_communication_ctb_abi.h      |   2 +
>>   .../guc}/abi/guc_communication_mmio_abi.h     |   0
>>   .../drm/{xe => intel/guc}/abi/guc_klvs_abi.h  |  18 +-
>>   .../{xe => intel/guc}/abi/guc_messages_abi.h  |   0
>>   .../guc}/abi/guc_relay_actions_abi.h          |   0
>>   .../guc}/abi/guc_relay_communication_abi.h    |   0
>>   drivers/gpu/drm/xe/Makefile                   |   5 +
>>   16 files changed, 49 insertions(+), 609 deletions(-)
>>   create mode 100644 Documentation/gpu/guc.rst
>>   delete mode 100644
>> drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
>>   delete mode 100644
>> drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
>>   delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>   delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
>>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_actions_sriov_abi.h
>> (100%)
>>   rename drivers/gpu/drm/{xe =>
>> intel/guc}/abi/guc_communication_ctb_abi.h (98%)
>>   rename drivers/gpu/drm/{xe =>
>> intel/guc}/abi/guc_communication_mmio_abi.h (100%)
>>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_klvs_abi.h (97%)
>>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_messages_abi.h (100%)
>>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_actions_abi.h
>> (100%)
>>   rename drivers/gpu/drm/{xe =>
>> intel/guc}/abi/guc_relay_communication_abi.h (100%)
>>
> 

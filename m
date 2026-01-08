Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DCED02296
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 11:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29BC810E125;
	Thu,  8 Jan 2026 10:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJ6JgpXQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B600B10E125
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jan 2026 10:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767868831; x=1799404831;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1ISY19UTKDzhOpaBZGgYTpRrf9GVkU14AQBKXWdsT3M=;
 b=cJ6JgpXQXBPEZgOY30s0MD+DfH5aQmsfr9yLv35uItaOmY7nbFdNcPYj
 /BTAe54i9n8UedxdlUvjGL0kfg0C6KAT3dS+tzQQP2eT8GuViAIjYhO+Y
 Cqo8LHcqvjUugAvQeW9Tqa3YCWUyUNkXOPty1BMc0wG+SKBVedbFJNoXw
 Q6lMafFlr0/IdnzHhdNICFbtIpDcFXgsZzs+2V32GXrtBj7JgClCxUruh
 ZeItqB+Rvqxt/dvgckKOfJmKIF11vUFjm4q9k4QVI0hp2FTubDXfDurAq
 Imj8Hhzg0yct/PR+EjqqobsAGmh2wmLBai+zzQiO5EVDmqHQCOuu7H/VX w==;
X-CSE-ConnectionGUID: VQ+1t4XvSxST47CiOuus+Q==
X-CSE-MsgGUID: TZhTMa7lTwewHWhyT/yxnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="86661390"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="86661390"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 02:40:31 -0800
X-CSE-ConnectionGUID: 5ONIv3lASgOOibuKruPGng==
X-CSE-MsgGUID: BwHDGkWgRQOiW7T5hMMgmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="240657376"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.109])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 02:40:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Subject: RE: [PATCH] mei: late_bind: fix struct intel_lb_component_ops
 kernel-doc
In-Reply-To: <IA3PR11MB898786041078E6FC93C273CDD085A@IA3PR11MB8987.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260107160226.2381388-1-jani.nikula@intel.com>
 <IA3PR11MB898786041078E6FC93C273CDD085A@IA3PR11MB8987.namprd11.prod.outlook.com>
Date: Thu, 08 Jan 2026 12:40:25 +0200
Message-ID: <21d168371fe1c31a1cf55407615f5e97e8601ee4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 08 Jan 2026, "Gote, Nitin R" <nitin.r.gote@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Wednesday, January 7, 2026 9:32 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Usyskin, Alexander
>> <alexander.usyskin@intel.com>
>> Subject: [PATCH] mei: late_bind: fix struct intel_lb_component_ops kernel-doc
>> 
>> Fix kernel-doc warnings on struct intel_lb_component_ops:
>> 
>> Warning: include/drm/intel/intel_lb_mei_interface.h:55 Incorrect use of
>>   kernel-doc format: * push_payload - Sends a payload to the
>>   authentication firmware
>> 
>> And a bunch more. There isn't really support for documenting function pointer
>> struct members in kernel-doc, but at least reference the member properly.
>> 
>> Fixes: 741eeabb7c78 ("mei: late_bind: add late binding component driver")
>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  include/drm/intel/intel_lb_mei_interface.h | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/include/drm/intel/intel_lb_mei_interface.h
>> b/include/drm/intel/intel_lb_mei_interface.h
>> index d65be2cba2ab..0850738a30fc 100644
>> --- a/include/drm/intel/intel_lb_mei_interface.h
>> +++ b/include/drm/intel/intel_lb_mei_interface.h
>> @@ -53,7 +53,8 @@ enum intel_lb_status {
>>   */
>>  struct intel_lb_component_ops {
>>  	/**
>> -	 * push_payload - Sends a payload to the authentication firmware
>> +	 * @push_payload: Sends a payload to the authentication firmware
>> +	 *
> LGTM
> Reviewed-by: Nitin Gote <nitin.r.gote@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.


>
>>  	 * @dev: Device struct corresponding to the mei device
>>  	 * @type: Payload type (see &enum intel_lb_type)
>>  	 * @flags: Payload flags bitmap (e.g. %INTEL_LB_FLAGS_IS_PERSISTENT)
>> --
>> 2.47.3
>

-- 
Jani Nikula, Intel

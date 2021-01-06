Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D132EB811
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 03:32:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFD489CB5;
	Wed,  6 Jan 2021 02:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F0F589CB5
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 02:32:29 +0000 (UTC)
IronPort-SDR: glMOUVlWmF4zIi93YxcwkOhrzSP02jXLmEqs4eZudM5GNCOKDY+loJnhmHKHCLgia1RKr1+ZNZ
 F0VG1FXxpDHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="177369565"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="177369565"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 18:32:29 -0800
IronPort-SDR: 4fv55MV+HsF8msVLZ4UCUrxFxAeol8mg95ktJfL2CQEOUsQnSOqzUGFojaqqZGX2kwHQqSPL0u
 njuueLY0aiBw==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="462527048"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.17.148])
 ([10.251.17.148])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 18:32:28 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-3-daniele.ceraolospurio@intel.com>
 <160989470089.14894.2097316461568983303@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <a38fc4e1-8847-2bc4-763f-673c2597a06f@intel.com>
Date: Tue, 5 Jan 2021 18:32:28 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <160989470089.14894.2097316461568983303@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/guc: do not dump execlists
 state with GuC submission
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



On 1/5/2021 4:58 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:44)
>> GuC owns the execlists state and the context IDs used for submission, so
>> the status of the ports and the CSB entries are not something we control
>> or can decode from the i915 side, therefore we can avoid dumping it. A
>> follow-up patch will also stop setting the csb pointers when using GuC
>> submission.
>>
>> GuC dumps all the required events in the GuC logs when verbosity is set
>> high enough.
> Would not be worth including, or is it not very helpful for debugging
> curious engine stalls?

GuC is going to reset the engine if it stalls, so we should get the GuC 
logs and the engine state included in the error state.

Daniele

>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

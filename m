Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89AF2EC203
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 18:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA7F89C83;
	Wed,  6 Jan 2021 17:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF7589C83
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 17:22:27 +0000 (UTC)
IronPort-SDR: X0FgwuHK+qZB/JRHQJ47d7pCCnbg0TjkujiJyfTrH0sEHf0lVenDBnY2XHLFrjmpcJs3cX44QJ
 u+5cw2WCuzxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="238856376"
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="238856376"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 09:22:26 -0800
IronPort-SDR: T6iU9JhueIcbhf2SWsItyhCzHCaJzQzC0fFesHWLaoFTw0snhME0rZw6Cp/d39AMQ+9UngCgTf
 C5kwUMXZtDmw==
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="497215797"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.212.178.138])
 ([10.212.178.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 09:22:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-5-daniele.ceraolospurio@intel.com>
 <160989494374.14894.15158476900955777220@build.alporthouse.com>
 <8010f48e-94cf-699b-b3f2-b3eae3753cdf@intel.com>
 <160990259521.22606.5618391021082649871@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b50c0d95-4f23-feea-47cc-ec79ed266b16@intel.com>
Date: Wed, 6 Jan 2021 09:22:26 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <160990259521.22606.5618391021082649871@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/guc: stop calling
 execlists_set_default_submission
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



On 1/5/2021 7:09 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-01-06 02:38:09)
>>
>> On 1/5/2021 5:02 PM, Chris Wilson wrote:
>>> Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:46)
>>>> Initialize all required entries from guc_set_default_submission, instead
>>>> of calling the execlists function. The previously inherited setup has
>>>> been copied over from the execlist code and simplified by removing the
>>>> execlists submission-specific parts.
>>>>
>>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>> Cc: Matthew Brost <matthew.brost@intel.com>
>>>> Cc: John Harrison <john.c.harrison@intel.com>
>>>> ---
>>>> +       if (INTEL_GEN(engine->i915) >= 12)
>>>> +               engine->flags |= I915_ENGINE_HAS_RELATIVE_MMIO;
>>> We should probably lift this to intel_engine_setup().
>> GuC requires a more extensive usage of the relative mmio stuff, given
>> that it picks which engine to submit to when using virtual engines, so
>> I'm not sure if the support is going to look exactly the same for both
>> back-ends. There is an old patch from John H to rework the relative mmio
>> (https://patchwork.freedesktop.org/patch/332558/), which will have to
>> land in some form as part of the GuC submission re-enabling. I'd prefer
>> to wait for that to land before moving this flag.
> Whether or not LR* take the flag is independent of the submission
> backend. As to when to use the flag, I think that patch needs a lot more
> refinement.

it definitely does. I'll lift this up for now, we can reconsider later 
if needed.

Daniele

> I915_ENGINE_HAS_RELATIVE_MMIO is the odd-one-out in the flags atm as it
> reflects HW capability.
> -Chris

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

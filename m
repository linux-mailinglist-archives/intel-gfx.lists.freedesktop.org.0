Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5E812ADD4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 19:09:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCAF589C85;
	Thu, 26 Dec 2019 18:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8412089C85
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 18:09:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Dec 2019 10:09:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,360,1571727600"; d="scan'208";a="392405698"
Received: from aelgham-mobl1.ger.corp.intel.com (HELO [10.252.49.252])
 ([10.252.49.252])
 by orsmga005.jf.intel.com with ESMTP; 26 Dec 2019 10:09:05 -0800
To: Matt Roper <matthew.d.roper@intel.com>
References: <20191224012026.3157766-1-matthew.d.roper@intel.com>
 <ee1164c0-8402-c00d-ecf6-0deb2be7bfb9@intel.com>
 <20191226173917.GE2877816@mdroper-desk1.amr.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <51aa12c9-ed90-7eb0-3d4b-1380f25fd2bb@intel.com>
Date: Thu, 26 Dec 2019 20:09:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191226173917.GE2877816@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/3] Workaround updates
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 26/12/2019 19:39, Matt Roper wrote:
> On Wed, Dec 25, 2019 at 09:31:29PM +0200, Lionel Landwerlin wrote:
>> On 24/12/2019 03:20, Matt Roper wrote:
>>> A quick drive-by update for some workarounds I noticed that were
>>> added/extended to additional platforms.
>>>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Matt Atwood <matthew.s.atwood@intel.com>
>>> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>>
>>> Matt Roper (3):
>>>     drm/i915: Extend WaDisableDARBFClkGating to icl,ehl,tgl
>>>     drm/i915: Add Wa_1408615072 and Wa_1407596294 to icl,ehl
>>>     drm/i915/tgl: Extend Wa_1408615072 to tgl
>>>
>>>    drivers/gpu/drm/i915/display/intel_display.c |  7 +++++--
>>>    drivers/gpu/drm/i915/i915_reg.h              |  7 ++++++-
>>>    drivers/gpu/drm/i915/intel_pm.c              | 12 ++++++++++++
>>>    3 files changed, 23 insertions(+), 3 deletions(-)
>>>
>> Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>>
>>
>> What do you think about Wa_1407352427 for ICL?
>>
>> Sounds like it could fix some 3D hangs too.
> Yeah, looks like we need to add that one for ICL/EHL.  I'll send a
> separate patch for that one since this series is ready to merge once CI
> results come back.  Thanks for pointing it out!
>
>
> Matt


Thanks for taking that on.


One question though about those workarounds, we probably need to have 
them applied to older kernels with ICL support right?

Should they be Cc stable?


Cheers,


-Lionel


>
>>
>> -Lionel
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

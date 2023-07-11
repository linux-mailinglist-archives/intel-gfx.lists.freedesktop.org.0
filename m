Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCBD74EBDA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 12:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8971110E365;
	Tue, 11 Jul 2023 10:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A402310E366
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 10:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689072035; x=1720608035;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+D0d6Phcwe5+qmWOADNMdqbHYxzcIzzP5AGGCCEQUjc=;
 b=jdm6TqQG6RoKFzh68VLgDKUxSpkDETRWRqamF5wcvzacNmIM7aTGMJ5Q
 gY1Oq0pqAONzPjw1dv+m0fGJ0nZTbVvBhu07oaaKz5q/8qRe/rA/LzFbi
 ypamPnhJb39Vws/AguwDlXJPgZpaVthjmP9NzbKoVKFRiQe9NQGCgt6QM
 J79snv20ZA/nyY01xqYGeKA8XOGu4ha5mOWanNTZv+RhCikhuiyUPkY0u
 0Q5FkV3aykG8+9EFoDZImqscrXVnG2cSkQYR0ULJNnPF8egBqfkkloxwU
 /aWioMvc+haOUakhEJIwNhsRjn+2wxka4b7Ib+1nszICjESjfSOLZDd/j w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="367164964"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="367164964"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="845221029"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="845221029"
Received: from sneaga-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 03:40:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Lee Shawn C
 <shawn.c.lee@intel.com>
In-Reply-To: <ZK0vdPlGUbHKa6jo@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230704080727.2665-1-shawn.c.lee@intel.com>
 <ZK0vdPlGUbHKa6jo@ashyti-mobl2.lan>
Date: Tue, 11 Jul 2023 13:40:30 +0300
Message-ID: <87y1jmhgtd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine mmio debug flow to avoid
 bad unlock balance detected.
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Jul 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Lee,
>
> I'm really sorry for the late reply, I had some holidays in
> between.
>
> On Tue, Jul 04, 2023 at 04:07:27PM +0800, Lee Shawn C wrote:
>> Perform reboot stresss test on a kernel build with lockdebug flag enabled.
>> Bad unlock balanace detected would happened sometimes. Below is the
>> problematic scenario. If params.mmio_debug value was changed at step #4.
>> And it would trigger this issue. Modify code flow that decide to
>> enable/disable mmio debug before unclaimed_reg_debug() can avoid
>> this symptom.
>> 
>>     1. GEN6_READ_HEADER is called with params.mmio_debug = 0
>>     2. unclaimed_reg_debug(before = true) is called
>>     3. unclaimed_reg_debug return without taking a lock
>>        because params.mmio_debug == 0
>>     4. other thread modifies params.mmio_debug to 1
>>     5. GEN6_READ_FOOTER is called with params.mmio_debug != 0
>>     6. unclaimed_reg_debug tries to assert non-taken lock (first WARN)
>>     7. unclaimed_reg_debug tries to release non-taken lock (second WARN)
>> 
>> Closes:https://gitlab.freedesktop.org/drm/intel/-/issues/8749
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> Cc: Uma Shankar <uma.shankar@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_uncore.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>> index 796ebfe6c550..9d665978cc43 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -1931,9 +1931,6 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>>  		    const bool read,
>>  		    const bool before)
>>  {
>> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>> -		return;
>> -
>
> this is a very good catch! I'm fine with the change from my side:
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Nope, there's a bug in the patch.

https://lore.kernel.org/r/87ilb00zot.fsf@intel.com

>
> But I'd like to hear from someone else, as well, Matt, Daniele?
>
> Thank you,
> Andi

-- 
Jani Nikula, Intel Open Source Graphics Center

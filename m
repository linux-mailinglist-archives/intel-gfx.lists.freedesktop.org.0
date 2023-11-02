Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E538C7DF249
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 13:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4576410E088;
	Thu,  2 Nov 2023 12:26:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845C010E088
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 12:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698927992; x=1730463992;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8YbYvBdzZrIHNg3eMn8NeYgT5cS4n83s+3SXHmQIj80=;
 b=NjV7dcN0/pGFVnFiruFFWxjP7z+NmEF9mf+PPPLeSENB4igsSSBU1Jgp
 Z7gbpUs1tv4z8a16K9oU7Pp63WaZDv8QLcDFA7vL7mXTbT9ehR/TNhyt0
 l+s+NJb+IWMhaQUnto3M4ivgZ7PIvnSp4gQJQGBUJaPti0cSVO6Xp2GCX
 gteJ19lINTakPduzWcAsJ+bnvOcNQR+v7rQ4lHXPRGxoHU7SIvjz3Ls1B
 esv8Cll/z8acJTrN6aaMWqiGBetz5Od4fv6UtUTnmQ9mPL/dT6Oi6WtLj
 LcpKfDt+N63HPNPFOyedGkbX9Z8m4dMKqE2QhQ29Pemqo4Cx5LPgDaNNQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="474941568"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="474941568"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 05:26:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="8977591"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 05:26:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Dorcas AnonoLitunya
 <anonolitunya@gmail.com>
In-Reply-To: <ZT_5InkXDfIzzonu@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231027174745.4058-1-anonolitunya@gmail.com>
 <ZT_5InkXDfIzzonu@ashyti-mobl2.lan>
Date: Thu, 02 Nov 2023 14:26:26 +0200
Message-ID: <87jzr02vf1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove prohibited space after
 opening parenthesis
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
Cc: intel-gfx@lists.freedesktop.org, karolinadrobnik@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 30 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Dorcas,
>
> On Fri, Oct 27, 2023 at 08:47:45PM +0300, Dorcas AnonoLitunya wrote:
>> Removes space after opening parenthesis.
>> 
>> Fixes the checkpatch.pl error:
>> ERROR: space prohibited after that opening parenthesis '('
>> 
>> Signed-off-by: Dorcas AnonoLitunya <anonolitunya@gmail.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index 4a11219e560e..40687806d22a 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -47,7 +47,7 @@
>>  #define GEN9_LR_CONTEXT_RENDER_SIZE	(22 * PAGE_SIZE)
>>  #define GEN11_LR_CONTEXT_RENDER_SIZE	(14 * PAGE_SIZE)
>>  
>> -#define GEN8_LR_CONTEXT_OTHER_SIZE	( 2 * PAGE_SIZE)
>> +#define GEN8_LR_CONTEXT_OTHER_SIZE	(2 * PAGE_SIZE)
>
> I'm actually having second thoughts on this change. The space was
> left on purpose in order to be aligned with the defines above.

I'd merge the patch.

BR,
Jani.


>
> On the other hand, this is a bit detached from the others and
> this change makes checkpatch happy.
>
> This is one of those patches that are not right and not wrong
> either.
>
> I'll give it a bit more time and merge if no complains arise.
>
> Andi
>
>>  #define MAX_MMIO_BASES 3
>>  struct engine_info {
>> -- 
>> 2.42.0.345.gaab89be2eb

-- 
Jani Nikula, Intel

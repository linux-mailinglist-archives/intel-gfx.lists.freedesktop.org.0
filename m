Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDF0AF747A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 14:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C8510E83F;
	Thu,  3 Jul 2025 12:45:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LJZXvb7b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2392D10E82C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jul 2025 12:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751546715; x=1783082715;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OdB9Z/1oXCZLQL4ed1pRZa1HSCO0cZgpMlg7EAntNnA=;
 b=LJZXvb7baWraE3bWkiVVQCJ3gIQg64AT3VTtL0bFzYEXTZ7SVpgaxBUl
 /Ll1z6azbrUXg2O9cxDw9vWWwAqKvFpsyoz3qVzWHbxHYKfgq6RNLhxl3
 J5+WgeL3wcJKpjJeI5MWgg+k0QXvsqmg+z3Kk9mfJym3E/OzENaD842ur
 XwUcJEsHWBR9/jFkfIbwxiqOCqPfEtbqLSMvOBkrdbRzdDxnjKyq7BU0H
 hgU3W3ZLNDPQGku77md9jnytRgGRI4V1LiqLj0V4XjXQyl056phN51T6m
 1Mp0AIcBps16/2s9aZg+Pe/w+0jO88JjDOjXg/5OUonuetizSNsizgCnj Q==;
X-CSE-ConnectionGUID: DjFp5uqrTIOYSuilu/XqLg==
X-CSE-MsgGUID: tybZbOzWRGubYI4ycZkk3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53965331"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53965331"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:45:14 -0700
X-CSE-ConnectionGUID: s9Imzx6uQLW4PADWNprNIw==
X-CSE-MsgGUID: 93rTjm1rRCWnp/2M7aYYTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154726441"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:45:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, Thomas
 Gleixner <tglx@linutronix.de>, Geert Uytterhoeven
 <geert+renesas@glider.be>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, ville.syrjala@linux.intel.com
Subject: Re: [PATCH] iopoll: use fsleep() instead of usleep_range()
In-Reply-To: <2axg64hx4qjg3hvk27du4yifoojpemkzht2kuxzecuggomrbyv@difktc36et6m>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250626145119.2048423-1-jani.nikula@intel.com>
 <2axg64hx4qjg3hvk27du4yifoojpemkzht2kuxzecuggomrbyv@difktc36et6m>
Date: Thu, 03 Jul 2025 15:45:10 +0300
Message-ID: <d5ab9db3940ae708dcbe784bc2f85563ec9755df@intel.com>
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

On Wed, 02 Jul 2025, Andi Shyti <andi.shyti@kernel.org> wrote:
> Hi Jani,
>
> On Thu, Jun 26, 2025 at 05:51:19PM +0300, Jani Nikula wrote:
>> Sometimes it's necessary to poll with long sleeps, and the accuracy of
>> usleep_range() is overkill. Use the flexible sleep helper fsleep() for
>> sleeping in the read_poll_timeout() family of macros to automatically
>> choose the appropriate method of waiting.
>> 
>> Functionally there are a few consequences for existing users:
>> 
>> - 10 us and shorter sleeps will use usleep() instead of
>>   usleep_range(). Presumably this will not be an issue.
>> 
>> - When it leads to a slack of less than 25%, msleep() will be used
>>   instead of usleep_range(). Presumably this will not be an issue, given
>>   the sleeps will be longer in this case.
>> 
>> - Otherwise, the usleep_range() slack gets switched from the begin of
>>   the range to the end of the range, i.e. [sleep/2+1..sleep] ->
>>   [sleep..sleep+sleep/2]. In theory, this could be an issue in some
>>   cases, but difficult to determine before this hits the real world.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> this patch makes sense to me even with the fixes in the commit
> message suggested byt Geert.
>
> Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks! However I think Ville's series [1] should have more priority
here. It's mostly orthogonal, but IMO it's more important and should go
first. I can follow up with this one afterwards.

BR,
Jani.


[1] https://lore.kernel.org/r/20250702223439.19752-1-ville.syrjala@linux.intel.com

-- 
Jani Nikula, Intel

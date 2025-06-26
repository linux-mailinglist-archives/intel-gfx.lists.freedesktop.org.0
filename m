Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E234AEA237
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 17:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA85310E29A;
	Thu, 26 Jun 2025 15:16:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fdghBAVU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2711C10E29A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 15:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750950994; x=1782486994;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vzjk8bGrqWez7QWvHDgN5uqasr79Gx9gG7/5GusfDUk=;
 b=fdghBAVUiEyAqzBV5NqPsvC1ckBlaEFWS1Y5kvCRn3x2EavTeooZ/kiM
 fjUwkEln0+a4ylS/7hiJWlVT/3+ndCPE5nXs3mZOmeVMh3BNlmQVpn63z
 2uWDg8rNmwmmHezas9LHubl35vK8FFSduXMHlEhR1AnxZ1uFku23IhBSW
 muYaaS2YWZxrzFcW4tYQ8izOzWzGLqwYrBBPa6UbkXuqSWH0oSai+KlPy
 T3fskwMP06fAQnprqWVGyBmcVZQB+NNR0qApy1EhMgmpzyjsZsEOayH8i
 G0DmzOX0OM20Ni3K/TF3IC4/M/Ot9mzANWwUfHdR51BIowyvDJ8LnXgzD Q==;
X-CSE-ConnectionGUID: 5yzAEAtXSJ6twKRWLZKKrQ==
X-CSE-MsgGUID: /rkYNqDmSKWQlEX68xkiHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53396824"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53396824"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 08:16:29 -0700
X-CSE-ConnectionGUID: EUMIUsY8SN6rCmTrXjA1Tw==
X-CSE-MsgGUID: Mc5IxZpcSHeLGNSyRgdihg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="153282513"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 08:16:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, Thomas
 Gleixner <tglx@linutronix.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] iopoll: use fsleep() instead of usleep_range()
In-Reply-To: <CAMuHMdU+tgMqHcU8Fwr_XVE9RfNEGHnbEYHQ1DraE=YRvQxJuw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250626145119.2048423-1-jani.nikula@intel.com>
 <CAMuHMdU+tgMqHcU8Fwr_XVE9RfNEGHnbEYHQ1DraE=YRvQxJuw@mail.gmail.com>
Date: Thu, 26 Jun 2025 18:16:23 +0300
Message-ID: <7875cadfb12b1d2e8def412346d61716a6a98107@intel.com>
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

On Thu, 26 Jun 2025, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> Hi Jani,
>
> Thanks for your patch!
>
> On Thu, 26 Jun 2025 at 16:51, Jani Nikula <jani.nikula@intel.com> wrote:
>> Sometimes it's necessary to poll with long sleeps, and the accuracy of
>> usleep_range() is overkill. Use the flexible sleep helper fsleep() for
>> sleeping in the read_poll_timeout() family of macros to automatically
>> choose the appropriate method of waiting.
>>
>> Functionally there are a few consequences for existing users:
>>
>> - 10 us and shorter sleeps will use usleep() instead of
>
> s/usleep/udelay/.

D'oh!

>
>>   usleep_range(). Presumably this will not be an issue.
>
> Note that udelay() does not sleep, but loops.

Quite right. IIUC this is because for short delays it's more efficient.

BR,
Jani.

>
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
>> Not really sure who to Cc, given MAINTAINERS doesn't match this. Adding
>> some past committers.
>
> Oh well ;-)
>
> Gr{oetje,eeting}s,
>
>                         Geert

-- 
Jani Nikula, Intel

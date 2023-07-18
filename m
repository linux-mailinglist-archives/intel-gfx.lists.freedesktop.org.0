Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05D775756D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 09:36:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAFD10E2E3;
	Tue, 18 Jul 2023 07:36:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A47610E2E2;
 Tue, 18 Jul 2023 07:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689665760; x=1721201760;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5OXVuzvSWmw2A/c/j64C9AyZDH+vtBIOHooUCSK7Oxo=;
 b=R1PqXq96wqT805L7y/vx8eO53SFdpolzt2xHmOzJbfEKqOaA+sSy+wpW
 bdBwXjEDaHnvGAHDQJs0sKUuvI0EE40cKuOMoKEfJUPEbjYkol9VrRGOa
 Zn3cJvKvDpxnACWHQKrRchoue83DvmCx+rFb3POC2KGXXZAqyC8vVrmRT
 GnvRUshfeH7hswlwf6PKGkSSM6ibUkKwi3QgI4W0Eu6NHj8ILfctvwQvF
 iNYvg8EgzDSH5ZWUpX59j5WABjI7PTTaYXfswR3HiPorj4uW8pTvjxKxG
 dHr5fa6a7VLDVhzgXf9aeJS9WdcK2KP2MuLoNZU+X+jPqNwDfVn6GqAU/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="363600121"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="363600121"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 00:35:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="837175822"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="837175822"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO [10.213.207.99])
 ([10.213.207.99])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 00:35:48 -0700
Message-ID: <7b948154-8b32-bb0a-0268-46194b8129ae@linux.intel.com>
Date: Tue, 18 Jul 2023 08:35:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230717165318.831766-1-tvrtko.ursulin@linux.intel.com>
 <20230717171219.832728-1-tvrtko.ursulin@linux.intel.com>
 <ZLWOJ+EDk1jyBk37@intel.com> <87sf9mib8k.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87sf9mib8k.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2] tests/i915_pm_rps: Fix
 test after silent conflict
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/07/2023 20:33, Dixit, Ashutosh wrote:
> On Mon, 17 Jul 2023 11:53:27 -0700, Rodrigo Vivi wrote:
>>
>> On Mon, Jul 17, 2023 at 06:12:19PM +0100, Tvrtko Ursulin wrote:
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> A silent conflict sneaked in as I was merging
>>> d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds") in a way
>>> that igt_sysfs_set_u32 has became a function returning void.
>>>
>>> Assert is now built-in so drop it from the test.
>>>
>>> v2:
>>>   * Fix invalid value test.
>>>   * Assert new values after write while at it.
>>
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Merged to fix the IGT build.

Ah thank you, didn't realize it was broken, I thought it was only warnings.

Regards,

Tvrtko

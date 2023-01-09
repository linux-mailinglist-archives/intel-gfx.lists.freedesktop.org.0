Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB7B662932
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 16:01:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7DB10E440;
	Mon,  9 Jan 2023 15:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043D710E440
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 15:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673276455; x=1704812455;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=r9Y1g26n/Ssg2vcH2HKymnnb0cgq9vA0t781z6vBCYc=;
 b=Juac0+YKPIbIXwW8XszL/kYF8oUTBpW9RGhcrE94cAGH/ugwBXoLd9Ff
 2P8PLxOCber6VFdsWLtF2SDbixZ59m9gm75J6etkobug6IlLvM38rFrmN
 l7m7Zu0hleiHsOHnLOaPdNA7QBkwQlzJzkS/oIRWjVl2oy39NKmbzdg3w
 6dR7JwONZXh0IUh7h9afWBl98NxHhOvr+vy75vXU+Bx7sG9qO0m4fhkHM
 RdsHv2hWVxGkXbh4QEPlHspATG6AvY5kwM7kCFD24tfRUFiJm/tcbn0cb
 BHZHaMtkneNhyynh9pkwKdSpBt6K3NUEFYfaYWjeajTrZ6WLTHKOUpZ8h A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="350103027"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="350103027"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 07:00:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="799047989"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="799047989"
Received: from lherman-mobl.ger.corp.intel.com (HELO [10.213.209.244])
 ([10.213.209.244])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 07:00:51 -0800
Message-ID: <9c86dff0-e7f4-60b9-ed3e-6ad51cacaa01@linux.intel.com>
Date: Mon, 9 Jan 2023 15:00:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Mirsad Goran Todorovac <mirsad.todorovac@alu.unizg.hr>,
 srinivas pandruvada <srinivas.pandruvada@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
 <05424a5351a847786377a548dba0759917d8046c.camel@linux.intel.com>
 <15ef1bb9-7312-5d98-8bf0-0af1a37cfd2a@linux.intel.com>
 <619bdecc-cf87-60a4-f50d-836f4c073ea7@alu.unizg.hr>
 <8e080674-36ab-9260-046e-f4e3c931a3b9@alu.unizg.hr>
 <96661293-32d7-0bb4-fb0e-28086eaaecc3@linux.intel.com>
 <edab9da6-df81-7167-acdd-f2ea22c7ed90@alu.unizg.hr>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <edab9da6-df81-7167-acdd-f2ea22c7ed90@alu.unizg.hr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] LOOKS GOOD: Possible regression in drm/i915 driver:
 memleak
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
Cc: intel-gfx@lists.freedesktop.org,
 Thorsten Leemhuis <regressions@leemhuis.info>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 25/12/2022 22:48, Mirsad Goran Todorovac wrote:
> On 22. 12. 2022. 09:04, Tvrtko Ursulin wrote:
>>
>> In the meantime definitely thanks a lot for testing this quickly and 
>> reporting back!
> 
> Don't think much of it - anyone with CONFIG_KMEMLEAK enabled could have 
> caught this bug.
> 
> I was surprised that you found the fix in less than an hour without me 
> having to bisect :)

Fix sadly has a problem handling shared buffers so different version 
will hopefully appear soon.

Regards,

Tvrtko

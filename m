Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCE4B14457
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 00:20:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F51110E1A7;
	Mon, 28 Jul 2025 22:20:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ublKD6XC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8602710E077;
 Mon, 28 Jul 2025 22:20:40 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 61201A54FD7;
 Mon, 28 Jul 2025 22:20:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CE7CC4CEE7;
 Mon, 28 Jul 2025 22:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1753741239;
 bh=IppJjTusaUrLxshqiVsf8m1umQwo/apoV5H7a24flmg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ublKD6XCMseokKeG1ZZ5iSXR5/Hg4RbJtLatQKrhzp/LzBNaBTzGXhg0JLhGKogZO
 IS4Fkpsgo6n0BHIJnRfXSrxSvAuAcgNPKt9M7hueCzffoT2nUopkN33E/ZxBDbyeud
 kZSAH3A13dWeQRgPP/5f6X3ikpTKhyJHWmhPlZ+3PEGvCp/5WCCoSeXEuf2tRB6OtU
 mjbUCHRgoiREBs8xzQzDQrhDweN0if7h0Ydmr6sZPYM7sRQnrFrpaAyH2nl2gyTsUa
 xYHutFOAxQ6DWOphoP8aMYRkvV2b5RgvEJ7yspJZ8WbzsG15rHzKcalS5mjO1PQPl2
 GC6fk564fjCbw==
Message-ID: <8518279b-c16c-4333-b11b-88bd114a1f1b@kernel.org>
Date: Tue, 29 Jul 2025 07:20:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250708)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 linux-ide@vger.kernel.org, mika.westerberg@intel.com,
 anshuman.gupta@intel.com, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 lucas.demarchi@intel.com, Niklas Cassel <cassel@kernel.org>
References: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
 <243457b5-c1f8-494a-a88a-272c535094a7@kernel.org>
 <8557d51a-3ee6-4f39-9bf7-5bd3d05c524f@intel.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <8557d51a-3ee6-4f39-9bf7-5bd3d05c524f@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 7/29/25 01:37, Borah, Chaitanya Kumar wrote:
>> The question is though: do we want the user to "ignore" hotplug capability and
>> instead priviledge low power states. I guess we should have such capability.
>>
> 
> Atleast a case can be made for debugging and testing use-cases.
> 
>>> Also, are there other ways to detect a port is external other than
>>> receiving EOPNOTSUPP on the sysfs write?
>>
>> There is not. But it would be easy to add a sysfs port attribute, e.g.
>> /sys/class/ata_port/ata1/external which says "0" for regular ports and "1" for
>> external ports. We could also make this attribute writable in the case of
>> external port so that doing:
>>
>> echo 0 > /sys/class/ata_port/ata1/external
>>
>> forces the kernel to ignore the external nature of the port and allow user
>> control of the port/device LPM state.
>>
>> Would that work for your case ?
>>
> 
> Something like this should solve our problem.

I looked at this, but it is not a trivial change because of how we manage
features, which is that we do not really differentiate between "port/device
supports feature X" and "Disable X because of Y". So disabling something at
runtime instead of at device scan time (or revalidation) needs some code
massaging to remember the initial "port/device supports feature X".

One thing that would be easy to add is a "libata.force=ignore_external_ports"
module parameter to completely ignore the external nature of ports. That
probably will be the easiest solution for your case.

-- 
Damien Le Moal
Western Digital Research

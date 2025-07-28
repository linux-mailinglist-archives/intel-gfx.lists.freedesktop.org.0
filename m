Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCA1B14462
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 00:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE44910E077;
	Mon, 28 Jul 2025 22:30:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="WddkmhIi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 626AC10E077;
 Mon, 28 Jul 2025 22:30:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 70304601FC;
 Mon, 28 Jul 2025 22:30:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE6C3C4CEE7;
 Mon, 28 Jul 2025 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1753741855;
 bh=/1BrXD3fQpF72mx1DAPNnhXyTgXhonfo60wpkCRVIQs=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=WddkmhIiirYBbUFWseRESmZgrRbCwSthhaBBDth9rJ55+FB/gYGyGHHL+bnMuzDlH
 Xu2nrKeP8a+hnJElRD2eXKNWOs7Gp42vNYvniz6QtLUaHKJY21q8dwHUP7l9t765lg
 fhfGrY9y/SQm6g36wgoQj1mtg4wEfrPnSarKq/NRFnflMkLYG/JP3Oidjpwok9B7WX
 IQg3Zw5WuBDoxC6zDOkXYNw1Ry1VJq2Xh0KlOLNoVtP5eWM+ROPkIvoBucb8jqoOCI
 iJt7hd36BJYHT89eh5N395JoNDAPhHZoExTw9fl48H+147P+k4mGtl5TRuNwRooDow
 2FpV9LVgRGE8Q==
Message-ID: <d47b06b4-d2e6-4c0a-8721-5df15aa46378@kernel.org>
Date: Tue, 29 Jul 2025 07:30:52 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250708)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 linux-ide@vger.kernel.org, mika.westerberg@intel.com,
 anshuman.gupta@intel.com, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 lucas.demarchi@intel.com
References: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
 <f4f147cd-5847-4efd-8dd3-9a00e129e133@kernel.org>
 <8f37fcfd-300c-42df-a65b-57c10f185287@intel.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <8f37fcfd-300c-42df-a65b-57c10f185287@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

On 7/29/25 01:33, Borah, Chaitanya Kumar wrote:
> 
> 
> On 7/28/2025 11:01 AM, Damien Le Moal wrote:
>> On 7/25/25 3:43 PM, Borah, Chaitanya Kumar wrote:
>>> For some context in our kms_pm_rpm tests, we enable min_power policy for SATA
>>> so that we can reach deep runtime power states and restore the original policy
>>> after finishing. [5][6]
>>>
>>> IIUC, the above change is based on spec and not something which can be
>>> reverted. So as I see it, we have to drop this code path for external ports.
>>> However I am not sure if we can achieve deep power states without enforcing it
>>> through the sysfs entry.
>>>
>>> Atleast for the basic-rte subtest, the test passes if we comment out the
>>> functions controlling the SATA ports. We will need more testing to determine if
>>> this approach work. Any thoughts on it?
>>>
>>> Also, are there other ways to detect a port is external other than receiving
>>> EOPNOTSUPP on the sysfs write?
>>
>> I completely forgot to mention one important thing: please check your test
>> machine BIOS settings and see if you have "hotplug support" set to enable for
>> SATA ports. If it is, set that BIOS setting to disable and you will see the
>> SATA port as a regular one, not as an external port. So LPM support will be
>> back and your test program will not need changes.
>>
>> Not all BIOSes have such setting though. Most of the machine I have do have it
>> though and I checked that it does affect how the ahci driver sees the port
>> (external or regular with LPM).
>>
>>
> 
> Found a "Hot Plug" setting (thanks to Mika!) in our testing device's 
> BIOS but it does not seem to have any effect.
> 
> We also have an option called "External", toggling that did not help either.
> 
> There is another configuration which was *readonly*.
> 
> "Configured as eSATA" -> "Hot Plug supported"
> 
> Not sure if it is relevant to our discussion.

It is and that probably is the reason why disabling hotplug does nothing on the
port external characteristic. Does this machine really have eSata ports ? Do
they correspond to the 4 ports (out of 8) that you see as external
(link_power_management_supported = 0 ports) ?

Likely, you have the SXS host capability set for this machine because of this
BIOS setup. From the AHCI specifications:

Supports External SATA (SXS): When set to ‘1’, indicates that the HBA has one or
more Serial ATA ports that has a signal only connector that is externally
accessible (e.g. eSATA connector).

Hotplug is reported as a separate bit, but handled in the same way as an
external port as we cannot (easily) support LPM if we want to preserve the
hotplug capability (LPM changes the PHY state constantly, which clashes with hot
plug/unplug PHY changes and is hard to differentiate).

Note that you can see if a port is external in dmesg. Look for:

ata4: SATA max UDMA/133 abar m524288@0xaa500000 port 0xaa500280 irq 112 lpm-pol
1 ext

A regular port will not have the "ext" at the end:

ata5: SATA max UDMA/133 abar m524288@0xaa500000 port 0xaa500300 irq 112 lpm-pol 1



-- 
Damien Le Moal
Western Digital Research

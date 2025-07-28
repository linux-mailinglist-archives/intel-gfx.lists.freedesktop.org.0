Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E907B1342E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 07:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F23410E08B;
	Mon, 28 Jul 2025 05:33:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="eZBRFXqG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7759810E08B;
 Mon, 28 Jul 2025 05:33:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 507D9A547FF;
 Mon, 28 Jul 2025 05:33:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79101C4CEE7;
 Mon, 28 Jul 2025 05:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1753680828;
 bh=u6ERUNOOEzSBij/Uojzy5/MsKeWwSjrvHTW6EgVbPQI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=eZBRFXqGmSa0uoG2YegRuFgCnx/Q4jEVLwmjYc5FsrSXgnbIe+K4CG2ICeotCssIY
 hjRYPGlWciyD8PnomqYkdaqEnnNmMpNPAf0aHyH7XDqgjt1JVK6Ls1U4sSOvaJhcU0
 ZMpPaL9aGAWUIzvlO1OoSljFHEABVf/cBg3EqXTdL9vqV0nCEQS4OqaV461GU4BMtF
 mgFJQ7rAjeA1kmJNr7o0TFCHiW9so5wHsI9TO9O+AfhDLRBKt66UK0GPy0xoaJ0iGk
 AkKM3uP7vz9tr/en1mzAz5pnEWAQIF2+hpXB1A3bEouEv7uuYnkYtkz+Y1TEzhJr5x
 m+1Csc9hDAlKw==
Message-ID: <f4f147cd-5847-4efd-8dd3-9a00e129e133@kernel.org>
Date: Mon, 28 Jul 2025 14:31:17 +0900
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
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
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

On 7/25/25 3:43 PM, Borah, Chaitanya Kumar wrote:
> For some context in our kms_pm_rpm tests, we enable min_power policy for SATA
> so that we can reach deep runtime power states and restore the original policy
> after finishing. [5][6]
> 
> IIUC, the above change is based on spec and not something which can be
> reverted. So as I see it, we have to drop this code path for external ports.
> However I am not sure if we can achieve deep power states without enforcing it
> through the sysfs entry.
> 
> Atleast for the basic-rte subtest, the test passes if we comment out the
> functions controlling the SATA ports. We will need more testing to determine if
> this approach work. Any thoughts on it?
> 
> Also, are there other ways to detect a port is external other than receiving
> EOPNOTSUPP on the sysfs write?

I completely forgot to mention one important thing: please check your test
machine BIOS settings and see if you have "hotplug support" set to enable for
SATA ports. If it is, set that BIOS setting to disable and you will see the
SATA port as a regular one, not as an external port. So LPM support will be
back and your test program will not need changes.

Not all BIOSes have such setting though. Most of the machine I have do have it
though and I checked that it does affect how the ahci driver sees the port
(external or regular with LPM).


-- 
Damien Le Moal
Western Digital Research

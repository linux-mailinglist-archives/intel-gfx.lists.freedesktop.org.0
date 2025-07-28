Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B30DB14469
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 00:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A80510E59B;
	Mon, 28 Jul 2025 22:34:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="l4vpMbvS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21FA010E592;
 Mon, 28 Jul 2025 22:34:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D232745952;
 Mon, 28 Jul 2025 22:34:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A3BAC4CEE7;
 Mon, 28 Jul 2025 22:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1753742042;
 bh=8a2Y93oHH/OSh9XjEyyBAAxmZiTUjcXf/ZOnnwUBTK8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=l4vpMbvS9ikuZ3UxCF1E2fplBB7lTBaFvxF04UZnb8npMgZ6CDkTwGH6Mw0CMt0Jb
 BPvxvtUPzvpuzQBXIH3ezEGi2YY8mSDQcc9KXjvbujM0biQZH+ryS0FFyppuxGL3u0
 q9xEqQyBWgbKkSvPIQ98H0LQq3kpFEx+DPTy9cU6ce/AOfZaHtoWBaFljzfn8PFdOx
 +tgeeiCvA9DkZb7NgneuBhPdXg5nBpIEbmBc/+LGpgGlFrikUaSLjIwSjzz2pZKiV0
 uxX9Bdexq33rMTQMtnJQJDPpJNLGXcGJhAD6D4D1Iy6oWSaEnzSECCckFwJT5jVzCk
 GiBrw4lxiFzHw==
Message-ID: <5143bbee-697b-4357-9645-10f38296b561@kernel.org>
Date: Tue, 29 Jul 2025 07:33:59 +0900
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
 <f3f779e3-e269-4ac9-9bed-042859d98a83@kernel.org>
 <d34d122f-2ef8-44f1-83c9-92c7b9e83b6e@intel.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <d34d122f-2ef8-44f1-83c9-92c7b9e83b6e@intel.com>
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

On 7/29/25 01:24, Borah, Chaitanya Kumar wrote:
> 
> 
> On 7/28/2025 9:41 AM, Damien Le Moal wrote:
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
>> The attached patch adds the "link_power_management_supported" sysfs device
>> attribute for drives connected to AHCI. Would that work for you ?
>>
> 
> Yes this could work. I quickly hacked the test to ignore writing policy 
> if this file returns 0.
> 
> Here is the state of the machine I am testing on.
> 
> /sys/class/scsi_host/host0/link_power_management_supported: 0
> /sys/class/scsi_host/host1/link_power_management_supported: 0
> /sys/class/scsi_host/host2/link_power_management_supported: 0
> /sys/class/scsi_host/host3/link_power_management_supported: 0
> /sys/class/scsi_host/host4/link_power_management_supported: 1
> /sys/class/scsi_host/host5/link_power_management_supported: 1
> /sys/class/scsi_host/host6/link_power_management_supported: 1
> /sys/class/scsi_host/host7/link_power_management_supported: 1

Looks good. My test machine looks exactly like this too.
I will send out this patch as it is useful anyway regardless of external/hotplug
ports since not all adapters/drives support LPM.

When posting this, can I tag it as a solution to the regression ?

And in addition to this patch, I will work on a flexible way of ignoring hotplug.


-- 
Damien Le Moal
Western Digital Research

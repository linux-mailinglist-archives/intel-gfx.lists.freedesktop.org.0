Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0B54799FF
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Dec 2021 10:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4579810F845;
	Sat, 18 Dec 2021 09:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 562 seconds by postgrey-1.36 at gabe;
 Sat, 18 Dec 2021 09:40:51 UTC
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4118810F845
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Dec 2021 09:40:51 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1639819886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uJr/zWN9zDC5sxa8TVVDQsnUf6sg2RymtgjmqgT28sA=;
 b=P2jWXWQWsYUtrqo+EKx/tjTWSk5E+LCT5YhLDYS/shkugqzQDVcihrZmch4azXUJRvSeFh
 SgRAHAYg5wtOVcpEhz0cn6XiAHsBpnxNk+zANSNDNWMFNp0Rclxrj/vYU/+C618Y+r7YrT
 fbeAgBnI8i1nFQIShLWWrT0NVukNDz29lBCvNSRLIrNnkEza1BoWh5+q3xTHVAYACpCq4n
 PsC8U7bOLkYU+81N/66P8JoRwMsQ9vQjWCLcy4sf9cCivchWy2LvvQdFuu1USPgaYDZsUi
 Zmn+qC5A+03sq3mTA6onaJunAin9COFR3XgILIRbFmkphYkBTqD+cg4zQgrrrg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1639819886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=uJr/zWN9zDC5sxa8TVVDQsnUf6sg2RymtgjmqgT28sA=;
 b=6sCD/4Hd8A5tdWSH7D1rnNMHS15P4u5x9Yz8nKaW6uXIpy21RdX05ExsTMoieW9mbvjMGw
 UkdzUoex4fwAeRDg==
To: Jani Nikula <jani.nikula@linux.intel.com>, Tejas Upadhyay
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87r1ab1huq.fsf@intel.com>
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87r1ab1huq.fsf@intel.com>
Date: Sat, 18 Dec 2021 10:31:25 +0100
Message-ID: <8735mqb6oi.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
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
Cc: x86@kernel.org, linux-pci@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Bjorn Helgaas <bhelgaas@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 17 2021 at 15:27, Jani Nikula wrote:
> On Fri, 10 Dec 2021, Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>> Adding PCI device ids and enabling ADL-N platform.
>> ADL-N from i915 point of view is subplatform of ADL-P.
>>
>> BSpec: 68397
>>
>> Changes since V2:
>> 	- Added version log history
>> Changes since V1:
>> 	- replace IS_ALDERLAKE_N with IS_ADLP_N - Jani Nikula
>>
>> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
>
> Cc: x86 maintainers & lists
>
> Ack for merging the arch/x86/kernel/early-quirks.c PCI ID update via
> drm-intel?

Acked-by: Thomas Gleixner <tglx@linutronix.de>

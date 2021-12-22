Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6758747CDED
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 09:18:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A311C1125D7;
	Wed, 22 Dec 2021 08:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF3E1125D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 08:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640161106; x=1671697106;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AygL7u1GpKW2WxRHEvl1gzra+DcWNKVSIRQhZbWNXZI=;
 b=XX3jx0NCwPyljwyt/yvjxETH2/Il9MNIVh1Hiylz7PlGxpJU43d9wHcj
 GwUtHBw6Wof8dyfGhU2NGLyMmF/6/JNQdoee1mSajJS28nhqWC0MymGWF
 AdWcRW5RvS/jAVyvfNPPHNtEY64cM0HzGLX5927+QdvlIQkM1jA6N39AR
 uYM3P/o7N1aLQRmE9sAtezdImaWooWnteP2GwULBhuV/AGurUUaHgccYZ
 jRtB51KsYFk9gqDVsCOZ81sE0h6I5uL9rIJ03O7ElEuXGv2uQ4adcvupX
 s7NZs9vBDBST9Ij+bj5YYYbCBk1M0vbN46mpntGNZN8TixvNvvNN4MzoW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="239325902"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="239325902"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:18:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="548938302"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:17:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, Tejas Upadhyay
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <8735mqb6oi.ffs@tglx>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87r1ab1huq.fsf@intel.com> <8735mqb6oi.ffs@tglx>
Date: Wed, 22 Dec 2021 10:17:55 +0200
Message-ID: <87tuf1yrws.fsf@intel.com>
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

On Sat, 18 Dec 2021, Thomas Gleixner <tglx@linutronix.de> wrote:
> On Fri, Dec 17 2021 at 15:27, Jani Nikula wrote:
>> On Fri, 10 Dec 2021, Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>>> Adding PCI device ids and enabling ADL-N platform.
>>> ADL-N from i915 point of view is subplatform of ADL-P.
>>>
>>> BSpec: 68397
>>>
>>> Changes since V2:
>>> 	- Added version log history
>>> Changes since V1:
>>> 	- replace IS_ALDERLAKE_N with IS_ADLP_N - Jani Nikula
>>>
>>> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
>>
>> Cc: x86 maintainers & lists
>>
>> Ack for merging the arch/x86/kernel/early-quirks.c PCI ID update via
>> drm-intel?
>
> Acked-by: Thomas Gleixner <tglx@linutronix.de>

Thanks, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center

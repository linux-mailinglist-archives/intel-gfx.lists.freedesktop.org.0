Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E464D2B3F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 10:02:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A97110E2FD;
	Wed,  9 Mar 2022 09:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F251110E2FD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 09:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646816551; x=1678352551;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DLoF1DtyJHn/9ajgfHumaK2FEROPRRTAqJhi759co5c=;
 b=LytMACsB2XTuB7ZYTAwTK1cuZu30TU8KaquXRNKLmT2vGXJxvUX8uJgq
 1i8j1IjDnkW8oCIqCgafEy/KBGBGx6W6tqDsZT29wlM267H3IuvsoEr6l
 5qhj2IechW8TTR9St3qi9rTwHu7GjKFfLq/dATAYzLvwbWLeKULev7NSq
 zP/QnXt1OcwvY8KqWZgqsHCD4sayeruPUynLqOguicPSy9CgoJ1pjdi1/
 RnjXAoXO7mMULoBm5lN/8DDmCKYs1l496ufNkvuQhk+uYnY6aXZWsCfIG
 PcK76NiBJAs9SRSWITe0rpGGWc/D+UFkEWc9kch51YWhI0ZAusx5LcbuS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="252496965"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="252496965"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:02:17 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="642080242"
Received: from hedwards-mobl1.ger.corp.intel.com (HELO [10.213.198.86])
 ([10.213.198.86])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 01:02:16 -0800
Message-ID: <9dabb68b-f2af-ae97-0fb2-869367c496bf@linux.intel.com>
Date: Wed, 9 Mar 2022 09:02:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
References: <20220308172759.920551-1-kai.vehmanen@linux.intel.com>
 <f9f6f831-a05d-2d20-8ade-ab717f342ba5@linux.intel.com>
 <alpine.DEB.2.22.394.2203091035350.3088432@eliteleevi.tm.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <alpine.DEB.2.22.394.2203091035350.3088432@eliteleevi.tm.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] ALSA: hda/i915 - avoid hung task timeout
 in i915 wait
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
Cc: alsa-devel@alsa-project.org, Paul Menzel <pmenzel+alsa-devel@molgen.mpg.de>,
 Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 amadeuszx.slawinski@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/03/2022 08:39, Kai Vehmanen wrote:
> Hi,
> 
> On Wed, 9 Mar 2022, Tvrtko Ursulin wrote:
> 
>>> -			/* 60s timeout */
>>
>> Where does this 60s come from and why is the fix to work around
>> DEFAULT_HUNG_TASK_TIMEOUT in a hacky way deemed okay? For instance would
>> limiting the wait here to whatever the kconfig is set to be an option?
> 
> this was discussed in
> https://lists.freedesktop.org/archives/intel-gfx/2022-February/290821.html
> ... and that thread concluded it's cleaner to split the wait than try
> to figure out hung-task configuration from middle of audio driver.
> 
> The 60sec timeout comes from 2019 patch "ALSA: hda: Extend i915 component
> bind timeout" to fix an issue reported by Paul Menzel (cc'ed).
> 
> This patch keeps the timeout intact.

I did not spot discussion touching on the point I raised.

How about not fight the hung task detector but mark your wait context as 
"I really know what I'm doing - not stuck trust me". Maybe using 
wait_for_completion_killable_timeout would do it since 
snd_hdac_i915_init is allowed to fail with an error already?

Regards,

Tvrtko

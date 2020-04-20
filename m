Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAC11B0263
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 09:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB486E1CD;
	Mon, 20 Apr 2020 07:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2376E1CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 07:11:43 +0000 (UTC)
IronPort-SDR: /F2G0nqAUFtmaKql7xwiyLoalyl/RPy5NaXIR8/zJA87r9NW5PXD1vIqRpxoijooF5SvVTJUSJ
 mp5rlNDeKwPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 00:11:42 -0700
IronPort-SDR: yoKGQc9AUIUrZlZfQaELfoyCHiZ+zZxH+keabxbcZ7U3GWegBwhC/tswh5g4Eu/U58lmp5b8dZ
 WERh3X0IRgUw==
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429020644"
Received: from iastakh-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.63.229])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 00:11:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
In-Reply-To: <alpine.DEB.2.21.2004171103100.2957@eliteleevi.tm.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200417065132.23048-1-jani.nikula@intel.com>
 <alpine.DEB.2.21.2004171103100.2957@eliteleevi.tm.intel.com>
Date: Mon, 20 Apr 2020 10:11:37 +0300
Message-ID: <875zdu3a3a.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: error log non-zero audio
 power refcount after unbind
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Apr 2020, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
> Hi Jani,
>
> On Fri, 17 Apr 2020, Jani Nikula wrote:
>
>> We have some module unload/reload tests hitting an issue with i915
>> unbinding the component interface before the audio driver has properly
>> put the power. Log an error about it for ease of debugging. (Normally
>
> thanks, this is a good addition:
> Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Thanks for the review, pushed to drm-intel-next-queued.

> Maybe one point to consider is whether to take the next step and just 
> block the unload. On audio side, once acomp binding is done to i915 
> driver, it is only released at hda driver unload. So any test case where 
> audio driver is bound to i915, and test unloads i915 without unloading 
> the audio driver first, will not work. Even if no immediate failure is 
> seen at unload, functionality will be impacted after i915 is loaded 
> again.
>
> Not sure how to do this though. Normally module refcounts would take care
> of this (and block i915 unload), but now that we have the component 
> framework in between, something else is needed.

Heh, had I known what to do, I'd have posted that. So I just opted for
logging to make the failure mode obvious.

I admit I didn't check what having an unbalanced get will actually
do. If we go ahead and power down the power well, I assume it'll cripple
the audio driver. I think our refcounting and power well handling should
read the hardware state and set up everything properly on load, but the
audio driver will have lost its marbles in the mean time. Even if by
some chance it doesn't lose its power during i915 unload/load cycle, it
won't have the component interface and can't ensure i915 doesn't go
ahead and cut power later.

BR,
Jani.


>
> PS Audio driver also doesn't implement component unbind(), but I don't
>    immediately see what it could do there. It can't return an error
>    and the audio framework is not really prepared for invidual codec
>    drivers to disappear at runtime. We can handle hotplug of complete 
>    cards (like USB), but individual codec drivers are expected to stay loaded.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

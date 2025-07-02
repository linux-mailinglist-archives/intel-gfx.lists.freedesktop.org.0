Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A16AF0EAD
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 11:01:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C61D310E049;
	Wed,  2 Jul 2025 09:01:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8YiXoSF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F6510E049;
 Wed,  2 Jul 2025 09:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751446908; x=1782982908;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0XAcxxWXBgypEQKQFwOY5odP7NKGj5+UWFxTHIayjDA=;
 b=T8YiXoSFhjAygKLleucumJRiO4fSPzX7ptdLnPe07i7XPpxymyVZa4X6
 IeNpVJPqbeM3m9B9KRwI14F7NdtLmkSdXrnhF3GP9InDT2Q9s964q6T3r
 jWE0sGZnfgx1TVA/QAVHmRy+IqBmlnxLCJZ9XIed4x9OBxXC67EPDCylS
 AeWJyBoh9F1e+9uGY7N67aTQeP6pm1kP4aBkK/o5z8dDY7fqz0Ze7KgHO
 jCwjYPiRmeTlLAes0z2hHroH8K9lQ+2SfTKE1BIxHXWPvXmfhO78FLS8S
 zBt+b5etCfKns0MM0lCBJ0jzTT4IoEAMEyRBE3QQFRNyHDNyYgSkbFFtF A==;
X-CSE-ConnectionGUID: sEkVx2EDQA2TvjkC8OwfhQ==
X-CSE-MsgGUID: UIw49n2sSgqXlTj0/7/W9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53448552"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="53448552"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 02:01:48 -0700
X-CSE-ConnectionGUID: wzHyjItVQJW63aFBrSNgmg==
X-CSE-MsgGUID: x5QKprFYTSGm6qAmykOjTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="191188801"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 02:01:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 arun.r.murthy@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH]  drm/i915/display: Optimize panel power-on  wait time
In-Reply-To: <w22u6gjs6uuzfkksxrp6cjlkli2jzanqodb7ukyptlsv4a2kvk@kni4djwoeefx>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250630122339.3007880-1-dibin.moolakadan.subrahmanian@intel.com>
 <b5a84286f9729e9d92e08596bfbeb4e9c77f6dc1@intel.com>
 <w22u6gjs6uuzfkksxrp6cjlkli2jzanqodb7ukyptlsv4a2kvk@kni4djwoeefx>
Date: Wed, 02 Jul 2025 12:01:42 +0300
Message-ID: <fe44d12c701c3d410de6e0ebc1f08bae2eec10a1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 01 Jul 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Jul 01, 2025 at 12:28:41PM +0300, Jani Nikula wrote:
>>On Mon, 30 Jun 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>>>  The current wait_panel_on() uses intel_de_wait() with a long timeout
>>>  (5000ms), which is suboptimal on Xe platforms where the underlying
>>>  xe_mmio_wait32() employs an exponential backoff strategy. This leads
>>>  to unnecessary delays during resume or power-on  when the panel becomes
>>>  ready earlier than the full timeout.
>>>
>>>  This patch splits the total wait time into two pases
>>>     - First wait for the typical panel-on time(180ms)
>>>     - If panel is not ready , continue polling in short 20ms intervals
>>>       until the maximum timeout (5000ms) is reached
>>
>>I'm *very* reluctant to merge any new custom wait hacks. I'm in the
>>process of *removing* a plethora of them [1][2][3].
>
> good riddance

Yay!

>>
>>I think the question is, should xe_mmio_wait32() (and the i915
>>counterpart) and the intel_de_wait*() functions be migrated to an
>>interface similar to read_poll_timeout(), i.e. provide sleep and timeout
>>separately, no exponential backoff. And implement the waits using
>>read_poll_timeout(), or whatever Ville ends up with [4].
>
> I saw your patch series and I'm eagerly waiting it to either propagate
> it in xe or have someone merge such a patch.  I'm not sure about
> removing the exponential backoff is a good thing overall, but if it's
> needed then it needs to be justified to add a new function to pair with
> read_poll_timeout(), not a custom driver function.

While I'm negative about the patch at hand, the underlying problem is
very real.

I think at the very least the exponential sleep backoff needs an upper
bound that's relative to the timeout. Maybe 10-25% of timeout?

With the example case of 5 second timeout, the exponential backoff
starting from 10 us leads to a dozen polls before reaching 100 ms
elapsed time, but then polls at approximately 1 s, 2 s, 4 s, and 8 s
elapsed time. Longer timeouts are of course rare, but they exhibit
increasingly worse behaviour.

So if what we're waiting takes 2.1 seconds, the next check will be about
2 seconds later. Similarly, if it takes 4.1 seconds, the next check will
be about 4 seconds later, in this case exceeding the timeout by 3
seconds.

Anyway, if xe_mmio_wait32() remains as it is, with read_poll_timeout()
it's trivial to do the wait in the intel_de_*() macros, in display side,
with sleeps and timeouts defined in display. Because for most things the
really quick fast polls are useless in display.


BR,
Jani.


-- 
Jani Nikula, Intel

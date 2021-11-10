Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE8544CC8C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 23:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE52C6E12B;
	Wed, 10 Nov 2021 22:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41BE46E12B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 22:23:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="220004939"
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="220004939"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 14:23:01 -0800
X-IronPort-AV: E=Sophos;i="5.87,225,1631602800"; d="scan'208";a="602383961"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 14:23:00 -0800
Date: Thu, 11 Nov 2021 00:15:40 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5hzgqb65h0.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.22.394.2111110015250.3554566@eliteleevi.tm.intel.com>
References: <20211110210307.1172004-1-kai.vehmanen@linux.intel.com>
 <s5hzgqb65h0.wl-tiwai@suse.de>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda: fix general protection fault in
 azx_runtime_idle
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
Cc: alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

On Wed, 10 Nov 2021, Takashi Iwai wrote:

> On Wed, 10 Nov 2021 22:03:07 +0100, Kai Vehmanen wrote:
> > Fix a corner case between PCI device driver remove callback and
> > runtime PM idle callback.
[...]
> > Some non-persistent direct links showing the bug trigger on
> > different platforms with linux-next 20211109:
> >  - https://intel-gfx-ci.01.org/tree/linux-next/next-20211109/fi-tgl-1115g4/igt@i915_module_load@reload.html
> >  - https://intel-gfx-ci.01.org/tree/linux-next/next-20211109/fi-jsl-1/igt@i915_module_load@reload.html
> > 
> > Notably with 20211110 linux-next, the bug does not trigger:
> >  - https://intel-gfx-ci.01.org/tree/linux-next/next-20211110/fi-tgl-1115g4/igt@i915_module_load@reload.html
> 
> Is this the case with CONFIG_DEBUG_KOBJECT_RELEASE?
> This would be the only logical explanation I can think of for now.

hmm, that doesn't seem to be used. Here's a link to kconfig used in the 
failing CI run:
https://intel-gfx-ci.01.org/tree/linux-next/next-20211109/kconfig.txt

It's still a bit odd, especially given Scott just reported the other HDA 
related regression in 5.15 today. The two issues don't seem to be related 
though, although both are fixed by clearing drvdata (but in different 
places of hda_intel.c).

I'll try to run some more tests tomorrow. The fix should be good in any 
case, but it would be interesting to understand better what change made 
this more (?) likely to hit than before. This is not a new test and the 
problem happens on fairly old platforms, so something has changed.

Br, Kai

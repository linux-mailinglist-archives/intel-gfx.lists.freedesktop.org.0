Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 551DF19155E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 16:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08416E15F;
	Tue, 24 Mar 2020 15:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65BD6E15F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 15:52:30 +0000 (UTC)
IronPort-SDR: nI+3SPtLl4gx+53ktvm+08w1qiNMlNa4/cUSKIK47B9ApWahKRw4raAywpvo0nO8CsSTPMl/OJ
 +6X4vUedVnoA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 08:52:30 -0700
IronPort-SDR: K6bFZjUMtz1Wt8KsHPQtmbvxEoRvJEcrsjE6AXJYd1lSBjnzOk3xEucf5dsjTiKHm1MvQdxYdi
 GJha1c7UZm1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,300,1580803200"; d="scan'208";a="393323380"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004.jf.intel.com with ESMTP; 24 Mar 2020 08:52:28 -0700
Date: Tue, 24 Mar 2020 17:52:27 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
In-Reply-To: <alpine.DEB.2.21.2003131816400.2957@eliteleevi.tm.intel.com>
Message-ID: <alpine.DEB.2.21.2003241733190.2957@eliteleevi.tm.intel.com>
References: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
 <20200313144821.29592-2-kai.vehmanen@linux.intel.com>
 <20200313151443.GO13686@intel.com>
 <alpine.DEB.2.21.2003131816400.2957@eliteleevi.tm.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: move audio CDCLK constraint
 setup to bind/unbind
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville and others,

On Fri, 13 Mar 2020, Kai Vehmanen wrote:

> I do know that on more recent hardware (gen12), I will get failures if I 
> don't strictly follow the requirement. GLK is a special case as it has the 
> 79Mhz low cdclk. I've not been able to trigger the problem on other old 
> hardware though. So where to draw the line?
> 
> It's a fair point that if the old platforms have worked so far, we should 
> not make the change unless there is at least one data point supporting it. 
> So the constraint would then apply for gen12+ and glk.

given the not-so-great options on the table, I went back (again) looking 
for other solutions and came with a curious finding. The forced Codec Wake 
interface added to gen9 in 2015, seems to fix the gen12 codec probe issues 
as well, without the cdclk bump.

So it looks like the problem is not about the CDCLK being high enough, but 
something in hardware state that is fixed by doing a modeset. Or, as it 
seems to be the case, by using the chickebits to force the codec wake (and 
no need for modeset).

Based on hw specs, there is no valid reason to limit the forced codec wake 
only to gen9, so I went and sent a patch for this now. I've tested this on 
various gen9/10/11/12 platforms and also asked our validation to test it 
out, and seems everything seems good.

I also tried an experiment where I added the codec wake patch, but removed 
the forced cdclk bump on GLK, but that still fails, so on GLK, the CDCLK 
bump is still mandatory, and likely a separate problem. So this doesn't 
solve all the problems, but at least we can fix the currently reported 
bugs without causing any new compromises at system level.

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

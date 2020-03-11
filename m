Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BDB181795
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 13:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7B06E42C;
	Wed, 11 Mar 2020 12:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E6F6E42C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 12:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 05:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,540,1574150400"; d="scan'208";a="236421200"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga008.jf.intel.com with ESMTP; 11 Mar 2020 05:16:56 -0700
Date: Wed, 11 Mar 2020 14:16:56 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5htv2w9g5n.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.21.2003111310030.2957@eliteleevi.tm.intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
 <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
 <s5h4kuxssqr.wl-tiwai@suse.de> <20200310134114.GE13686@intel.com>
 <alpine.DEB.2.21.2003101848170.2957@eliteleevi.tm.intel.com>
 <20200310182522.GN13686@intel.com> <s5htv2w9g5n.wl-tiwai@suse.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-318106570-317047371-1583925776=:2957"
Content-ID: <alpine.DEB.2.21.2003111323060.2957@eliteleevi.tm.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Limit audio CDCLK>=2*BCLK
 constraint back to GLK only
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-317047371-1583925776=:2957
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.21.2003111323061.2957@eliteleevi.tm.intel.com>

Hey,

On Tue, 10 Mar 2020, Takashi Iwai wrote:
> On Tue, 10 Mar 2020 19:25:22 +0100, Ville Syrjälä wrote:
>> On Tue, Mar 10, 2020 at 07:18:58PM +0200, Kai Vehmanen wrote:
>>> One problematic scenario that this doesn't cover:
>>>  - a single display is used (at low cdclk), and 
>>>  - audio block goes to runtime suspend while display stays up. 
>>> 
>>> Upon resume (for e.g. UI notification sound), audio will initialize the 
>>> HDA bus and call get_power() on i915, even if the notification goes to 
>>> internal speaker. A modeset at this point is potentially very annoying.
>> 
>> :( That seems much harder to deal with.
> 
> I guess it doesn't happen -- at least with the legacy HD-audio and the
> recent chip, if I understand correctly.  When the stream is on the
> analog codec, the HDMI codec is kept closed / runtime-resumed.  And
> the additional get_power() in the controller side is done only for
> HSW/BDW (where the HDA-bus is dedicated to HDMI).

I'm afraid it does -- I double checked the legacy driver code. Judging 
from history, since commit "ALSA: hda - Fix Skylake codec timeout", 
azx_runtime_resume() has called "display_power(chip, true)" on all 
platforms, even if the stream is on analog codec. I just recently fixed 
this logic to SOF driver as well. If you don't do this and the link 
parameters are different from hw defaults on i915 side (more likely with 
ICL and newer), you'll hit problems.

I don't currently know of a reliable way to recover. In theory, if HDMI/DP 
monitor is connected, we could do a delayed call to i915 get_power and 
reinitialize the HDA controller, but if we are actively streaming to 
analog codec when this happens, this wouldn't work.

And until very recent times, this has not really been an issue. With 
current i915, many conditions have to be met to actually hit this (only 
affects GLK platforms, you need to be using HDA analog codec, runtime PM 
needs to be enabled for HDA, etc). Problem is that going forward, there 
are going to be more platforms that are affected and this starts to show 
up in more places.

Ville: I'm checking your draft patch. I'll report back when I've 
completed testing.

Br, Kai
---318106570-317047371-1583925776=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-317047371-1583925776=:2957--

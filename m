Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FFC738CC0
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 19:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 355BC10E33A;
	Wed, 21 Jun 2023 17:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5B210E33A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 17:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687367461; x=1718903461;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=Wo4/09aCR1rnDXwgwrCC/ClBFe9SM/fhxN6OPOhrzwc=;
 b=GpE4+8az3UGbpwxZMQkmbdlzj1h+TFBdQIo6dEk0lIbFiPLH2NS1fGwZ
 X9BBjNl/Oo6N5gBhC5BRcfG/gR0LDyGbGW+ye49sNOJrw7+eSNZYPQpok
 c8+VrH25+9QxEj14FU6kBmw9SU6zNhfPffHxUDfqo9iYnJuu/gJ4T0Bt1
 iZhpI1bRb+vCESGPahFrYSiBY11/yGi0+ZAVUidqIyY5HQKDX89UzbmX7
 IbmMV9qX1ZowUe3kS/7fvhUZaTX5PgSTgnWC3+8Z/Okp7sh2dN6nP17HD
 sKPG3xXHAt7wdt8/w1VukYNcNuNgJ7/b6N/zi/Bp8bpMiCCor/vddvh9G Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="446623776"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="446623776"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 10:08:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="664745983"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="664745983"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 10:08:45 -0700
Date: Wed, 21 Jun 2023 20:05:37 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <SJ1PR11MB612990667303BE8F0F9453F5B95CA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Message-ID: <alpine.DEB.2.22.394.2306211844340.3532114@eliteleevi.tm.intel.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
 <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
 <SJ1PR11MB612990667303BE8F0F9453F5B95CA@SJ1PR11MB6129.namprd11.prod.outlook.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jyri.sarha@linux.intel.com" <jyri.sarha@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

On Tue, 20 Jun 2023, Borah, Chaitanya Kumar wrote:

> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Kai
> > Vehmanen
> > On Fri, 9 Jun 2023, Mitul Golani wrote:
[...]
> > This will hit a problem if we have a case where bandwidth is not enough for 5.1
> > at 192kHz, but it is enough for 2ch 192kHz audio. This approach forces us to
> > give preference to either channel acount or sampling rate.
> > 
> > What if we just store the 'max audio samples per second' into pipe config:
> > 
> >  - have "int max_audio_samples_per_second;" in pipe_config
> >  - pipe_config->audio.max_audio_samples_per_second =
> > available_blank_bandwidth / 32;
> > 
> > Then when filtering SADs, the invidial channels+rate combination of each SAD
> > is compared to the max_audio_samples_per_second and based on that, the
> > SAD is either filter or passed on. What do you think?
[...]> 
> This has been one my concern as well and we have thought about a similar 
> approach as you suggest. One disadvantage of this approach that I can 
> see, would be that if there are hardware limitations on channels (as was 
> in GLK) or frequencies independently. It will be become tricky with this 
> approach. However, one can argue that these limitations arise from 
> bandwidth itself.
[...]
> Regarding the bits per sample, Is using 32bit for all audio formats fair 
> or should we take into account different audio formats and their bit 
> depth?

hmm, I see the point. This is indeed trickier than it first seems. The 
32bit is a good worst-case bound, but in practise actual bandwidth needed 
will be less. And problem is, we don't really know which bit depth the 
application will choose, so again we need to limit based on the 
highest value in SAD.

And then you have the problem that this calculation assumes LPCM encoding.
If the audio is compressed, e.g. a 8ch DTS stream, the bandwidth 
calculation needs to be done differently (see 
linux/sound/pci/hda/hda_eld.c:hdmi_update_short_audio_desc()):

So I think there are (at least) two ways to go about this:
  1) reduce the scope and make the channel/rate limit more 
     limited, and only cover cases (like) GLK where a specific limitation
     is known -> max values not set for other platforms

  2) go for more generic description and expose the raw 
     bandwidth (in bits per second) available for audio
	-> then SAD filtering can be done based on raw bandwidth
	-> can be done only to LPCM at first, extended to compressed 
	formats later 
	-> still the problem that code needs to prioritze 
	   between channels/srate/bitdepth when filtering

Br, Kai

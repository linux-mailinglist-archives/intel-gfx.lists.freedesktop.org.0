Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B994E59FEE7
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 17:56:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1E914AB59;
	Wed, 24 Aug 2022 15:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BB4DB8EF0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 15:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661356555; x=1692892555;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=J+NosrYodJH2kzJQEZGHWSzUw1OywdlRseYVsweLX0Y=;
 b=OoVRlpGCbXBOZOp3Q/lcrGkmkCBAftUiugEwHdYgGadobTMGXNHxYXeQ
 X87TFeierOuQEseR0AmwbKOZc8IrqNycm/G1Fw/BZSfdzZjvOGrNKkUs/
 h5ukqL1RbiK+MlEbi+YxOPPh3rrRkhdcJAc48EjTQyx1XVa39iJxUdqjX
 wKbzbMH6Gjzy2Xwec9/FRuqXuqM/wQfibHRVY6+6o9umArUkUHI67fVX4
 F/xr2FpIlzIg7YTQW8wncrpGEgf2eT0qsR1RX2+ZDcYZAm8xeK77bmua2
 5hTqQl6ZkkfujrxjXyswxPhTRqttF9Jfw3+vHy4YRWmbX0uYnZZrmU75r A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="295284875"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="295284875"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 08:55:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670560189"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 08:55:51 -0700
Date: Wed, 24 Aug 2022 18:57:04 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi
To: Jani Nikula <jani.nikula@linux.intel.com>
In-Reply-To: <87pmgpiw2f.fsf@intel.com>
Message-ID: <alpine.DEB.2.22.394.2208241856550.3989@eliteleevi>
References: <20220823222116.3696068-1-chaitanya.kumar.borah@intel.com>
 <87pmgpiw2f.fsf@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: compute config for audio
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
Cc: kai.vehmanen@intel.com, Borah@freedesktop.org,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 24 Aug 2022, Jani Nikula wrote:

> On Wed, 24 Aug 2022, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
> > In certain scenarios, we might have to filter out some audio
> > configuration depending on HW limitation. For example, in
> > GLK DP port more than 2 channels are not supported for audio.
[...]
> > +			for (i = 0; i < drm_eld_sad_count(temp_buf); i++, sad += 3) {
> > +				if (!(intel_encoder->supported_sads & (1 << i)))
> > +					memset(&sad[0], 0, 3);
> 
> Here's the main question I have about the change, really. The ELD
> (literally EDID-like-data) and SAD are supposed to describe the *sink*
> capabilities. Why are we filtering the data here, telling the audio
> controller driver this is what the *sink* supports, when the limitation
> comes from the *source*?
> 
> I could just be clueless about how audio works, but semantically this
> feels the same as modifying the EDID based on what the *source*
> supports.

I provided early input to this patchset and I think this is a pragmatic 
approach to take. What the audio controller really wants is intersection 
of capabilities supported both by source and the sink. E.g. no need to 
advertise to the audio user-space about an audio format xyz, if the full 
pipeline, including source and sink, cannot support it.

And in practise, as the constraints depend on active display 
configuration, this is the only interface where we can pass such 
information to ALSA.

Br, Kai

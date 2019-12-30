Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F98C12D1B1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0050489EAC;
	Mon, 30 Dec 2019 16:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE04389EAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:03:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 08:03:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="251412942"
Received: from zeliteleevi.tm.intel.com ([10.237.55.130])
 by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2019 08:03:14 -0800
Date: Mon, 30 Dec 2019 18:03:13 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@zeliteleevi
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20191224230818.GA2877816@mdroper-desk1.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.21.1912301500480.16459@zeliteleevi>
References: <20190920083918.27057-1-kai.vehmanen@linux.intel.com>
 <20191224230818.GA2877816@mdroper-desk1.amr.corp.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: save AUD_FREQ_CNTRL state at
 audio domain suspend
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey Matt,

On Tue, 24 Dec 2019, Matt Roper wrote:
> > When audio power domain is suspended, the display driver must
> > save state of AUD_FREQ_CNTRL on Tiger Lake and Ice Lake
> > systems. The initial value of the register is set by BIOS and
> 
> I realize this patch landed several months ago, but I was just glancing
> through places in the driver where we call out specific platforms with
> IS_FOO() rather than using generation tests and noticed this one.
> Should this programming be specific to just ICL and TGL, or should it
> also apply to other recent platforms like EHL/JSL?
> 
> Our convention in i915 is to usually just assume that future platforms
> will follow the lead of the current latest platform until we find out
> otherwise.  So we may want to add another patch to change the test to

this is a valid point. The current check is very limited as the issue has 
been only observed on these platforms (but was very severe on these 
devices so a quick response was needed).

I did observe originally that specs would indicate the register should be 
saved on many other platforms as well. I was hesitant to add this to the 
patch, as there are many platforms that have been shipping for years with 
no issues reported on this.

But, but, I think we should just proceed and extend the check to all 
documented platforms, past and future (basicly INTEL_GEN>=9).

I can make a patch and let's see how it fares in CI.

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

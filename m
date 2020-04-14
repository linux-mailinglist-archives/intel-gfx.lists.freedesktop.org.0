Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFD71A786E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 12:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4346889BFD;
	Tue, 14 Apr 2020 10:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB1789BFD
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 10:32:51 +0000 (UTC)
IronPort-SDR: GmHB8qLILKXQvVVGNEuwT2fNcutayrOv3Wy0j02vwh8gdB5i+R0qMtyOu+pZEEHWXeCTqbjQQc
 fnv1Lpb/uDKQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 03:32:50 -0700
IronPort-SDR: +bQeXwN7dWw+DUBFyacjRwD1fkw9pS/VeUZ8CPSLstU2+iLL8UeZT4kTtQwrw0QRjMqozL1H/o
 9C7+Ny3aEAPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="256470382"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga006.jf.intel.com with ESMTP; 14 Apr 2020 03:32:49 -0700
Date: Tue, 14 Apr 2020 13:32:49 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200409180418.GY6112@intel.com>
Message-ID: <alpine.DEB.2.21.2004141315410.2957@eliteleevi.tm.intel.com>
References: <20200330144421.11632-1-kai.vehmanen@linux.intel.com>
 <alpine.DEB.2.21.2004091657320.2957@eliteleevi.tm.intel.com>
 <20200409180418.GY6112@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-1876907762-1586860370=:2957"
Subject: Re: [Intel-gfx] [RESEND PATCH] drm/i915: do AUD_FREQ_CNTRL state
 save on all gen9+ platforms
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-1876907762-1586860370=:2957
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hey,

On Thu, 9 Apr 2020, Ville Syrjälä wrote:

> On Thu, Apr 09, 2020 at 05:14:01PM +0300, Kai Vehmanen wrote:
> > type of content free ping, but I still dare to seek your input on what is 
> > the proper way to get attention to a patch that are seemingly forever 
> > stuck on the review sideline.
> 
> And what is this?
> https://patchwork.freedesktop.org/patch/347148/?series=71527&rev=1

that's a lost child I'm afraid. It's essentially the same patch I 
submitted late last year. It got review ok from Matt, and I thought it was 
going to be merged and went on to do other things -- i.e. I failed to 
follow-up on this. Back then I did not know about any actual bugs this 
would fix -- this was a generic change to align with hw specs.

Fast forward two months. I had forgotten about that previous patch, and 
I ended up recreating the same patch to fix an actual bug. I.e. the of 
this thread:
https://patchwork.freedesktop.org/series/74664/

I only very recently noticed the old patch. But alas, the new attempt 
is probably the one that should be merged as it has more information in 
the commit message (we now know about actual issues on JSL).

> Just ping on original patch or ping someone on irc. Resending
> the same patch over and over does no good. At least my brain just
> ignores anything that looks like it's just a resend w/o any clear
> justification.

Ack, thanks a lot, this clarifies. In any case, patch author should own 
the follow-up and I definitely dropped the ball on the older #347148 .

Br, Kai
---318106570-1876907762-1586860370=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-1876907762-1586860370=:2957--

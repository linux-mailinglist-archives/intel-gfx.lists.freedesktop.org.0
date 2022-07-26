Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5142E58180F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 19:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3D294D20;
	Tue, 26 Jul 2022 17:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC1B94D20
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 17:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658855116; x=1690391116;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BueaVDRZVfiR4hAD2b2madeilBe/L71UKttVQg7TcN0=;
 b=Mio3T1voA1W0D0skbcmylJNRqTkQOby7ZejXfvDJutLUXxdSq38gVttC
 tklqXh4C7XR+ZN0ltqCy/4zkJGky9CmMUMkjZx1fEBUKl6Y7OIj2fzCQZ
 9rQBD5UgM/UK9nRtVyvRNhXGFCOepSXCgFqfxfHu+lCh7d2XbkJ6XvpjT
 mMP4FdgU7ucXorHJ2E1x430AcHw1dv5kTJElJWldTEkSJpVpZsux9AJUI
 lwSg8ICQz7Z2XfpUjdQIQgpoULmcNi/6zhHGW9eSNg4yFJBSxOrn6J35u
 YJI83CFBrWg32pwAensaZnnTjrggz3sgWDc1uhbZZCriiWjla4t+KyfiI A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="285555941"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="285555941"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 10:04:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="627982310"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 10:04:20 -0700
Date: Tue, 26 Jul 2022 20:04:16 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <YuAekDSORCHAvmp4@ideak-desk.fi.intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220704072352.1331682-1-arun.r.murthy@intel.com>
 <YsL1Afbj7Mxx/0aF@intel.com>
 <DM6PR11MB3177B4B47DC1239FB5533D70BABE9@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB3177B4B47DC1239FB5533D70BABE9@DM6PR11MB3177.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: wait on timeout before retry
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
Reply-To: imre.deak@intel.com
Cc: "tprevite@gmail.com" <tprevite@gmail.com>, "Nikula,
 Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 04, 2022 at 04:01:23PM +0000, Murthy, Arun R wrote:
> > On Mon, Jul 04, 2022 at 12:53:52PM +0530, Arun R Murthy wrote:
> > > On linktraining error/timeout before retry need to wait for 400usec as
> > > per the DP CTS spec1.2
> > 
> > s/CTS//
> > 
> > > Under section 2.7.2 AUX Transaction Response/Reply Time-outs AUX
> > > Replier (the uPacket RX) must start sending the reply back to the AUX
> > > requester (the uPacket TX) within the response period of 300μs. The
> > > timer for Response Time-out starts ticking after the uPacket RX has
> > > finished receiving the AUX STOP condition which ends the AUX Request
> > transaction.
> > > The timer is reset either when the Response Time-out period has
> > > elapsed or when the uPacket RX has started to send the AUX Sync
> > > pattern (which follows
> > > 10 to 16 active pre-charge pulses) for the Reply transaction. If the
> > > uPacket TX does not receive a reply from the uPacket RX it must wait
> > > for a Reply Time-out period of 400us before initiating the next AUX
> > > Request transaction. The timer for the Reply Time-out starts ticking
> > > after the uPacket TX has finished sending the AUX STOP condition.
> > >
> > > The patch with commit 74ebf294a1dd ("drm/i915: Add a delay in
> > > Displayport AUX transactions for compliance testing") removes this
> > > delay mentioning the hardware already meets this requirement, but as
> > > per the spec the delay mentioned in the spec specifies how long to
> > > wait for the receiver response before timeout. So the delay here to
> > > wait for timeout and not a delay after timeout. The DP spec specifies
> > > a delay after timeout and hence adding this delay.
> > 
> > Not sure what you're saying here. The spec states the reply timeout should
> > start counting once the TX has sent the AUX STOP, and gets reset when the
> > reply AUX SYNC is detected.
> > 
> Copying the above said spec for quick reference "AUX Replier (the
> uPacket RX) must start sending the reply back to the AUX requester
> (the uPacket TX) within the response period of 300μs. The timer for
> Response Time-out starts ticking after the uPacket RX has finished
> receiving the AUX STOP condition which ends the AUX Request
> transaction.  The timer is reset either when the Response Time-out
> period has elapsed or when the uPacket RX has started to send the AUX
> Sync pattern"
> 
> The timer that is reference in the 1st line above is 300usec. The line
> just above says this timer should be reset when the response time-out
> has elapsed, my understanding over here is this 300usec time should be
> reset on timeout.
> 
> Now coming back to the last few lines of the spec referenced above, "
> If the uPacket TX does not receive a reply from the uPacket RX it must
> wait for a Reply Time-out period of 400us before initiating the next
> AUX Request transaction" My understanding on this is if the TX did not
> receive the reply, which means the timeout has occurred in that case
> before initiating a new request again, we should wait for 400usec.
> 
> So in the above referenced part of the code, there are two timers
> involved. One is 300usec and the other is 400usec. The 300usec is the
> timer for hardware timeout to occur and the 400usec is the timer that
> the software has to wait on timeout/error before retry.

300 usec is a timeout used by RX. After this expires RX should not
transmit anything (rather it should switch to listen mode) to avoid a
collision with TX. 400 usec is a timeout used by TX (starting from the
last bit of the packet it transmitted) for the same reason.

Based on the above not sure why an additional 400 usec delay would be
needed after a timeout error (which took 400 usec at least). I suppose
TX might incorrectly signal timeouts too early, this could be confirmed
from the retransmit timestamps.

> Thanks and Regards,
> Arun R Murthy
> --------------------

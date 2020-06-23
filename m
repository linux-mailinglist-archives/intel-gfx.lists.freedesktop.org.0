Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C62C206718
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 00:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8876E452;
	Tue, 23 Jun 2020 22:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41ED46E452
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 22:18:20 +0000 (UTC)
IronPort-SDR: +cJQsVilqosQmB/oWHuyCeXnm4h3RDMa+pOTmLQkDis0NSSuD3w8kXRONd8S7PV9yBwnM+si7S
 tljH8Ks+Oasg==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="131654820"
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="131654820"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 15:18:19 -0700
IronPort-SDR: vY4+VpUpVebGXnfrsgpSsOdpv+vwgLpAVQRHA9WSnnjipOeVAmn7y1ZPkTce7txQVLTpEe5yJ+
 pqaQrGrL5rDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="264905992"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga008.fm.intel.com with ESMTP; 23 Jun 2020 15:18:18 -0700
Date: Tue, 23 Jun 2020 15:19:41 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200623221940.GD22294@intel.com>
References: <20200618000124.29036-1-manasi.d.navare@intel.com>
 <20200622154921.GA25163@ideak-desk.fi.intel.com>
 <20200623194200.GB22294@intel.com>
 <20200623195710.GC7681@ideak-desk.fi.intel.com>
 <20200623203250.GC22294@intel.com>
 <20200623205027.GD7681@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623205027.GD7681@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: Helper for checking
 DDI_BUF_CTL Idle status
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

On Tue, Jun 23, 2020 at 11:50:27PM +0300, Imre Deak wrote:
> On Tue, Jun 23, 2020 at 01:32:50PM -0700, Manasi Navare wrote:
> > still dont quite get it, how is usleep_range (600, 1000) providing a fixed delay?
> 
> Not sure what you mean. udelay is busy looping, while usleep_range
> sleeps instead. How to chose between udelay/usleep_range please read
> 
> Documentation/timers/timers-howto.rst
>

Yes thanks for pointing me to the documentation.
I guess I thought you were suggesting to use just usleep_range for both
fixed delay and delay with timeout so got confused.
 
> > Now if we split ino 2 functs, one for disable, for that:
> > 
> > if (BXT)
> > 	usleep_range(600, 1000)
> > else
> > 	wait_for_us(check if Idle bit set)
> > 
> > so in both functions, for the timeout part we still use the wait_for_us helper right?
> 
> with two functions it would get:
> 
> intel_ddi_wait_for_ddi_buf_active(i915, port)
> {
> 	if (GEN <= 9) {
> 		usleep_range(600, 1000);

The doumentation however does suggest that we use udelay to avoid the overhead
of setting up hrtimers needed for usleep_range in atomic context. But then
checkpatch also suggests using usleep_range, why is that?

so still not clear in the context of i915 how we decide where to use jiffie based
delay through udelay and when to use hrtimers (usleep)?

Manasi


> 		return;
> 	}
> 
>  	if (wait_for_us(!(read(BUF_CTL) & IS_IDLE), 600))
>  		drm_err("Port %c: Timeout waiting for DDI BUF to get active\n", port));
> }
> 
> intel_ddi_wait_for_ddi_buf_idle(i915, port)
> {
> 	if (BXT) {
> 		udelay(16);
> 		return;
> 	}
> 
>  	if (wait_for_us(read(BUF_CTL) & IS_IDLE, 600))
>  		drm_err("Port %c: Timeout waiting for DDI BUF to get idle\n", port));
> }
> 
> --Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

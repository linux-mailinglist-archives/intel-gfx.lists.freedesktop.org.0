Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFE72067BF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 00:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E366F6EAB1;
	Tue, 23 Jun 2020 22:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F556EAA5
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 22:57:42 +0000 (UTC)
IronPort-SDR: zR3aueN9sEzE66rZziX2dzUoHDKN4FDxm+5cRiDjLYsYJihXSsksGWmgwyWGiRWXQ+xutm1IkR
 Q7aUYXqkOXuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="145747371"
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="145747371"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 15:57:41 -0700
IronPort-SDR: JulwZddBtZGYptPPujvBo//hOyeaeTNyw4cw+V8EEZ5v9zdKHJZPQzQbhvbztPVj2zQ0d3VPwk
 26asPlD2Gf5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="423177430"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 23 Jun 2020 15:57:41 -0700
Date: Tue, 23 Jun 2020 15:59:03 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200623225903.GE22294@intel.com>
References: <20200618000124.29036-1-manasi.d.navare@intel.com>
 <20200622154921.GA25163@ideak-desk.fi.intel.com>
 <20200623194200.GB22294@intel.com>
 <20200623195710.GC7681@ideak-desk.fi.intel.com>
 <20200623203250.GC22294@intel.com>
 <20200623205027.GD7681@ideak-desk.fi.intel.com>
 <20200623221940.GD22294@intel.com>
 <20200623223549.GE7681@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623223549.GE7681@ideak-desk.fi.intel.com>
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

On Wed, Jun 24, 2020 at 01:50:06AM +0300, Imre Deak wrote:
> On Tue, Jun 23, 2020 at 03:19:41PM -0700, Manasi Navare wrote:
> > On Tue, Jun 23, 2020 at 11:50:27PM +0300, Imre Deak wrote:
> > > On Tue, Jun 23, 2020 at 01:32:50PM -0700, Manasi Navare wrote:
> > > 
> > > with two functions it would get:
> > > 
> > > intel_ddi_wait_for_ddi_buf_active(i915, port)
> > > {
> > > 	if (GEN <= 9) {
> > > 		usleep_range(600, 1000);
> > 
> > The doumentation however does suggest that we use udelay to avoid the overhead
> > of setting up hrtimers needed for usleep_range in atomic context.
> 
> The relevant part here is "NON-ATOMIC CONTEXT":
> 
> SLEEPING FOR "A FEW" USECS ( < ~10us? ):
> 	* Use udelay
> 
> 	- Why not usleep?
>                         On slower systems, (embedded, OR perhaps a speed-
>                         stepped PC!) the overhead of setting up the hrtimers
>                         for usleep *may* not be worth it. Such an evaluation
>                         will obviously depend on your specific situation, but
>                         it is something to be aware of.
> 
> SLEEPING FOR ~USECS OR SMALL MSECS ( 10us - 20ms):
>         * Use usleep_range
> 
> So, can use udelay() for 16usec and should use usleep_range() for 600 usec.

Got it thanks will update and send the next rev

Regards
Manasi

> 
> > But then checkpatch also suggests using usleep_range, why is that?
> > 
> > so still not clear in the context of i915 how we decide where to use jiffie based
> > delay through udelay and when to use hrtimers (usleep)?
> 
> The above document should be followed.
> 
> > 
> > Manasi
> > 
> > 
> > > 		return;
> > > 	}
> > > 
> > >  	if (wait_for_us(!(read(BUF_CTL) & IS_IDLE), 600))
> > >  		drm_err("Port %c: Timeout waiting for DDI BUF to get active\n", port));
> > > }
> > > 
> > > intel_ddi_wait_for_ddi_buf_idle(i915, port)
> > > {
> > > 	if (BXT) {
> > > 		udelay(16);
> > > 		return;
> > > 	}
> > > 
> > >  	if (wait_for_us(read(BUF_CTL) & IS_IDLE, 600))
> > >  		drm_err("Port %c: Timeout waiting for DDI BUF to get idle\n", port));
> > > }
> > > 
> > > --Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

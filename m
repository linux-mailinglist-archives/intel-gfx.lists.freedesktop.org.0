Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020FE2067AF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 00:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133AF6EA79;
	Tue, 23 Jun 2020 22:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCAD76EA79
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 22:50:12 +0000 (UTC)
IronPort-SDR: RCv6W8DsMdipGpKHhLev5oT5QR+nHwChB6DReOQi3lVHKDm8I36Ih6fkrtgX+k1LkUbUpUs2R/
 HwG5sWnkG5og==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="205760016"
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="205760016"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 15:50:11 -0700
IronPort-SDR: rEQikr8znhSRGLGTfgEgujlg67ROAGAd2nZiWQJv9Hukovjh7x117/IeYOjQ08mDexZeXK29Cb
 1754gYcLpvFg==
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="423175850"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 15:50:10 -0700
Date: Wed, 24 Jun 2020 01:50:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200623223549.GE7681@ideak-desk.fi.intel.com>
References: <20200618000124.29036-1-manasi.d.navare@intel.com>
 <20200622154921.GA25163@ideak-desk.fi.intel.com>
 <20200623194200.GB22294@intel.com>
 <20200623195710.GC7681@ideak-desk.fi.intel.com>
 <20200623203250.GC22294@intel.com>
 <20200623205027.GD7681@ideak-desk.fi.intel.com>
 <20200623221940.GD22294@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623221940.GD22294@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 23, 2020 at 03:19:41PM -0700, Manasi Navare wrote:
> On Tue, Jun 23, 2020 at 11:50:27PM +0300, Imre Deak wrote:
> > On Tue, Jun 23, 2020 at 01:32:50PM -0700, Manasi Navare wrote:
> > 
> > with two functions it would get:
> > 
> > intel_ddi_wait_for_ddi_buf_active(i915, port)
> > {
> > 	if (GEN <= 9) {
> > 		usleep_range(600, 1000);
> 
> The doumentation however does suggest that we use udelay to avoid the overhead
> of setting up hrtimers needed for usleep_range in atomic context.

The relevant part here is "NON-ATOMIC CONTEXT":

SLEEPING FOR "A FEW" USECS ( < ~10us? ):
	* Use udelay

	- Why not usleep?
                        On slower systems, (embedded, OR perhaps a speed-
                        stepped PC!) the overhead of setting up the hrtimers
                        for usleep *may* not be worth it. Such an evaluation
                        will obviously depend on your specific situation, but
                        it is something to be aware of.

SLEEPING FOR ~USECS OR SMALL MSECS ( 10us - 20ms):
        * Use usleep_range

So, can use udelay() for 16usec and should use usleep_range() for 600 usec.

> But then checkpatch also suggests using usleep_range, why is that?
> 
> so still not clear in the context of i915 how we decide where to use jiffie based
> delay through udelay and when to use hrtimers (usleep)?

The above document should be followed.

> 
> Manasi
> 
> 
> > 		return;
> > 	}
> > 
> >  	if (wait_for_us(!(read(BUF_CTL) & IS_IDLE), 600))
> >  		drm_err("Port %c: Timeout waiting for DDI BUF to get active\n", port));
> > }
> > 
> > intel_ddi_wait_for_ddi_buf_idle(i915, port)
> > {
> > 	if (BXT) {
> > 		udelay(16);
> > 		return;
> > 	}
> > 
> >  	if (wait_for_us(read(BUF_CTL) & IS_IDLE, 600))
> >  		drm_err("Port %c: Timeout waiting for DDI BUF to get idle\n", port));
> > }
> > 
> > --Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

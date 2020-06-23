Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA9820610C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 22:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44B86E114;
	Tue, 23 Jun 2020 20:50:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991616E114
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 20:50:33 +0000 (UTC)
IronPort-SDR: 4kfQqK14JM6/l5n8ORhSlEa3zB91PgBdlivBM8JP4AE9DHKymWIUNpQiiGUADAdvyGgBQS/zTK
 tbp6R27MPvGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="141720078"
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="141720078"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 13:50:33 -0700
IronPort-SDR: gkKSt2+hLEBG1ijYZBQMBpwFW+dDyk1JCJoAknVJGYb+0rzp+oFWP06pETaJTQyrRbpSSVcvLb
 D0ekpizByuCg==
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="452379403"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 13:50:31 -0700
Date: Tue, 23 Jun 2020 23:50:27 +0300
From: Imre Deak <imre.deak@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200623205027.GD7681@ideak-desk.fi.intel.com>
References: <20200618000124.29036-1-manasi.d.navare@intel.com>
 <20200622154921.GA25163@ideak-desk.fi.intel.com>
 <20200623194200.GB22294@intel.com>
 <20200623195710.GC7681@ideak-desk.fi.intel.com>
 <20200623203250.GC22294@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623203250.GC22294@intel.com>
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

On Tue, Jun 23, 2020 at 01:32:50PM -0700, Manasi Navare wrote:
> still dont quite get it, how is usleep_range (600, 1000) providing a fixed delay?

Not sure what you mean. udelay is busy looping, while usleep_range
sleeps instead. How to chose between udelay/usleep_range please read

Documentation/timers/timers-howto.rst

> Now if we split ino 2 functs, one for disable, for that:
> 
> if (BXT)
> 	usleep_range(600, 1000)
> else
> 	wait_for_us(check if Idle bit set)
> 
> so in both functions, for the timeout part we still use the wait_for_us helper right?

with two functions it would get:

intel_ddi_wait_for_ddi_buf_active(i915, port)
{
	if (GEN <= 9) {
		usleep_range(600, 1000);
		return;
	}

 	if (wait_for_us(!(read(BUF_CTL) & IS_IDLE), 600))
 		drm_err("Port %c: Timeout waiting for DDI BUF to get active\n", port));
}

intel_ddi_wait_for_ddi_buf_idle(i915, port)
{
	if (BXT) {
		udelay(16);
		return;
	}

 	if (wait_for_us(read(BUF_CTL) & IS_IDLE, 600))
 		drm_err("Port %c: Timeout waiting for DDI BUF to get idle\n", port));
}

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

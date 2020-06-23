Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F07920515F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 13:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B676E073;
	Tue, 23 Jun 2020 11:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA0489FE3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 11:54:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1A4520771;
 Tue, 23 Jun 2020 11:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592913261;
 bh=eyzS+tqORO1KfMB8WYmSySe1A0bDu0wMbvD3f7zRBuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kIsB6wX1dU8CmLBPvK+DQHJ0dDVlzwBGRW3nfZc5Fp5nsvAlwKSJoJYWjI3RPPmrb
 s+CylihYfJHC6DnEpzgc6zfHW6boPa4wUGmbserfnNF45E19ANpgNH9FBSzUnBsK8f
 p6kRUHW9wrPv1RUpH4gEDuyJJXlxILq/+ENy6AeY=
Date: Tue, 23 Jun 2020 13:54:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20200623115415.GB1966723@kroah.com>
References: <20200618202701.729-1-rodrigo.vivi@intel.com>
 <20200619080900.GD8425@kroah.com>
 <20200619201404.GI334084@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619201404.GI334084@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Make Wa_14010229206 permanent
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 19, 2020 at 01:14:04PM -0700, Rodrigo Vivi wrote:
> On Fri, Jun 19, 2020 at 10:09:00AM +0200, Greg KH wrote:
> > On Thu, Jun 18, 2020 at 01:27:00PM -0700, Rodrigo Vivi wrote:
> > > From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> > > 
> > > commit 63d0f3ea8ebb67160eca281320d255c72b0cb51a upstream.
> > > 
> > > This workaround now applies to all steppings, not just A0.
> > > Wa_1409085225 is a temporary A0-only W/A however it is
> > > identical to Wa_14010229206 and hence the combined workaround
> > > is made permanent.
> > > Bspec: 52890
> > > 
> > > Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> > > Tested-by: Rafael Antognolli <rafael.antognolli@intel.com>
> > > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > > [mattrope: added missing blank line]
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > Link: https://patchwork.freedesktop.org/patch/msgid/20200326234955.16155-1-swathi.dhanavanthri@intel.com
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++------
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > What stable kernel(s) is this backport for?  You need to give us a hint
> > :)
> 
> It's for 5.7.y only. Sorry for not being clear

Thanks, now queued up.

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

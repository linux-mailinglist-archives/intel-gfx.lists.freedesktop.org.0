Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B91DB2ED066
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 14:13:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE096E22B;
	Thu,  7 Jan 2021 13:13:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E786E22B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 13:13:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0DD2B223C8;
 Thu,  7 Jan 2021 13:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1610025185;
 bh=sBaRgt9v5nPEv/YZQlpS6zarzR2tvC1DT8Zf2tm0ZxY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b7bBAyMfXt7V4aW/SorObkV7/lz3G6s0ars2K9mGiyruC66kWAxZaD4yMLmiQRwLg
 o4eW4e+44Yq7079xdRDmlEKej0J4jALe9TUA2KS605zKVwEWSMBtiKFV4VRtmPvomR
 5dd942x3nTrkcXiuSd0yNwvn1krqO3GWsYKWstpU=
Date: Thu, 7 Jan 2021 14:14:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <X/cJMWjnhr+JFh/N@kroah.com>
References: <20210106175301.GB202232@ideak-desk.fi.intel.com>
 <X/X7umSYEeKCZ0Dw@kroah.com>
 <20210106190945.GA213231@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106190945.GA213231@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] v5.10 stable backport request
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

On Wed, Jan 06, 2021 at 09:09:45PM +0200, Imre Deak wrote:
> On Wed, Jan 06, 2021 at 07:04:42PM +0100, Greg KH wrote:
> > On Wed, Jan 06, 2021 at 07:53:01PM +0200, Imre Deak wrote:
> > > Stable team, please backport the upstream commit
> > > 
> > > 8f329967d596 ("drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock")
> > > 
> > > to the v5.10 stable kernel.
> > 
> > I see no such commit id in Linus's kernel :(
> 
> Sorry, the commit id correctly is
> 
> 0e2497e334de42dbaaee8e325241b5b5b34ede7e

Much better :)

Now queued up, thanks.

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 818B45B2E4F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 07:52:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0165310E8B4;
	Fri,  9 Sep 2022 05:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E8A10E55B;
 Fri,  9 Sep 2022 05:52:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C6FA1606DC;
 Fri,  9 Sep 2022 05:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1886C433C1;
 Fri,  9 Sep 2022 05:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1662702729;
 bh=20Z2PUYMQ5woh0RFFo1+w5g8RRXj28Y7f8ULOiLN0Sg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P6jENIsuXNKNdMDnrZ61sdP/rbOtZe6QXjYKK0Q3L0NuNDjSXeQ1BDaHR5h8da2sj
 tPHTRO82renjX0ncxSJtFMd1nF9R0fQfVokbtOkQ33pva387g2CXIF2xFu0XPxk7SX
 tiO4SwgJn2cQe6pZpgizz5SSfLZjamnWhVGPFhVQ=
Date: Fri, 9 Sep 2022 07:52:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Winkler, Tomas" <tomas.winkler@intel.com>
Message-ID: <YxrUhlCxm/vo7tG8@kroah.com>
References: <20220819225335.3947346-1-daniele.ceraolospurio@intel.com>
 <20220819225335.3947346-3-daniele.ceraolospurio@intel.com>
 <YxDKk++n5mbaqYAx@kroah.com>
 <MN2PR11MB409393DBFB080257B0667E8BE5409@MN2PR11MB4093.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MN2PR11MB409393DBFB080257B0667E8BE5409@MN2PR11MB4093.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH v3 02/15] mei: add support to GSC extended
 header
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 08, 2022 at 09:24:07PM +0000, Winkler, Tomas wrote:
> 
> > 
> > On Fri, Aug 19, 2022 at 03:53:22PM -0700, Daniele Ceraolo Spurio wrote:
> > > --- a/drivers/misc/mei/hw-me.c
> > > +++ b/drivers/misc/mei/hw-me.c
> > > @@ -590,7 +590,10 @@ static int mei_me_hbuf_write(struct mei_device
> > *dev,
> > >  	u32 dw_cnt;
> > >  	int empty_slots;
> > >
> > > -	if (WARN_ON(!hdr || !data || hdr_len & 0x3))
> > > +	if (WARN_ON(!hdr || hdr_len & 0x3))
> > > +		return -EINVAL;
> > > +
> > > +	if (WARN_ON(!data && data_len))
> > 
> > Do not add more WARN_ON() calls, please just handle this properly and do
> > not reboot people's machines for a coding error :(
> 
> As far as I understand WARN_ON()  will produce solely a backtrace ,

Except when you have panic_on_warn() enabled in your systems, as many do :(

> This particular condition should never ever happen in theory,

Then don't check it!

> anyhow we can use dev_err() here as well.

That would be best.

thanks,

greg k-h

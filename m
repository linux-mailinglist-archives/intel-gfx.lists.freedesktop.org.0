Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88565629CCA
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 15:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F37510E40C;
	Tue, 15 Nov 2022 14:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98E8710E40C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 14:59:13 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 00E3BB81987;
 Tue, 15 Nov 2022 14:59:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17F38C433C1;
 Tue, 15 Nov 2022 14:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1668524350;
 bh=cQEKlhaTpr3de6nu/bCmEemaU+10ceJ+IuAPhxAOfFE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I8cHDK24Zv5LHOVOH6zsIfvNt61NRX717bIO4tE73+I2MiGjjSXAkPRjxEc3YwW0A
 tkPoWc32gf9R0Krj4A2dyBQKa/J7m5P5pY5zBh8fPzv22jc9vX4rrCr9nX6iHxsSFg
 VWtFmPRVhnB8DxH24BJQJLpjBJaUBGgUiPQf92ho=
Date: Tue, 15 Nov 2022 15:59:07 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>
Message-ID: <Y3OpO6Ys5L6CvOLC@kroah.com>
References: <20221115111438.1639527-1-alexander.usyskin@intel.com>
 <Y3OX+uQ7PN5thWSU@kroah.com>
 <CY5PR11MB6366ED268D5D4EE194C6469EED049@CY5PR11MB6366.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CY5PR11MB6366ED268D5D4EE194C6469EED049@CY5PR11MB6366.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH v2] mei: add timeout to send
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 David Airlie <airlied@redhat.com>, "Winkler, Tomas" <tomas.winkler@intel.com>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 15, 2022 at 02:27:02PM +0000, Usyskin, Alexander wrote:
> > > -		else
> > > +		} else {
> > >  			dev_dbg(&cldev->dev, "memory ready command
> > sent\n");
> > > +			cldev->bus->pxp_mode = MEI_DEV_PXP_SETUP;
> > 
> > What does the mode change have to do with a timeout?
> With timeout the mei_gfx_memory_ready may now fail gracefully
> and we should not move state if message is not sent.
> 
> Should I split this fix into another patch or document in this one?

Split it into a different patch please.


> > > +/**
> > > + * __mei_cl_send_timeout - internal client send (write)
> > > + *
> > > + * @cl: host client
> > > + * @buf: buffer to send
> > > + * @length: buffer length
> > > + * @vtag: virtual tag
> > > + * @mode: sending mode
> > > + * @timeout: send timeout in milliseconds for blocking writes
> > 
> > What do you mean "for blocking writes"?
> 
> The timeout has no effect for non-blocking writes (bit in mode parameter),
> as they are returning immediately and are not waiting at all.

That's not obvious, please say that the timeout is affected by the mode
and how it is affected.

thanks,

greg k-h

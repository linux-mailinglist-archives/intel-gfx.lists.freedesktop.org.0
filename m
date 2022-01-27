Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A652849E0F8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:32:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C31BF10E485;
	Thu, 27 Jan 2022 11:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0701F10E30F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:32:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A0F25617DC;
 Thu, 27 Jan 2022 11:31:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82722C340E4;
 Thu, 27 Jan 2022 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1643283114;
 bh=nUcH8znezYjW1WS7mB1iqNEDvlkOO2kpsNW6OLVyPLg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ztx6Y9DovvzvuGzel7vHJHGDf/2WMYKUp/TtGM6dlJqVZSkdwiTaIXI0/qzAYOoPE
 OwitjAJPOFn08XJfwJG+PPZ5tTy5RTCUhTxpQ1bGNJq7qCWdfBnyNy42gq31rxnyxb
 qe873sysQgyASv8QwKAvEqezPDxR50hUXVfhdxso=
Date: Thu, 27 Jan 2022 12:31:51 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YfKCp9zmDwp3Qz7j@kroah.com>
References: <20220127112103.2336871-1-alexander.usyskin@intel.com>
 <YfKCe9ALCjrUO+89@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YfKCe9ALCjrUO+89@kroah.com>
Subject: Re: [Intel-gfx] [PATCH v4 0/5] Add driver for GSC controller
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 27, 2022 at 12:31:07PM +0100, Greg Kroah-Hartman wrote:
> On Thu, Jan 27, 2022 at 01:20:58PM +0200, Alexander Usyskin wrote:
> > GSC is a graphics system controller, it provides
> > a chassis controller for graphics discrete cards.
> > 
> > There are two MEI interfaces in GSC: HECI1 and HECI2.
> > 
> > This series includes instantiation of the auxiliary devices for HECI2
> > and mei-gsc auxiliary device driver that binds to the auxiliary device.
> > 
> > In v2 the platform device was replaced by the auxiliary device.
> > v3 is the rebase over drm-tip to make public CI running.
> > In v4 the not needed debug prints and empty line were removed,
> >       'select' were replaced by 'depends on' in MEI Kconfig,
> >       the new include file now listed in the MAINTATINERS file. 
> > 
> > Greg KH, please review and ACK the MEI patches after main merge window closure.
> 
> The merge window already closed, did you forget to update your email?
> 
> > We are pushing all through gfx tree as the auxiliary device belongs there.
> 
> I'll get to this in a week or so, please be patient.

In the meantime, while you are waiting, please review other patches on
the mailing lists to help with maintainer's workloads.

greg k-h

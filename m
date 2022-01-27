Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD09949E0EE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29EF10E20C;
	Thu, 27 Jan 2022 11:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C7110E20C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:31:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D2963B819C2;
 Thu, 27 Jan 2022 11:31:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F302AC340E4;
 Thu, 27 Jan 2022 11:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1643283070;
 bh=7HqwSoW5O1NWejCEkStNnpAuYC+GSrUSOhS0AuQNqAw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sY9SbnKTP8q8hHQpER7Gg081wDR01ODW+qbprsBZFm7fIucv7zNyLI8y1KH1kxGH4
 vjm/qc92O62CsggmvNgtJn/4KErVLZ78aiF/vKQWLERDfTY09J61vLKHAujlfyg2lL
 4anSR7pzHuF6emIjS1d4nIJmzZuaEWT0LE6Pr9uY=
Date: Thu, 27 Jan 2022 12:31:07 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YfKCe9ALCjrUO+89@kroah.com>
References: <20220127112103.2336871-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220127112103.2336871-1-alexander.usyskin@intel.com>
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

On Thu, Jan 27, 2022 at 01:20:58PM +0200, Alexander Usyskin wrote:
> GSC is a graphics system controller, it provides
> a chassis controller for graphics discrete cards.
> 
> There are two MEI interfaces in GSC: HECI1 and HECI2.
> 
> This series includes instantiation of the auxiliary devices for HECI2
> and mei-gsc auxiliary device driver that binds to the auxiliary device.
> 
> In v2 the platform device was replaced by the auxiliary device.
> v3 is the rebase over drm-tip to make public CI running.
> In v4 the not needed debug prints and empty line were removed,
>       'select' were replaced by 'depends on' in MEI Kconfig,
>       the new include file now listed in the MAINTATINERS file. 
> 
> Greg KH, please review and ACK the MEI patches after main merge window closure.

The merge window already closed, did you forget to update your email?

> We are pushing all through gfx tree as the auxiliary device belongs there.

I'll get to this in a week or so, please be patient.

greg k-h

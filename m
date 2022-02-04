Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7DB4A9BF9
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 16:29:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C135F10E28F;
	Fri,  4 Feb 2022 15:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8268A10E5B0
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 15:29:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 48953B837D4;
 Fri,  4 Feb 2022 15:29:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E21AC004E1;
 Fri,  4 Feb 2022 15:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1643988571;
 bh=0rRhHIJ0JN50qUQ247/rEvq9zqCjY0RAl7MtlWWYHc0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LeCX3E59ZSV4loDZut76iURbi2yREvj5vlAxFDszyuIb2XI5SSUi9uB6FkSxLmREk
 svibRACOcUaEtNj4IN2K90/5ZNYQzuDv/UGfn/OurtfuAtbJQsk96MT/3DrBvg4K/V
 Tb6r3ZCmmAQquXbqrr3tX8R+w5Vj7ldU7dYFMeRw=
Date: Fri, 4 Feb 2022 16:29:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <Yf1GWCExCM0t3b9e@kroah.com>
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
> We are pushing all through gfx tree as the auxiliary device belongs there.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

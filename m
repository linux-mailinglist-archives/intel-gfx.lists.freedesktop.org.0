Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A0A4B3AB2
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Feb 2022 10:56:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5A5510F271;
	Sun, 13 Feb 2022 09:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B96C310F280
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Feb 2022 09:56:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EF58360EA8;
 Sun, 13 Feb 2022 09:56:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9059C004E1;
 Sun, 13 Feb 2022 09:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1644746174;
 bh=WznLcmlKCHSyOi66nBvfT5kFkbrjbndNydmARu+Zurc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g4v1O6aXyefnEnWVeEbJoJzqBy69isIH5QDeqfkQLVYI0JfaaX8lEo7pWFd7YdbzI
 BeCWp+uazT+pLaMLowjDk3ItOB41thpPi2PPCG0ILeTvBsZEb4BDzm9MdD4GRXAoxg
 urSGeSyg3vz1EFc9ss6c7KXSau5jkbahyuTdG4rM=
Date: Sun, 13 Feb 2022 10:56:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YgjVuyE1n5vl6uR1@kroah.com>
References: <20220213091458.2364014-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220213091458.2364014-1-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 0/5] Add driver for GSC controller
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

On Sun, Feb 13, 2022 at 11:14:53AM +0200, Alexander Usyskin wrote:
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
> V5, rebase and add Greg KH Reviewed-by
> V6, rebase and drop redundant assignments found by the kernel test robot.
> 
> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

This line needs to be added to the individual patches if you want any
tool or maintainer to pick that up.

thanks,

greg k-h

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3073257F53F
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jul 2022 15:44:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A83112FAB;
	Sun, 24 Jul 2022 13:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE232112FAB
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jul 2022 13:44:11 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C8DD0610A7;
 Sun, 24 Jul 2022 13:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A61F3C3411E;
 Sun, 24 Jul 2022 13:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1658670249;
 bh=0YZ+Wk9VAGcsksWBCZnkhCoPsn6hNN0BAs1wDyZWOtE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k4e9leZeugt2p4moDURsSkBaLjmTTzWUs1ThQVLq6rODGpyYRwfsPLZXaexQzfflt
 MzGkJIsgu9G+Jn7oVny5cwAylTsZlHrYc3YiJAae/gi2d1s7k4ENQhRWi9Ob7wuTZI
 TSUWMY1jKOkNlgFAeM654rnuvRGN2oYEgC5PGAAA=
Date: Sun, 24 Jul 2022 15:44:05 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tomas Winkler <tomas.winkler@intel.com>
Message-ID: <Yt1Mpc45jcptPEye@kroah.com>
References: <20220724082428.218628-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220724082428.218628-1-tomas.winkler@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 00/14] GSC support for XeHP SDV and DG2
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
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Jul 24, 2022 at 11:24:14AM +0300, Tomas Winkler wrote:
> Add GSC support for XeHP SDV and DG2 platforms.
> 
> The series includes changes for the mei driver:
> - add ability to use polling instead of interrupts
> - add ability to use extended timeouts
> - setup extended operational memory for GSC
> 
> The series includes changes for the i915 driver:
> - allocate extended operational memory for GSC
> - GSC on XeHP SDV offsets and definitions
> 
> Greg KH, please review and ACK the MEI patches.
> We are pushing these patches through gfx tree as
> the auxiliary device belongs there.

Please wait until after -rc1 is out, my trees are closed for new work at
this point in time, and so should the gfx tree :)

thanks,

greg k-h

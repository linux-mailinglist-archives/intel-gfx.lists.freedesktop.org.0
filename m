Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 697F356BAD9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 15:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A040E113C93;
	Fri,  8 Jul 2022 13:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C257113C93
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 13:34:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 36206B824C0;
 Fri,  8 Jul 2022 13:34:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 728E0C341C0;
 Fri,  8 Jul 2022 13:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1657287286;
 bh=0TVtvkj/Gc10aNNAK5BHMVbvIVabgkYAknLcnLd0zmA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tCbQGhefhxTa46/E8o1cUrVPbQ744kanv53sb8WiwhNEeJXhC7FyuIp8/WC1G4nP2
 e0AThzTItckMqmOqxiCKX+9qqZ31SEZoIdGSNJ6PUU7eVnRcmp9l5D0+Cr4dn4WQ7o
 mZu5fKdR0x6DZFX9nxu8/oDFLCB5ZG0EBdwS+YPQ=
Date: Fri, 8 Jul 2022 15:34:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <Ysgyc70ctolFl46S@kroah.com>
References: <20220706114345.1128018-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220706114345.1128018-1-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 00/14] GSC support for XeHP SDV and DG2
 platforms
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
 linux-kernel@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 06, 2022 at 02:43:31PM +0300, Alexander Usyskin wrote:
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
> 
> V2: rebase over merged DG1 series and DG2 enablement patch,
>     fix commit messages
> 
> V3: rebase over latest tip
> 
> V4: add missed changelog in pxp dbugfs patch
> 
> V5: rebase over latest tip
>     fix changelog in pxp dbugfs patch
>     put HAX patch last to the ease of merging

You did more than just this from v4 to v5 :(

It's as if you want to make it hard to review these...

greg k-h

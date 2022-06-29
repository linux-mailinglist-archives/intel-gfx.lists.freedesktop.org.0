Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE3E5604CA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 17:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B13710EA73;
	Wed, 29 Jun 2022 15:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B05B910EAB8
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 15:40:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B5ACEB821D1;
 Wed, 29 Jun 2022 15:40:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69C41C34114;
 Wed, 29 Jun 2022 15:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1656517224;
 bh=nadHoaN0ZsAb2ksvWPKCNsZeyMgjx5lIeNRn22wh9pw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YjGtGwVh7gGwn4pZWkB/XMttwMzH4BFIs3IHd+aYYNS1N1qtgfYpRHGNkIPH8v8+6
 TMWcfY8YULlLI9tqg55WzzgIfCivkAx+OOqCptJxLzhv+AfGC4XXBYhgvttx1c1dJ8
 OJ7AbHM8cdkZxHe8l83yX7Zs0bS48UBqBFD2a8ew=
Date: Wed, 29 Jun 2022 17:40:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YrxyY9Vi2Rb7x4PK@kroah.com>
References: <20220629112913.1210933-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220629112913.1210933-1-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 00/14] GSC support for XeHP SDV and DG2
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

On Wed, Jun 29, 2022 at 02:28:59PM +0300, Alexander Usyskin wrote:
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
> (The patch 13 is one that you asked to change in prev version)
> We are pushing these patches through gfx tree as
> the auxiliary device belongs there.

You forgot to review or sign off on any of these, you know better than
that...

Please run this through the Intel patch-review process before resending
this out for non-Intel people to see, so you don't waste our time.

thanks,

greg k-h

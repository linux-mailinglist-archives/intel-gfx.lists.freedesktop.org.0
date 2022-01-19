Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CB9493F61
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 18:51:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E2B010E34F;
	Wed, 19 Jan 2022 17:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31AE310E307
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 17:51:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 92419B8198D;
 Wed, 19 Jan 2022 17:51:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5CCEC004E1;
 Wed, 19 Jan 2022 17:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1642614712;
 bh=QsWDQvNKpqCglgKA2IleZuJy64rc5ENQciBuCdVwMgM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p4sGnrfyDFYnoXmSg+y0jG8I9cT2ka1BLVcuDHbfEDXyl7LPixij10ayGoYSwsZmv
 II2v+e1hxdMt9EtWi/6SDNuqxzEBwJguI0aqQXg1O1uLRGVJtMu6+rVKQ0IeAXIzn6
 WYQMD9ez5ugypn9B7AhcC0Tb256bwvccKX4iJ1z8=
Date: Wed, 19 Jan 2022 18:51:49 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <YehPtWZ2aGlFOvWK@kroah.com>
References: <20220119155807.222657-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220119155807.222657-1-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 0/5] Add driver for GSC controller
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

On Wed, Jan 19, 2022 at 05:58:02PM +0200, Alexander Usyskin wrote:
> GSC is a graphics system controller, it provides
> a chassis controller for graphics discrete cards.
> 
> There are two MEI interfaces in GSC: HECI1 and HECI2.
> 
> This series includes instantiation of the auxiliary devices for HECI2
> and mei-gsc auxiliary device driver that binds to the auxiliary device.
> 
> In v2 the platform device was replaced by the auxiliary device.
> 
> Greg KH, please review and ACK the MEI patches.
> We are pushing all through gfx tree as the auxiliary device belongs there.

I will review this after 5.17-rc1 is out.  Please give us some time,
there is no rush.

greg k-h

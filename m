Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA68A475A4C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 15:07:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426A710E54D;
	Wed, 15 Dec 2021 14:07:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6239B10E54D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Dec 2021 14:07:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C8498618E6;
 Wed, 15 Dec 2021 14:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE291C34605;
 Wed, 15 Dec 2021 14:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1639577237;
 bh=pj5iVHGXV5c017g6VgAz7lvZgQOAh4kItDtaHYm4MZA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WMoYGooPTcMaaB7Ac6PHgAj6Y/1e+QpjTJHXKKWL12Sw6dApItsdjztW1x8b7GqW1
 XP9Huit20dNb23oP76JXptCwJKIZjvas0Uv8p00WMpu6nud0PwOpNaYev3mIQnTDy6
 7vB3UFiY4fWwEuYr8agK/PSHHlUk7gXbffE4Fw9U=
Date: Wed, 15 Dec 2021 15:07:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <Ybn2kmcJ4OOyaHhI@kroah.com>
References: <20211215135622.1060229-1-alexander.usyskin@intel.com>
 <20211215135622.1060229-2-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211215135622.1060229-2-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/gsc: add gsc as a mei platform
 device
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

On Wed, Dec 15, 2021 at 03:56:18PM +0200, Alexander Usyskin wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
> 
> GSC is a graphics system controller, based on CSE, it provides
> a chassis controller for graphics discrete cards, as well as it
> supports media protection (HDCP 2.2) on selected devices.
> 
> There are two MEI interfaces in GSC HECI1, the one that provides media
> protection and HECI2 the one that provides firmware interface.
> 
> Both interfaces are on the BAR0 at offsets 0x00258000 and 0x00259000.
> GSC is a GT Engine (class 4: instance 6). HECI1 interrupt is signaled
> via bit 15 and HECI2 via bit 14 in the interrupt register.
> 
> This patch exports GSC as platform device for mei driver to bind to.

This is NOT a platform device.  It is part of a PCI device, which is NOT
a platform device.  I keep having to say this.

Please use the auxbus interface instead if you want to split a PCI
device up into sub-child-devices and bind drivers to them.  That is what
it was created for, and this SHOULD have been caught by the other Intel
reviewers who signed-off on this patch.

so no, I will not ack this, it is not ok at all, sorry.

greg k-h

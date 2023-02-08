Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 439C268F49B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 18:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FCB10E12F;
	Wed,  8 Feb 2023 17:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B3710E12F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 17:32:31 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 96D38B81F0A;
 Wed,  8 Feb 2023 17:32:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3B93C433D2;
 Wed,  8 Feb 2023 17:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1675877548;
 bh=pqfBKmMIe9Jov3y/NBY+FkieCEppKLBCyvo3Y8Fcthg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Spt+LJHWJbQhL/XlxxO6e1yLLNMngPvMHZqUwQlCe/7D1tG4dQm7zUlTyTz2QRRkO
 SLY9RA3e2xIFoodSWawuZhYOZFbWpex1Sbf5+/MVo0g+GaUhVZTIPE7umxEM0VsTni
 6KlHfiOVmMYlQEXn9OL4ZgPTWcJ6O6vUw/8cyfsw=
Date: Wed, 8 Feb 2023 18:32:25 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y+PcqXbUWewBqiJE@kroah.com>
References: <20230208142358.1401618-1-tomas.winkler@intel.com>
 <Y+PZI/mfxwSNmy8R@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y+PZI/mfxwSNmy8R@intel.com>
Subject: Re: [Intel-gfx] [char-misc-next v3 0/2] mei: gsc proxy component
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 08, 2023 at 12:17:23PM -0500, Rodrigo Vivi wrote:
> On Wed, Feb 08, 2023 at 04:23:56PM +0200, Tomas Winkler wrote:
> > GSC Proxy component is used for communication between the
> > Intel graphics driver and MEI driver.
> > 
> > Daniele, please ack so that drm part can be merged via Greg's tree.
> 
> Cc: Daniele, since he was missing on this submission.
> 
> He raise concerns on getting this through another tree since he
> has a pending series that uses this interface here. The propagation
> at this point will take so long.
> 
> Could we do the other way around and get Greg's and your, Thomas',
> acks to merge this through our drm-intel trees?

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

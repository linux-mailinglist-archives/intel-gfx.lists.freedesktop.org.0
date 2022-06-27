Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B589155BA37
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 16:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F190C112C78;
	Mon, 27 Jun 2022 14:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6355E112C78
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 14:02:49 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3F5FEB81732;
 Mon, 27 Jun 2022 14:02:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A660C3411D;
 Mon, 27 Jun 2022 14:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1656338564;
 bh=g1K+PVts9YH1AAO1xNeHNN4w0YsCOWr3ibR68K8QyAA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wMDOAwyniu6s40tHmKGlEmO8ylJrsI5bVnLP6tEPYvdM0vNnx2mAnBXlaPxCbAiu8
 r33srwbKyRibjbaT+vzDWFRfCd39P/tho3RG2Mz2oruZrHJRm2Et41Mt2lAyf82p74
 QM/jGnpWiIjELSRU4t2WP4xryEtKtIqv3aCIV6qQ=
Date: Mon, 27 Jun 2022 16:02:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <Yrm4gtK74t2IRvKr@kroah.com>
References: <20220619133721.523546-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220619133721.523546-1-alexander.usyskin@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 00/14] GSC support for XeHP SDV and DG2
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

On Sun, Jun 19, 2022 at 04:37:07PM +0300, Alexander Usyskin wrote:
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

patch 13 in the series obviously needs work, the others are fine with
me.

thanks,

greg k-h

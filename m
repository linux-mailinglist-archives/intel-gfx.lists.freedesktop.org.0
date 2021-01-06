Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE04C2EC2E6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 19:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3609A89DDD;
	Wed,  6 Jan 2021 18:03:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2149889DDD
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 18:03:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 66067216C4;
 Wed,  6 Jan 2021 18:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609956200;
 bh=YEmjCkuvqJwXAs/CFcpsZIBub1wETbB3Xxi/z8ZXSgA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SyCAuPdeO3AYDtkKYfMF+9KgP/SNKTYMn8Vfi0SFaI7MEL+khoxLTMu8JErs7SHIP
 wLezrLEBCn2+b0fkeRfYgWm3Ezxrc3yM9+PRHp7ditsSCVJJVSyJCmHL22YTepE8l5
 s7TmF2/wFDK90D+Pc/t9/CVunhkKpmTgBFUzQ1n8=
Date: Wed, 6 Jan 2021 19:04:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <X/X7umSYEeKCZ0Dw@kroah.com>
References: <20210106175301.GB202232@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106175301.GB202232@ideak-desk.fi.intel.com>
Subject: Re: [Intel-gfx] v5.10 stable backport request
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 06, 2021 at 07:53:01PM +0200, Imre Deak wrote:
> Stable team, please backport the upstream commit
> 
> 8f329967d596 ("drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock")
> 
> to the v5.10 stable kernel.

I see no such commit id in Linus's kernel :(
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

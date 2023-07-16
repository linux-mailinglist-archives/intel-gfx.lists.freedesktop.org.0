Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2469754F33
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Jul 2023 17:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB7110E05F;
	Sun, 16 Jul 2023 15:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B78210E05F
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Jul 2023 15:08:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9430B60C41;
 Sun, 16 Jul 2023 15:08:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4D9DC433C8;
 Sun, 16 Jul 2023 15:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1689520080;
 bh=SQ7QeJWh6mrUS2cUGMfaU0vN4NdQUryuMpjX1bjcPXE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hwhFTmfVLJrSOfhbw6nq5p6vCwN8x7x1uwgftU6qkpYjlVuXDbYuDYAcprFFJX1s3
 HVA3pMwpaIcD6imZRYNn0NRVIAqXbsZo+NdIU2MzcI/8NKYj88zEt3XaJ1wnh+48gu
 H/9AqplasGpq2Tsj/E2Xb+pCvPdWFPxU1YFBWFBc=
Date: Sun, 16 Jul 2023 17:07:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <2023071610-coronary-parted-0250@gregkh>
References: <20230710141359.754365-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230710141359.754365-1-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/1] v6.1 stable backport request
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 10, 2023 at 05:13:58PM +0300, Imre Deak wrote:
> Stable team, please apply patch 1/1 in this patchset along with its
> dependencies to the v6.1 stable tree. The patch required a trivial
> rebase adding a header include, hence resending it, while its 2
> dependencies listed at Cc: stable lines in the commit message can be
> cherry-picked as-is.
> 
> Thanks,
> Imre
> 
> Imre Deak (1):
>   drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks
> 
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_tc.c       | 51 +++++++++++++++++--
>  2 files changed, 48 insertions(+), 4 deletions(-)

All now queued up, thanks.

greg k-h

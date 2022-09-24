Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A20645E8C23
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Sep 2022 14:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F279310E5FE;
	Sat, 24 Sep 2022 12:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2879D10E5FE;
 Sat, 24 Sep 2022 12:16:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9702B60ABD;
 Sat, 24 Sep 2022 12:16:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A12C3C433D7;
 Sat, 24 Sep 2022 12:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1664021761;
 bh=1p9VgxoOvVenV/lhyycxViwIToYZd0ni17k151W3TvI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gu1gR2aE/Iz3dSHvXuSw6XqvkJztKJyMmYM9hAUhNRGvQ/UF3Tptp3euEnhjihRT2
 AyIVhhq/uuqbhOIj6Op/SgiBBGoCtznTxF+mfWWwOJ09ZDfeqI4hw48EgcHczeaqp/
 6thhWsgeuaGAdLphMR7QC+H2D8M9GPwMl8D0Dsu0=
Date: Sat, 24 Sep 2022 14:15:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <Yy70/orUCNmpwO68@kroah.com>
References: <20220913005739.798337-1-daniele.ceraolospurio@intel.com>
 <20220913005739.798337-4-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913005739.798337-4-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 03/15] mei: adjust extended header kdocs
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
Cc: intel-gfx@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 12, 2022 at 05:57:27PM -0700, Daniele Ceraolo Spurio wrote:
> From: Tomas Winkler <tomas.winkler@intel.com>
> 
> Fix kdoc for struct mei_ext_hdr and mei_ext_begin().
> 
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

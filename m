Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFAC6C1356
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 14:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE12D10E538;
	Mon, 20 Mar 2023 13:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DCB610E538
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 13:28:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 96F6E61243;
 Mon, 20 Mar 2023 13:28:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9B83C433EF;
 Mon, 20 Mar 2023 13:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1679318919;
 bh=J9tT0Z0kcizEGp64qroQ5lL/kHeEmcb0s2y62vQGDng=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bk3PowtJhcNlzlW2Rg4JfwiPSN94nxrY41GSLUTb8LfNEkaBgAtOGqRYeEvhPZcO2
 wwapGKKBYOrMvylHfWxQDdjBFtShK6CkrI1c7I0tmFoOc+Xslxzi+TS4/SBG7sqe07
 QvRNC3mOg2pRH8+5xE4i+/YMWIpnZfAAs6ZFUhls=
Date: Mon, 20 Mar 2023 14:28:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Philip =?iso-8859-1?Q?M=FCller?= <philm@manjaro.org>
Message-ID: <ZBhfhJ0ylxqXPHee@kroah.com>
References: <8a1bbe56-4463-d18d-d5a9-d249171a569d@manjaro.org>
 <a0be2b31-9e72-1254-978e-570b27abb364@manjaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a0be2b31-9e72-1254-978e-570b27abb364@manjaro.org>
Subject: Re: [Intel-gfx] [Regression] drm/i915: Don't use BAR mappings for
 ring buffers with LLC alone creates issues in stable kernels
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 stable@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 19, 2023 at 10:01:01AM +0700, Philip Müller wrote:
> Have to correct the affected kernels to these: 4.14.310, 4.19.278, 5.4.237,
> 5.10.175

Please don't top-post :(

Anyway, should be fixed in the next round of releases in a few days, if
not, please let us know.

greg k-h

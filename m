Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19ACB714F9E
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 21:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5907810E0EA;
	Mon, 29 May 2023 19:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailrelay6-1.pub.mailoutpod2-cph3.one.com
 (mailrelay6-1.pub.mailoutpod2-cph3.one.com [46.30.211.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 472FF10E0A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 19:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=/l6Mg+b7EV4jY8x9miIBhVcWtjESBETdVoWxoFEeAkc=;
 b=LeWJ62Ais/TfMdLjk0WYkuXZzax4iD4BrnE7sSau5wCKsHKRhnZN+zg85cT9kGHq4Y/UTMbSJ/GJq
 u8jNF4U4EedArMWNsmFjKkMkRB7KYlwpwf6vn2xCvSSZp7AR3N/xWyoNDbANeom9faDjz97e2i+mbR
 dGY0+8QE6gyK49Xm24bQuAdV8tFSUQg/zix3zpWcXiXYNPJK5BYl1Xsevo+IDCMIIiKBaVFMlFUTEf
 7XNlBUGHCdhfkdkTnSQe9MUPN++PbC1gY/TzDrg5UQJ4hfKTaswNz2tLZdrf1+vvGsRt2BTE0vUEUo
 T3S1yDxoMpoJXELiRbkj4ygmiv7CD1w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
 from:date:from;
 bh=/l6Mg+b7EV4jY8x9miIBhVcWtjESBETdVoWxoFEeAkc=;
 b=EQYlVyX671ncuU52K4e3wUOWPuZLsB7f7qnw/CUh34TTTsTtDQapNrVpQya0JaMBtmjMXqRzvoZbc
 MII6VFLBg==
X-HalOne-ID: 7aa65568-fe55-11ed-8ac4-6f01c1d0a443
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
 by mailrelay6 (Halon) with ESMTPSA
 id 7aa65568-fe55-11ed-8ac4-6f01c1d0a443;
 Mon, 29 May 2023 19:17:42 +0000 (UTC)
Date: Mon, 29 May 2023 21:17:41 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <20230529191741.GA1370714@ravnborg.org>
References: <20230524092150.11776-1-tzimmermann@suse.de>
 <20230524092150.11776-2-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524092150.11776-2-tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PATCH v4 01/13] fbdev: Add Kconfig options to
 select different fb_ops helpers
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
Cc: freedreno@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, javierm@redhat.com,
 dri-devel@lists.freedesktop.org, mripard@kernel.org, daniel@ffwll.ch,
 linux-tegra@vger.kernel.org, airlied@gmail.com,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

On Wed, May 24, 2023 at 11:21:38AM +0200, Thomas Zimmermann wrote:
> Many fbdev drivers use the same set of fb_ops helpers. Add Kconfig
> options to select them at once. This will help with making DRM's
> fbdev emulation code more modular, but can also be used to simplify
> fbdev's driver configs.
> 
> v3:
> 	* fix select statement (Jingfeng)
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
I like these, thanks.
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

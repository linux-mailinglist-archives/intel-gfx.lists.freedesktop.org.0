Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDE68BD5CB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 21:48:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822B810F292;
	Mon,  6 May 2024 19:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 348 seconds by postgrey-1.36 at gabe;
 Mon, 06 May 2024 19:48:09 UTC
Received: from bmailout2.hostsharing.net (bmailout2.hostsharing.net
 [83.223.78.240])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF97410F357
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 19:48:09 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout2.hostsharing.net (Postfix) with ESMTPS id 10A5B2800B6D2;
 Mon,  6 May 2024 21:42:19 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id DCDE14A9A40; Mon,  6 May 2024 21:42:18 +0200 (CEST)
Date: Mon, 6 May 2024 21:42:18 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Johannes Stezenbach <js@sig21.net>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: i915 IVB hangup after resume from s2mem since v6.6.x
Message-ID: <ZjkymnMC40-Le7vG@wunner.de>
References: <Zi_2OWwG0JGI2j2B@sig21.net>
 <DM8PR11MB5655F60990852E1E4AF760F2E01A2@DM8PR11MB5655.namprd11.prod.outlook.com>
 <ZjCqbhdSWPiABmRg@sig21.net> <Zjkk3y906HKdzScK@sig21.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zjkk3y906HKdzScK@sig21.net>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[cc += Thomas]

On Mon, May 06, 2024 at 08:43:43PM +0200, Johannes Stezenbach wrote:
> so, git bisect pointed to:
> 
>  commit 701d2054fa317188cd4039c84e72c73254013b23
>  Author: Thomas Zimmermann <tzimmermann@suse.de>
>  Date:   Tue Jun 13 13:07:13 2023 +0200
> 
>     fbdev: Make support for userspace interfaces configurable
> 
>     Add Kconfig option CONFIG_FB_DEVICE and make the virtual fbdev
>     ...
> 
> I think nothing on my system uses /dev/fb*, thus I had disabled
> CONFIG_FB_DEVICE. Everything worked, only suspend/resume broke.
> I can confirm v6.8.9 with CONFIG_FB_DEVICE=y works fine.
> 
> Maybe setting CONFIG_FB_DEVICE=n would allow you to reproduce
> it in your CI tests?
> Let me know if you still want me to file at bug report about this.

A user-visible regression like this is always sufficient to ask for a
revert of the offending commit.  It's the commit author's duty to find
a fix ASAP. If you could file a bug report that would be helpful but
you've already done more than could be asked from any user.

Thanks,

Lukas

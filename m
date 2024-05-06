Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DEC8BD4CC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 20:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6373910F259;
	Mon,  6 May 2024 18:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sig21.net (mail.sig21.net [217.197.84.222])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8240F10F255
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 18:46:00 +0000 (UTC)
Received: from localhorst ([127.0.0.1]) by mail.sig21.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2) (envelope-from <js@sig21.net>)
 id 1s43JR-0003u1-7G ; Mon, 06 May 2024 20:43:45 +0200
Received: from js by abc.local with local (Exim 4.97)
 (envelope-from <js@sig21.net>) id 1s43JP-000000003DQ-41QU;
 Mon, 06 May 2024 20:43:43 +0200
Date: Mon, 6 May 2024 20:43:43 +0200
From: Johannes Stezenbach <js@sig21.net>
To: "Saarinen, Jani" <jani.saarinen@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: i915 IVB hangup after resume from s2mem since v6.6.x
Message-ID: <Zjkk3y906HKdzScK@sig21.net>
References: <Zi_2OWwG0JGI2j2B@sig21.net>
 <DM8PR11MB5655F60990852E1E4AF760F2E01A2@DM8PR11MB5655.namprd11.prod.outlook.com>
 <ZjCqbhdSWPiABmRg@sig21.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZjCqbhdSWPiABmRg@sig21.net>
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

Hi,

so, git bisect pointed to:

 commit 701d2054fa317188cd4039c84e72c73254013b23
 Author: Thomas Zimmermann <tzimmermann@suse.de>
 Date:   Tue Jun 13 13:07:13 2023 +0200

    fbdev: Make support for userspace interfaces configurable

    Add Kconfig option CONFIG_FB_DEVICE and make the virtual fbdev
    ...

I think nothing on my system uses /dev/fb*, thus I had disabled
CONFIG_FB_DEVICE. Everything worked, only suspend/resume broke.
I can confirm v6.8.9 with CONFIG_FB_DEVICE=y works fine.

Maybe setting CONFIG_FB_DEVICE=n would allow you to reproduce
it in your CI tests?
Let me know if you still want me to file at bug report about this.


Best Regards,
Johannes

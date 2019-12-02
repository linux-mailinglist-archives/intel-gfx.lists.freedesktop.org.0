Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE3410EE34
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 18:31:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B489D6E288;
	Mon,  2 Dec 2019 17:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1200 seconds by postgrey-1.36 at gabe;
 Mon, 02 Dec 2019 17:31:20 UTC
Received: from 4.mo173.mail-out.ovh.net (4.mo173.mail-out.ovh.net
 [46.105.34.219])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9146E288
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 17:31:20 +0000 (UTC)
Received: from player755.ha.ovh.net (unknown [10.109.146.82])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 6C0C711D190
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 17:53:40 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player755.ha.ovh.net (Postfix) with ESMTPSA id 92A27CE5017C;
 Mon,  2 Dec 2019 16:53:36 +0000 (UTC)
Date: Mon, 2 Dec 2019 18:53:35 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191202165335.GB47244@jack.zhora.eu>
References: <20191202110836.2342685-1-chris@chris-wilson.co.uk>
 <20191202110836.2342685-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202110836.2342685-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 4725120437176615433
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudejhedgleeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejheehrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Simplify rc6 w/a
 application
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBNb24sIERlYyAwMiwgMjAxOSBhdCAxMTowODozNkFNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gUXVpdGUgc2ltcGx5IHdlIG9ubHkgbmVlZCB0byBjaGVjayBmb3Ig
cHJpb3IgY29ycnVwdGlvbiBvbiBlbmFibGluZyByYzYKPiBvbiBtb2R1bGUgbG9hZCBhbmQgcmVz
dW1lLCBzbyBieSBob29raW5nIGludG8gdGhlIGNvbW1vbiBlbnRyeSBwb2ludHMuCj4gCj4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgptYWtl
cyBzZW5zZSEKCkFja2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KClRo
YW5rcywKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

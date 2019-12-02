Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C32DE10F188
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 21:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD196E334;
	Mon,  2 Dec 2019 20:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 12597 seconds by postgrey-1.36 at gabe;
 Mon, 02 Dec 2019 20:31:22 UTC
Received: from 2.mo1.mail-out.ovh.net (2.mo1.mail-out.ovh.net [178.32.119.250])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C17E6E334
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 20:31:22 +0000 (UTC)
Received: from player760.ha.ovh.net (unknown [10.109.143.18])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id D928019E706
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 17:54:54 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player760.ha.ovh.net (Postfix) with ESMTPSA id 0FC01CD2B8CE;
 Mon,  2 Dec 2019 16:54:52 +0000 (UTC)
Date: Mon, 2 Dec 2019 18:54:51 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191202165451.GC47244@jack.zhora.eu>
References: <20191202110836.2342685-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202110836.2342685-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 4746231057811358217
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudejhedgleeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejiedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Use soft-rc6 for w/a
 protection
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

T24gTW9uLCBEZWMgMDIsIDIwMTkgYXQgMTE6MDg6MzVBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IE5vdyB0aGF0IHdlIGhhdmUgc29mdC1yYzYgaW4gcGxhY2UsIHdlIGNhbiB1c2UgdGhh
dCBpbnN0ZWFkIG9mIHRoZQo+IGZvcmNld2FrZSB0byBkaXNhYmxlIHJjNiB3aGlsZSBhY3RpdmU7
IHByZWZlcnJlZCBieSBhIGZldwo+IG1pY3JvYmVuY2htYXJrcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkFja2VkLWJ5OiBBbmRp
IFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KClRoYW5rcywKQW5kaQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

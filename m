Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EF16D381
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 20:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373B76E44F;
	Thu, 18 Jul 2019 18:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB686E44C;
 Thu, 18 Jul 2019 18:11:44 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 4BF122005A;
 Thu, 18 Jul 2019 20:11:36 +0200 (CEST)
Date: Thu, 18 Jul 2019 20:11:35 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Sean Paul <sean@poorly.run>
Message-ID: <20190718181135.GA5612@ravnborg.org>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-5-sam@ravnborg.org>
 <20190718174905.GG31819@art_vandelay>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718174905.GG31819@art_vandelay>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=9AF6RdKshU6IdnJeS3sA:9 a=CjuIK1q_8ugA:10
Subject: Re: [Intel-gfx] [PATCH v1 04/11] drm/ati_pcigart: drop dependency
 on drm_os_linux.h
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Rob Herring <robh@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <treding@nvidia.com>, Chunming Zhou <david1.zhou@amd.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU2Vhbi4KPiAKPiBBbnkgcGxhbnMgZm9yIHRoZSBvdGhlciB1c2VycyBvZiBEUk1fV1JJVEU8
Tj4oKT8gSXQgc2VlbXMgbGlrZSBpdCdkIGJlIHRyaXZpYWwKPiB0byBmaXggaXQgdXAgZm9yIHZp
YSBhbmQgbWdhLiBJIGRvbid0IHJlYWxseSBoYXZlIGFueSBiYWNrZ3JvdW5kIG9uCj4gZHJtX29z
X2xpbnV4LmgsIGJ1dCBpdCBkb2Vzbid0IHNlZW0gbGlrZSBpdCdkIGJlIHRoYXQgbXVjaCBtb3Jl
IGVmZm9ydCB0byBqdXN0Cj4gcmVtb3ZlIHRoZSB3aG9sZSB0aGluZy4KCkR1cmluZyB0aGUgZHJt
UC5oIHJlbW92YWwgSSBhbHNvIHRvb2sgY2FyZSBvZiBkcm1fb3NfbGludXguaCwKc28gd2hlbiB0
aGUgcGF0Y2hlcyBsYW5kIHRoZW4gdGhlcmUgd2lsbCBiZSBubyB1c2VycyBsZWZ0LgpJIGxvb2sg
Zm9yd2FyZCB0byBkZWxldGUgdGhhdCBmaWxlLgoKRm9yIHZpYSBJIG9ubHkganVzdCBwb3N0ZWQg
dGhlIHBhdGNoZXMgdG9kYXkuCkZvciBtZ2EgdGhleSBhbHJlYWR5IGxhbmRlZCBpbiBkcm0tbWlz
Yy1uZXh0LgoKSSBleHBlY3QgdGhhdCB3ZSBhZnRlciBuZXh0IG1lcmdlIHdpbmRvdyBjYW4gZGVs
ZXRlCmJvdGggZHJtX29zX2xpbnV4LmggYW5kIGRybVAuaC4KCglTYW0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

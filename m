Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA242951BB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 19:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A847D6F494;
	Wed, 21 Oct 2020 17:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF0B6F494
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 17:46:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22768372-1500050 for multiple; Wed, 21 Oct 2020 18:46:09 +0100
MIME-Version: 1.0
In-Reply-To: <20201021131443.25616-5-ville.syrjala@linux.intel.com>
References: <20201021131443.25616-1-ville.syrjala@linux.intel.com>
 <20201021131443.25616-5-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 18:46:08 +0100
Message-ID: <160330236802.24927.11326821125162684734@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Clean up the irq
 enable/disable for ilk rps
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTEwLTIxIDE0OjE0OjQzKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gTGV0J3MgdW5t
YXNrIHRoZSBQQ1UgZXZlbnQgaXJxIF9hZnRlcl8gd2UndmUgc2V0IHVwIHRoZQo+IGhhcmR3YXJl
IGFuZCBzb2Z0d2FyZSB0byBkZWFsIHdpdGggdGhlIGZhbGxvdXQuIFdlIGNhbgo+IGFsc28gZHJv
cCB0aGUgUENVIGV2ZW50IGJpdCBmcm9tIERFSUVSIGV4Y2VwdCB3aGVuIHdlCj4gbmVlZCBpdCBm
b3IgcnBzLgo+IAo+IEFuZCBvbiB0aGUgZGlzYWJsZSBzaWRlIHdlIHJlcGxhY2UgdGhlIGhhbmQg
cm9sbGVkIChhbmQKPiB1bmxvY2tlZCkgREVJRVIvSUlSL0lNUiBmcm9iYmluZyB3aXRoIGlsa19k
aXNhYmxlX2Rpc3BsYXlfaXJxKCkuCj4gT2NkIGRvZXMgcmVxdWlyZSBtZSB0byByZW9yZGVyIGl0
IHRvIGJlIHN5bW1ldHJpYyB3aXRoCj4gdGhlIGVuYWJsZSBwYXRoIGhvd2V2ZXIuCj4gCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

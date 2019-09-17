Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD23B56D6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 22:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 391736ED4C;
	Tue, 17 Sep 2019 20:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A186ED4C
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 20:23:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18524572-1500050 for multiple; Tue, 17 Sep 2019 21:23:03 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190917194746.26710-1-chris@chris-wilson.co.uk>
References: <20190917194746.26710-1-chris@chris-wilson.co.uk>
Message-ID: <156875178183.5729.5406649815912590129@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 21:23:01 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extend Haswell GT1 PSMI
 workaround to all
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMTcgMjA6NDc6NDYpCj4gQSBmZXcgdGltZXMg
aW4gQ0ksIHdlIGhhdmUgZGV0ZWN0ZWQgYSBHUFUgaGFuZyBvbiBvdXIgSGFzd2VsbCBHVDIKPiBz
eXN0ZW1zIHdpdGggdGhlIGNoYXJhY3RlcmlzdGljIElQRUhSIG9mIDB4NzgwYzAwMDAuIFdoZW4g
dGhlIFBTTUkgdy9hCj4gd2FzIGZpcnN0IGludHJvZHVjdGVkLCBpdCB3YXMgYXBwbGllZCB0byBh
bGwgSGFzd2VsbCwgYnV0IGxhdGVyIG9uIHdlCj4gZm91bmQgYW4gZXJyYXR1bSB0aGF0IHN1cHBv
c2VkbHkgcmVzdHJpY3RlZCB0aGUgaXNzdWUgdG8gR1QxIGFuZCBzbwo+IGNvbnN0cmFpbmVkIGl0
IG9ubHkgYmUgYXBwbGllZCBvbiBHVDEuIFRoYXQgbWF5IGhhdmUgYmVlbiBhIG1pc3Rha2UuLi4K
ClNvbWV0aGluZyBlbHNlIHRvIGJlYXIgaW4gbWluZCBhYm91dCB3aHkgdGhpcyBpcyBzaG93aW5n
IHVwIG5vdywgaXMgdGhhdAp0aGUgZW5hYmxpbmcgb2YgaW9tbXUgb24gdGhlc2UgbWFjaGluZXMu
IEl0J3MgdGhlIGxhc3QgaW5zdHJ1Y3Rpb24gaW4KdGhlIGNvbnRleHQgaW1hZ2UuLi4gQ291bGQg
d2UgbmVlZCB0byBleHBhbmQgdGhlIGNvbnRleHQ/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

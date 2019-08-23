Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E39D39B3A8
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE16D6ECCF;
	Fri, 23 Aug 2019 15:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D3F6ECD0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:44:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18242373-1500050 for multiple; Fri, 23 Aug 2019 16:44:18 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190823150302.5719-1-chris@chris-wilson.co.uk>
 <cb9a9a4e-d4b1-daf8-258d-2335a6dd4b16@intel.com>
 <156657427951.4019.2352830332162256103@skylake-alporthouse-com>
In-Reply-To: <156657427951.4019.2352830332162256103@skylake-alporthouse-com>
Message-ID: <156657505627.4019.6499438950068776719@skylake-alporthouse-com>
Date: Fri, 23 Aug 2019 16:44:16 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush the existing fence before
 GGTT read/write
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjMgMTY6MzE6MTkpCj4gUXVvdGluZyBNYXR0
aGV3IEF1bGQgKDIwMTktMDgtMjMgMTY6MjY6MTYpCj4gPiBPbiAyMy8wOC8yMDE5IDE2OjAzLCBD
aHJpcyBXaWxzb24gd3JvdGU6Cj4gPiA+IE91ciBmZW5jZSBtYW5hZ2VtZW50IGlzIGxhenksIHZl
cnkgbGF6eS4gSWYgdGhlIHVzZXIgbWFya3MgYW4gb2JqZWN0IGFzCj4gPiA+IHVudGlsZWQsIHdl
IGRvIG5vdCBpbW1lZGlhdGVseSBmbHVzaCB0aGUgZmVuY2UgYnV0IG1lcmVseSBtYXJrIGl0IGFz
Cj4gPiA+IGRpcnR5LiBPbiB0aGUgdXNlIHdlIGhhdmUgdG8gcmVtZW1iZXIgdG8gY2hlY2sgYW5k
IHJlbW92ZSB0aGUgZmVuY2UsIGJ5Cj4gPiA+IHdoaWNoIHRpbWUgd2UgaG9wZSBpdCBpcyBpZGxl
IGFuZCB3ZSBkbyBub3QgaGF2ZSB0byB3YWl0Lgo+ID4gPiAKPiA+ID4gQnVnemlsbGE6IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTQ2OAo+ID4gPiBGaXhl
czogMWY3ZmQ0ODRmZmYxICgiZHJtL2k5MTU6IFJlcGxhY2UgaTkxNV92bWFfcHV0X2ZlbmNlKCki
KQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiA+ID4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiA+
IAo+ID4gV2VsbCB0aGF0IHN1Y2tzLCBzaG91bGQgd2UgYWxzbyB0cnkgdG8gYmUgbW9yZSBzb2xp
ZCBvbiB0aGUgcmVsb2MgcGF0aD8KPiAKPiBJIHdhcyB0aGlua2luZyBhYm91dCBwdWxsaW5nIGl0
IGludG8gdGhlIG9iamVjdF9nZ3R0X3Bpbi4gVGhhdCBhcHBlYXJzCj4gdG8gY292ZXIgZXZlcnlv
bmUuCgpBbiBhbHRlcm5hdGl2ZSB3b3VsZCBiZSBub3QgdG8gYmUgc28gbGF6eSBvbiBjaGFuZ2lu
ZyB0aWxpbmcgbW9kZS4gV2UKYXJlIGxhenkgYmVjYXVzZSBvZiB0aGUgdXNlcnNwYWNlIGNhY2hp
bmcsIHdoZXJlIGl0IG1heSBpbmhlcml0IGFuCmluYXBwcm9wcmlhdGUgdGlsaW5nIGFuZCBzbyBj
aGFuZ2UgaXQgZHVyaW5nIG9iamVjdCBpbml0aWFsaXNhdGlvbi4gVGhhdAp1c2VkIHRvIGludHJv
ZHVjZSBhIHN0YWxsLCBoZW5jZSBiZWluZyBsYXp5LgoKQWx0aG91Z2gsIHRoZSBmZW5jZSBpcyBv
biB0aGUgdm1hLiBJZiB3ZSBkb24ndCBsaWtlIHRoZSBjdXJyZW50IGZlbmNlLAp3ZSBjb3VsZCBq
dXN0IGFsbG9jYXRlIGEgbmV3IHZtYS4gKElmIHRoZXJlIGlzbid0IGVub3VnaCByb29tIGZvciB0
aGUKZnJlc2ggdm1hLCB3ZSB3b3VsZCBldmljdCBhbmQgaG9wZWZ1bGx5IHN0YWxsIG9uIExSVSBv
bmUuKSBIbW0uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 904931BF157
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 09:28:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B06526E10F;
	Thu, 30 Apr 2020 07:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F2B6E10F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 07:28:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21066005-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 08:28:36 +0100
MIME-Version: 1.0
In-Reply-To: <20200430064957.14942-1-chris@chris-wilson.co.uk>
References: <20200430064957.14942-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158823171439.7361.17934004234128806626@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 30 Apr 2020 08:28:34 +0100
Subject: Re: [Intel-gfx] [CI] drm/i915/selftests: Add tiled blits selftest
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDQtMzAgMDc6NDk6NTcpCj4gRnJvbTogWmJpZ25p
ZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gCj4gRXh0
ZW5kIGNvdmVyYWdlIG9mIHRoZSBibGl0dGVyIGNsaWVudCBieSBleGVyY2lzaW5nIGNvbnZlcnNp
b24gdG8gYW5kCj4gZnJvbSB0aWxlZCBzb3VyY2VzLiBJbiB0aGUgcHJvY2VzcyB3ZSBwZXJmb3Jt
IHNwb3QgY2hlY2tzIHRvIHZlcmlmeSB0aGF0Cj4gdGhlIHRpbGluZy9kZXRpbGluZyBpcyBiZWlu
ZyBhcHBsaWVkIGNvcnJlY3RseSwgYWxvbmcgd2l0aCBwb3NpdGlvbgo+IGludmFyaWFuY2Ugb2Yg
dGhlIHRpbGluZyBwYXJhbWV0ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFpiaWduaWV3IEtlbXBj
ennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKVGhpcyBkb2VzIHdoYXQgSSBhc2tlZCBmb3Ig
YSBtaW5pbWFsIGFuZCBhY2N1cmF0ZSByZXBsYWNlbWVudCBvZiB0aWxlZApibGl0cywgdGhhbmtz
ISBJdCBjYW4gYmUgYnVtcGVkIGZvciBzZW5zaXRpdml0eSAoc3BvdCBjaGVjayBhIGZldyBtb3Jl
CnBpeGVscywgb3IgdGhlIHdob2xlIHN1cmZhY2UpLCBpdCBjYW4gYWxzbyBiZSBhZGp1c3RlZCBm
b3IgY2hlY2tpbmcKdGlsaW5nIHBhcmFtZXRlcnMgYW5kIGZpbmUgY29waWVzLiBXaGF0IGl0IHRl
c3RzIHJpZ2h0IG5vdyBpcyB0aGF0IHdlCmNhbiBtb3ZlIG9iamVjdHMgYXJvdW5kIGluc2lkZSB0
aGUgR1RUIHdpdGhvdXQgbG9zaW5nIHRpbGluZywgd2hpY2ggaXMKdGhlIGZvdW5kYXRpb25hbCBs
ZXZlbCBvZiBhc3N1cmFuY2Ugd2UgbmVlZC4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=

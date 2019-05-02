Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AD711B51
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED738961D;
	Thu,  2 May 2019 14:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2638961D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:23:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16430075-1500050 for multiple; Thu, 02 May 2019 15:23:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-5-chris@chris-wilson.co.uk>
 <0161450d-1058-c313-4f31-5adb1e34092f@linux.intel.com>
 <155680335685.9023.13728003939061967960@skylake-alporthouse-com>
 <c004a5e8-4b53-a4ca-26f3-8ba4d2adda82@linux.intel.com>
In-Reply-To: <c004a5e8-4b53-a4ca-26f3-8ba4d2adda82@linux.intel.com>
Message-ID: <155680698900.9023.15744512276621981712@skylake-alporthouse-com>
Date: Thu, 02 May 2019 15:23:09 +0100
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915: Remove delay for idle_work
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMiAxNDo1MTozMSkKPiAKPiBPbiAwMi8w
NS8yMDE5IDE0OjIyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTAyIDE0OjE5OjM4KQo+ID4+Cj4gPj4gT24gMDEvMDUvMjAxOSAxMjo0NSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMKPiA+
Pj4gaW5kZXggNDliMGNlNTk0ZjIwLi5hZTkxYWQ3Y2IzMWUgMTAwNjQ0Cj4gPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMKPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fcG0uYwo+ID4+PiBAQCAtMjksMTIgKzI5LDEyIEBAIHN0YXRpYyB2
b2lkIGk5MTVfZ2VtX3Bhcmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPj4+ICAg
IHN0YXRpYyB2b2lkIGlkbGVfd29ya19oYW5kbGVyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykK
PiA+Pj4gICAgewo+ID4+PiAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPQo+
ID4+PiAtICAgICAgICAgICAgIGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKmk5MTUpLCBnZW0u
aWRsZV93b3JrLndvcmspOwo+ID4+PiArICAgICAgICAgICAgIGNvbnRhaW5lcl9vZih3b3JrLCB0
eXBlb2YoKmk5MTUpLCBnZW0uaWRsZV93b3JrKTsKPiA+Pj4gICAgCj4gPj4+ICAgICAgICBtdXRl
eF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiA+Pj4gICAgCj4gPj4+ICAgICAgICBp
bnRlbF93YWtlcmVmX2xvY2soJmk5MTUtPmd0Lndha2VyZWYpOwo+ID4+PiAtICAgICBpZiAoIWlu
dGVsX3dha2VyZWZfYWN0aXZlKCZpOTE1LT5ndC53YWtlcmVmKSkKPiA+Pj4gKyAgICAgaWYgKCFp
bnRlbF93YWtlcmVmX2FjdGl2ZSgmaTkxNS0+Z3Qud2FrZXJlZikgJiYgIXdvcmtfcGVuZGluZyh3
b3JrKSkKPiA+Pgo+ID4+IFdoYXQgaXMgdGhlIHJlYXNvbiBmb3IgdGhlICF3b3JrX3BlbmRpbmcg
Y2hlY2s/Cj4gPiAKPiA+IEp1c3QgdGhhdCB3ZSBhcmUgZ29pbmcgdG8gYmUgY2FsbGVkIGFnYWlu
LCBzbyB3YWl0IHVudGlsIHRoZSBuZXh0IHRpbWUgdG8KPiA+IHNlZSBpZiB3ZSBzdGlsbCBuZWVk
IHRvIHBhcmsuCj4gCj4gV2hlbiBkb2VzIGl0IGdldCBjYWxsZWQgYWdhaW4/IElmIGEgd2hvbGUg
bmV3IGN5Y2xlIG9mIHVucGFyay1wYXJrIAo+IGhhcHBlbmVkIGJlZm9yZSB0aGUgcHJldmlvdXMg
cGFyayB3YXMgYWJsZSB0byBmaW5pc2g/Cgp3b3JrX3BlbmRpbmcoKSBpbXBsaWVzIHRoYXQgd2Un
dmUgZG9uZSBhdCBsZWFzdCBvbmUgY3ljbGUgd2hpbGUgd2UKd2FpdGVkIGZvciB0aGUgbG9ja3Mg
YW5kIHRoZSB3b3JrIGlzIGFscmVhZHkgcXVldWVkIHRvIGJlIHJlcnVuLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

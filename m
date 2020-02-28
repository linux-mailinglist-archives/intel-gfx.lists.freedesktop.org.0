Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAB31738A3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 14:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7482F6E199;
	Fri, 28 Feb 2020 13:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62C2B6E199
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 13:45:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20385637-1500050 for multiple; Fri, 28 Feb 2020 13:45:18 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200228133756.GC13686@intel.com>
References: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
 <158287851663.19174.2013462831358055362@skylake-alporthouse-com>
 <20200228133756.GC13686@intel.com>
Message-ID: <158289751567.24106.12746889432360821674@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 28 Feb 2020 13:45:15 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Lock gmbus/aux mutexes while
 changing cdclk
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDItMjggMTM6Mzc6NTYpCj4gT24gRnJpLCBG
ZWIgMjgsIDIwMjAgYXQgMDg6Mjg6MzZBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAyLTI3IDE5OjM5OjU0KQo+ID4gPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiAKPiA+
ID4gZ21idXMvYXV4IG1heSBiZSBjbG9ja2VkIGJ5IGNkY2xrLCB0aHVzIHdlIHNob3VsZCBtYWtl
IHN1cmUgbm8KPiA+ID4gdHJhbnNmZXJzIGFyZSBvbmdvaW5nIHdoaWxlIHRoZSBjZGNsayBmcmVx
dWVuY3kgaXMgYmVpbmcgY2hhbmdlZC4KPiA+ID4gV2UgZG8gdGhhdCBieSBzaW1wbHkgZ3JhYmJp
bmcgYWxsIHRoZSBnbWJ1cy9hdXggbXV0ZXhlcy4gTm8gb25lCj4gPiA+IGVsc2Ugc2hvdWxkIGJl
IGhvbGRpbmcgYW55IG1vcmUgdGhhbiBvbmUgb2YgdGhvc2UgYXQgYSB0aW1lIHNvCj4gPiA+IHRo
ZSBsb2NrIG9yZGVyaW5nIGhlcmUgc2hvdWxkbid0IG1hdHRlci4KPiA+ID4gCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDIz
IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMKPiA+ID4gaW5kZXggMDc0MWQ2NDM0NTViLi5mNjliZjRhNGViMWMgMTAw
NjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Ywo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMK
PiA+ID4gQEAgLTE4NjgsNiArMTg2OCw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF9jZGNsayhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICpjZGNsa19jb25maWcs
Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIHBpcGUgcGlwZSkKPiA+ID4g
IHsKPiA+ID4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKPiA+ID4gKyAg
ICAgICB1bnNpZ25lZCBpbnQgYXV4X211dGV4X2xvY2tjbGFzcyA9IDA7Cj4gPiA+ICsKPiA+ID4g
ICAgICAgICBpZiAoIWludGVsX2NkY2xrX2NoYW5nZWQoJmRldl9wcml2LT5jZGNsay5odywgY2Rj
bGtfY29uZmlnKSkKPiA+ID4gICAgICAgICAgICAgICAgIHJldHVybjsKPiA+ID4gIAo+ID4gPiBA
QCAtMTg3Niw4ICsxODc5LDI4IEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF9jZGNsayhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gPiA+ICAKPiA+ID4gICAgICAgICBpbnRlbF9k
dW1wX2NkY2xrX2NvbmZpZyhjZGNsa19jb25maWcsICJDaGFuZ2luZyBDRENMSyB0byIpOwo+ID4g
PiAgCj4gPiA+ICsgICAgICAgLyoKPiA+ID4gKyAgICAgICAgKiBMb2NrIGF1eC9nbWJ1cyB3aGls
ZSB3ZSBjaGFuZ2UgY2RjbGsgaW4gY2FzZSB0aG9zZQo+ID4gPiArICAgICAgICAqIGZ1bmN0aW9u
cyB1c2UgY2RjbGsuIE5vdCBhbGwgcGxhdGZvcm1zL3BvcnRzIGRvLAo+ID4gPiArICAgICAgICAq
IGJ1dCB3ZSdsbCBsb2NrIHRoZW0gYWxsIGZvciBzaW1wbGljaXR5Lgo+ID4gPiArICAgICAgICAq
Lwo+ID4gPiArICAgICAgIG11dGV4X2xvY2soJmRldl9wcml2LT5nbWJ1c19tdXRleCk7Cj4gPiA+
ICsgICAgICAgZm9yX2VhY2hfaW50ZWxfZHAoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsKPiA+
ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50
ZWxfZHAoZW5jb2Rlcik7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgIG11dGV4X2xvY2tf
bmVzdGVkKCZpbnRlbF9kcC0+YXV4Lmh3X211dGV4LAo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgYXV4X211dGV4X2xvY2tjbGFzcysrKTsKPiA+IAo+ID4gbXV0ZXhfbG9j
a19uZXN0X2xvY2soJmludGVsX2RwLT5hdXguaHdfbXV0ZXgsICZkZXZfcHJpdi0+Z21idXNfbXV0
ZXgpOwo+ID4gPwo+IAo+IFRoYXQgZG9lcyBzZWVtcyB0byB3b3JrLiBOb3Qgc3VyZSB3aGF0IGl0
IG1lYW5zIHRob3VnaCBzaW5jZSBubyBkb2NzCj4gYW5kIEkgd2FzIHRvbyBsYXp5IHRvIHJlYWQg
dGhlIGNvZGUuIERvZXMgaXQgc2F5ICJhcyBsb25nIGFzIHdlIGhvbGQKPiBuZXN0X2xvY2sgdGhl
IG9yZGVyIGRvZXNuJ3QgbWF0dGVyIj8KClllcywgdGhhdCdzIGV4YWN0bHkgd2hhdCBpdCBtZWFu
cy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

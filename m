Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC47270B8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 22:20:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665EC899B7;
	Wed, 22 May 2019 20:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EFF7899B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 20:19:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16646364-1500050 for multiple; Wed, 22 May 2019 21:19:48 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522190057.848-4-michal.wajdeczko@intel.com>
References: <20190522190057.848-1-michal.wajdeczko@intel.com>
 <20190522190057.848-4-michal.wajdeczko@intel.com>
Message-ID: <155855638733.28319.12683765369044811987@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 21:19:47 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/huc: Update HuC status codes
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIyIDIwOjAwOjU3KQo+IFdpdGhvdXQg
YnJlYWtpbmcgZXhpc3RpbmcgdXNhZ2UsIHNsaWdodGx5IHVwZGF0ZSBIdUMgc3RhdHVzIGNvZGVz
Cj4gdG8gcHJvdmlkZSBtb3JlIGluZm8gdG8gdGhlIGNsaWVudHM6Cj4gIDEgaWYgSHVDIGZpcm13
YXJlIGlzIGxvYWRlZCBhbmQgdmVyaWZpZWQsCj4gIDAgaWYgSHVDIGZpcm13YXJlIGlzIG5vdCBl
bmFibGVkLAo+ICAtRU5PUEtHIGlmIEh1QyBmaXJtd2FyZSBpcyBub3QgbG9hZGVkLAo+ICAtRU5P
REVWIGlmIEh1QyBpcyBub3QgcHJlc2VudCBvbiB0aGlzIHBsYXRmb3JtLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVG9ueSBZZSA8
dG9ueS55ZUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1
Yy5jIHwgMTMgKysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9odWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jCj4gaW5kZXggYWFj
MTc5MTZlMTMwLi45OGRlYjRlZTYwYTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfaHVjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9odWMuYwo+
IEBAIC0xNTAsOSArMTUwLDExIEBAIGludCBpbnRlbF9odWNfYXV0aChzdHJ1Y3QgaW50ZWxfaHVj
ICpodWMpCj4gICAqIGludGVsX2h1Y19jaGVja19zdGF0dXMoKSAtIGNoZWNrIEh1QyBzdGF0dXMK
PiAgICogQGh1YzogaW50ZWxfaHVjIHN0cnVjdHVyZQo+ICAgKgo+IC0gKiBSZXR1cm5zOiAxIGlm
IEh1QyBmaXJtd2FyZSBpcyBsb2FkZWQgYW5kIHZlcmlmaWVkLAo+IC0gKiAwIGlmIEh1QyBmaXJt
d2FyZSBpcyBub3QgbG9hZGVkIGFuZCAtRU5PREVWIGlmIEh1Qwo+IC0gKiBpcyBub3QgcHJlc2Vu
dCBvbiB0aGlzIHBsYXRmb3JtLgo+ICsgKiBSZXR1cm46Cj4gKyAqICogMSBpZiBIdUMgZmlybXdh
cmUgaXMgbG9hZGVkIGFuZCB2ZXJpZmllZCwKPiArICogKiAwIGlmIEh1QyBmaXJtd2FyZSBpcyBu
b3QgZW5hYmxlZCwKPiArICogKiAtRU5PUEtHIGlmIEh1QyBmaXJtd2FyZSBpcyBub3QgbG9hZGVk
LAo+ICsgKiAqIC1FTk9ERVYgaWYgSHVDIGlzIG5vdCBwcmVzZW50IG9uIHRoaXMgcGxhdGZvcm0u
Cj4gICAqLwo+ICBpbnQgaW50ZWxfaHVjX2NoZWNrX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfaHVjICpo
dWMpCj4gIHsKPiBAQCAtMTYxLDUgKzE2Myw4IEBAIGludCBpbnRlbF9odWNfY2hlY2tfc3RhdHVz
KHN0cnVjdCBpbnRlbF9odWMgKmh1YykKPiAgICAgICAgIGlmICghSEFTX0hVQyhpOTE1KSkKPiAg
ICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gIAo+IC0gICAgICAgcmV0dXJuIGh1Yy0+
dmVyaWZpZWQ7Cj4gKyAgICAgICBpZiAoIVVTRVNfSFVDKGk5MTUpKQo+ICsgICAgICAgICAgICAg
ICByZXR1cm4gMDsKPiArCj4gKyAgICAgICByZXR1cm4gaHVjLT52ZXJpZmllZCA/IDEgOiAtRU5P
UEtHOwoKSSBzdGlsbCB0aGluayBFT1BOT1RTVVBQIGlzIGEgYmV0dGVyIGVycm9yIHRob3VnaCBm
b3IgdGhlIHVzZXIKcHJldmVudGluZyB0aGUgaHVjIGJlaW5nIGxvYWRlZCAtLSBhcyBvcHBvc2Vk
IHRvIHRoZSByZXN1bHQgb2YKdmVyaWZpY2F0aW9uIGJlaW5nIHRoZSBub24tZXJyb3IgdmFsdWUu
CgplcnJvciA9PSB1bmFibGUgdG8gc2V0dXAgaHVjCjAvMSA9PSByZXN1bHQgZnJvbSB0YWxraW5n
IHRvIGh1YwoKQmV0dGVyIGFzayBzb21lb25lIGVsc2UgZm9yIGEgdGhpcmQgb3Bpbmlvbi4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

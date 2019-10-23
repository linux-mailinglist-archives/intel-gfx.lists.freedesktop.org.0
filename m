Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C3EE1F91
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 17:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A3D6EB15;
	Wed, 23 Oct 2019 15:41:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F70E6EB13;
 Wed, 23 Oct 2019 15:41:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18939481-1500050 for multiple; Wed, 23 Oct 2019 16:41:25 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191023152917.647-1-janusz.krzysztofik@linux.intel.com>
References: <20191023152917.647-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <157184528285.16469.11730064662055786822@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 23 Oct 2019 16:41:22 +0100
Subject: Re: [Intel-gfx] [RFC PATCH v2 1/3] tests/gem_exec_reloc: Don't
 filter out addresses on full PPGTT
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMjMgMTY6Mjk6MTUpCj4gQ29tbWl0
IGEzNTViMmQ2ZWI0MiAoImlndC9nZW1fZXhlY19yZWxvYzogRmlsdGVyIG91dCB1bmF2YWlsYWJs
ZQo+IGFkZHJlc3NlcyBmb3IgIXBwZ3R0IikgaW50cm9kdWNlZCBmaWx0ZXJpbmcgb2YgYWRkcmVz
c2VzIHBvc3NpYmx5Cj4gb2NjdXBpZWQgYnkgb3RoZXIgdXNlcnMgb2Ygc2hhcmVkIEdUVC4gIFVu
Zm9ydHVuYXRlbHksIHRoYXQgZmlsdGVyaW5nCj4gaXMgdW5jb25kaXRpb25hbCwgbm8gbWF0dGVy
IGlmIHJ1bm5pbmcgb24gb2xkIHNoYXJlZCBHVFQgb3Igbm90LiAgV2hlbgo+IHJ1bm5pbmcgb24g
ZnVsbCAobm9uLWFsaWFzaW5nKSBQUEdUVCwgdGhhdCBtYXkgcmVzdWx0IGluIGVycm9ycyBvdGhl
cgo+IHRoYW4gdGhvc2UgaW50ZW5kZWQgdG8gYmUgc2tpcHBlZCBvdmVyIGJlaW5nIHNpbGVudGx5
IGlnbm9yZWQuCj4gCj4gU2tpcCBvdmVyIHVuYXZhaWxhYmxlIGFkZHJlc3NlcyBvbmx5IHdoZW4g
bm90IHJ1bm5pbmcgb24gZnVsbCBQUEdUVC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICB0ZXN0cy9pOTE1L2dl
bV9leGVjX3JlbG9jLmMgfCAyNiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVs
b2MuYwo+IGluZGV4IGZkZDk2NjFkLi5mN2ZjMGVhNyAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1
L2dlbV9leGVjX3JlbG9jLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMKPiBA
QCAtNTM5LDEyICs1MzksMTMgQEAgc3RhdGljIHZvaWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNp
Z25lZCBmbGFncykKPiAgICAgICAgICAgICAgICAgb2JqW25dLm9mZnNldCA9ICgxdWxsIDw8IChp
ICsgMTIpKSAtIDQwOTY7Cj4gICAgICAgICAgICAgICAgIG9ialtuXS5vZmZzZXQgPSBnZW44X2Nh
bm9uaWNhbF9hZGRyZXNzKG9ialtuXS5vZmZzZXQpOwo+ICAgICAgICAgICAgICAgICBvYmpbbl0u
ZmxhZ3MgPSBFWEVDX09CSkVDVF9QSU5ORUQgfCBFWEVDX09CSkVDVF9TVVBQT1JUU180OEJfQURE
UkVTUzsKPiAtICAgICAgICAgICAgICAgZ2VtX3dyaXRlKGZkLCBvYmpbbl0uaGFuZGxlLCAwLCAm
YmJlLCBzaXplb2YoYmJlKSk7Cj4gLSAgICAgICAgICAgICAgIGV4ZWNidWYuYnVmZmVyc19wdHIg
PSB0b191c2VyX3BvaW50ZXIoJm9ialtuXSk7Cj4gLSAgICAgICAgICAgICAgIGV4ZWNidWYuYnVm
ZmVyX2NvdW50ID0gMTsKPiAtICAgICAgICAgICAgICAgaWYgKF9fZ2VtX2V4ZWNidWYoZmQsICZl
eGVjYnVmKSkKPiAtICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiAtCj4gKyAgICAg
ICAgICAgICAgIGlmICghZ2VtX3VzZXNfZnVsbF9wcGd0dChmZCkpIHsKCk9oIGJveSwgSSBjYW4g
dGhpbmsgb2YgYW4gW3VubWVudGlvbmFibGVdIGluc3RhbmNlIHdoZXJlIHRoaXMgaXNuJ3QgdHJ1
ZQplaXRoZXIuCgpJdCBzaG91bGQgYmUgdHJ1ZSBpbmRlZWQgdW5sZXNzIHRoZSBrZXJuZWwgaXMg
aW50ZXJmZXJpbmcgd2l0aCB0aGUKdXNlcidzIEdUVC4uLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

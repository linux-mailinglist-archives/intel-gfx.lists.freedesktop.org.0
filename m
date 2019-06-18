Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A64849E2D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 12:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C406E131;
	Tue, 18 Jun 2019 10:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154836E131
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 10:22:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16938289-1500050 for multiple; Tue, 18 Jun 2019 11:22:47 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190617180935.505-1-daniele.ceraolospurio@intel.com>
 <20190617180935.505-5-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190617180935.505-5-daniele.ceraolospurio@intel.com>
Message-ID: <156085336733.31375.11165168329236692610@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 11:22:47 +0100
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: skip forcewake actions on
 forcewake-less uncore
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTE3IDE5OjA5OjMzKQo+IFdl
IGFsd2F5cyBjYWxsIHNvbWUgb2YgdGhlIHNldHVwL2NsZWFudXAgZnVuY3Rpb25zIGZvciBmb3Jj
ZXdha2UsIGV2ZW4KPiBpZiB0aGUgZmVhdHVyZSBpcyBub3QgYWN0dWFsbHkgYXZhaWxhYmxlLiBT
a2lwcGluZyB0aGVzZSBvcGVyYXRpb25zIGlmCj4gZm9yY2V3YWtlIGlzIG5vdCBhdmFpbGFibGUg
c2F2ZXMgdXMgc29tZSBvcGVyYXRpb25zIG9uIG9sZGVyIGdlbnMgYW5kCj4gcHJlcGFyZXMgdXMg
Zm9yIGhhdmluZyBhIGZvcmNld2FrZS1sZXNzIGRpc3BsYXkgdW5jb3JlLgo+IFRoZSBzdXNwZW5k
L3Jlc3VtZSBmdW5jdGlvbnMgaGF2ZSBhbHNvIGJlZW4gcmVuYW1lZCB0byBjbGVhcmx5IGluZGlj
YXRlCj4gdGhhdCB0aGV5IG9ubHkgb3BlcmF0ZSBvbiBmb3JjZXdha2Ugc3RhdHVzLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAg
IHwgIDE1ICstLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyB8IDE0NyAr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3VuY29yZS5oIHwgICA4ICstCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTAxIGluc2VydGlvbnMoKyks
IDY5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4IGQxMTMy
OTZjYmUzNC4uOTViMzZmZTE3Zjk5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gQEAg
LTk5Niw3ICs5OTYsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2luaXRfbW1pbyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAo+ICAgICAgICAgaW50ZWxfZGV2aWNlX2lu
Zm9faW5pdF9tbWlvKGRldl9wcml2KTsKPiAgCj4gLSAgICAgICBpbnRlbF91bmNvcmVfcHJ1bmVf
bW1pb19kb21haW5zKCZkZXZfcHJpdi0+dW5jb3JlKTsKPiArICAgICAgIGludGVsX3VuY29yZV9w
cnVuZV9mb3JjZXdha2VfZG9tYWlucygmZGV2X3ByaXYtPnVuY29yZSk7CgpUaGUgX3BydW5lXyB3
YXMgdGhlIGV4Y2VwdGlvbmFsIGNhc2UuLi4KCj4gICAgICAgICBpbnRlbF91Y19pbml0X21taW8o
ZGV2X3ByaXYpOwo+ICAKPiBAQCAtMjE1Miw3ICsyMTUyLDcgQEAgc3RhdGljIGludCBpOTE1X2Ry
bV9zdXNwZW5kX2xhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgYm9vbCBoaWJlcm5hdGlvbikK
PiAgCj4gICAgICAgICBpOTE1X2dlbV9zdXNwZW5kX2xhdGUoZGV2X3ByaXYpOwo+ICAKPiAtICAg
ICAgIGludGVsX3VuY29yZV9zdXNwZW5kKCZkZXZfcHJpdi0+dW5jb3JlKTsKPiArICAgICAgIGlu
dGVsX3VuY29yZV9mb3JjZXdha2Vfc3VzcGVuZCgmZGV2X3ByaXYtPnVuY29yZSk7CgpCdXQgYXJl
IHlvdSBzdXJlIHlvdSB3YW50IHRvIGRlbGVnYXRlIGFsbCB0aGUgZncgY29udHJvbCB0byBpOTE1
X2Rydi5jLAphbmQgbm90IGtlZXAgdGhpcyBhcyBhIGNhbGwgaW50byBpbnRlbF91bmNvcmVfc3Vz
cGVuZCgpID8gSXQgaXMgbWVhbnQgdG8KYmUgdGVsbGluZyB0aGUgdW5jb3JlIGZ1bmN0aW9uYWxp
dHkgdGhhdCBpdCBpcyB0aW1lIHRvIHN1c3BlbmQsIGFuZCBpdApoYXMgdG8gd29yayBvdXQgd2hh
dCB0byBzYXZlLgoKSSBhbSBub3Qgc29sZCBvbiB0aGlzIHlldC4gKE9uZSBkYXkgdGhpcyB3aWxs
IGp1c3QgYmUgYSBidW5jaCBvZiBhc3luYwp0YXNrcyBwbHVnZ2VkIGludG8gc2lnbmFscyB3aXRo
IG9yZGVyaW5nIGRldGVybWluZWQgYnkgdGhlaXIKc2VsZi1kZWNsYXJlZCBkZXBlbmRlbmN5IHRy
ZWUuIE9uZSBkYXkuKQoKU28gc2VsbCBtZSBvbiB3aHkgd2Ugd2FudCBhbiB1bmNvcmVfZm9yY2V3
YWtlIG9iamVjdCwgYXMgY3VycmVudGx5IHlvdQphcmUgcHJvcG9zaW5nIGEgaW50ZWxfdW5jb3Jl
X3N1c3BlbmRfZm9yY2V3YWtlKCkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=

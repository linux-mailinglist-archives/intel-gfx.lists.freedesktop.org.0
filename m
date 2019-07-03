Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6D75DFD8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 10:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 888236E0F9;
	Wed,  3 Jul 2019 08:33:13 +0000 (UTC)
X-Original-To: Intel-GFX@Lists.FreeDesktop.Org
Delivered-To: Intel-GFX@Lists.FreeDesktop.Org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA1D6E0F4
 for <Intel-GFX@Lists.FreeDesktop.Org>; Wed,  3 Jul 2019 08:33:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17109821-1500050 for multiple; Wed, 03 Jul 2019 09:32:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-GFX@Lists.FreeDesktop.Org, John.C.Harrison@Intel.com
References: <20190703020604.20369-1-John.C.Harrison@Intel.com>
 <20190703020604.20369-3-John.C.Harrison@Intel.com>
In-Reply-To: <20190703020604.20369-3-John.C.Harrison@Intel.com>
Message-ID: <156214277736.2466.571113921317258469@skylake-alporthouse-com>
Date: Wed, 03 Jul 2019 09:32:57 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Implement read-only support
 in whitelist selftest
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

UXVvdGluZyBKb2huLkMuSGFycmlzb25ASW50ZWwuY29tICgyMDE5LTA3LTAzIDAzOjA2OjA0KQo+
IEZyb206IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4gCj4gTmV3
ZXIgaGFyZHdhcmUgc3VwcG9ydHMgZXh0cmEgZmVhdHVyZSBpbiB0aGUgd2hpdGVsaXN0IHJlZ2lz
dGVycy4gVGhpcwo+IHBhdGNoIHVwZGF0ZXMgdGhlIHNlbGZ0ZXN0IHRvIHRlc3QgdGhhdCBlbnRy
aWVzIG1hcmtlZCBhcyByZWFkIG9ubHkKPiBhcmUgYWN0dWFsbHkgcmVhZCBvbmx5Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4g
Q0M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gIC4u
Li9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyAgICB8IDQzICsrKysrKysr
KysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDEyIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fy
b3VuZHMuYwo+IGluZGV4IGY4MTUxZDU5NDZjOC4uNWNkMmIxNzEwNWJhIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCj4gQEAgLTQ4Miwx
MiArNDgyLDEyIEBAIHN0YXRpYyBpbnQgY2hlY2tfZGlydHlfd2hpdGVsaXN0KHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICpjdHgsCj4gICAgICAgICAgICAgICAgIHUzMiBzcm0sIGxybSwgcnN2ZDsK
PiAgICAgICAgICAgICAgICAgdTMyIGV4cGVjdDsKPiAgICAgICAgICAgICAgICAgaW50IGlkeDsK
PiArICAgICAgICAgICAgICAgYm9vbCByb19yZWc7Cj4gIAo+ICAgICAgICAgICAgICAgICBpZiAo
d29fcmVnaXN0ZXIoZW5naW5lLCByZWcpKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRp
bnVlOwo+ICAKPiAtICAgICAgICAgICAgICAgaWYgKHJvX3JlZ2lzdGVyKHJlZykpCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gKyAgICAgICAgICAgICAgIHJvX3JlZyA9IHJv
X3JlZ2lzdGVyKHJlZyk7Cj4gIAo+ICAgICAgICAgICAgICAgICBzcm0gPSBNSV9TVE9SRV9SRUdJ
U1RFUl9NRU07Cj4gICAgICAgICAgICAgICAgIGxybSA9IE1JX0xPQURfUkVHSVNURVJfTUVNOwo+
IEBAIC01ODgsMjQgKzU4OCwzNyBAQCBzdGF0aWMgaW50IGNoZWNrX2RpcnR5X3doaXRlbGlzdChz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+ICAgICAgICAgICAgICAgICB9Cj4gIAo+ICAg
ICAgICAgICAgICAgICBHRU1fQlVHX09OKHZhbHVlc1tBUlJBWV9TSVpFKHZhbHVlcykgLSAxXSAh
PSAweGZmZmZmZmZmKTsKPiAtICAgICAgICAgICAgICAgcnN2ZCA9IHJlc3VsdHNbQVJSQVlfU0la
RSh2YWx1ZXMpXTsgLyogZGV0ZWN0IHdyaXRlIG1hc2tpbmcgKi8KPiAtICAgICAgICAgICAgICAg
aWYgKCFyc3ZkKSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcHJfZXJyKCIlczogVW5hYmxl
IHRvIHdyaXRlIHRvIHdoaXRlbGlzdGVkIHJlZ2lzdGVyICV4XG4iLAo+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBlbmdpbmUtPm5hbWUsIHJlZyk7Cj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgZXJyID0gLUVJTlZBTDsKPiAtICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dF91
bnBpbjsKPiArICAgICAgICAgICAgICAgaWYgKHJvX3JlZykgewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHJzdmQgPSAweEZGRkZGRkZGOwoKcnN2ZCA9IDA7CgpyZWdfd3JpdGUoKSB3aWxsIHRo
ZW4gZHRydC4KCkRvZXMgdGhpcyBub3QgcmVwbGFjZSB0aGUgc2tpcCBwbGFjZWQgaW4gY2hlY2tf
d2hpdGVsaXN0ZWRfcmVnaXN0ZXJzKCk/CgpXZSBzdGlsbCBuZWVkIGEgd2F5IHRvIHZlcmlmeSB0
aGF0IHRoZSByZWdpc3RlciBleGlzdHMsIGFzIGV2ZW4gd3JpdGluZwpmcm9tIGEgc2VjdXJlIGJh
dGNoIGZhaWxzIChub3QgdHJpZWQgcmluZyB0aG91Z2gpLiBEbyB3ZSBsb2FkIGEgc3Bpbm5lciwK
dHdlYWsgdmlhIG1taW8/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

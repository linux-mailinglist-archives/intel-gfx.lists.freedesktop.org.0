Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD763D72B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 21:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5798828C;
	Tue, 11 Jun 2019 19:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE818828C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 19:50:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16868928-1500050 for multiple; Tue, 11 Jun 2019 20:50:10 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
 <20190611172731.19174-8-mika.kuoppala@linux.intel.com>
In-Reply-To: <20190611172731.19174-8-mika.kuoppala@linux.intel.com>
Message-ID: <156028260924.2193.9166771181989648192@skylake-alporthouse-com>
Date: Tue, 11 Jun 2019 20:50:09 +0100
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/gtt: Make swapping the pd
 entry generic
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTExIDE4OjI3OjMwKQo+IFN3YXBwaW5nIGEg
cGQgZW50cnkgaXMgc2FtZSBhY3Jvc3MgdGhlIHBhZ2UgZGlyZWN0b3JpZXMsIGlmCj4gd2Ugc3Vj
Y2VlZCB3ZSBuZWVkIHRvIGluY3JlbWVudCB0aGUgY291bnQgYW5kIHdyaXRlIHRoZSBwaHlzIHBh
Z2UKPiBlbnRyeS4gTWFrZSBhIGNvbW1vbiBmdW5jdGlvbiBmb3IgaXQuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgNDEgKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDE0
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXgg
ZjFkNzg3NDgzNGUyLi45YjBkMGEwNzdlMzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYwo+IEBAIC03NTIsNiArNzUyLDI3IEBAIHN0YXRpYyB2b2lkIF9fc2V0X3BkX2VudHJ5
KHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICogY29uc3QgcGQsCj4gICAgICAgICAgICAgICAg
ICAgICAgICBnZW44X3BkZV9lbmNvZGUocHhfZG1hKHRvKSwgSTkxNV9DQUNIRV9MTEMpKTsgICAg
XAo+ICB9KQo+ICAKPiArc3RhdGljIHZvaWQgKl9fc3dhcF9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9w
YWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y29uc3QgdW5zaWduZWQgc2hvcnQgcGRlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dm9pZCAqIGNvbnN0IG9sZF92YWwsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICB2b2lk
ICogY29uc3QgbmV3X3ZhbCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHU2
NCBlbmNvZGVkX2VudHJ5KQoKTWFyayB0aGlzIGFzIGlubGluZSBhbmQgcGFzcyBpbiB0aGUgZW5j
b2RlIGZ1bmN0aW9uLCB0aGUgY29tcGlsZXIgc2hvdWxkCmRvIHRoZSByZXN0LgoKPiArewo+ICsg
ICAgICAgdm9pZCAqIGNvbnN0IG9sZCA9IGNtcHhjaGcoJnBkLT5lbnRyeVtwZGVdLCBvbGRfdmFs
LCBuZXdfdmFsKTsKPiArCj4gKyAgICAgICBpZiAobGlrZWx5KG9sZCA9PSBvbGRfdmFsKSkgewo+
ICsgICAgICAgICAgICAgICBhdG9taWNfaW5jKCZwZC0+dXNlZCk7CgpIbW0sIGxvb2tpbmcgYXQg
dGhpcyBhZ2FpbiwgdGhpcyB3b3VsZCBiZSBzYWZlciBpZiBhdG9taWNfaW5jIHdhcyBiZWZvcmUK
dGhlIGNtcHhjaGcsIHdpdGggYW4gYXRvbWljX2RlYyBvbiB0aGUgZmFpbCBwYXRoLgoKPiArICAg
ICAgICAgICAgICAgaWYgKGxpa2VseShwZF9oYXNfcGh5c19wYWdlKHBkKSkpCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgX19zZXRfcGRfZW50cnkocGQsIHBkZSwgZW5jb2RlZF9lbnRyeSk7Cj4g
KyAgICAgICB9Cj4gKwo+ICsgICAgICAgcmV0dXJuIG9sZDsKPiArfQotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EC3B4FA8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 15:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B466EC8D;
	Tue, 17 Sep 2019 13:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7FC06EC8D
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 13:50:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 06:50:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="361858495"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 17 Sep 2019 06:50:10 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A120A5C1E3A; Tue, 17 Sep 2019 16:49:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190917080029.27632-1-chris@chris-wilson.co.uk>
References: <20190917080029.27632-1-chris@chris-wilson.co.uk>
Date: Tue, 17 Sep 2019 16:49:51 +0300
Message-ID: <87ftkvqbgg.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Only apply a rmw mmio update if
 the value changes
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSWYgd2Ug
dHJ5IHRvIGNsZWFyLCBvciBldmVuIHNldCwgYSBiaXQgaW4gdGhlIHJlZ2lzdGVyIHRoYXQgZG9l
c24ndAo+IGNoYW5nZSB0aGUgcmVnaXN0ZXIgc3RhdGU7IHNraXAgdGhlIHdyaXRlLiBUaGVyZSdz
IGEgc2xpZ2h0IGRhbmdlciBpbgo+IHRoYXQgdGhlIHJlZ2lzdGVyIGFjdHMgYXMgYSBsYXRjaC1v
bi13cml0ZSwgYnV0IEkgZG8gbm90IHRoaW5rIHdlIHVzZSBhCj4gcm13IGN5Y2xlIHdpdGggYW55
IHN1Y2ggbGF0Y2ggcmVnaXN0ZXJzLgo+Cj4gU3VnZ2VzdGVkLWJ5OiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKTXkgc3RhbmNlIHdhcyB0aGF0
IHdpdGggY2xlYXIgfjAsIHVzZXIgc2hvdWxkIGJlIG5vdGlmaWVkLgpCdXQgSSBndWVzcyBvbiB0
aGlzIGxldmVsIG9mIHRvb2xpbmcsIHlvdSBzaG91bGQgYmUgZnJlZQp0byBkbyB0aGUgdXNlbGVz
cyByZWFkLgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmgg
fCAyMCArKysrKysrKysrLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaAo+
IGluZGV4IDQxNGZjMmNiMDQ1OS4uZGNmYTI0Mzg5MmM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfdW5jb3JlLmgKPiBAQCAtMzc4LDIzICszNzgsMjMgQEAgaW50ZWxfdW5jb3JlX3JlYWQ2
NF8yeDMyKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKPiAgc3RhdGljIGlubGluZSB2b2lk
IGludGVsX3VuY29yZV9ybXcoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAo+ICAJCQkJICAg
IGk5MTVfcmVnX3QgcmVnLCB1MzIgY2xlYXIsIHUzMiBzZXQpCj4gIHsKPiAtCXUzMiB2YWw7Cj4g
Kwl1MzIgb2xkLCB2YWw7Cj4gIAo+IC0JdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBy
ZWcpOwo+IC0JdmFsICY9IH5jbGVhcjsKPiAtCXZhbCB8PSBzZXQ7Cj4gLQlpbnRlbF91bmNvcmVf
d3JpdGUodW5jb3JlLCByZWcsIHZhbCk7Cj4gKwlvbGQgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsIHJlZyk7Cj4gKwl2YWwgPSAob2xkICYgfmNsZWFyKSB8IHNldDsKPiArCWlmICh2YWwgIT0g
b2xkKQo+ICsJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIHJlZywgdmFsKTsKPiAgfQo+ICAK
PiAgc3RhdGljIGlubGluZSB2b2lkIGludGVsX3VuY29yZV9ybXdfZncoc3RydWN0IGludGVsX3Vu
Y29yZSAqdW5jb3JlLAo+ICAJCQkJICAgICAgIGk5MTVfcmVnX3QgcmVnLCB1MzIgY2xlYXIsIHUz
MiBzZXQpCj4gIHsKPiAtCXUzMiB2YWw7Cj4gKwl1MzIgb2xkLCB2YWw7Cj4gIAo+IC0JdmFsID0g
aW50ZWxfdW5jb3JlX3JlYWRfZncodW5jb3JlLCByZWcpOwo+IC0JdmFsICY9IH5jbGVhcjsKPiAt
CXZhbCB8PSBzZXQ7Cj4gLQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCByZWcsIHZhbCk7
Cj4gKwlvbGQgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIHJlZyk7Cj4gKwl2YWwgPSAo
b2xkICYgfmNsZWFyKSB8IHNldDsKPiArCWlmICh2YWwgIT0gb2xkKQo+ICsJCWludGVsX3VuY29y
ZV93cml0ZV9mdyh1bmNvcmUsIHJlZywgdmFsKTsKPiAgfQo+ICAKPiAgc3RhdGljIGlubGluZSBp
bnQgaW50ZWxfdW5jb3JlX3dyaXRlX2FuZF92ZXJpZnkoc3RydWN0IGludGVsX3VuY29yZSAqdW5j
b3JlLAo+IC0tIAo+IDIuMjMuMAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==

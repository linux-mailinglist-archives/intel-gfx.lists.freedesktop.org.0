Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0B73741F
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 14:30:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C61978972B;
	Thu,  6 Jun 2019 12:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A9098972B
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 12:29:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16813328-1500050 for multiple; Thu, 06 Jun 2019 13:29:50 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190606122203.13416-3-jani.nikula@intel.com>
References: <20190606122203.13416-1-jani.nikula@intel.com>
 <20190606122203.13416-3-jani.nikula@intel.com>
Message-ID: <155982418768.19464.12709931321184255863@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 06 Jun 2019 13:29:47 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915: move more atomic plane
 declarations to intel_atomic_plane.h
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0wNiAxMzoyMjowMikKPiBTb21lIGZ1bmN0aW9u
IGRlY2xhcmF0aW9ucyBpbiBpbnRlbF9kcnYuaCB3ZXJlIG1pc3NlZCB3aGVuCj4gaW50ZWxfYXRv
bWljX3BsYW5lLmggd2FzIGNyZWF0ZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfYXRvbWljX3BsYW5lLmggfCAxNiArKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgIHwgMTIgLS0tLS0tLS0tLS0tCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2F0b21pY19wbGFuZS5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfYXRvbWljX3BsYW5lLmgKPiBpbmRleCAwYTk2NTEzNzZkMGUuLjI0
MzIwMDQxNDk4ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hdG9t
aWNfcGxhbmUuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2F0b21pY19wbGFu
ZS5oCj4gQEAgLTYsNyArNiwxMSBAQAo+ICAjaWZuZGVmIF9fSU5URUxfQVRPTUlDX1BMQU5FX0hf
Xwo+ICAjZGVmaW5lIF9fSU5URUxfQVRPTUlDX1BMQU5FX0hfXwo+ICAKPiArI2luY2x1ZGUgPGxp
bnV4L3R5cGVzLmg+Cj4gKwo+ICtzdHJ1Y3QgZHJtX2NydGNfc3RhdGU7Cj4gIHN0cnVjdCBkcm1f
cGxhbmU7Cj4gK3N0cnVjdCBkcm1fcHJvcGVydHk7Cj4gIHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGU7Cj4gIHN0cnVjdCBpbnRlbF9jcnRjOwo+ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsKPiBA
QCAtMzgsNSArNDIsMTcgQEAgaW50IGludGVsX3BsYW5lX2F0b21pY19jaGVja193aXRoX3N0YXRl
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y18KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5lX3N0YXRlLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKmludGVs
X3N0YXRlKTsKPiAraW50IGludGVsX3BsYW5lX2F0b21pY19nZXRfcHJvcGVydHkoc3RydWN0IGRy
bV9wbGFuZSAqcGxhbmUsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29u
c3Qgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJvcGVydHksCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdTY0ICp2YWwpOwo+ICtpbnQgaW50ZWxfcGxhbmVf
YXRvbWljX3NldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX3Byb3BlcnR5
ICpwcm9wZXJ0eSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1NjQgdmFs
KTsKPiAraW50IGludGVsX3BsYW5lX2F0b21pY19jYWxjX2NoYW5nZXMoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgKm9sZF9wbGFuZV9zdGF0ZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7CgppbnRlbF9wbGFuZV9hdG9t
aWMgdnMgaW50ZWxfYXRvbWljX3BsYW5lLmggdGhhdCBtdXN0IGJlIGhpdHRpbmcgdGhlIG9jZApz
d2VldHNwb3QuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=

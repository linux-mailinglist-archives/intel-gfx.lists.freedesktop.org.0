Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A99348B6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 15:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98AD58989E;
	Tue,  4 Jun 2019 13:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 981668989E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 13:30:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16788992-1500050 for multiple; Tue, 04 Jun 2019 14:30:02 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
 <20190604131140.12647-3-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190604131140.12647-3-lionel.g.landwerlin@intel.com>
Message-ID: <155965499788.21578.11320604396048642590@skylake-alporthouse-com>
Date: Tue, 04 Jun 2019 14:29:57 +0100
Subject: Re: [Intel-gfx] [PATCH v3 2/7] drm/i915/perf: allow for CS OA
 configs to be created lazily
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0wNCAxNDoxMTozNSkKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IDJlMzNhOWI0ZWFlNy4uZTAwNzFlNDRkZTNkIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMzY2LDkgKzM2NiwxNiBAQCBzdHJ1Y3Qg
cGVyZl9vcGVuX3Byb3BlcnRpZXMgewo+ICAgICAgICAgaW50IG9hX3BlcmlvZF9leHBvbmVudDsK
PiAgfTsKPiAgCj4gLXN0YXRpYyB2b2lkIGZyZWVfb2FfY29uZmlnKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkx
NV9vYV9jb25maWcgKm9hX2NvbmZpZykKPiArc3RhdGljIHZvaWQgcHV0X29hX2NvbmZpZyhzdHJ1
Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZykKPiAgewo+ICsgICAgICAgaWYgKCFhdG9taWNf
ZGVjX2FuZF90ZXN0KCZvYV9jb25maWctPnJlZl9jb3VudCkpCgpNaWdodCBhcyB3ZWxsIHVzZSBz
dHJ1Y3Qga3JlZj8gQXQgdGhlIHZlcnkgbGVhc3QsIHJlZmNvdW50X3QuCgo+ICsgICAgICAgICAg
ICAgICByZXR1cm47Cj4gKwoKPiArICAgICAgIGlmIChvYV9jb25maWctPm9iaikgewpsb2NrZGVw
X2Fzc2VydF9oZWxkKCZkZXZfcHJpdi0+cGVyZi5tZXRyaWNzX2xvY2spOwoKSXQncyBub3QgYXBw
YXJlbnQgdGhhdCB0aGUgbG9jayBpcyBoZWxkIGZvciB0aGUgbGlzdF9kZWwuCgo+ICsgICAgICAg
ICAgICAgICBsaXN0X2RlbCgmb2FfY29uZmlnLT52bWFfbGluayk7Cj4gKyAgICAgICAgICAgICAg
IGk5MTVfZ2VtX29iamVjdF9wdXQob2FfY29uZmlnLT5vYmopOwo+ICsgICAgICAgfQo+ICsKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

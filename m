Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 092EA34940
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 15:45:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED23C898C2;
	Tue,  4 Jun 2019 13:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CAD6898C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 13:45:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16789194-1500050 for multiple; Tue, 04 Jun 2019 14:45:27 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190604131140.12647-1-lionel.g.landwerlin@intel.com>
 <20190604131140.12647-7-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190604131140.12647-7-lionel.g.landwerlin@intel.com>
Message-ID: <155965592255.21578.5153774685582026308@skylake-alporthouse-com>
Date: Tue, 04 Jun 2019 14:45:22 +0100
Subject: Re: [Intel-gfx] [PATCH v3 6/7] drm/i915/perf: allow holding
 preemption on filtered ctx
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0wNCAxNDoxMTozOSkKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IGVkMTlmNGU1M2QzMS4uNDA0NmYwNDU0MDhi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtNjgzLDYgKzY4Mywx
MiBAQCBzdGF0aWMgdm9pZCBwb3J0X2Fzc2lnbihzdHJ1Y3QgZXhlY2xpc3RfcG9ydCAqcG9ydCwg
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4gICAgICAgICBpZiAocG9ydF9pc3NldChwb3J0KSkK
PiAgICAgICAgICAgICAgICAgaTkxNV9yZXF1ZXN0X3B1dChwb3J0X3JlcXVlc3QocG9ydCkpOwo+
ICAKPiArICAgICAgIGlmIChycS0+aGFzX3BlcmYpIHsKPiArICAgICAgICAgICAgICAgcnEtPnNj
aGVkLmF0dHIucHJpb3JpdHkgPQo+ICsgICAgICAgICAgICAgICAgICAgICAgIChJOTE1X1BSSU9S
SVRZX01BU0sgJiBycS0+c2NoZWQuYXR0ci5wcmlvcml0eSkgfAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIEk5MTVfVVNFUl9QUklPUklUWShJOTE1X1BSSU9SSVRZX1BFUkYpOwo+ICsgICAgICAg
fQoKVGhpcyBpcyBicm9rZW4uIFlvdSBjYW4gbm90IGlnbm9yZSBQSSBoZXJlLiBJZiB5b3UgYnVt
cCB0aGUgcHJpb3JpdHkgaGVyZSB5b3UKbXVzdCBpbmNyZWFzZSB0aGUgcHJpb3JpdHkgb2YgYWxs
IG9mIGl0cyBjcm9zcy1lbmdpbmUgZGVwZW5kZW5jaWVzIGFzCnRoZXkgbWF5IHN0aWxsIGJlIGlu
ZmxpZ2h0IGFuZCBsYXRlciByZW9yZGVyZWQgY2F1c2luZyBkZWFkbG9ja3MuIChOb3RlCnlvdSBj
YW5ub3QgdGFrZSB0aGUgbG9ja3MgcmVxdWlyZWQgZm9yIGJ1bXBpbmcgb3RoZXIgZW5naW5lcyBo
ZXJlLikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==

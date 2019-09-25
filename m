Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4C5BDC6D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 12:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D1B6E823;
	Wed, 25 Sep 2019 10:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E67B6E823
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 10:54:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18610196-1500050 for multiple; Wed, 25 Sep 2019 11:54:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-12-chris@chris-wilson.co.uk>
 <82f02941-20c4-d4fa-8b54-0885817de398@linux.intel.com>
In-Reply-To: <82f02941-20c4-d4fa-8b54-0885817de398@linux.intel.com>
Message-ID: <156940885279.4979.692784421975959359@skylake-alporthouse-com>
Date: Wed, 25 Sep 2019 11:54:12 +0100
Subject: Re: [Intel-gfx] [PATCH 11/27] drm/i915: Merge wait_for_timelines
 with retire_request
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yNSAxMTo0NzozNSkKPiAKPiBPbiAyNS8w
OS8yMDE5IDExOjAxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiAtYm9vbCBpOTE1X3JldGlyZV9y
ZXF1ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiA+ICtsb25nIGk5MTVfcmV0
aXJlX3JlcXVlc3RzX3RpbWVvdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGxvbmcg
dGltZW91dCkKPiA+ICAgewo+ID4gICAgICAgc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGlt
ZWxpbmVzID0gJmk5MTUtPmd0LnRpbWVsaW5lczsKPiA+ICAgICAgIHN0cnVjdCBpbnRlbF90aW1l
bGluZSAqdGwsICp0bjsKPiA+ICsgICAgIHVuc2lnbmVkIGxvbmcgYWN0aXZlX2NvdW50ID0gMDsK
PiA+ICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiArICAgICBib29sIGludGVycnVwdGli
bGU7Cj4gPiAgICAgICBMSVNUX0hFQUQoZnJlZSk7Cj4gPiAgIAo+ID4gKyAgICAgaW50ZXJydXB0
aWJsZSA9IHRydWU7Cj4gPiArICAgICBpZiAodGltZW91dCA8IDApCj4gPiArICAgICAgICAgICAg
IHRpbWVvdXQgPSAtdGltZW91dCwgaW50ZXJydXB0aWJsZSA9IGZhbHNlOwo+IAo+IFNsaWdodGx5
IHVuZWFzeSBhYm91dCB0aGUgbmVnYXRpdmUgdHJpY2sgYnV0IGFsdGVybmF0aXZlcyB3aGljaCBj
YW1lIHRvIAo+IG1pbmQgb2Ygb3ItaW5nIHRoZSBuZWdhdGl2ZSBiaXQgb3Igd3JhcHBlciBmb3Ig
cGFzc2luZyBpbiB0aGUgCj4gKG5vbi0paW50ZXJydXB0aWJsZSh0aW1lb3V0KSBkbyBub3Qgc291
bmQgc28gaG90IGVpdGhlci4KClF1ZWFzeSBmZWVsaW5nIGNvbmN1cnJlZC4gT3VyIG1pc3Npb24g
aXMgbm90IHRvIGhhdmUgYW55Cm5vbi1pbnRlcnJ1cHRpYmxlIHNsZWVwcywgYnV0IGlmIHdlIGRv
IHdlJ2xsIGhhdmUgdG8gYWRkIHVuc2lnbmVkIGZsYWdzCmJhY2suIDp8Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

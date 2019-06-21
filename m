Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B59104EB7C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 17:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6846E8C5;
	Fri, 21 Jun 2019 15:03:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFCE76E8C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 15:03:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16980773-1500050 for multiple; Fri, 21 Jun 2019 16:03:03 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190621131640.28864-1-chris@chris-wilson.co.uk>
 <e5df9389-578a-5976-7744-d717831ffa46@linux.intel.com>
In-Reply-To: <e5df9389-578a-5976-7744-d717831ffa46@linux.intel.com>
Message-ID: <156112938134.2401.1568542299824850921@skylake-alporthouse-com>
Date: Fri, 21 Jun 2019 16:03:01 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Rename i915_gt_timelines
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0yMSAxNjowMDoxNSkKPiAKPiBPbiAyMS8w
Ni8yMDE5IDE0OjE2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKPiA+IGluZGV4IDhkZmYzYjhmMTJjMy4uZTU5YmU1YzA1ZTFiIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYwo+ID4gQEAgLTkwOCw3ICs5MDgsNyBAQCBzdGF0aWMgbG9uZwo+ID4g
ICB3YWl0X2Zvcl90aW1lbGluZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gPiAg
ICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBmbGFncywgbG9uZyB0aW1lb3V0KQo+ID4gICB7
Cj4gPiAtICAgICBzdHJ1Y3QgaTkxNV9ndF90aW1lbGluZXMgKmd0ID0gJmk5MTUtPmd0LnRpbWVs
aW5lczsKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKmd0ID0gJmk5MTUtPmd0
LnRpbWVsaW5lczsKPiA+ICAgICAgIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7Cj4gPiAgIAo+
ID4gICAgICAgbXV0ZXhfbG9jaygmZ3QtPm11dGV4KTsKPiA+IAo+IAo+IFJldmlld2VkLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE5leHQgdXAgcmVu
YW1pbmcgdGhlIGNvbmZ1c2luZyBndCBsb2NhbHMuCgpEaWQgSSBtYW5hZ2UgdG8gc25lYWsgc29t
ZSBieT8gKnBsYXlzIGlubm9jZW50KgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4

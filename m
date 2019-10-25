Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1072FE4F3B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 16:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845846EA6B;
	Fri, 25 Oct 2019 14:35:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1441D6EA7B
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 14:35:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18964020-1500050 for multiple; Fri, 25 Oct 2019 15:35:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191025142131.17378-1-tvrtko.ursulin@linux.intel.com>
 <20191025142131.17378-3-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191025142131.17378-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <157201412705.11797.12632563808776596089@skylake-alporthouse-com>
Date: Fri, 25 Oct 2019 15:35:27 +0100
Subject: Re: [Intel-gfx] [RFC 2/5] drm/i915: Expose list of clients in sysfs
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0yNSAxNToyMToyOCkKPiAgaW50IGk5MTVf
Z2VtX29wZW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBkcm1fZmlsZSAq
ZmlsZSkKPiAgewo+ICsgICAgICAgaW50IHJldCA9IC1FTk9NRU07Cj4gICAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXY7Cj4gLSAgICAgICBpbnQgcmV0Owo+ICAK
PiAgICAgICAgIERSTV9ERUJVRygiXG4iKTsKPiAgCj4gICAgICAgICBmaWxlX3ByaXYgPSBremFs
bG9jKHNpemVvZigqZmlsZV9wcml2KSwgR0ZQX0tFUk5FTCk7Cj4gICAgICAgICBpZiAoIWZpbGVf
cHJpdikKPiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gKyAgICAgICAgICAgICAg
IGdvdG8gZXJyX2FsbG9jOwo+ICsKPiArICAgICAgIGZpbGVfcHJpdi0+Y2xpZW50LmlkID0gYXRv
bWljX2luY19yZXR1cm4oJmk5MTUtPmNsaWVudHMuc2VyaWFsKTsKCldlIHNob3VsZCBtYWtlIHRo
aXMgYSBjeWNsaWMgaWRhIHRvIGF2b2lkIHJldXNlIG9uIHdyYXBhcm91bmQuIDMyYgp3cmFwcyB3
aWxsIGhhcHBlbiwgYW5kIHRoZXkgd2lsbCBzdGlsbCBoYXZlIGNsaWVudCAwIGFsaXZlISA6KQoK
VGhhdCB3aWxsIG1lYW4gd2UgbmVlZCBhIGxvY2suCgooT2YgY291cnNlIHlvdSBjb3VsZCB1c2Ug
LUVFWElTVCBmcm9tIGFkZF9jbGllbnQgYW5kIGtlZXAgaW5jcmVtZW50aW5nCnNlcmlhbCB1bnRp
bCB5b3UgZmluZCBhIGhvbGUgOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==

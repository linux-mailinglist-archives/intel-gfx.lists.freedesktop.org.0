Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA5C648CC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 17:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8396E0FD;
	Wed, 10 Jul 2019 15:01:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971A96E0EE;
 Wed, 10 Jul 2019 15:01:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17201029-1500050 for multiple; Wed, 10 Jul 2019 16:01:06 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190710145239.12844-1-janusz.krzysztofik@linux.intel.com>
References: <20190710145239.12844-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <156277086449.4055.15655120452619911756@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 10 Jul 2019 16:01:04 +0100
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Drop extern qualifiers from
 header function prototypes
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTAgMTU6NTI6MzkpCj4gRm9sbG93
IGRpbSBjaGVja3BhdGNoIHJlY29tbWVuZGF0aW9uIHNvIGl0IGRvZXNuJ3QgY29tcGxhaW4gb24g
dGhhdCBub3cKPiBhbmQgYWdhaW4gb24gaGVhZGVyIGZpbGUgbW9kaWZpY2F0aW9ucy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51
eC5pbnRlbC5jb20+Cgo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTIzODgsMTkgKzIzODgs
MTggQEAgX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNv
bnN0IGNoYXIgKmxldmVsLAo+ICAgICAgICAgX19pOTE1X3ByaW50ayhkZXZfcHJpdiwgS0VSTl9F
UlIsIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiAgCj4gICNpZmRlZiBDT05GSUdfQ09NUEFUCj4gLWV4
dGVybiBsb25nIGk5MTVfY29tcGF0X2lvY3RsKHN0cnVjdCBmaWxlICpmaWxwLCB1bnNpZ25lZCBp
bnQgY21kLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgYXJn
KTsKPiArbG9uZyBpOTE1X2NvbXBhdF9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlscCwgdW5zaWduZWQg
aW50IGNtZCwgdW5zaWduZWQgbG9uZyBhcmcpOwo+ICAjZWxzZQo+ICAjZGVmaW5lIGk5MTVfY29t
cGF0X2lvY3RsIE5VTEwKPiAgI2VuZGlmCj4gIGV4dGVybiBjb25zdCBzdHJ1Y3QgZGV2X3BtX29w
cyBpOTE1X3BtX29wczsKPiArZXh0ZXJuIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIGk5MTVfcG1f
b3BzXzE7CgpUaGF0J3Mgbm92ZWwuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=

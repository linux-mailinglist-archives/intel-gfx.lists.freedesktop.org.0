Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A697D02D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 23:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C176E30B;
	Wed, 31 Jul 2019 21:41:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEECC6E30B
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 21:41:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17769759-1500050 for multiple; Wed, 31 Jul 2019 22:41:04 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190731140733.23373-2-lionel.g.landwerlin@intel.com>
References: <20190731140733.23373-1-lionel.g.landwerlin@intel.com>
 <20190731140733.23373-2-lionel.g.landwerlin@intel.com>
Message-ID: <156460926403.3118.2798098538781794520@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 22:41:04 +0100
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915: introduce a mechanism to
 extend execbuf2
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0zMSAxNTowNzozMikKPiArLyoKPiAr
ICogU2V0dGluZyBJOTE1X0VYRUNfRVhUIGltcGxpZXMgdGhhdCBkcm1faTkxNV9nZW1fZXhlY2J1
ZmZlcjIuY2xpcHJlY3RzX3B0cgo+ICsgKiBpcyB0cmVhdGVkIGFzIGEgcG9pbnRlciB0byBhbiBs
aW5rZWQgbGlzdCBvZiBpOTE1X3VzZXJfZXh0ZW5zaW9uLiBFYWNoCj4gKyAqIGk5MTVfdXNlcl9l
eHRlbnNpb24gbm9kZSBpcyB0aGUgYmFzZSBvZiBhIGxhcmdlciBzdHJ1Y3R1cmUuIFRoZSBsaXN0
IG9mCj4gKyAqIHN1cHBvcnRlZCBzdHJ1Y3R1cmVzIGFyZSBsaXN0ZWQgaW4gdGhlIGRybV9pOTE1
X2dlbV9leGVjYnVmZmVyX2V4dAo+ICsgKiBlbnVtLgo+ICsgKi8KPiArI2RlZmluZSBJOTE1X0VY
RUNfRVhUICAgICAgICAgICgxIDw8IDIxKQoKT24gcmVmbGVjdGlvbiwgSSB0aGluayBJOTE1X0VY
RUNfVVNFX0VYVEVOU0lPTlMgdG8gbWF0Y2gKSTkxNV9DT05URVhUX0NSRUFURV9VU0VfRVhURU5T
SU9OUywgYW5kIGVzdGFibGlzaCBhIHBhdHRlcm4gZm9yIHRoZSBmdXR1cmUuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

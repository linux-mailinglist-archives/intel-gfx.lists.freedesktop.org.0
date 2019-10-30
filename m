Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3CFEA31C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 19:15:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1166789668;
	Wed, 30 Oct 2019 18:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA17F6ECF5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 18:15:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19023640-1500050 for multiple; Wed, 30 Oct 2019 18:15:09 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191030173320.8850-1-matthew.auld@intel.com>
References: <20191030173320.8850-1-matthew.auld@intel.com>
Message-ID: <157245930725.2281.5987886532218245898@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 30 Oct 2019 18:15:07 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/lmem: add the fake lmem region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMzAgMTc6MzM6MjApCj4gSW50ZW5kZWQgZm9y
IHVwc3RyZWFtIHRlc3Rpbmcgc28gdGhhdCB3ZSBjYW4gc3RpbGwgZXhlcmNpc2UgdGhlIExNRU0K
PiBwbHVtYmluZyBhbmQgIWk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUgcGF0aHMuIFNtb2tlIHRlc3Rl
ZCBvbiBTa3VsbCBDYW55b24KPiBkZXZpY2UuIFRoaXMgd29ya3MgYnkgYWxsb2NhdGluZyBhbiBp
bnRlbF9tZW1vcnlfcmVnaW9uIGZvciBhIHJlc2VydmVkCj4gcG9ydGlvbiBvZiBzeXN0ZW0gbWVt
b3J5LCB3aGljaCB3ZSB0cmVhdCBsaWtlIExNRU0uIEZvciB0aGUgTE1FTUJBUiB3ZQo+IHN0ZWFs
IHRoZSBhcGVydHVyZSBhbmQgMToxIGl0IG1hcCB0byB0aGUgc3RvbGVuIHJlZ2lvbi4KPiAKPiBU
byBlbmFibGUgc2ltcGx5IHNldCB0aGUgaTkxNSBtb2RwYXJhbSBmYWtlX2xtZW1fc3RhcnQ9IG9u
IHRoZSBrZXJuZWwKPiBjbWRsaW5lIHdpdGggdGhlIHN0YXJ0IG9mIHJlc2VydmVkIHJlZ2lvbihz
ZWUgbWVtbWFwPSkuIFRoZSBzaXplIG9mIHRoZQo+IHJlZ2lvbiB3ZSBjYW4gdXNlIGlzIGRldGVy
bWluZWQgYnkgdGhlIHNpemUgb2YgdGhlIG1hcHBhYmxlIGFwZXJ0dXJlLCBzbwo+IHRoZSBzaXpl
IG9mIHJlc2VydmVkIHJlZ2lvbiBzaG91bGQgYmUgPj0gbWFwcGFibGVfZW5kLiBGb3Igbm93IHdl
IG9ubHkKPiBlbmFibGUgZm9yIHRoZSBzZWxmdGVzdHMuIERlcGVuZHMgb24gQ09ORklHX0RSTV9J
OTE1X1VOU1RBQkxFIGJlaW5nCj4gZW5hYmxlZC4KCkFuZCB0cnlib3Qgd2l0aAoKQEAgLTM3LDYg
KzM3LDkgQEAgY29uZmlnIERSTV9JOTE1X0RFQlVHCiAgICAgICAgc2VsZWN0IERSTV9JOTE1X0RF
QlVHX1JVTlRJTUVfUE0KICAgICAgICBzZWxlY3QgRFJNX0k5MTVfREVCVUdfTU1JTwogICAgICAg
IHNlbGVjdCBCUk9LRU4gIyBmb3IgcHJvdG90eXBlIHVBUEkKKyAgICAgICBzZWxlY3QgU1RBR0lO
RworICAgICAgIHNlbGVjdCBEUk1fSTkxNV9VTlNUQUJMRQorICAgICAgIHNlbGVjdCBEUk1fSTkx
NV9VTlNUQUJMRV9GQUtFX0xNRU0KICAgICAgICBkZWZhdWx0IG4KICAgICAgICBoZWxwCiAgICAg
ICAgICBDaG9vc2UgdGhpcyBvcHRpb24gdG8gdHVybiBvbiBleHRyYSBkcml2ZXIgZGVidWdnaW5n
IHRoYXQgbWF5IGFmZmVjdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=

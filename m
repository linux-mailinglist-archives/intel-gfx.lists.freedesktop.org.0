Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA183B495A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 10:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033E46EB5E;
	Tue, 17 Sep 2019 08:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFFBE6EB5E;
 Tue, 17 Sep 2019 08:27:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 01:27:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,515,1559545200"; d="scan'208";a="198619845"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 17 Sep 2019 01:27:46 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9B34A5C1E3A; Tue, 17 Sep 2019 11:27:27 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190917081953.28098-1-chris@chris-wilson.co.uk>
References: <20190917081953.28098-1-chris@chris-wilson.co.uk>
Date: Tue, 17 Sep 2019 11:27:27 +0300
Message-ID: <8736gvs4y8.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t]
 915/gem_exec_faulting_reloc: Uses the blitter; require the blitter
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpBY2tlZC1i
eTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+
ICB0ZXN0cy9pOTE1L2dlbV9leGVjX2ZhdWx0aW5nX3JlbG9jLmMgfCAyICsrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9l
eGVjX2ZhdWx0aW5nX3JlbG9jLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2ZhdWx0aW5nX3JlbG9j
LmMKPiBpbmRleCA2YjA1ZTQzZmUuLjBiYjVmYTkxYSAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1
L2dlbV9leGVjX2ZhdWx0aW5nX3JlbG9jLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2Zh
dWx0aW5nX3JlbG9jLmMKPiBAQCAtMTczLDYgKzE3Myw4IEBAIHN0YXRpYyB2b2lkIHJ1bihpbnQg
b2JqZWN0X3NpemUpCj4gIAo+ICAJZmQgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVMKTsK
PiAgCWlndF9yZXF1aXJlX2dlbShmZCk7Cj4gKwlnZW1fcmVxdWlyZV9ibGl0dGVyKGZkKTsKPiAr
Cj4gIAlkZXZpZCA9IGludGVsX2dldF9kcm1fZGV2aWQoZmQpOwo+ICAJaGFuZGxlID0gZ2VtX2Ny
ZWF0ZShmZCwgNDA5Nik7Cj4gIAlzcmMgPSBnZW1fY3JlYXRlKGZkLCBvYmplY3Rfc2l6ZSk7Cj4g
LS0gCj4gMi4yMy4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGlndC1kZXYgbWFpbGluZyBsaXN0Cj4gaWd0LWRldkBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ln
dC1kZXYKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

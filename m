Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99663B0E4D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 13:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ACA96ECEF;
	Thu, 12 Sep 2019 11:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603176ECEF
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 11:53:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 04:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="336553282"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 12 Sep 2019 04:53:16 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 959C05C1E49; Thu, 12 Sep 2019 14:53:01 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190912092933.4729-2-chris@chris-wilson.co.uk>
References: <20190912092933.4729-1-chris@chris-wilson.co.uk>
 <20190912092933.4729-2-chris@chris-wilson.co.uk>
Date: Thu, 12 Sep 2019 14:53:01 +0300
Message-ID: <87impxspcy.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Ensure the context
 is reloaded after a GPU reset
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQWZ0ZXIg
d2UgbWFuaXB1bGF0ZSB0aGUgY29udGV4dCB0byBhbGxvdyByZXBsYXkgYWZ0ZXIgYSBHUFUgcmVz
ZXQsIGZvcmNlCj4gdGhhdCBjb250ZXh0IHRvIGJlIHJlbG9hZGVkLiBUaGlzIHNob3VsZCBiZSBh
IGxheWVyIG9mIHBhcmFub2lhLCBmb3IgaWYKPiB0aGUgR1BVIHdhcyByZXNldCwgdGhlIGNvbnRl
eHQgd2lsbCBubyBsb25nZXIgYmUgcmVzaWRlbnQhCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlr
YS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRleCBkYmM5MGRhMjM0MWEuLjQ3
ZDc2NmNjZWE3MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTI0
NDUsNiArMjQ0NSw3IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jlc2V0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQo+ICAJaW50ZWxfcmluZ191cGRhdGVf
c3BhY2UoY2UtPnJpbmcpOwo+ICAJX19leGVjbGlzdHNfcmVzZXRfcmVnX3N0YXRlKGNlLCBlbmdp
bmUpOwo+ICAJX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjZSwgZW5naW5lKTsKPiArCWNl
LT5scmNfZGVzYyB8PSBDVFhfREVTQ19GT1JDRV9SRVNUT1JFOyAvKiBwYXJhbm9pZDogR1BVIHdh
cwo+IHJlc2V0ISAqLwoKVGhlIENDSUQgc2hvdWxkIGJlIHJlc2V0IGFsc28sIGJ1dCBJIHNlZSBu
byBoYXJtIHRvIGJlIGV4cGxpY2l0LgoKQWNrZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAgCW11dGV4X3JlbGVhc2UoJmNlLT5waW5fbXV0ZXgu
ZGVwX21hcCwgMCwgX1RISVNfSVBfKTsKPiAgCj4gIHVud2luZDoKPiAtLSAKPiAyLjIzLjAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

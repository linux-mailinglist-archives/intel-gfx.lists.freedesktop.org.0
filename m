Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BE4E7198
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 13:39:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298866E845;
	Mon, 28 Oct 2019 12:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC25B6E845
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:39:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 05:39:16 -0700
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="193243865"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.18.53])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 05:39:15 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191027111309.12498-1-chris@chris-wilson.co.uk>
References: <20191027111309.12498-1-chris@chris-wilson.co.uk>
Message-ID: <157226635303.5420.16232602774161834241@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 28 Oct 2019 14:39:13 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Simply walk back along
 request timeline on reset
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMjcgMTM6MTM6MDkpCj4gVGhlIHJlcXVlc3Qn
cyB0aW1lbGluZSB3aWxsIG9ubHkgY29udGFpbiByZXF1ZXN0cyBmcm9tIHRoaXMgY29udGV4dCwg
aW4KPiBvcmRlciBvZiBleGVjdXRpb24uIFRoZXJlZm9yZSwgd2UgY2FuIHNpbXBseSBsb29rIGJh
Y2sgYWxvbmcgdGhpcwo+IHRpbWVsaW5lIHRvIGZpbmQgdGhlIGN1cnJlbnRseSBleGVjdXRpbmcg
cmVxdWVzdC4KPiAKPiBJZiB3ZSBkbyBmaW5kIHRoYXQgdGhlIGN1cnJlbnQgY29udGV4dCBoYXMg
Y29tcGxldGVkIGl0cyBsYXN0IHJlcXVlc3QsCj4gdGhhdCBkb2VzIG5vdCBpbXBseSB0aGF0IGFs
bCByZXF1ZXN0cyBhcmUgY29tcGxldGVkIGluIHRoZSBjb250ZXh0LCBzbwo+IG9ubHkgYWR2YW5j
ZSB0aGUgcmluZy0+aGVhZCB1cCB0byB0aGUgZW5kIG9mIHRoZSBrbm93biBjb21wbGV0aW9ucyEK
PiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KCjxTTklQPgoKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
IEBAIC0yNTIsMjIgKzI1MiwxNSBAQCBzdGF0aWMgdm9pZCBtYXJrX2VpbyhzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSkKPiAgCj4gIHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICphY3RpdmVfcmVx
dWVzdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAgewo+IC0gICAgICAgY29uc3Qgc3RydWN0
IGludGVsX2NvbnRleHQgKiBjb25zdCBjZSA9IHJxLT5od19jb250ZXh0Owo+IC0gICAgICAgc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqYWN0aXZlID0gTlVMTDsKPiArICAgICAgIHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKmFjdGl2ZSA9IHJxOwo+ICAgICAgICAgc3RydWN0IGxpc3RfaGVhZCAqbGlzdDsKPiAg
Cj4gLSAgICAgICBpZiAoIWk5MTVfcmVxdWVzdF9pc19hY3RpdmUocnEpKSAvKiB1bndvdW5kLCBi
dXQgaW5jb21wbGV0ZSEgKi8KPiAtICAgICAgICAgICAgICAgcmV0dXJuIHJxOwo+IC0KCkVzcGVj
aWFsbHkgbm93IHdpdGggdGhlIGFib3ZlIHJlbW92ZWQsIHRoZSBmYWN0IHRoYXQgd2UncmUgb25s
eQpyZWFsbHkgaW50ZXJlc3RlZCBpbiB0aGUgdGltZWxpbmUgYmVjb21lcyBiaXQgb2JzY3VyZS4g
UGFzc2luZyBpbgphIHRpbWVsaW5lIHdvdWxkIGJlIG1vcmUgbG9naWNhbC4KCkVpdGhlciB3YXk6
CgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50
ZWwuY29tPgoKUmVnYXJkcywgSm9vbmFzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==

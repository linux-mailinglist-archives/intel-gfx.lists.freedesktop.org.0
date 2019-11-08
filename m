Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6DEF445F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C1E6F914;
	Fri,  8 Nov 2019 10:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFED6F911
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:21:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 02:21:24 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="206424733"
Received: from cstylian-mobl.ger.corp.intel.com (HELO [10.251.95.7])
 ([10.251.95.7])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 08 Nov 2019 02:21:24 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191108085626.32429-1-chris@chris-wilson.co.uk>
 <20191108085626.32429-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a2f144ed-bbba-473d-c2c2-9e714d945759@linux.intel.com>
Date: Fri, 8 Nov 2019 10:21:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108085626.32429-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/pmu: Only use exclusive mmio
 access for gen7
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA4LzExLzIwMTkgMDg6NTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBPbiBnZW43LCB3ZSBo
YXZlIHRvIGF2b2lkIGNvbmN1cnJlbnQgYWNjZXNzIHRvIHRoZSBzYW1lIG1taW8gY2FjaGVsaW5l
LAo+IGFuZCBzbyBjb29yZGluYXRlIGFsbCBtbWlvIGFjY2VzcyB3aXRoIHRoZSB1bmNvcmUtPmxv
Y2suIEhvd2V2ZXIsIGZvcgo+IHBtdSwgd2Ugd2FudCB0byBhdm9pZCBwZXJ0dXJiaW5nIHRoZSBz
eXN0ZW0gYW5kIGRpc2FibGluZyBpbnRlcnJ1cHRzCj4gdW5uZWNlc3NhcmlseSwgc28gcmVzdHJp
Y3QgdGhlIHcvYSB0byBnZW43IHdoZXJlIGl0IGlzIHJlcXVpZWQgdG8KPiBwcmV2ZW50IG1hY2hp
bmUgaGFuZ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgMTEgKysrKysr
KysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gaW5kZXggZGJkZTgwYTM3NmNiLi45ZTE2Mjc3
ODIyODQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKPiBAQCAtMjkyLDYgKzI5MiwxMSBA
QCBhZGRfc2FtcGxlKHN0cnVjdCBpOTE1X3BtdV9zYW1wbGUgKnNhbXBsZSwgdTMyIHZhbCkKPiAg
IAlzYW1wbGUtPmN1ciArPSB2YWw7Cj4gICB9Cj4gICAKPiArc3RhdGljIGJvb2wgZXhjbHVzaXZl
X21taW9fYWNjZXNzKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7Cj4g
KwlyZXR1cm4gSVNfR0VOKGk5MTUsIDcpOwo+ICt9Cj4gKwo+ICAgc3RhdGljIHZvaWQKPiAgIGVu
Z2luZXNfc2FtcGxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHVuc2lnbmVkIGludCBwZXJpb2RfbnMp
Cj4gICB7Cj4gQEAgLTMxMSw3ICszMTYsOCBAQCBlbmdpbmVzX3NhbXBsZShzdHJ1Y3QgaW50ZWxf
Z3QgKmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQo+ICAgCQlpZiAoIWludGVsX2VuZ2luZV9w
bV9nZXRfaWZfYXdha2UoZW5naW5lKSkKPiAgIAkJCWNvbnRpbnVlOwo+ICAgCj4gLQkJc3Bpbl9s
b2NrX2lycXNhdmUoJmVuZ2luZS0+dW5jb3JlLT5sb2NrLCBmbGFncyk7Cj4gKwkJaWYgKGV4Y2x1
c2l2ZV9tbWlvX2FjY2VzcyhpOTE1KSkKPiArCQkJc3Bpbl9sb2NrX2lycXNhdmUoJmVuZ2luZS0+
dW5jb3JlLT5sb2NrLCBmbGFncyk7Cj4gICAKPiAgIAkJdmFsID0gRU5HSU5FX1JFQURfRlcoZW5n
aW5lLCBSSU5HX0NUTCk7Cj4gICAJCWlmICh2YWwgPT0gMCkgLyogcG93ZXJ3ZWxsIG9mZiA9PiBl
bmdpbmUgaWRsZSAqLwo+IEBAIC0zNDIsNyArMzQ4LDggQEAgZW5naW5lc19zYW1wbGUoc3RydWN0
IGludGVsX2d0ICpndCwgdW5zaWduZWQgaW50IHBlcmlvZF9ucykKPiAgIAkJCWFkZF9zYW1wbGUo
JnBtdS0+c2FtcGxlW0k5MTVfU0FNUExFX0JVU1ldLCBwZXJpb2RfbnMpOwo+ICAgCj4gICBza2lw
Ogo+IC0JCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+dW5jb3JlLT5sb2NrLCBmbGFn
cyk7Cj4gKwkJaWYgKGV4Y2x1c2l2ZV9tbWlvX2FjY2VzcyhpOTE1KSkKPiArCQkJc3Bpbl91bmxv
Y2tfaXJxcmVzdG9yZSgmZW5naW5lLT51bmNvcmUtPmxvY2ssIGZsYWdzKTsKPiAgIAkJaW50ZWxf
ZW5naW5lX3BtX3B1dChlbmdpbmUpOwo+ICAgCX0KPiAgIH0KPiAKCkZvciBib251cyBwb2ludHMg
Y2FjaGUgdGhlIGNoZWNrIGluIGEgbG9jYWw/IE9yIGNhY2hlIHRoZSBsb2NrIGluIGEgCmxvY2Fs
IGZvciBldmVuIG1vcmUgd2luLCBzcGlubG9ja190ICpsb2NrID0gZXhjbHVzaXZlX21taW9fYWNj
ZXNzKC4uKSA/IAomLi4gOiBOVUxMID8KClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

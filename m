Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EB7EDBFE
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 11:00:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587C16E25C;
	Mon,  4 Nov 2019 10:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6FFB6E25C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 10:00:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 02:00:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,266,1569308400"; d="scan'208";a="232005433"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 04 Nov 2019 01:59:58 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 76ED25C1E92; Mon,  4 Nov 2019 11:59:55 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191104090158.2959-2-chris@chris-wilson.co.uk>
References: <20191104090158.2959-1-chris@chris-wilson.co.uk>
 <20191104090158.2959-2-chris@chris-wilson.co.uk>
Date: Mon, 04 Nov 2019 11:59:55 +0200
Message-ID: <87sgn4neqs.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Protect request peeking with
 RCU
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU2luY2Ug
dGhlIGV4ZWNsaXN0c19hY3RpdmUoKSBpcyBubyBsb25nZXIgcHJvdGVjdGVkIGJ5IHRoZQo+IGVu
Z2luZS0+YWN0aXZlLmxvY2ssIHdlIG5lZWQgdG8gcHJvdGVjdCB0aGUgcmVxdWVzdCBwb2ludGVy
IHdpdGggUkNVIHRvCj4gcHJldmVudCBpdCBiZWluZyBmcmVlZCBhcyB3ZSBldmFsdWF0ZSB3aGV0
aGVyIG9yIG5vdCB3ZSBuZWVkIHRvIHByZWVtcHQuCj4KPiBGaXhlczogZGY0MDMwNjkwMjlkICgi
ZHJtL2k5MTUvZXhlY2xpc3RzOiBMaWZ0IHByb2Nlc3NfY3NiKCkgb3V0IG9mIHRoZSBpcnEtb2Zm
IHNwaW5sb2NrIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpS
ZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jIHwgOSArKysr
KysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwo+IGluZGV4IGQyZWRiNTI3ZGNi
OC4uMDEwZDY3ZjQ4YWQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c2NoZWR1bGVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5j
Cj4gQEAgLTIwMiwyMSArMjAyLDI2IEBAIHN0YXRpYyB2b2lkIGtpY2tfc3VibWlzc2lvbihzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gIAlpZiAocHJpbyA8PSBlbmdpbmUtPmV4ZWNs
aXN0cy5xdWV1ZV9wcmlvcml0eV9oaW50KQo+ICAJCXJldHVybjsKPiAgCj4gKwlyY3VfcmVhZF9s
b2NrKCk7Cj4gKwo+ICAJLyogTm90aGluZyBjdXJyZW50bHkgYWN0aXZlPyBXZSdyZSBvdmVyZHVl
IGZvciBhIHN1Ym1pc3Npb24hICovCj4gIAlpbmZsaWdodCA9IGV4ZWNsaXN0c19hY3RpdmUoJmVu
Z2luZS0+ZXhlY2xpc3RzKTsKPiAgCWlmICghaW5mbGlnaHQpCj4gLQkJcmV0dXJuOwo+ICsJCWdv
dG8gdW5sb2NrOwo+ICAKPiAgCS8qCj4gIAkgKiBJZiB3ZSBhcmUgYWxyZWFkeSB0aGUgY3VycmVu
dGx5IGV4ZWN1dGluZyBjb250ZXh0LCBkb24ndAo+ICAJICogYm90aGVyIGV2YWx1YXRpbmcgaWYg
d2Ugc2hvdWxkIHByZWVtcHQgb3Vyc2VsdmVzLgo+ICAJICovCj4gIAlpZiAoaW5mbGlnaHQtPmh3
X2NvbnRleHQgPT0gcnEtPmh3X2NvbnRleHQpCj4gLQkJcmV0dXJuOwo+ICsJCWdvdG8gdW5sb2Nr
Owo+ICAKPiAgCWVuZ2luZS0+ZXhlY2xpc3RzLnF1ZXVlX3ByaW9yaXR5X2hpbnQgPSBwcmlvOwo+
ICAJaWYgKG5lZWRfcHJlZW1wdChwcmlvLCBycV9wcmlvKGluZmxpZ2h0KSkpCj4gIAkJdGFza2xl
dF9oaV9zY2hlZHVsZSgmZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7Cj4gKwo+ICt1bmxvY2s6
Cj4gKwlyY3VfcmVhZF91bmxvY2soKTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgX19pOTE1X3Nj
aGVkdWxlKHN0cnVjdCBpOTE1X3NjaGVkX25vZGUgKm5vZGUsCj4gLS0gCj4gMi4yNC4wLnJjMgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

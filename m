Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4C3BD05C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 19:12:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6631892BC;
	Tue, 24 Sep 2019 17:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FCC4892BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 17:12:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 10:12:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="213759364"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by fmsmga004.fm.intel.com with ESMTP; 24 Sep 2019 10:12:44 -0700
Date: Tue, 24 Sep 2019 10:13:21 -0700
From: James Ausmus <james.ausmus@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <20190924171320.GA31032@jausmus-gentoo-dev6.jf.intel.com>
References: <1569310312-12313-1-git-send-email-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569310312-12313-1-git-send-email-ankit.k.nautiyal@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] [v2][PATCH] drm/i915: Add Pipe D cursor ctrl
 register for Gen12
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMjQsIDIwMTkgYXQgMDE6MDE6NTJQTSArMDUzMCwgTmF1dGl5YWwsIEFua2l0
IEsgd3JvdGU6Cj4gRnJvbTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwu
Y29tPgoKSnVzdCBhIG5pdDogQ2FuIHlvdSBtb2RpZnkgdGhlIHN1YmplY3QgdG8gYmUgImRybS9p
OTE1L3RnbCIgdG8gbWFrZSBpdAplYXNpZXIgZm9yIGJhY2twb3J0ZXJzIHRvIGlkZW50aWZ5PwoK
PiAKPiBDdXJyZW50bHkgdGhlIG9mZnNldCBmb3IgUElQRSBEIGN1cnNvciBjb250cm9sIHJlZ2lz
dGVyIGlzIG1pc3NpbmcgaW4KPiBpOTE1X3JlZy5oIGR1ZSB0byB3aGljaCB0aGUgY3Vyc29yIHBs
YW5lIGNhbm5vdCBiZSBlbmFibGVkIGZvciBQaXBlIEQuCj4gVGhpcyBhbHNvIGNhdXNlcyBrZXJu
ZWwgV2FybmluZywgd2hlbiBhIHVzZXIgcmVxdWVzdHMgdG8gZW5hYmxlIGN1cnNvcgo+IHBsYW5l
IGZvciBQSVBFIEQgZm9yIEdlbiAxMiBwbGF0Zm9ybXMuCj4gCj4gVGhpcyBwYXRjaCBhZGRzIHRo
ZSBDVVJTT1JfQ1RMX0QgcmVnaXN0ZXIgaW4gdGhlIGk5MTVfcmVnLmguCj4gCj4gdjI6IFJlYmFz
ZQo+IAo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTE2NDAKPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0
aXlhbEBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMg
fCAxMCArKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAgMSAr
Cj4gIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYwo+IGluZGV4IGMyZmFhNjcuLmRjMDQ4ZDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMKPiBAQCAtMTE4LDYgKzExOCwxNSBAQAo+ICAJCVtQSVBFX0NdID0gSVZCX0NVUlNPUl9D
X09GRlNFVCwgXAo+ICAJfQo+ICAKPiArI2RlZmluZSBUR0xfQ1VSU09SX09GRlNFVFMgXAo+ICsJ
LmN1cnNvcl9vZmZzZXRzID0geyBcCj4gKwkJW1BJUEVfQV0gPSBDVVJTT1JfQV9PRkZTRVQsIFwK
PiArCQlbUElQRV9CXSA9IElWQl9DVVJTT1JfQl9PRkZTRVQsIFwKPiArCQlbUElQRV9DXSA9IElW
Ql9DVVJTT1JfQ19PRkZTRVQsIFwKPiArCQlbUElQRV9EXSA9IFRHTF9DVVJTT1JfRF9PRkZTRVQs
IFwKPiArCX0KPiArCj4gKwo+ICAjZGVmaW5lIEk5WFhfQ09MT1JTIFwKPiAgCS5jb2xvciA9IHsg
LmdhbW1hX2x1dF9zaXplID0gMjU2IH0KPiAgI2RlZmluZSBJOTY1X0NPTE9SUyBcCj4gQEAgLTc4
Nyw2ICs3OTYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVs
X2Vsa2hhcnRsYWtlX2luZm8gPSB7Cj4gIAkJW1RSQU5TQ09ERVJfRFNJXzBdID0gVFJBTlNDT0RF
Ul9EU0kwX09GRlNFVCwgXAo+ICAJCVtUUkFOU0NPREVSX0RTSV8xXSA9IFRSQU5TQ09ERVJfRFNJ
MV9PRkZTRVQsIFwKPiAgCX0sIFwKPiArCVRHTF9DVVJTT1JfT0ZGU0VUUywgXAo+ICAJLmhhc19n
bG9iYWxfbW9jcyA9IDEsIFwKPiAgCS5kaXNwbGF5Lmhhc19kc2IgPSAxCj4gIAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+IGluZGV4IGE2OWMxOWEuLjI4YzQ4M2EgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKPiBAQCAtNjI0MCw2ICs2MjQwLDcgQEAgZW51bSB7Cj4gICNkZWZpbmUgQ0hW
X0NVUlNPUl9DX09GRlNFVCAweDcwMGUwCj4gICNkZWZpbmUgSVZCX0NVUlNPUl9CX09GRlNFVCAw
eDcxMDgwCj4gICNkZWZpbmUgSVZCX0NVUlNPUl9DX09GRlNFVCAweDcyMDgwCj4gKyNkZWZpbmUg
VEdMX0NVUlNPUl9EX09GRlNFVCAweDczMDgwCj4gIAo+ICAvKiBEaXNwbGF5IEEgY29udHJvbCAq
Lwo+ICAjZGVmaW5lIF9EU1BBQ05UUgkJCQkweDcwMTgwCj4gLS0gCj4gMi43LjQKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

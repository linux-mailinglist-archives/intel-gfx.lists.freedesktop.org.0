Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D64E82394
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 19:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72DF86E509;
	Mon,  5 Aug 2019 17:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA95D6E509
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 17:05:36 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 10:05:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="185374187"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by orsmga002.jf.intel.com with ESMTP; 05 Aug 2019 10:05:34 -0700
Date: Mon, 5 Aug 2019 20:05:33 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190805170533.GA19007@intel.intel>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730133035.1977-5-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 04/17] drm/i915: Use drm_i915_private
 directly from drv_get_drvdata()
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

SGkgQ2hyaXMsCgo+ICBzdGF0aWMgdm9pZCBpOTE1X3N3aXRjaGVyb29fc2V0X3N0YXRlKHN0cnVj
dCBwY2lfZGV2ICpwZGV2LCBlbnVtIHZnYV9zd2l0Y2hlcm9vX3N0YXRlIHN0YXRlKQo+ICB7Cj4g
LQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gcGNpX2dldF9kcnZkYXRhKHBkZXYpOwo+ICsJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBwZGV2X3RvX2k5MTUocGRldik7Cj4gIAlwbV9t
ZXNzYWdlX3QgcG1tID0geyAuZXZlbnQgPSBQTV9FVkVOVF9TVVNQRU5EIH07Cj4gIAo+ICsJaWYg
KCFpOTE1KSB7Cj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiRFJNIG5vdCBpbml0aWFsaXplZCwg
YWJvcnRpbmcgc3dpdGNoLlxuIik7Cj4gKwkJcmV0dXJuOwo+ICsJfQo+ICsKPiAgCWlmIChzdGF0
ZSA9PSBWR0FfU1dJVENIRVJPT19PTikgewo+ICAJCXByX2luZm8oInN3aXRjaGVkIG9uXG4iKTsK
PiAtCQlkZXYtPnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJfQ0hBTkdJTkc7
Cj4gKwkJaTkxNS0+ZHJtLnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJfQ0hB
TkdJTkc7Cj4gIAkJLyogaTkxNSByZXN1bWUgaGFuZGxlciBkb2Vzbid0IHNldCB0byBEMCAqLwo+
ICAJCXBjaV9zZXRfcG93ZXJfc3RhdGUocGRldiwgUENJX0QwKTsKPiAtCQlpOTE1X3Jlc3VtZV9z
d2l0Y2hlcm9vKGRldik7Cj4gLQkJZGV2LT5zd2l0Y2hfcG93ZXJfc3RhdGUgPSBEUk1fU1dJVENI
X1BPV0VSX09OOwo+ICsJCWk5MTVfcmVzdW1lX3N3aXRjaGVyb28oaTkxNSk7Cj4gKwkJaTkxNS0+
ZHJtLnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJfT047Cj4gIAl9IGVsc2Ug
ewo+ICAJCXByX2luZm8oInN3aXRjaGVkIG9mZlxuIik7Cj4gLQkJZGV2LT5zd2l0Y2hfcG93ZXJf
c3RhdGUgPSBEUk1fU1dJVENIX1BPV0VSX0NIQU5HSU5HOwo+IC0JCWk5MTVfc3VzcGVuZF9zd2l0
Y2hlcm9vKGRldiwgcG1tKTsKPiAtCQlkZXYtPnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lU
Q0hfUE9XRVJfT0ZGOwo+ICsJCWk5MTUtPmRybS5zd2l0Y2hfcG93ZXJfc3RhdGUgPSBEUk1fU1dJ
VENIX1BPV0VSX0NIQU5HSU5HOwo+ICsJCWk5MTVfc3VzcGVuZF9zd2l0Y2hlcm9vKGk5MTUsIHBt
bSk7Cj4gKwkJaTkxNS0+ZHJtLnN3aXRjaF9wb3dlcl9zdGF0ZSA9IERSTV9TV0lUQ0hfUE9XRVJf
T0ZGOwoKZG9lc24ndCBoYXZlIGFueXRoaW5nIHRvIGRvIHdpdGggdGhpcyBwYXRjaCwgYnV0IGRv
bid0IHdlIGNhcmUgYWJvdXQKdGhlIHJlc3VtZSBhbmQgc3VzcGVuZCBmYWlsdXJlcz8KCj4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgdmdhX3N3aXRjaGVyb29fY2xpZW50X29wcyBpOTE1X3N3aXRjaGVy
b29fb3BzID0gewo+IEBAIC0xODQxLDcgKzE4NDcsOCBAQCBpOTE1X2RyaXZlcl9jcmVhdGUoc3Ry
dWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCj4gIAo+
ICAJaTkxNS0+ZHJtLnBkZXYgPSBwZGV2Owo+ICAJaTkxNS0+ZHJtLmRldl9wcml2YXRlID0gaTkx
NTsKPiAtCXBjaV9zZXRfZHJ2ZGF0YShwZGV2LCAmaTkxNS0+ZHJtKTsKPiArCUJVSUxEX0JVR19P
TihvZmZzZXRvZih0eXBlb2YoKmk5MTUpLCBkcm0pKTsKPiArCXBjaV9zZXRfZHJ2ZGF0YShwZGV2
LCBpOTE1KTsKClRoaXMgbG9va3MgYSBiaXQgdG9vIGZyYWdpbGUgdG8gbWUgYW5kIGl0J3Mgbm90
IGRvY3VtZW50ZWQKYW55d2hlcmUgdGhhdCBuZWVkIHRvIGhhdmUgImRybSIgaW4gYSBzcGVjaWZp
YyBwb3NpdGlvbi4KCkF0IHRoZSBlbmQgSSB3b25kZXIsIHdoeSBkbyB3ZSBuZWVkICJkcm0iIHRv
IGJlIHRoZXJlPyBVbmxlc3MgSQptaXNzZWQgaXQsIEkgaGF2ZW4ndCBzZWVuIGFueXdoZXJlIGFu
eSBkb3VibGUgcmVmZXJlbmNlIHRvCiJpOTE2Ii8iZHJtIi4KClRoZSByZXN0IG9mIHRoZSBwYXRj
aCBsb29rcyBxdWl0ZSBzdHJhaWdodCBmb3J3YXJkLgoKQW5kaQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

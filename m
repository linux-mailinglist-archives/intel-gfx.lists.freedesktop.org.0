Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A58BBCF996
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 14:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E2A6E79D;
	Tue,  8 Oct 2019 12:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AAC86E79D
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 12:14:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 05:14:24 -0700
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="187276606"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 05:14:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <78db9ee138d961e5dee01813269aecfa61bc1d66.1570460714.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1570460714.git.jani.nikula@intel.com>
 <78db9ee138d961e5dee01813269aecfa61bc1d66.1570460714.git.jani.nikula@intel.com>
Date: Tue, 08 Oct 2019 15:14:20 +0300
Message-ID: <87k19fh1sz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: keep power domains
 init/remove calls at the same level
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

T24gTW9uLCAwNyBPY3QgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gTW92ZSBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoKSBjYWxsIG9uZSBsZXZl
bCBoaWdoZXIsIHRvIGJlIG9uIHRoZQo+IHNhbWUgbGV2ZWwgYXMgYWxsIHRoZSBvdGhlciBpbnRl
bF9wb3dlcl9kb21haW5zXyooKSBjYWxscyBpbiB0aGUKPiBwcm9iZS9yZW1vdmUgcGF0aHMuCj4K
PiBUaGlzIGFsc28gbW92ZXMgdGhlIHBvd2VyIGRvbWFpbiBodyBpbml0IGVhcmxpZXIgaW4gdGhl
IHNlcXVlbmNlLCBhbG9uZwo+IHdpdGggdGhlIGRlcGVuZGVudCBpbnRlbF91cGRhdGVfcmF3Y2xr
KCkgY2FsbC4gQXMgZmFyIGFzIEkgY2FuIHRlbGwKPiB0aGVyZSBzaG91bGQgbm90IGJlIGFueSBv
dGhlciBkZXBlbmRlbmNpZXMgb24gdGhlIGluaXRhbGl6YXRpb24gdGhhdCdzCj4gbm93IGRvbmUg
YWZ0ZXIgdGhlc2UgY2FsbHMgKHZibGFuayBpbml0LCBiaW9zIGluaXQsIHZnYSByZWdpc3Rlciku
CgpBcyBJbXJlIHRvbGQgbWUsIHRoZSBwb3dlciBkb21haW4gY29kZSBkZXBlbmRzIG9uIGJvdGgg
dGhlIHZnYSBhbmQgYmlvcwppbml0cy4gRHJhd2luZyBib2FyZCwgaGVyZSB3ZSBnbyBhZ2Fpbi4K
CkJSLApKYW5pLgoKCj4KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IENj
OiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTIgKysrKysrLS0tLS0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKPiBpbmRleCAwYWJmZWNlMjBjNTcuLjE2YWM1ZTg4ZTFlYyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwo+IEBAIC0yODksMTEgKzI4OSw2IEBAIHN0YXRpYyBpbnQgaTkxNV9k
cml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCWlm
IChyZXQpCj4gIAkJZ290byBvdXQ7Cj4gIAo+IC0JLyogbXVzdCBoYXBwZW4gYmVmb3JlIGludGVs
X3Bvd2VyX2RvbWFpbnNfaW5pdF9odygpIG9uIFZMVi9DSFYgKi8KPiAtCWludGVsX3VwZGF0ZV9y
YXdjbGsoaTkxNSk7Cj4gLQo+IC0JaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KGk5MTUsIGZh
bHNlKTsKPiAtCj4gIAlpbnRlbF9jc3JfdWNvZGVfaW5pdChpOTE1KTsKPiAgCj4gIAlyZXQgPSBp
bnRlbF9pcnFfaW5zdGFsbChpOTE1KTsKPiBAQCAtMzM2LDcgKzMzMSw2IEBAIHN0YXRpYyBpbnQg
aTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
PiAgCWludGVsX2lycV91bmluc3RhbGwoaTkxNSk7Cj4gIGNsZWFudXBfY3NyOgo+ICAJaW50ZWxf
Y3NyX3Vjb2RlX2ZpbmkoaTkxNSk7Cj4gLQlpbnRlbF9wb3dlcl9kb21haW5zX2RyaXZlcl9yZW1v
dmUoaTkxNSk7Cj4gIAlpbnRlbF92Z2FfdW5yZWdpc3RlcihpOTE1KTsKPiAgb3V0Ogo+ICAJcmV0
dXJuIHJldDsKPiBAQCAtMTQ5Myw2ICsxNDg3LDExIEBAIGludCBpOTE1X2RyaXZlcl9wcm9iZShz
dHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKPiAg
CWlmIChyZXQgPCAwKQo+ICAJCWdvdG8gb3V0X2NsZWFudXBfbW1pbzsKPiAgCj4gKwkvKiBtdXN0
IGhhcHBlbiBiZWZvcmUgaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KCkgb24gVkxWL0NIViAq
Lwo+ICsJaW50ZWxfdXBkYXRlX3Jhd2NsayhpOTE1KTsKPiArCj4gKwlpbnRlbF9wb3dlcl9kb21h
aW5zX2luaXRfaHcoaTkxNSwgZmFsc2UpOwo+ICsKPiAgCXJldCA9IGk5MTVfZHJpdmVyX21vZGVz
ZXRfcHJvYmUoaTkxNSk7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQlnb3RvIG91dF9jbGVhbnVwX2h3
Owo+IEBAIC0xNTA2LDYgKzE1MDUsNyBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBj
aV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCj4gIAlyZXR1cm4g
MDsKPiAgCj4gIG91dF9jbGVhbnVwX2h3Ogo+ICsJaW50ZWxfcG93ZXJfZG9tYWluc19kcml2ZXJf
cmVtb3ZlKGk5MTUpOwo+ICAJaTkxNV9kcml2ZXJfaHdfcmVtb3ZlKGk5MTUpOwo+ICAJaTkxNV9n
Z3R0X2RyaXZlcl9yZWxlYXNlKGk5MTUpOwo+ICBvdXRfY2xlYW51cF9tbWlvOgoKLS0gCkphbmkg
TmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

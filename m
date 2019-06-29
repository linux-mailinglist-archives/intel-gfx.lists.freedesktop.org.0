Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7EF5ABD6
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2019 16:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AAC189A57;
	Sat, 29 Jun 2019 14:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEC789A57
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jun 2019 14:34:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jun 2019 07:34:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,432,1557212400"; d="scan'208";a="183891768"
Received: from sdoleck-mobl.ger.corp.intel.com (HELO [10.249.139.154])
 ([10.249.139.154])
 by fmsmga001.fm.intel.com with ESMTP; 29 Jun 2019 07:34:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190628120720.21682-2-lionel.g.landwerlin@intel.com>
 <20190629131350.31185-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <157c9960-7c11-ecc0-e4fe-aae1d38d48a2@intel.com>
Date: Sat, 29 Jun 2019 17:34:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190629131350.31185-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix whitelist selftests with
 readonly registers
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

U2hpcCBpdCEKCk9uIDI5LzA2LzIwMTkgMTY6MTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBGcm9t
OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4KPiBX
aGVuIGEgcmVnaXN0ZXIgaXMgcmVhZG9ubHkgdGhlcmUgaXMgbm90IG11Y2ggd2UgY2FuIHRlbGwg
YWJvdXQgaXRzCj4gdmFsdWUgKGFwYXJ0IGZyb20gaXRzIGRlZmF1bHQgdmFsdWU/KS4gVGhpcyBj
YW4gYmUgY292ZXJlZCBieSB0ZXN0cwo+IGV4ZXJjaXNpbmcgdGhlIHZhbHVlIG9mIHRoZSByZWdp
c3RlciBmcm9tIHVzZXJzcGFjZS4KPgo+IEZvciBQU19JTlZPQ0FUSU9OX0NPVU5UIHdlJ3ZlIGdv
dCB0aGUgZm9sbG93aW5nIHBpZ2xpdCB0ZXN0cyA6Cj4KPiAgICAgS0hSLUdMNDUucGlwZWxpbmVf
c3RhdGlzdGljc19xdWVyeV90ZXN0c19BUkIuZnVuY3Rpb25hbF9mcmFnbWVudF9zaGFkZXJfaW52
b2NhdGlvbnMKPgo+IFZ1bGthbiBDVFMgdGVzdHMgOgo+Cj4gICAgIGRFUVAtVksucXVlcnlfcG9v
bC5zdGF0aXN0aWNzX3F1ZXJ5LmZyYWdtZW50X3NoYWRlcl9pbnZvY2F0aW9ucy4qCj4KPiB2Mjog
VXNlIGEgbG9jYWwgdG8gc2hyaW5rIHVuZGVyIDgwY29scy4KPgo+IFNpZ25lZC1vZmYtYnk6IExp
b25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiBGaXhlczog
ODY1NTRmNDhlNTExICgiZHJtL2k5MTUvc2VsZnRlc3RzOiBWZXJpZnkgd2hpdGVsaXN0IG9mIGNv
bnRleHQgcmVnaXN0ZXJzIikKPiBUZXN0ZWQtYnk6IEFudWogUGhvZ2F0IDxhbnVqLnBob2dhdEBn
bWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gLS0tCj4gRml4ZXMgaXMgYSBiaXQgbXVjaCwgc2luY2UgdGhlIHRlc3QgaXMg
c3RpbGwgdmVyeSBtdWNoIG5lcmZlZCBhbmQgbm90Cj4gY29tcGxlbWVudGVkIGJ5IGEgdGVzdCBm
b3IgcmVhZC1vbmx5IG5vbi1wcml2IHJlZ2lzdGVycy4uLgo+IC1DaHJpcwo+IC0tLQo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyB8IDcgKysrKysrLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCj4gaW5kZXgg
ZjEyY2IyMGZlNzg1Li5iOTMzZDgzMWVlYjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKPiBAQCAtOTI2LDcgKzkyNiwxMiBAQCBjaGVj
a193aGl0ZWxpc3RlZF9yZWdpc3RlcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+
ICAgCj4gICAJZXJyID0gMDsKPiAgIAlmb3IgKGkgPSAwOyBpIDwgZW5naW5lLT53aGl0ZWxpc3Qu
Y291bnQ7IGkrKykgewo+IC0JCWlmICghZm4oZW5naW5lLCBhW2ldLCBiW2ldLCBlbmdpbmUtPndo
aXRlbGlzdC5saXN0W2ldLnJlZykpCj4gKwkJY29uc3Qgc3RydWN0IGk5MTVfd2EgKndhID0gJmVu
Z2luZS0+d2hpdGVsaXN0Lmxpc3RbaV07Cj4gKwo+ICsJCWlmIChpOTE1X21taW9fcmVnX29mZnNl
dCh3YS0+cmVnKSAmIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SRCkKPiArCQkJY29udGludWU7Cj4g
Kwo+ICsJCWlmICghZm4oZW5naW5lLCBhW2ldLCBiW2ldLCB3YS0+cmVnKSkKPiAgIAkJCWVyciA9
IC1FSU5WQUw7Cj4gICAJfQo+ICAgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4

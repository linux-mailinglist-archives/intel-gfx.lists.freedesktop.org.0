Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F31A58EA6D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 13:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394B86E2C1;
	Thu, 15 Aug 2019 11:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 682046E2C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 11:36:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 04:36:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="167721299"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 15 Aug 2019 04:36:19 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5BF105C1140; Thu, 15 Aug 2019 14:35:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190815042031.27750-1-chris@chris-wilson.co.uk>
References: <20190815042031.27750-1-chris@chris-wilson.co.uk>
Date: Thu, 15 Aug 2019 14:35:37 +0300
Message-ID: <877e7e7jau.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move tasklet kicking to
 __i915_request_queue caller
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
X19pOTE1X3JlcXVlc3RfcXVldWUoKSBtYXkgYmUgY2FsbGVkIGZyb20gaGFyZGlycSAodGltZXIp
IGNvbnRleHQsCj4gd2UgY2Fubm90IHVzZSBsb2NhbF9iaF9kaXNhYmxlL2VuYWJsZSBhdCB0aGUg
bG93ZXIgbGV2ZWwuIEFzIHdlIGRvIHdhbnQKPiB0byBraWNrIHRoZSB0YXNrbGV0IHRvIHNwZWVk
IHVwIGluaXRpYWwgc3VibWlzc2lvbiBvciBwcmVlbXB0aW9uIGZvcgo+IG5vcm1hbCBjbGllbnQg
c3VibWlzc2lvbiwgbGlmdCBpdCB0byB0aGUgbm9ybWFsIHByb2Nlc3MgY29udGV4dAo+IGNhbGxw
YXRoLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgNCAr
Ky0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+IGluZGV4IDQwMjEzMzRkZDJjNS4uOGEy
YmMxZDMxN2U0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiBAQCAtMTIw
MywxMiArMTIwMywxMCBAQCB2b2lkIF9faTkxNV9yZXF1ZXN0X3F1ZXVlKHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxLAo+ICAJICogZGVjaWRlIHdoZXRoZXIgdG8gcHJlZW1wdCB0aGUgZW50aXJlIGNo
YWluIHNvIHRoYXQgaXQgaXMgcmVhZHkgdG8KPiAgCSAqIHJ1biBhdCB0aGUgZWFybGllc3QgcG9z
c2libGUgY29udmVuaWVuY2UuCj4gIAkgKi8KPiAtCWxvY2FsX2JoX2Rpc2FibGUoKTsKPiAgCWk5
MTVfc3dfZmVuY2VfY29tbWl0KCZycS0+c2VtYXBob3JlKTsKPiAgCWlmIChhdHRyICYmIHJxLT5l
bmdpbmUtPnNjaGVkdWxlKQo+ICAJCXJxLT5lbmdpbmUtPnNjaGVkdWxlKHJxLCBhdHRyKTsKPiAg
CWk5MTVfc3dfZmVuY2VfY29tbWl0KCZycS0+c3VibWl0KTsKPiAtCWxvY2FsX2JoX2VuYWJsZSgp
OyAvKiBLaWNrIHRoZSBleGVjbGlzdHMgdGFza2xldCBpZiBqdXN0IHNjaGVkdWxlZCAqLwoKV2Fz
IHRoaXMgaGVyZSB0byBvbmx5IG9wdGltaXplIHRoZSBsYXRlbmN5IGZyb20gc2NoZWR1bGUKdG8g
cmVzdWJtaXNzaW9uPwoKT3IgaXMgaXQgYWN0dWFsbHkgZ3VhcmRpbmcgc29tZXRoaW5nPwoKLU1p
a2EKCj4gIH0KPiAgCj4gIHZvaWQgaTkxNV9yZXF1ZXN0X2FkZChzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkKPiBAQCAtMTI0Nyw3ICsxMjQ1LDkgQEAgdm9pZCBpOTE1X3JlcXVlc3RfYWRkKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxKQo+ICAJaWYgKGxpc3RfZW1wdHkoJnJxLT5zY2hlZC5zaWduYWxl
cnNfbGlzdCkpCj4gIAkJYXR0ci5wcmlvcml0eSB8PSBJOTE1X1BSSU9SSVRZX1dBSVQ7Cj4gIAo+
ICsJbG9jYWxfYmhfZGlzYWJsZSgpOwo+ICAJX19pOTE1X3JlcXVlc3RfcXVldWUocnEsICZhdHRy
KTsKPiArCWxvY2FsX2JoX2VuYWJsZSgpOyAvKiBLaWNrIHRoZSBleGVjbGlzdHMgdGFza2xldCBp
ZiBqdXN0IHNjaGVkdWxlZCAqLwo+ICAKPiAgCS8qCj4gIAkgKiBJbiB0eXBpY2FsIHNjZW5hcmlv
cywgd2UgZG8gbm90IGV4cGVjdCB0aGUgcHJldmlvdXMgcmVxdWVzdCBvbgo+IC0tIAo+IDIuMjMu
MC5yYzEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

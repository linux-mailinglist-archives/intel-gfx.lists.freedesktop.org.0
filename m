Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EA8E7CB
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 18:32:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E7A89322;
	Mon, 29 Apr 2019 16:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B80089322
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 16:32:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 09:32:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,410,1549958400"; d="scan'208";a="139828777"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006.jf.intel.com with ESMTP; 29 Apr 2019 09:32:43 -0700
Date: Mon, 29 Apr 2019 09:33:02 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190429163302.GG20006@intel.com>
References: <20190429142253.15882-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429142253.15882-1-jani.nikula@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/csr: alpha_support doesn't depend
 on csr or vice versa
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

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMDU6MjI6NTNQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gRGVidWcgbG9nZ2luZyBzaG91bGQgbm90IGJlIGRlcGVuZGVudCBvbiBhbHBoYSBzdXBw
b3J0IGZsYWcuCj4gCj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKSSBh
Z3JlZS4uLiB0aGlzIGlzIG5vdCB0aGUgcmlnaHQgd2F5IHRvIHRyYWNrIGRlcGVuZGVuY2llcy4K
ClJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyB8IDIgLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPiBpbmRl
eCBmNDNjMmEyNTYzYTUuLjQ1MjdiOTY2MjMzMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nz
ci5jCj4gQEAgLTUyOSw4ICs1MjksNiBAQCB2b2lkIGludGVsX2Nzcl91Y29kZV9pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCj4gIAlpZiAoY3NyLT5md19wYXRoID09
IE5VTEwpIHsKPiAgCQlEUk1fREVCVUdfS01TKCJObyBrbm93biBDU1IgZmlybXdhcmUgZm9yIHBs
YXRmb3JtLCBkaXNhYmxpbmcgcnVudGltZSBQTVxuIik7Cj4gLQkJV0FSTl9PTighSVNfQUxQSEFf
U1VQUE9SVChJTlRFTF9JTkZPKGRldl9wcml2KSkpOwo+IC0KPiAgCQlyZXR1cm47Cj4gIAl9Cj4g
IAo+IC0tIAo+IDIuMjAuMQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=

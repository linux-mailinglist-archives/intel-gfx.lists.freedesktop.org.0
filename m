Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7576E5E34
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 19:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852F26E0DE;
	Sat, 26 Oct 2019 17:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F7E16E0DE;
 Sat, 26 Oct 2019 17:39:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Oct 2019 10:39:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,233,1569308400"; d="scan'208";a="192853515"
Received: from sstrehla-mobl1.ger.corp.intel.com (HELO intel.intel)
 ([10.251.90.165])
 by orsmga008.jf.intel.com with ESMTP; 26 Oct 2019 10:39:24 -0700
Date: Sat, 26 Oct 2019 20:39:23 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191026173923.GA10452@intel.intel>
References: <20191025142333.11806-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025142333.11806-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915: Use explicit iterator names
 in for_each_engine()
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpJIHRob3VnaHQgd2Ugd2FudGVkIHRvIGtlZXAgdGhlIHdhcm5pbmdzIGFzIGEg
cmVtaW5kZXIgdW50aWwgd2UKcmVtb3ZlZCB0aGUgbGVnYWN5IGZvcmVhY2ggOikKClsuLi5dCgo+
IGRpZmYgLS1naXQgYS9saWIvaWd0X2d0LmggYi9saWIvaWd0X2d0LmgKPiBpbmRleCA3M2I1MDAy
YTAuLjY2MDg4ZDM5MSAxMDA2NDQKPiAtLS0gYS9saWIvaWd0X2d0LmgKPiArKysgYi9saWIvaWd0
X2d0LmgKPiBAQCAtNzIsMTkgKzcyLDIxIEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgaW50ZWxfZXhl
Y3V0aW9uX2VuZ2luZSB7Cj4gIAl1bnNpZ25lZCBmbGFnczsKPiAgfSBpbnRlbF9leGVjdXRpb25f
ZW5naW5lc1tdOwo+ICAKPiArI2RlZmluZSBlYl9yaW5nKGUpICgoZSktPmV4ZWNfaWQgfCAoZSkt
PmZsYWdzKQo+ICsKPiAgI2RlZmluZSBmb3JfaWYoZXhwcl9fKSBpZiAoIShleHByX18pKSB7fSBl
bHNlCj4gIAo+IC0jZGVmaW5lIGZvcl9lYWNoX2VuZ2luZShmZF9fLCBmbGFnc19fKSBcCj4gLQlm
b3IgKGNvbnN0IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lICplX18gPSBpbnRlbF9leGVj
dXRpb25fZW5naW5lcztcCj4gLQkgICAgIGVfXy0+bmFtZTsgXAo+IC0JICAgICBlX18rKykgXAo+
IC0JCWZvcl9pZiAoZ2VtX2hhc19yaW5nKGZkX18sIGZsYWdzX18gPSBlX18tPmV4ZWNfaWQgfCBl
X18tPmZsYWdzKSkKPiAtCj4gLSNkZWZpbmUgZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKGZkX18s
IGZsYWdzX18pIFwKPiAtCWZvciAoY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUg
KmVfXyA9IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzO1wKPiAtCSAgICAgZV9fLT5uYW1lOyBcCj4g
LQkgICAgIGVfXysrKSBcCj4gLQkJZm9yX2lmIChnZW1fcmluZ19oYXNfcGh5c2ljYWxfZW5naW5l
KGZkX18sIGZsYWdzX18gPSBlX18tPmV4ZWNfaWQgfCBlX18tPmZsYWdzKSkKPiArI2RlZmluZSBm
b3JfZWFjaF9lbmdpbmUoaXRfXywgZmRfXykgXAo+ICsJZm9yIChjb25zdCBzdHJ1Y3QgaW50ZWxf
ZXhlY3V0aW9uX2VuZ2luZSAqaXRfXyA9IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzO1wKPiArCSAg
ICAgaXRfXy0+bmFtZTsgXAo+ICsJICAgICBpdF9fKyspIFwKPiArCQlmb3JfaWYgKGdlbV9oYXNf
cmluZyhmZF9fLCBlYl9yaW5nKGl0X18pKSkKPiArCj4gKyNkZWZpbmUgZm9yX2VhY2hfcGh5c2lj
YWxfZW5naW5lKGl0X18sIGZkX18pIFwKPiArCWZvciAoY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1
dGlvbl9lbmdpbmUgKml0X18gPSBpbnRlbF9leGVjdXRpb25fZW5naW5lcztcCj4gKwkgICAgIGl0
X18tPm5hbWU7IFwKPiArCSAgICAgaXRfXysrKSBcCj4gKwkJZm9yX2lmIChnZW1fcmluZ19oYXNf
cGh5c2ljYWxfZW5naW5lKGZkX18sIGViX3JpbmcoaXRfXykpKQoKKHdlIGFscmVhZHkgdGFsa2Vk
IG9uY2UgYWJvdXQgdGhpcykgaXQgbWFrZXMgbW9yZSBzZW5zZSB0byBtZSB0aGUKaXRlcmF0b3Ig
dG8gYmUgZGVjbGFyZWQgb3V0c2lkZSB0aGUgZnJvbSBsb29wIGluIG9yZGVyIHRvIG5vdCBrZWVw
Cml0IGhpZGRlbiBmcm9tIHRoZSB1c2VyLgoKSXQncyBhbHNvIHRvIGJlIGNvbnNpc3RlbnQgd2l0
aCBhbGwgdGhlIHJlc3Qgb2YgdGhlIGl0ZXJhdGlvbnMsCnN0YXJ0aW5nIGZyb20gdGhlICdmb3Io
KScuCgpOZXZlcnRoZWxlc3MsIEkgdGhpbmsgdGhpcyBjb2RlIGlzIGdvaW5nIHRvIGRpc2FwcGVh
ciBzb21lZGF5cywKc28gdGhhdDoKCkFja2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGlu
dGVsLmNvbT4KClRoYW5rcywKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

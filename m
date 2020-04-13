Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B92AC1A6155
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 03:32:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F0F89A7A;
	Mon, 13 Apr 2020 01:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D67776E04B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 01:32:17 +0000 (UTC)
IronPort-SDR: fCzLPCUTfw73a/eubMEyWt7MMmxLHzTE/YyFtGPFbFY/2w2Iz5tTVFWwdxFg7ETSPtoMe1QU9b
 hEwzOPBT5Zag==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2020 18:32:17 -0700
IronPort-SDR: XTobS1nzuOcLjBZR2k+bnbC2hkIl3XgzroNv8ch/ocY/wdWrqY9+djhcQQMLHTL20FEakgIC4w
 VOCfquFYJJ3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,375,1580803200"; d="scan'208";a="298292980"
Received: from linux.fm.intel.com (HELO intel.com) ([10.1.27.42])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Apr 2020 18:32:16 -0700
Date: Sun, 12 Apr 2020 18:32:16 -0700
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200413013216.GA64842@intel.com>
References: <20200410165158.29546-1-venkata.s.dhanalakota@intel.com>
 <20200410165158.29546-3-venkata.s.dhanalakota@intel.com>
 <2fca650f-baac-2b71-8ab4-e3fc2a4c23fb@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fca650f-baac-2b71-8ab4-e3fc2a4c23fb@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: peel dma-fence-chains wait
 fences
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAvMDQvMTEgMTE6NTAsIExpb25lbCBMYW5kd2VybGluIHdyb3RlOgo+IE9uIDEwLzA0LzIw
MjAgMTk6NTEsIFZlbmthdGEgU2FuZGVlcCBEaGFuYWxha290YSB3cm90ZToKPiA+IEZyb206IExp
b25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiA+IAo+ID4g
VG8gYWxsb3cgZmFzdGVyIGVuZ2luZSB0byBlbmdpbmUgc3luY2hyb25pemF0aW9uLCBwZWVsIHRo
ZSBsYXllciBvZgo+ID4gZG1hLWZlbmNlLWNoYWluIHRvIGV4cG9zZSBwb3RlbnRpYWwgaTkxNSBm
ZW5jZXMgc28gdGhhdCB0aGUKPiA+IGk5MTUtcmVxdWVzdCBjb2RlIGNhbiBlbWl0IEhXIHNlbWFw
aG9yZSB3YWl0L3NpZ25hbCBvcGVyYXRpb25zIGluIHRoZQo+ID4gcmluZyB3aGljaCBpcyBmYXN0
ZXIgdGhhbiB3YWtpbmcgdXAgdGhlIGhvc3QgdG8gc3VibWl0IHVuYmxvY2tlZAo+ID4gd29ya2xv
YWRzIGFmdGVyIGludGVycnVwdCBub3RpZmljYXRpb24uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPiA+IC0t
LQo+ID4gICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAz
OSArKysrKysrKysrKysrKysrKy0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAzNSBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiA+IGluZGV4IDhkZDY1MWNkY2EzOS4uZTQzYjc2ZDdl
OWZkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4
ZWNidWZmZXIuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4
ZWNidWZmZXIuYwo+ID4gQEAgLTI1MDgsNiArMjUwOCw3IEBAIGF3YWl0X2ZlbmNlX2FycmF5KHN0
cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAo+ID4gICAJZm9yIChuID0gMDsgbiA8IG5mZW5jZXM7
IG4rKykgewo+ID4gICAJCXN0cnVjdCBkcm1fc3luY29iaiAqc3luY29iajsKPiA+ICsJCXN0cnVj
dCBkbWFfZmVuY2VfY2hhaW4gKmNoYWluOwo+ID4gICAJCXVuc2lnbmVkIGludCBmbGFnczsKPiA+
ICAgCQlzeW5jb2JqID0gcHRyX3VucGFja19iaXRzKGZlbmNlc1tuXS5zeW5jb2JqLCAmZmxhZ3Ms
IDIpOwo+ID4gQEAgLTI1MTUsMTAgKzI1MTYsNDAgQEAgYXdhaXRfZmVuY2VfYXJyYXkoc3RydWN0
IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4gPiAgIAkJaWYgKCFmZW5jZXNbbl0uZG1hX2ZlbmNlKQo+
ID4gICAJCQljb250aW51ZTsKPiA+IC0JCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVu
Y2UoZWItPnJlcXVlc3QsCj4gPiAtCQkJCQkJICAgZmVuY2VzW25dLmRtYV9mZW5jZSk7Cj4gPiAt
CQlpZiAoZXJyIDwgMCkKPiA+IC0JCQlyZXR1cm4gZXJyOwo+ID4gKwkJLyoKPiA+ICsJCSAqIElm
IHdlJ3JlIGRlYWxpbmcgd2l0aCBhIGRtYS1mZW5jZS1jaGFpbiwgcGVlbCB0aGUgY2hhaW4gYnkK
PiA+ICsJCSAqIGFkZGluZyBhbGwgb2YgdGhlIHVuc2lnbmFsZWQgZmVuY2VzCj4gPiArCQkgKiAo
ZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoIGRvZXMgdGhhdCBmb3IgdXMpIHRoZSBjaGFpbgo+ID4g
KwkJICogcG9pbnRzIHRvLgo+ID4gKwkJICoKPiA+ICsJCSAqIFRoaXMgZW5hYmxlcyB1cyB0byBp
ZGVudGlmeSB3YWl0cyBvbiBpOTE1IGZlbmNlcyBhbmQgYWxsb3dzCj4gPiArCQkgKiBmb3IgZmFz
dGVyIGVuZ2luZS10by1lbmdpbmUgc3luY2hyb25pemF0aW9uIHVzaW5nIEhXCj4gPiArCQkgKiBz
ZW1hcGhvcmVzLgo+ID4gKwkJICovCj4gPiArCQljaGFpbiA9IHRvX2RtYV9mZW5jZV9jaGFpbihm
ZW5jZXNbbl0uZG1hX2ZlbmNlKTsKPiA+ICsJCWlmIChjaGFpbikgewo+ID4gKwkJCXN0cnVjdCBk
bWFfZmVuY2UgKml0ZXI7Cj4gPiArCj4gPiArCQkJZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKGl0
ZXIsIGZlbmNlc1tuXS5kbWFfZmVuY2UpIHsKPiAKPiAKPiBUaGUga2J1aWxkIGJvdCBtYWRlIG1l
IHRoaW5rIG9mIGFuIGludGVyZXN0aW5nIGNhc2UuCj4gCj4gSXQgaXMgcG9zc2libGUgdG8gYnVp
bGQgYSBjaGFpbiB3aGVyZSB0aGUgZmlyc3QgZWxlbWVudCBpc24ndCBhCj4gZG1hX2ZlbmNlX2No
YWluLgo+IApZZXMgYWdyZWVkLCB3ZSBjb3VsZCBoYXZlIGEgdmFsaWQgZmVuY2UtY2hhaW4gd2l0
aCBmaXJzdCBlbGVtZW50IGFzIG5vcm1hbApkbWFfZmVuY2UgYW5kIHNvIGl0ZXJfY2hhaW4gY2Fu
IGJlIG51bGwuIFdpbGwgYWRkcmVzcyB0aGlzIGluIG5leHQKcmV2aXNpb24gb2YgdGhlIHBhdGNo
LgoKPiAKPiBXZSBzaG91bGQgaGFuZGxlIHRoaXMgaGVyZSBsaWtlIHRoaXMgOgo+IAo+IAo+IGlm
IChpdGVyX2NoYWluKQo+IAo+IMKgwqDCoCBlcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2Zl
bmNlKGViLT5yZXF1ZXN0LCBpdGVyX2NoYWluLT5mZW5jZSk7Cj4gCj4gZWxzZQo+IAo+IMKgwqDC
oCBlcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKGViLT5yZXF1ZXN0LCBpdGVyKTsK
PiAKPiBpZiAoZXJyIDwgMCkgewo+IAo+IMKgwqDCoCBkbWFfZmVuY2VfcHV0KGl0ZXIpOwo+IAo+
IMKgwqDCoCByZXR1cm4gZXJyOwo+IAo+IH0KPiAKPiAKPiA+ICsJCQkJc3RydWN0IGRtYV9mZW5j
ZV9jaGFpbiAqaXRlcl9jaGFpbiA9Cj4gPiArCQkJCQl0b19kbWFfZmVuY2VfY2hhaW4oaXRlcik7
Cj4gPiArCj4gPiArCQkJCUdFTV9CVUdfT04oIWl0ZXJfY2hhaW4pOwo+ID4gKwo+ID4gKwkJCQll
cnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZG1hX2ZlbmNlKGViLT5yZXF1ZXN0LAo+ID4gKwkJCQkJ
CQkJICAgaXRlcl9jaGFpbi0+ZmVuY2UpOwo+ID4gKwkJCQlpZiAoZXJyIDwgMCkgewo+ID4gKwkJ
CQkJZG1hX2ZlbmNlX3B1dChpdGVyKTsKPiA+ICsJCQkJCXJldHVybiBlcnI7Cj4gPiArCQkJCX0K
PiA+ICsJCQl9Cj4gPiArCj4gPiArCQl9IGVsc2Ugewo+ID4gKwkJCWVyciA9IGk5MTVfcmVxdWVz
dF9hd2FpdF9kbWFfZmVuY2UoZWItPnJlcXVlc3QsCj4gPiArCQkJCQkJCSAgIGZlbmNlc1tuXS5k
bWFfZmVuY2UpOwo+ID4gKwkJCWlmIChlcnIgPCAwKQo+ID4gKwkJCQlyZXR1cm4gZXJyOwo+ID4g
KwkJfQo+ID4gICAJfQo+ID4gICAJcmV0dXJuIDA7Cj4gCj4gCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

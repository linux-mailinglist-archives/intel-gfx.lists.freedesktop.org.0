Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC915FC9B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 19:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196D36E3A0;
	Thu,  4 Jul 2019 17:43:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337A06E3A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 17:43:23 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 10:43:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="191422011"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jul 2019 10:43:21 -0700
Date: Thu, 4 Jul 2019 20:43:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20190704174312.GG25657@ideak-desk.fi.intel.com>
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
 <20190704000649.20661-3-lucas.demarchi@intel.com>
 <op.z4eyickyxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <op.z4eyickyxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: fix include order in
 intel_tc.*
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMDQsIDIwMTkgYXQgMDc6MjE6MzhQTSArMDIwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPiBPbiBUaHUsIDA0IEp1bCAyMDE5IDAyOjA2OjQ3ICswMjAwLCBMdWNhcyBEZSBN
YXJjaGkKPiA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPiB3cm90ZToKPiAKPiA+IE1ha2UgaW50
ZWxfdGMuaCB0aGUgZmlyc3QgaW5jbHVkZSBzbyB3ZSBndWFyYW50ZWUgaXQncyBzZWxmLWNvbnRh
aW5lZC4KPiA+IFNvcnQgdGhlIHJlc3QuIFNhbWUgcHJpbmNpcGxlIGFwcGxpZXMgZm9yIGluY2x1
ZGVzIGluIHRoZSBoZWFkZXIuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNSArKystLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCB8IDUgKysrLS0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiA+IGluZGV4IDFhOWRkMzJmYjBhNS4uZTZlNjE2M2Mx
MjMyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiA+
IEBAIC0zLDEwICszLDExIEBACj4gPiAgICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9y
YXRpb24KPiA+ICAgKi8KPiA+ICsjaW5jbHVkZSAiaW50ZWxfdGMuaCIKPiA+ICsKPiA+ICsjaW5j
bHVkZSAiaTkxNV9kcnYuaCIKPiAKPiB0aGlzIG1hc3RlciBoZWFkZXIgd2lsbCBsaWtlbHkgaW5j
bHVkZSBldmVyeXRoaW5nLCBzbyB3aGlsZQo+IHlvdXIgLmggaXMgbm93IHNlbGYtY29udGFpbmVk
LCAuYyByZW1haW5zIHVuY2xlYW4KPiAKPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheS5oIgo+
ID4gICNpbmNsdWRlICJpbnRlbF9kcF9tc3QuaCIKPiA+IC0jaW5jbHVkZSAiaTkxNV9kcnYuaCIK
PiA+IC0jaW5jbHVkZSAiaW50ZWxfdGMuaCIKPiA+IHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0
X21vZGVfbmFtZShlbnVtIHRjX3BvcnRfbW9kZSBtb2RlKQo+ID4gIHsKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgKPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4gPiBpbmRleCAwZDg0MTFkNGE5MWQuLjQ1
YWUzMDUzN2I3OCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5oCj4gPiBAQCAtNiwxMCArNiwxMSBAQAo+ID4gICNpZm5kZWYgX19JTlRFTF9UQ19IX18KPiA+
ICAjZGVmaW5lIF9fSU5URUxfVENfSF9fCj4gPiAtI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4g
PiAtI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gPiAgI2luY2x1ZGUgImludGVsX2Rydi5oIgo+
IAo+IGFyZSB5b3Ugc3VyZSB5b3Ugd2FudCB0aGlzIGdpYW50IGhlYWRlciB0byBiZSBpbmNsdWRl
ZCBoZXJlPwo+IG5vdGUgdGhhdCBpdCB3aWxsICNpbmNsdWRlIGFsbW9zdCBldmVyeXRoaW5nIChp
OTE1X2Rydi5oIHRvbykKPiBhbmQgbWF5IGludHJvZHVjZSBoYXJkIHRvIHJlc29sdmUgY2lyY3Vs
YXIgZGVwZW5kZW5jaWVzCj4gCj4gPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gCj4gd2Ug
ZG9uJ3QgbmVlZCBtdXRleCBkZWZpbml0aW9ucyBoZXJlIGluIGN1cnJlbnQgaGVhZGVyIGZpbGUK
PiAKPiA+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiA+ICsKPiAKPiBzbyB5b3UgbmVlZCBv
bmx5IGFib3ZlIHR5cGVzLmggYW5kIHRoZW4gYWRkIGZvcndhcmQgZGVjbCBmb3I6Cj4gCj4gc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydDsKCkJvdGggdGhlIG11dGV4IGFuZCBpbnRlbF9kaWdpdGFs
X3BvcnQgZGVmaW5pdGlvbnMgYXJlIG5lZWRlZCBieSAKaW50ZWxfdGNfcG9ydF9yZWZfaGVsZCgp
IGluIHRoaXMgaGVhZGVyLgoKPiAKPiA+ICBib29sIGludGVsX3RjX3BvcnRfY29ubmVjdGVkKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKPiA+ICB1MzIgaW50ZWxfdGNfcG9y
dF9nZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKPiA+
ICBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydAo+ID4gKmRpZ19wb3J0KTsKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4

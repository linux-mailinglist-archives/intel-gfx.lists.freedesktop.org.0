Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F819CEF8D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 01:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138CA6E170;
	Mon,  7 Oct 2019 23:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F15E56E170
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 23:25:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 16:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="206517495"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by fmsmga001.fm.intel.com with ESMTP; 07 Oct 2019 16:25:01 -0700
Date: Mon, 7 Oct 2019 16:25:53 -0700
From: James Ausmus <james.ausmus@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20191007232553.GF13100@jausmus-gentoo-dev6.jf.intel.com>
References: <20190925201353.27565-2-james.ausmus@intel.com>
 <20190927222427.5491-1-james.ausmus@intel.com>
 <20190927222427.5491-2-james.ausmus@intel.com>
 <20191004205546.xeq43hvktkbs6pzr@ldmartin-desk1>
 <20191004215134.GB13100@jausmus-gentoo-dev6.jf.intel.com>
 <20191007101524.GM1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007101524.GM1208@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Read SAGV block time
 from PCODE
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMDcsIDIwMTkgYXQgMDE6MTU6MjRQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAyOjUxOjM0UE0gLTA3MDAsIEphbWVz
IEF1c211cyB3cm90ZToKPiA+IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAxOjU1OjQ2UE0gLTA3
MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiA+ID4gT24gRnJpLCBTZXAgMjcsIDIwMTkgYXQg
MDM6MjQ6MjdQTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdyb3RlOgo+ID4gPiA+U3RhcnRpbmcgZnJv
bSBUR0wsIHdlIG5vdyBuZWVkIHRvIHJlYWQgdGhlIFNBR1YgYmxvY2sgdGltZSB2aWEgYSBQQ09E
RQo+ID4gPiA+bWFpbGJveCwgcmF0aGVyIHRoYW4gaGF2aW5nIGEgc3RhdGljIHZhbHVlLgo+ID4g
PiA+Cj4gPiA+ID5CU3BlYzogNDkzMjYKPiA+ID4gPgo+ID4gPiA+djI6IEZpeCB1cCBwY29kZSB2
YWwgZGF0YSB0eXBlIChWaWxsZSksIHRpZ2h0ZW4gdmFyaWFibGUgc2NvcGUgKFZpbGxlKQo+ID4g
PiA+Cj4gPiA+ID5DYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiA+ID4gPkNjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5
QGludGVsLmNvbT4KPiA+ID4gPkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KPiA+ID4gPlNpZ25lZC1vZmYtYnk6IEphbWVzIEF1c211cyA8amFtZXMuYXVzbXVz
QGludGVsLmNvbT4KPiA+ID4gPlJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gPiA+LS0tCj4gPiA+ID4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCB8ICAxICsKPiA+ID4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIHwgMTUgKysrKysrKysrKysrKystCj4gPiA+ID4gMiBmaWxlcyBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+ID4KPiA+ID4gPmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+ID4gPiA+aW5kZXggMDU4YWE1Y2E4YjczLi42YTQ1ZGY5ZGFkOWMgMTAwNjQ0Cj4g
PiA+ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiA+ID4rKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiA+ID5AQCAtODg2OSw2ICs4ODY5LDcg
QEAgZW51bSB7Cj4gPiA+ID4gI2RlZmluZSAgICAgR0VOOV9TQUdWX0RJU0FCTEUJCQkweDAKPiA+
ID4gPiAjZGVmaW5lICAgICBHRU45X1NBR1ZfSVNfRElTQUJMRUQJCTB4MQo+ID4gPiA+ICNkZWZp
bmUgICAgIEdFTjlfU0FHVl9FTkFCTEUJCQkweDMKPiA+ID4gPisjZGVmaW5lIEdFTjEyX1BDT0RF
X1JFQURfU0FHVl9CTE9DS19USU1FX1VTCTB4MjMKPiA+ID4gPiAjZGVmaW5lIEdFTjZfUENPREVf
REFUQQkJCQlfTU1JTygweDEzODEyOCkKPiA+ID4gPiAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVR
X0lBX1JBVElPX1NISUZUCTgKPiA+ID4gPiAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVRX1JJTkdf
UkFUSU9fU0hJRlQJMTYKPiA+ID4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+ID4gPiA+aW5kZXgg
YjQxM2E3ZjNiYzVkLi4xMzcyMWJhNDQwMTMgMTAwNjQ0Cj4gPiA+ID4tLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4gPiA+ID4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCj4gPiA+ID5AQCAtMzY0NSw3ICszNjQ1LDIwIEBAIGludGVsX2hhc19zYWd2KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ID4gPiBzdGF0aWMgdm9pZAo+ID4g
PiA+IHNrbF9zZXR1cF9zYWd2X2Jsb2NrX3RpbWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQo+ID4gPiA+IHsKPiA+ID4gPi0JaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKSB7Cj4g
PiA+ID4rCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7Cj4gPiA+IAo+ID4gPiBzYWd2
IHdpbGwgc3RpbGwgbmV2ZXIgYmUgZW5hYmxlZCBmb3IgVEdMLiBBcmUgeW91IGdvaW5nIHRvIHJl
dmVydCAKPiA+ID4gOGZmYTQzOTJhMzJlICgiZHJtL2k5MTUvdGdsOiBkaXNhYmxlIFNBR1YgdGVt
cG9yYXJpbHkiKQo+ID4gPiBpbiBhIHNlcGFyZXRlIHBhdGNoPwo+ID4gCj4gPiBZZXMsIHRoYXQn
cyB0aGUgaWRlYSAtIHdlIGxhbmQgdGhlc2UgdHdvIHBhdGNoZXMsIHRoZW4gb25jZSBIU0QKPiA+
IDE0MDk1NDI4OTUgZ2V0cyByZXNvbHZlZCwgd2UgcmV2ZXJ0IDhmZmE0MzkyYTMyZSBhbmQgZXZl
cnl0aGluZyBKdXN0Cj4gPiBXb3Jrcy4gOykKPiAKPiBUaGUgd2hvbGUgc2FndiBzdHVmZiBpcyB3
cm9uZyBmb3IgaWNsKy4gU3RhbiBpcyBhdHRlbXB0aW5nIHRvIHJlbWVkeQo+IHRoYXQuCgpXZWxs
LCB3ZSdsbCBhdCBsZWFzdCBuZWVkIHRvIGRvIHRoaXMgcmVhZCBvZiB0aGUgYmxvY2sgdGltZSAt
IGRvIHlvdQp0aGluayB0aGVzZSB0d28gcGF0Y2hlcyBjYW4gbGFuZCBpbiB0aGUgbWVhbnRpbWUs
IHRvIGhlbHAgcHJlcCB0aGUgVEdMCnBhdGggZm9yIGFjdHVhbGx5IHdvcmtpbmcgd2hlbiBTdGFu
J3Mgd29yayBsYW5kcz8KClRoYW5rcyEKCi1KYW1lcwoKPiAKPiA+IAo+ID4gLUphbWVzCj4gPiAK
PiA+ID4gCj4gPiA+IEx1Y2FzIERlIE1hcmNoaQo+ID4gPiAKPiA+ID4gPisJCXUzMiB2YWwgPSAw
Owo+ID4gPiA+KwkJaW50IHJldDsKPiA+ID4gPisKPiA+ID4gPisJCXJldCA9IHNhbmR5YnJpZGdl
X3Bjb2RlX3JlYWQoZGV2X3ByaXYsCj4gPiA+ID4rCQkJCQkgICAgIEdFTjEyX1BDT0RFX1JFQURf
U0FHVl9CTE9DS19USU1FX1VTLAo+ID4gPiA+KwkJCQkJICAgICAmdmFsLCBOVUxMKTsKPiA+ID4g
PisJCWlmICghcmV0KSB7Cj4gPiA+ID4rCQkJZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91cyA9
IHZhbDsKPiA+ID4gPisJCQlyZXR1cm47Cj4gPiA+ID4rCQl9Cj4gPiA+ID4rCj4gPiA+ID4rCQlE
Uk1fREVCVUdfRFJJVkVSKCJDb3VsZG4ndCByZWFkIFNBR1YgYmxvY2sgdGltZSFcbiIpOwo+ID4g
PiA+Kwl9IGVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKSB7Cj4gPiA+ID4gCQlkZXZfcHJp
di0+c2Fndl9ibG9ja190aW1lX3VzID0gMTA7Cj4gPiA+ID4gCQlyZXR1cm47Cj4gPiA+ID4gCX0g
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMCkpIHsKPiA+ID4gPi0tIAo+ID4gPiA+Mi4yMi4x
Cj4gPiA+ID4KPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

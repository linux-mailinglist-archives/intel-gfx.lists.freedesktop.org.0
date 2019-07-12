Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9769675BB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 22:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23519888AE;
	Fri, 12 Jul 2019 20:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A43D6E38A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 20:14:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 13:14:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="365258794"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 12 Jul 2019 13:14:16 -0700
Date: Fri, 12 Jul 2019 13:15:53 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190712201552.GA3003@intel.com>
References: <20190710213951.517-1-manasi.d.navare@intel.com>
 <20190710213951.517-2-manasi.d.navare@intel.com>
 <20190711103816.GR5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711103816.GR5942@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/display/icl: Bump up the
 plane/fb height
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDE6Mzg6MTZQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFdlZCwgSnVsIDEwLCAyMDE5IGF0IDAyOjM5OjUxUE0gLTA3MDAsIE1hbmFz
aSBOYXZhcmUgd3JvdGU6Cj4gPiBPbiBJQ0wrLCB0aGUgbWF4IHN1cHBvcnRlZCBwbGFuZSBoZWln
aHQgaXMgNDMyMCwgc28gYnVtcCBpdCB1cAo+ID4gVG8gc3VwcG9ydCA0MzIwLCB3ZSBuZWVkIHRv
IGluY3JlYXNlIHRoZSBudW1iZXIgb2YgYml0cyB1c2VkIHRvCj4gPiByZWFkIHBsYW5lX2hlaWdo
dCB0byAxMyBhcyBvcHBvc2VkIHRvIG9sZGVyIDEyIGJpdHMuCj4gPiAKPiA+IHYyOgo+ID4gKiBJ
Q0wgcGxhbmUgaGVpZ2h0IHN1cHBvcnRlZCBpcyA0MzIwIChWaWxsZSkKPiA+ICogQWRkIGEgbmV3
IGxpbmUgYmV0d2VlbiBtYXggd2lkdGggYW5kIG1heCBoZWlnaHQgKEpvc2UpCj4gPiAKPiA+IENj
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+
ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
Pgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAyMiArKysrKysrKysrKysrKysrKystLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gaW5kZXggOTg4M2Y2MDdiYjg4Li5lNDkxNWQ2
ODE0N2EgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKPiA+IEBAIC0zMzQzLDYgKzMzNDMsMTYgQEAgc3RhdGljIGludCBpY2xfbWF4X3Bs
YW5lX3dpZHRoKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+ID4gIAlyZXR1cm4g
NTEyMDsKPiA+ICB9Cj4gPiAgCj4gPiArc3RhdGljIGludCBza2xfbWF4X3BsYW5lX2hlaWdodCh2
b2lkKQo+ID4gK3sKPiA+ICsJcmV0dXJuIDQwOTY7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBp
bnQgaWNsX21heF9wbGFuZV9oZWlnaHQodm9pZCkKPiA+ICt7Cj4gPiArCXJldHVybiA0MzIwOwo+
ID4gK30KPiA+ICsKPiA+ICBzdGF0aWMgYm9vbCBza2xfY2hlY2tfbWFpbl9jY3NfY29vcmRpbmF0
ZXMoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwKPiA+ICAJCQkJCSAgIGlu
dCBtYWluX3gsIGludCBtYWluX3ksIHUzMiBtYWluX29mZnNldCkKPiA+ICB7Cj4gPiBAQCAtMzM5
MSw3ICszNDAxLDcgQEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gPiAgCWludCB3ID0gZHJtX3JlY3Rfd2lk
dGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykgPj4gMTY7Cj4gPiAgCWludCBoID0gZHJtX3JlY3Rf
aGVpZ2h0KCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMpID4+IDE2Owo+ID4gIAlpbnQgbWF4X3dpZHRo
Owo+ID4gLQlpbnQgbWF4X2hlaWdodCA9IDQwOTY7Cj4gPiArCWludCBtYXhfaGVpZ2h0Owo+ID4g
IAl1MzIgYWxpZ25tZW50LCBvZmZzZXQsIGF1eF9vZmZzZXQgPSBwbGFuZV9zdGF0ZS0+Y29sb3Jf
cGxhbmVbMV0ub2Zmc2V0Owo+ID4gIAo+ID4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MSkKPiA+IEBAIC0zNDAxLDYgKzM0MTEsMTEgQEAgc3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9z
dXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gPiAgCWVsc2UK
PiA+ICAJCW1heF93aWR0aCA9IHNrbF9tYXhfcGxhbmVfd2lkdGgoZmIsIDAsIHJvdGF0aW9uKTsK
PiA+ICAKPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gPiArCQltYXhfaGVp
Z2h0ID0gaWNsX21heF9wbGFuZV9oZWlnaHQoKTsKPiA+ICsJZWxzZQo+ID4gKwkJbWF4X2hlaWdo
dCA9IHNrbF9tYXhfcGxhbmVfaGVpZ2h0KCk7Cj4gPiArCj4gPiAgCWlmICh3ID4gbWF4X3dpZHRo
IHx8IGggPiBtYXhfaGVpZ2h0KSB7Cj4gPiAgCQlEUk1fREVCVUdfS01TKCJyZXF1ZXN0ZWQgWS9S
R0Igc291cmNlIHNpemUgJWR4JWQgdG9vIGJpZyAobGltaXQgJWR4JWQpXG4iLAo+ID4gIAkJCSAg
ICAgIHcsIGgsIG1heF93aWR0aCwgbWF4X2hlaWdodCk7Cj4gPiBAQCAtOTg2NSw3ICs5ODgwLDEw
IEBAIHNreWxha2VfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLAo+ID4gIAlvZmZzZXQgPSBJOTE1X1JFQUQoUExBTkVfT0ZGU0VUKHBpcGUsIHBsYW5lX2lk
KSk7Cj4gPiAgCj4gPiAgCXZhbCA9IEk5MTVfUkVBRChQTEFORV9TSVpFKHBpcGUsIHBsYW5lX2lk
KSk7Cj4gPiAtCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAweGZmZikgKyAxOwo+ID4gKwlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiA+ICsJCWZiLT5oZWlnaHQgPSAoKHZhbCA+
PiAxNikgJiAweDFmZmYpICsgMTsKPiA+ICsJZWxzZQo+ID4gKwkJZmItPmhlaWdodCA9ICgodmFs
ID4+IDE2KSAmIDB4ZmZmKSArIDE7Cj4gPiAgCWZiLT53aWR0aCA9ICgodmFsID4+IDApICYgMHgx
ZmZmKSArIDE7Cj4gCj4gVGhlIGV4dHJhIGJpdHMgc2hvdWxkIGJlIG1ieiBJIHRoaW5rLCBzbyBu
byBuZWVkIGZvciB0aGUgJ2lmJy4KPiBKdXN0IHVzZSAweDFmZmYgYWx3YXlzLCBvciBldmVuIGV4
dGVuZCBib3RoIG1hc2tzIHRvIDB4ZmZmZi4KClllcyBJIGRvdWJsZSBjaGVja2VkLCBhbGwgdGhl
IGV4dHJhIGJpdHMgKDMxOjI4KSBmb3Igb2xkZXIgcGxhdGZvcm1zCmFyZSBNQlogc28geWVzIEkg
d2lsbCBqdXN0IHVzZSAweGZmZmYgYXMgdGhlIG1hc2sgdGhlbgoKPiAKPiBMb29rcyBsaWtlIGk5
eHhfZ2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKCkgaXMgYWxzbyBtaXNzaW5nIGEgYml0IG9yIHR3
bywKPiB3aGljaCBzaG91bGQgYmUgZml4ZWQgd2l0aCBhIHNlcGFyYXRlIHBhdGNoLgoKQnV0IGlz
bnQgdGhhdCBob29rIGZvciBvbGRlciBwbGF0Zm9ybXM/CgpNYW5hc2kKCj4gCj4gPiAgCj4gPiAg
CXZhbCA9IEk5MTVfUkVBRChQTEFORV9TVFJJREUocGlwZSwgcGxhbmVfaWQpKTsKPiA+IC0tIAo+
ID4gMi4xOS4xCj4gCj4gLS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D54926BFF0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 18:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F13589B38;
	Wed, 17 Jul 2019 16:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1526C89B38
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 16:56:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 09:56:04 -0700
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="172924279"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Jul 2019 09:56:04 -0700
Date: Wed, 17 Jul 2019 09:56:39 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190717165639.GL826@intel.com>
References: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
 <df5f95a4c2a7e7bf9fd076f43e4e65bfb10375d1.camel@intel.com>
 <d4f264e726553842912fc007272aa61486d6994a.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4f264e726553842912fc007272aa61486d6994a.camel@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMTcsIDIwMTkgYXQgMDk6NDE6MTNBTSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTA3LTE2IGF0IDE1OjEwIC0wNzAwLCBQYW5kaXlhbiwgRGhpbmFr
YXJhbiB3cm90ZToKPiA+IE9uIFR1ZSwgMjAxOS0wNy0xNiBhdCAxNTowMyAtMDcwMCwgRGhpbmFr
YXJhbiBQYW5kaXlhbiB3cm90ZToKPiA+ID4gQSBzaW5nbGUgMzItYml0IFBTUjIgdHJhaW5pbmcg
cGF0dGVybiBmaWVsZCBmb2xsb3dzIHRoZSBzaXh0ZWVuCj4gPiA+IGVsZW1lbnQKPiA+ID4gYXJy
YXkgb2YgUFNSIHRhYmxlIGVudHJpZXMgaW4gdGhlIFZCVCBzcGVjLiBCdXQsIHdlIGluY29ycmVj
dGx5Cj4gPiA+IGRlZmluZQo+ID4gPiB0aGlzIFBTUjIgZmllbGQgZm9yIGVhY2ggb2YgdGhlIFBT
UiB0YWJsZSBlbnRyaWVzLiBBcyBhIHJlc3VsdCwgdGhlCj4gPiA+IFBTUjEKPiA+ID4gdHJhaW5p
bmcgcGF0dGVybiBkdXJhdGlvbiBmb3IgYW55IHBhbmVsX3R5cGUgIT0gMCB3aWxsIGJlIHBhcnNl
ZAo+ID4gPiBpbmNvcnJlY3RseS4gU2Vjb25kbHksIFBTUjIgdHJhaW5pbmcgcGF0dGVybiBkdXJh
dGlvbnMgZm9yIFZCVHMKPiA+ID4gd2l0aCBiZGIKPiA+ID4gdmVyc2lvbiA+PSAyMjYgd2lsbCBh
bHNvIGJlIHdyb25nLgo+ID4gCj4gPiBUaGlzIHdhcyByZXBvcnRlZCBhbmQgYmlzZWN0ZWQgYnkg
Cj4gPiBBbGlha3NlaSBVcmJhbnNraSBoZXJlIC0gCj4gPiBodHRwczovL2J1Z3ppbGxhLmtlcm5l
bC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNDE4Mwo+ID4gCj4gPiBJJ2xsIGFkZCBCdWd6aWxsYSBh
ZnRlciB0aGUgZml4IGlzIGNvbmZpcm1lZC4KPiA+IAo+IAo+IE9vaGggaXQgbWFrZXMgc2Vuc2Us
IHRoYW5rcyBmb3Igc3BvdHRpbmcgaXQuCj4gCj4gQW5kIDIgdXNlcnMgcmVwb3J0ZWQgdGhhdCBp
dCB3b3JrczoKPiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIw
NDE4Mwo+IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA4
OAoKUGxlYXNlIGFkZCB0aGlzIGJlZm9yZSBtZXJnaW5nOgoKUmVmZXJlbmNlOiBodHRwczovL2J1
Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTIwNDE4MwpSZWZlcmVuY2U6IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTA4OAoKPiAKPiBDYW4g
eW91IGFsc28gQ0Mga2VybmVsIHN0YWJsZSBzbyB0aGUgZml4IGlzIGNoZXJyeS1waWNrZWQ/Cgph
bmQgdGhpczoKCkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICN2NS4yCgo+IAo+IFJldmlld2Vk
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KCkFja2Vk
LWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cgo+IAo+IAo+ID4gQ2M6
IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+IENjOiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+IEZpeGVzOiA4OGEwZDk2MDZh
ZmYgKCJkcm0vaTkxNS92YnQ6IFBhcnNlIGFuZCB1c2UgdGhlIG5ldyBmaWVsZCB3aXRoCj4gPiBQ
U1IyIFRQMi8zIHdha2V1cCB0aW1lIil6Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFuIFBh
bmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8IDIgKy0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCA2ICsrKy0tLQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMK
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiA+IGluZGV4
IDIxNTAxZDU2NTMyNy4uYjQxNmIzOTRiNjQxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gPiBAQCAtNzY2LDcgKzc2Niw3IEBAIHBhcnNlX3Bz
cihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gPiBjb25zdCBzdHJ1Y3QgYmRi
X2hlYWRlciAqYmRiKQo+ID4gIAl9Cj4gPiAgCj4gPiAgCWlmIChiZGItPnZlcnNpb24gPj0gMjI2
KSB7Cj4gPiAtCQl1MzIgd2FrZXVwX3RpbWUgPSBwc3JfdGFibGUtPnBzcjJfdHAyX3RwM193YWtl
dXBfdGltZTsKPiA+ICsJCXUzMiB3YWtldXBfdGltZSA9IHBzci0+cHNyMl90cDJfdHAzX3dha2V1
cF90aW1lOwo+ID4gIAo+ID4gIAkJd2FrZXVwX3RpbWUgPSAod2FrZXVwX3RpbWUgPj4gKDIgKiBw
YW5lbF90eXBlKSkgJiAweDM7Cj4gPiAgCQlzd2l0Y2ggKHdha2V1cF90aW1lKSB7Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAo+ID4gaW5k
ZXggOTNmNWM5ZDIwNGQ2Li4wOWNkMzdmYjBiMWMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAo+ID4gQEAgLTQ4MSwxMyArNDgxLDEz
IEBAIHN0cnVjdCBwc3JfdGFibGUgewo+ID4gIAkvKiBUUCB3YWtlIHVwIHRpbWUgaW4gbXVsdGlw
bGUgb2YgMTAwICovCj4gPiAgCXUxNiB0cDFfd2FrZXVwX3RpbWU7Cj4gPiAgCXUxNiB0cDJfdHAz
X3dha2V1cF90aW1lOwo+ID4gLQo+ID4gLQkvKiBQU1IyIFRQMi9UUDMgd2FrZXVwIHRpbWUgZm9y
IDE2IHBhbmVscyAqLwo+ID4gLQl1MzIgcHNyMl90cDJfdHAzX3dha2V1cF90aW1lOwo+ID4gIH0g
X19wYWNrZWQ7Cj4gPiAgCj4gPiAgc3RydWN0IGJkYl9wc3Igewo+ID4gIAlzdHJ1Y3QgcHNyX3Rh
YmxlIHBzcl90YWJsZVsxNl07Cj4gPiArCj4gPiArCS8qIFBTUjIgVFAyL1RQMyB3YWtldXAgdGlt
ZSBmb3IgMTYgcGFuZWxzICovCj4gPiArCXUzMiBwc3IyX3RwMl90cDNfd2FrZXVwX3RpbWU7Cj4g
PiAgfSBfX3BhY2tlZDsKPiA+ICAKPiA+ICAvKgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=

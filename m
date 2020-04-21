Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 902E21B2309
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 11:41:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117806E8F0;
	Tue, 21 Apr 2020 09:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E9246E235;
 Tue, 21 Apr 2020 09:40:53 +0000 (UTC)
IronPort-SDR: 75jN8i15JGs/F264/djg4rbX5ugwT0mvBaehm86w2WQvHCl28ire30gWlxUsEGFRzRIeAyJFIL
 TyfBAWSWGkKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 02:40:52 -0700
IronPort-SDR: u8ol5o/TJvdrz+JuCd1JoxaMversbFwNGF7YlLPdR2pZ/zMUQFQdCM9V6C4GU5qGBcsXBEeH97
 AgdyVvRykhyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="456041871"
Received: from unknown (HELO intel.com) ([10.223.74.85])
 by fmsmga005.fm.intel.com with ESMTP; 21 Apr 2020 02:40:50 -0700
Date: Tue, 21 Apr 2020 15:07:21 +0530
From: Jeevan B <jeevan.b@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200421093720.GB13664@intel.com>
References: <1586242207-23214-1-git-send-email-jeevan.b@intel.com>
 <1586242207-23214-2-git-send-email-jeevan.b@intel.com>
 <874ktl5ap4.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <874ktl5ap4.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: utilize subconnector property
 for DP
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
Cc: intel-gfx@lists.freedesktop.org, Oleg Vasilev <oleg.vasilev@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wNC0xNSBhdCAxMzowMTo1OSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24g
VHVlLCAwNyBBcHIgMjAyMCwgSmVldmFuIEIgPGplZXZhbi5iQGludGVsLmNvbT4gd3JvdGU6Cj4g
PiBGcm9tOiBPbGVnIFZhc2lsZXYgPG9sZWcudmFzaWxldkBpbnRlbC5jb20+Cj4gPgo+ID4gU2lu
Y2UgRFAtc3BlY2lmaWMgaW5mb3JtYXRpb24gaXMgc3RvcmVkIGluIGRyaXZlcidzIHN0cnVjdHVy
ZXMsIGV2ZXJ5Cj4gPiBkcml2ZXIgbmVlZHMgdG8gaW1wbGVtZW50IHN1YmNvbm5lY3RvciBwcm9w
ZXJ0eSBieSBpdHNlbGYuCj4gPgo+ID4gdjI6IHVwZGF0ZXMgdG8gbWF0Y2ggcHJldmlvdXMgY29t
bWl0IGNoYW5nZXMKPiA+Cj4gPiB2MzogcmViYXNlCj4gPgo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+ID4gU2lnbmVkLW9mZi1ieTogSmVldmFuIEIgPGplZXZhbi5iQGlu
dGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE9sZWcgVmFzaWxldiA8b2xlZy52YXNpbGV2QGlu
dGVsLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBjb2xs
YWJvcmEuY29tPgo+ID4gVGVzdGVkLWJ5OiBPbGVnIFZhc2lsZXYgPG9sZWcudmFzaWxldkBpbnRl
bC5jb20+Cj4gPiBMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
bXNnaWQvMjAxOTA4MjkxMTQ4NTQuMTUzOS00LW9sZWcudmFzaWxldkBpbnRlbC5jb20KPiAKPiBZ
b3UncmUgbm90IHN1cHBvc2VkIHRvIGFkZCB0aGUgTGluazogdGFnIHlvdXJzZWxmLgpJIHdpbGwg
ZG8gdGhlIG5lY2Vzc2FyeSBjaGFuZ2UuIAo+IAo+IFJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgpUaGFua3MKSmVldmFuIEIKPiAKPgo+ID4gLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgOCArKysrKysrKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiBpbmRleCBkYjZhZThlLi5iYTQ0M2UxIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiA+IEBAIC02MTU1LDYg
KzYxNTUsMTEgQEAgaW50ZWxfZHBfZGV0ZWN0KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IsCj4gPiAgCSAqLwo+ID4gIAlpbnRlbF9kaXNwbGF5X3Bvd2VyX2ZsdXNoX3dvcmsoZGV2X3By
aXYpOwo+ID4gIAo+ID4gKwlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCj4gPiArCQlk
cm1fZHBfc2V0X3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eShjb25uZWN0b3IsCj4gPiArCQkJCQkJIHN0
YXR1cywKPiA+ICsJCQkJCQkgaW50ZWxfZHAtPmRwY2QsCj4gPiArCQkJCQkJIGludGVsX2RwLT5k
b3duc3RyZWFtX3BvcnRzKTsKPiA+ICAJcmV0dXJuIHN0YXR1czsKPiA+ICB9Cj4gPiAgCj4gPiBA
QCAtNzIxMSw2ICs3MjE2LDkgQEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QKPiA+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRldik7Cj4g
PiAgCWVudW0gcG9ydCBwb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApLT5iYXNlLnBvcnQ7
Cj4gPiAgCj4gPiArCWlmICghaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkKPiA+ICsJCWRybV9t
b2RlX2FkZF9kcF9zdWJjb25uZWN0b3JfcHJvcGVydHkoY29ubmVjdG9yKTsKPiA+ICsKPiA+ICAJ
aWYgKCFJU19HNFgoZGV2X3ByaXYpICYmIHBvcnQgIT0gUE9SVF9BKQo+ID4gIAkJaW50ZWxfYXR0
YWNoX2ZvcmNlX2F1ZGlvX3Byb3BlcnR5KGNvbm5lY3Rvcik7Cj4gCj4gLS0gCj4gSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

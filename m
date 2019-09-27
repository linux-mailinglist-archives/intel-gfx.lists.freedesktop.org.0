Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4C7C0037
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 09:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F946EE8F;
	Fri, 27 Sep 2019 07:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C919F6EE8F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 07:44:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 00:44:50 -0700
X-IronPort-AV: E=Sophos;i="5.64,554,1559545200"; d="scan'208";a="180426485"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 00:44:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anna Karas <anna.karas@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190926123559.15717-1-anna.karas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190923124435.21774-1-anna.karas@intel.com>
 <20190926123559.15717-1-anna.karas@intel.com>
Date: Fri, 27 Sep 2019 10:44:47 +0300
Message-ID: <87y2yache8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix doc not corresponding to
 code
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

T24gVGh1LCAyNiBTZXAgMjAxOSwgQW5uYSBLYXJhcyA8YW5uYS5rYXJhc0BpbnRlbC5jb20+IHdy
b3RlOgo+IFJlcGxhY2UgUExMcyBuYW1lcyB1c2VkIGluIGRvY3VtZW50YXRpb24gdG8gdGhhdCB1
c2VkIGluIHRoZSBjb2RlLgo+Cj4gQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2Fy
bmlAaW50ZWwuY29tPgo+IEZpeGVzOiBjb21taXQgZDA1NzA0MTRmM2QxICgiZHJtL2k5MTUvdGds
OiBBZGQgbmV3IHBsbCBpZHMiKQo+IFNpZ25lZC1vZmYtYnk6IEFubmEgS2FyYXMgPGFubmEua2Fy
YXNAaW50ZWwuY29tPgoKSWYgdGhlIHByZXZpb3VzIHZlcnNpb24gb2YgeW91ciBwYXRjaCByZWNl
aXZlZCBSZXZpZXdlZC1ieSdzLCBhbmQgeW91cgpwYXRjaCBkb2VzIG5vdCBjaGFuZ2Ugc3Vic3Rh
bnRpYWxseSwgcGxlYXNlIGluY2x1ZGUgdGhlIFJldmlld2VkLWJ5IHRhZ3MKaW4gdGhlIG5ldyB2
ZXJzaW9ucy4gKE5vIG5lZWQgdG8gcmVwb3N0IGp1c3QgdG8gYWRkIHRob3NlLikKCkJSLApKYW5p
LgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5o
IHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5o
Cj4gaW5kZXggZTc1ODg3OTlmY2U1Li4xMDRjZjZkNDIzMzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCj4gQEAgLTE0NywxMSArMTQ3LDEx
IEBAIGVudW0gaW50ZWxfZHBsbF9pZCB7Cj4gIAkgKi8KPiAgCURQTExfSURfSUNMX01HUExMNCA9
IDYsCj4gIAkvKioKPiAtCSAqIEBEUExMX0lEX1RHTF9UQ1BMTDU6IFRHTCBUQyBQTEwgcG9ydCA1
IChUQzUpCj4gKwkgKiBARFBMTF9JRF9UR0xfTUdQTEw1OiBUR0wgVEMgUExMIHBvcnQgNSAoVEM1
KQo+ICAJICovCj4gIAlEUExMX0lEX1RHTF9NR1BMTDUgPSA3LAo+ICAJLyoqCj4gLQkgKiBARFBM
TF9JRF9UR0xfVENQTEw2OiBUR0wgVEMgUExMIHBvcnQgNiAoVEM2KQo+ICsJICogQERQTExfSURf
VEdMX01HUExMNjogVEdMIFRDIFBMTCBwb3J0IDYgKFRDNikKPiAgCSAqLwo+ICAJRFBMTF9JRF9U
R0xfTUdQTEw2ID0gOCwKPiAgfTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==

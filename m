Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F8735A22
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 12:05:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 072BB89145;
	Wed,  5 Jun 2019 10:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF9F89145
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 10:05:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 03:05:54 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 05 Jun 2019 03:05:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1559123462-7343-3-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
 <1559123462-7343-3-git-send-email-swati2.sharma@intel.com>
Date: Wed, 05 Jun 2019 13:08:58 +0300
Message-ID: <87pnns2vk5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7][PATCH 02/12] drm/i915: Enable
 intel_color_get_config()
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

T24gV2VkLCAyOSBNYXkgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gSW4gdGhpcyBwYXRjaCwgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpIGlzIGVu
YWJsZWQgYW5kIHN1cHBvcnQKPiBmb3IgcmVhZF9sdXRzKCkgd2lsbCBiZSBhZGRlZCBwbGF0Zm9y
bSBieSBwbGF0Zm9ybSBpbmNyZW1lbnRhbGx5Cj4gaW4gdGhlIGZvbGxvdy11cCBwYXRjaGVzLgo+
Cj4gdjQ6IC1SZW5hbWVkIGludGVsX2dldF9jb2xvcl9jb25maWcgdG8gaW50ZWxfY29sb3JfZ2V0
X2NvbmZpZyBbSmFuaV0KPiAgICAgLUFkZGVkIHRoZSB1c2VyIGVhcmx5IG9uIHN1Y2ggdGhhdCBz
dXBwb3J0IGZvciBnZXRfY29sb3JfY29uZmlnKCkKPiAgICAgIGNhbiBiZSBhZGRlZCBwbGF0Zm9y
bSBieSBwbGF0Zm9ybSBpbmNyZW1lbnRhbGx5IFtKYW5pXQo+IHY1OiAtSW5jb3JyZWN0IHBsYWNl
IGZvciBjYWxsaW5nIGludGVsX2NvbG9yX2dldF9jb25maWcoKSBpbgo+ICAgICAgaGFzd2VsbF9n
ZXRfcGlwZV9jb25maWcoKSBbVmlsbGVdCj4gdjY6IC1SZW5hbWVkIGludGVsX2NvbG9yX3JlYWRf
bHV0cygpIHRvIGludGVsX2NvbG9yX2dldF9jb25maWcoKQo+ICAgICAgW0phbmkgYW5kIFZpbGxl
XQo+Cj4gU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4KCkkgcHVzaGVkIHBhdGNoZXMgMSBhbmQgMiwgdGhhbmtzIGZvciB0aGUgcGF0Y2hlcy4KCkJS
LApKYW5pLgoKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyB8
IDQgKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMDUxNzdmMy4uM2UwMTAyOCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtODM1MSw2ICs4MzUxLDcgQEAgc3Rh
dGljIGJvb2wgaTl4eF9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4g
IAkJcGlwZV9jb25maWctPmNnbV9tb2RlID0gSTkxNV9SRUFEKENHTV9QSVBFX01PREUoY3J0Yy0+
cGlwZSkpOwo+ICAKPiAgCWk5eHhfZ2V0X3BpcGVfY29sb3JfY29uZmlnKHBpcGVfY29uZmlnKTsK
PiArCWludGVsX2NvbG9yX2dldF9jb25maWcocGlwZV9jb25maWcpOwo+ICAKPiAgCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpIDwgNCkKPiAgCQlwaXBlX2NvbmZpZy0+ZG91YmxlX3dpZGUgPSB0bXAg
JiBQSVBFQ09ORl9ET1VCTEVfV0lERTsKPiBAQCAtOTQyNiw2ICs5NDI3LDcgQEAgc3RhdGljIGJv
b2wgaXJvbmxha2VfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICAJ
cGlwZV9jb25maWctPmNzY19tb2RlID0gSTkxNV9SRUFEKFBJUEVfQ1NDX01PREUoY3J0Yy0+cGlw
ZSkpOwo+ICAKPiAgCWk5eHhfZ2V0X3BpcGVfY29sb3JfY29uZmlnKHBpcGVfY29uZmlnKTsKPiAr
CWludGVsX2NvbG9yX2dldF9jb25maWcocGlwZV9jb25maWcpOwo+ICAKPiAgCWlmIChJOTE1X1JF
QUQoUENIX1RSQU5TQ09ORihjcnRjLT5waXBlKSkgJiBUUkFOU19FTkFCTEUpIHsKPiAgCQlzdHJ1
Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbDsKPiBAQCAtOTg3NCw2ICs5ODc2LDggQEAgc3RhdGlj
IGJvb2wgaGFzd2VsbF9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4g
IAkJaTl4eF9nZXRfcGlwZV9jb2xvcl9jb25maWcocGlwZV9jb25maWcpOwo+ICAJfQo+ICAKPiAr
CWludGVsX2NvbG9yX2dldF9jb25maWcocGlwZV9jb25maWcpOwo+ICsKPiAgCXBvd2VyX2RvbWFp
biA9IFBPV0VSX0RPTUFJTl9QSVBFX1BBTkVMX0ZJVFRFUihjcnRjLT5waXBlKTsKPiAgCVdBUk5f
T04ocG93ZXJfZG9tYWluX21hc2sgJiBCSVRfVUxMKHBvd2VyX2RvbWFpbikpOwoKLS0gCkphbmkg
TmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

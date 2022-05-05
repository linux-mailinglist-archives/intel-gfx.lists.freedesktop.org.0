Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2167E51C5AF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 19:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E98110E301;
	Thu,  5 May 2022 17:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C816D10E301
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 17:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651770302; x=1683306302;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=x/SzPuvR60U8KaYPCBLprOKi3dGt1sl7zp4MAWH5inA=;
 b=Vjqw1wh9LjJ2s1B21o/rouTMQ3pp1uiUXMklEeVqZMq9oP+Xw2FNm2zS
 GcymH1i0UEJ8FbJ1eTLkb3Gwa1WF+KSbGdwRnT5uls3PJZX5/vA9tsvT9
 5BDsHpO90qrws8fj5594G/vxzm0YMjyq6J5XyBiIMdxkVxjTmgZKnG5ZW
 QFnuV5aZIps4x0RpkCDtCiFLn04Cn6EenM6JPPzU3roPIRRuDWjK+R6bR
 MU5h21iuKDgEy8HcqIPExJkFSklBBkZXLBQ4KtEE255C4CMUIf2IiaAIm
 ujt6qO8gc2DrrsO/63380eVdckVz6fZPOcpxIUYsE/XiFFJERF5cLUR7+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="267027775"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="267027775"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 10:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="549443761"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 05 May 2022 10:04:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 5 May 2022 10:04:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 5 May 2022 10:04:59 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Thu, 5 May 2022 10:04:59 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dmc: Load DMC on DG2
Thread-Index: AQHYYKHRcFQuGFd0HkyiZMWX75k5DK0Q+JQA
Date: Thu, 5 May 2022 17:04:59 +0000
Message-ID: <0830fe66c23777fb4ffe9809187cae023e4176cd.camel@intel.com>
References: <20220505165804.814035-1-anusha.srivatsa@intel.com>
 <20220505165804.814035-2-anusha.srivatsa@intel.com>
In-Reply-To: <20220505165804.814035-2-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-5.fc34) 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <28DC7A5D2C016E49AAE5E9BCAE2DCA20@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on DG2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTA1LTA1IGF0IDA5OjU4IC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
Cj4gQWRkIFN1cHBvcnQgZm9yIERDIHN0YXRlcyBvbiBEZzIuCj4gCj4gdjI6IEFkZCBkYzkgYXMg
dGhlIG1heCBzdXBwb3J0ZWQgREMgc3RhdGVzIGFuZCBkaXNhYmxlIERDNS4KPiB2Mzogc2V0IG1h
eF9kYyB0byAwLiAoSW1yZSkKPiAKPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+IFJldmll
d2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+KHYxKQo+IC0tLQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfMKg
IDQgKysrLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuY8KgwqDC
oMKgwqDCoMKgwqDCoMKgIHwgMTAgKysrKysrKysrLQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiBpbmRleCAxZDliZDU4MDg4
NDkuLjE1YjE1ZjQzNGZjZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gQEAgLTkwNyw3ICs5MDcsOSBAQCBzdGF0aWMg
dTMyIGdldF9hbGxvd2VkX2RjX21hc2soY29uc3Qgc3RydWN0Cj4gZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCj4gwqDCoMKgwqDCoMKgwqDCoGlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gwqAKPiAtwqDCoMKg
wqDCoMKgwqBpZiAoSVNfREcxKGRldl9wcml2KSkKPiArwqDCoMKgwqDCoMKgwqBpZiAoSVNfREcy
KGRldl9wcml2KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2RjID0gMDsK
ClBsZWFzZSBhZGQgYSAvKiBGSVhNRTogKi8KZXhwbGFpbmluZyB0aGUgREM1IGJ1Z3MgdGhhdCBh
cmUgdW5kZXIgaW52ZXN0aWdhdGlvbiBvciBzb21ldGhpbmcgbGlrZQp0aGF0Li4uIGFuZCB0aGF0
IERDOSBkb2Vzbid0IGRlcGVuZCBvbiBETUMsIGJ1dCB3ZSBhcmUgbG9hZGluZyBpdAppbiBvcmRl
ciB0byB1bmJsb2NrIHRoZSBydW50aW1lX3BtLgoKPiArwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChJ
U19ERzEoZGV2X3ByaXYpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2Rj
ID0gMzsKPiDCoMKgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDEyKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2RjID0gNDsKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYwo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYwo+IGluZGV4IDI1N2NmNjYyZjlm
NC4uMmYwMWFjYTRkOTgxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZG1jLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RtYy5jCj4gQEAgLTUyLDYgKzUyLDEwIEBACj4gwqAKPiDCoCNkZWZpbmUgRElTUExBWV9WRVIx
Ml9ETUNfTUFYX0ZXX1NJWkXCoMKgSUNMX0RNQ19NQVhfRldfU0laRQo+IMKgCj4gKyNkZWZpbmUg
REcyX0RNQ19QQVRIwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBETUNfUEFU
SChkZzIsIDIsIDA2KQo+ICsjZGVmaW5lIERHMl9ETUNfVkVSU0lPTl9SRVFVSVJFRMKgwqDCoMKg
wqDCoMKgRE1DX1ZFUlNJT04oMiwgMDYpCj4gK01PRFVMRV9GSVJNV0FSRShERzJfRE1DX1BBVEgp
Owo+ICsKPiDCoCNkZWZpbmUgQURMUF9ETUNfUEFUSMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoERNQ19QQVRIKGFkbHAsIDIsIDE2KQo+IMKgI2RlZmluZSBBRExQX0RNQ19WRVJT
SU9OX1JFUVVJUkVEwqDCoMKgwqDCoMKgRE1DX1ZFUlNJT04oMiwgMTYpCj4gwqBNT0RVTEVfRklS
TVdBUkUoQURMUF9ETUNfUEFUSCk7Cj4gQEAgLTY4OCw3ICs2OTIsMTEgQEAgdm9pZCBpbnRlbF9k
bWNfdWNvZGVfaW5pdChzdHJ1Y3QKPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiDCoMKg
wqDCoMKgwqDCoMKgICovCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2RtY19ydW50aW1lX3BtX2dl
dChkZXZfcHJpdik7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAoSVNfQUxERVJMQUtFX1AoZGV2
X3ByaXYpKSB7Cj4gK8KgwqDCoMKgwqDCoMKgaWYgKElTX0RHMihkZXZfcHJpdikpIHsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5md19wYXRoID0gREcyX0RNQ19QQVRIOwo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWMtPnJlcXVpcmVkX3ZlcnNpb24gPSBE
RzJfRE1DX1ZFUlNJT05fUkVRVUlSRUQ7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGRtYy0+bWF4X2Z3X3NpemUgPSBESVNQTEFZX1ZFUjEzX0RNQ19NQVhfRldfU0laRTsKPiArwqDC
oMKgwqDCoMKgwqB9IGVsc2UgaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgewo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZG1jLT5md19wYXRoID0gQURMUF9ETUNfUEFUSDsK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYy0+cmVxdWlyZWRfdmVyc2lvbiA9
IEFETFBfRE1DX1ZFUlNJT05fUkVRVUlSRUQ7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBkbWMtPm1heF9md19zaXplID0gRElTUExBWV9WRVIxM19ETUNfTUFYX0ZXX1NJWkU7Cgo=

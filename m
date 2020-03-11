Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48088181C83
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 16:41:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E8F88089;
	Wed, 11 Mar 2020 15:41:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D4E88089
 for <Intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 15:41:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 08:41:16 -0700
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="231727513"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 11 Mar 2020 08:41:14 -0700
To: "Ye, Tony" <tony.ye@intel.com>, Intel-gfx@lists.freedesktop.org
References: <20200310091927.27401-1-tvrtko.ursulin@linux.intel.com>
 <cef7ba32-4f19-342b-ddcf-56d63371f3c4@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <304510a0-5681-565f-e981-764e7848915d@linux.intel.com>
Date: Wed, 11 Mar 2020 15:41:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <cef7ba32-4f19-342b-ddcf-56d63371f3c4@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaEnablePreemptionGranularityControlByUMD
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzAzLzIwMjAgMTU6MTEsIFllLCBUb255IHdyb3RlOgo+IAo+IAo+IE9uIDMvMTAvMjAy
MCA1OjE5IFBNLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4KPj4gQ2VydGFpbiB3b3JrbG9hZHMgbmVlZCB0
aGUgYWJpbGl0eSB0byBkaXNhYmxlIHByZWVtcHRpb24gY29tcGxldGVseSBzbwo+PiBhbGxvdyB0
aGVtIHRvIGRvIHRoYXQgYnkgd2hpdGVsaXN0aW5nIEdFTjhfQ1NfQ0hJQ0tFTjEuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+
IENjOiBNaWNoYWwgTXJvemVrIDxtaWNoYWwubXJvemVrQGludGVsLmNvbT4KPj4gQ2M6IFRvbnkg
WWUgPHRvbnkueWVAaW50ZWwuY29tPgo+PiBDYzogUmFmYWVsIEFudG9nbm9sbGkgPHJhZmFlbC5h
bnRvZ25vbGxpQGludGVsLmNvbT4KPj4gQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3Ry
YW5kLm5ldD4KPj4gLS0tCj4+IFdlIG5lZWQgY29uZmlybWF0aW9uIGFuZCBhY2tzIGZyb20gYWxs
IHRocmVlIHVzZXJzcGFjZSBjb21wb25lbnRzIGhlcmUuCj4+IEVzcGVjaWFsbHkgc2luY2UgbXkg
aW1wcmVzc2lvbiB3YXMgc29tZSBhcmUgZm9yIGFuZCBzb21lIHdlcmUgYWdhaW5zdAo+PiB3aGl0
ZWxpc3RpbmcgdGhpcyBvbmUuCj4gCj4gTWVkaWEgZG9lc24ndCBuZWVkIHRoaXMgZm9yIFRHTC4g
QnV0IGl0J3MgYWNjZXB0YWJsZSBpZiBvdGhlciB1c2Vyc3BhY2UgCj4gd2FudHMgdG8gd2hpdGVs
aXN0IGl0Lgo+IAo+IEFja2VkLWJ5OiBUb255IFllIDx0b255LnllQGludGVsLmNvbT4KCkphc29u
LCBSYWZhZWwgLSBhbnkgb2JqZWN0aW9ucz8KClJlZ2FyZHMsCgpUdnJ0a28KCgo+IC0tLQo+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMyArKysKPj4g
wqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyAKPj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+IGluZGV4IDM5MWYzOWIxZmIyNi4u
MzdiZWNkZjc3NDI3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKPj4gQEAgLTEyNzYsNiArMTI3Niw5IEBAIHN0YXRpYyB2b2lkIHRnbF93aGl0
ZWxpc3RfYnVpbGQoc3RydWN0IAo+PiBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIC8qIFdhXzE4MDY1Mjc1NDk6dGdsICovCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCB3aGl0ZWxpc3RfcmVnKHcsIEhJWl9DSElDS0VOKTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAg
LyogV2FFbmFibGVQcmVlbXB0aW9uR3JhbnVsYXJpdHlDb250cm9sQnlVTUQ6dGdsICovCj4+ICvC
oMKgwqDCoMKgwqDCoCB3aGl0ZWxpc3RfcmVnKHcsIEdFTjhfQ1NfQ0hJQ0tFTjEpOwo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+IMKgwqDCoMKgwqAgZGVmYXVsdDoKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIGJyZWFrOwo+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK

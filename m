Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F773D705C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 09:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024398925D;
	Tue, 15 Oct 2019 07:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108108925D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 07:44:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 00:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,298,1566889200"; d="scan'208";a="208130929"
Received: from alocicer-mobl1.ger.corp.intel.com (HELO [10.249.38.45])
 ([10.249.38.45])
 by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2019 00:44:54 -0700
To: Chris Wilson <chris.p.wilson@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191014185531.62855-1-umesh.nerlige.ramappa@intel.com>
 <20191014185531.62855-3-umesh.nerlige.ramappa@intel.com>
 <157108312064.22469.13636294705819353027@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <8a72ef9e-4353-8bda-1a96-eb67d4e363e9@intel.com>
Date: Tue, 15 Oct 2019 10:44:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157108312064.22469.13636294705819353027@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/perf: enable OAR context
 save/restore of performance counters
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTQvMTAvMjAxOSAyMjo1OCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVW1lc2gg
TmVybGlnZSBSYW1hcHBhICgyMDE5LTEwLTE0IDE5OjU1OjMxKQo+PiBAQCAtMjMxMyw2ICsyMzc3
LDE3IEBAIHN0YXRpYyBpbnQgbHJjX2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoc3RydWN0IGk5MTVf
cGVyZl9zdHJlYW0gKnN0cmVhbSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBl
cnI7Cj4+ICAgICAgICAgICAgICAgICAgfQo+PiAgIAo+PiArICAgICAgICAgICAgICAgLyoKPj4g
KyAgICAgICAgICAgICAgICAqIEZvciBHZW4xMiwgcGVyZm9ybWFuY2UgY291bnRlcnMgYXJlIGNv
bnRleHQKPj4gKyAgICAgICAgICAgICAgICAqIHNhdmVkL3Jlc3RvcmVkLiBPbmx5IGVuYWJsZSBp
dCBmb3IgdGhlIGNvbnRleHQgdGhhdAo+PiArICAgICAgICAgICAgICAgICogcmVxdWVzdGVkIHRo
aXMuCj4+ICsgICAgICAgICAgICAgICAgKi8KPj4gKyAgICAgICAgICAgICAgIGlmIChjdHggPT0g
c3RyZWFtLT5jdHggJiYgSVNfR0VOKGk5MTUsIDEyKSkgewo+PiArICAgICAgICAgICAgICAgICAg
ICAgICBlcnIgPSBnZW4xMl9jb25maWd1cmVfY29udGV4dF9vYXIoY3R4LCBvYV9jb25maWcgIT0g
TlVMTCk7Cj4KPiByZWdzW0NUWF9DT05URVhUX0NPTlRST0xdIHw9IGludGVsX2xyY19tYWtlX2N0
eF9jb250cm9sKGVuZ2luZSk7Cj4KPiBjYW4gYmUgbW9kaWZpZWQgd2l0aCBhIHBsYWluIExSSSAo
YXQgbGVhc3QgSSBoYXZlIHN1Y2Nlc3NmdWxseSBtb2RpZmllZAo+IElOSElCSVRfU1lOX0NUWCBi
ZWZvcmUpLiBIYXZlIHlvdSB0cmllZCBqdXN0IGVtaXR0aW5nIGFuIExSSSBpbiB0aGUgcGlubmVk
Cj4gY29udGV4dD8KPiAtQ2hyaXMKPgpOb3QgeWV0LCBnb29kIHRvIGtub3cgOikKClNvdW5kcyBh
IGxvdCBzaW1wbGVyLgoKCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BBF1AB11F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 21:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BB06EA84;
	Wed, 15 Apr 2020 19:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA7626E27C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 19:17:01 +0000 (UTC)
IronPort-SDR: tSfx+abqfndEf49f5n6Q6oNivvr20n5UhlnhXs4ua+rExIiwVmN7aizE4m2xjzc1zYT3mabYd2
 2zK5hC5NANQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 12:17:01 -0700
IronPort-SDR: H0FTW+ZZaLYNxTBpazQoenzTZeqjIiRCVQ23YjOxyQCicJ+fNjS8dBRO9KAkNB9g1XRErekcwP
 NLmuiUPJRamQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="288640377"
Received: from iohevzio-mobl1.ger.corp.intel.com (HELO [10.252.61.249])
 ([10.252.61.249])
 by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2020 12:16:59 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
 <20200413154822.11620-2-umesh.nerlige.ramappa@intel.com>
 <6fd2488e-4a76-cb94-12b2-a61ab7f4bfe2@intel.com>
 <20200415185502.GA16071@orsosgc001.amr.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <735096bd-524b-f68e-086f-d1b7c11a23d1@intel.com>
Date: Wed, 15 Apr 2020 22:16:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200415185502.GA16071@orsosgc001.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Reduce cpu overhead for
 blocking perf OA reads
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTUvMDQvMjAyMCAyMTo1NSwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IE9uIFdl
ZCwgQXByIDE1LCAyMDIwIGF0IDAxOjAwOjMwUE0gKzAzMDAsIExpb25lbCBMYW5kd2VybGluIHdy
b3RlOgo+PiBPbiAxMy8wNC8yMDIwIDE4OjQ4LCBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgd3JvdGU6
Cj4+PiBBIGNvbmRpdGlvbiBpbiB3YWl0X2V2ZW50X2ludGVycnVwdGlibGUgc2VlbXMgdG8gYmUg
Y2hlY2tlZCB0d2ljZSAKPj4+IGJlZm9yZQo+Pj4gd2FpdGluZyBvbiB0aGUgZXZlbnQgdG8gb2Nj
dXIuIFRoZXNlIGNoZWNrcyBhcmUgcmVkdW5kYW50IHdoZW4gaHJ0aW1lcgo+Pj4gZXZlbnRzIHdp
bGwgY2FsbCBvYV9idWZmZXJfY2hlY2tfdW5sb2NrZWQgdG8gdXBkYXRlIHRoZSBvYV9idWZmZXIg
dGFpbAo+Pj4gcG9pbnRlcnMuIFRoZSByZWR1bmRhbnQgY2hlY2tzIGFkZCBjcHUgb3ZlcmhlYWQu
IFNpbXBsaWZ5IHRoZSBjaGVjawo+Pj4gdG8gcmVkdWNlIGNwdSBvdmVyaGVhZCB3aGVuIHVzaW5n
IGJsb2NraW5nIGlvIHRvIHJlYWQgb2EgYnVmZmVyIAo+Pj4gcmVwb3J0cy4KPj4+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxpZ2UucmFtYXBwYUBp
bnRlbC5jb20+Cj4+Cj4+Cj4+IEkgY2hlcnJ5IHBpY2tlZCB0aGlzIHBhdGNoIGFsb25lIGFuZCBp
dCBzZWVtcyB0byBicmVhayB0aGUgCj4+IGRpc2FibGVkLXJlYWQtZXJyb3IgdGVzdC4KPgo+IFN0
cmFuZ2UuIEkgZG9uJ3Qgc2VlIGl0IGZhaWwgb24gbXkgQ0ZMLiBJIGFtIGFwcGx5IHRoaXMgb24g
dGhlIGxhdGVzdCAKPiBkcm0tdGlwIGZyb20geWVzdGVyZGF5Lgo+Cj4gVGhlIHBhdGNoIHN0aWxs
IGNoZWNrcyBpZiByZXBvcnRzIGFyZSBhdmFpbGFibGUgYmVmb3JlIGJsb2NraW5nLiBUaGUgCj4g
YmVoYXZpb3Igc2hvdWxkIHN0aWxsIGJlIHRoZSBzYW1lIHcuci50IHRoaXMgdGVzdC4KPgo+IFdo
YXQgbWFjaGluZSBkaWQgeW91IHJ1biBpdCBvbj8gSSB3aWxsIHRyeSBvbiB0aGUgc2FtZS4gQW55
IGNoYW5jZSB5b3UgCj4gaGF2ZSB0aGUgZGVidWcgb3V0cHV0IGZyb20gdGhlIHRlc3Q/Cj4KPiBU
aGFua3MsCj4gVW1lc2gKPgoKSSBnb3QgdGhhdCBvbiBTS0wgR1Q0IDogaHR0cDovL3Bhc3RlLmRl
Ymlhbi5uZXQvMTE0MDYwNC8KCgpUaGFua3MsCgoKLUxpb25lbAoKCj4+Cj4+Cj4+PiAtLS0KPj4+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCAyOCArKysrKysrKysrKysrKysr
KysrKysrKysrKystCj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGVyZi5jIAo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+Pj4gaW5kZXgg
NWNkZTNlNGU3YmU2Li5lMjhhM2FiODNmZGUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
ZXJmLmMKPj4+IEBAIC01NDEsNiArNTQxLDMyIEBAIHN0YXRpYyBib29sIG9hX2J1ZmZlcl9jaGVj
a191bmxvY2tlZChzdHJ1Y3QgCj4+PiBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4+PiDCoMKg
wqDCoCByZXR1cm4gcG9sbGluOwo+Pj4gwqB9Cj4+PiArLyoqCj4+PiArICogb2FfYnVmZmVyX2No
ZWNrX3JlcG9ydHMgLSBxdWljayBjaGVjayBpZiByZXBvcnRzIGFyZSBhdmFpbGFibGUKPj4+ICsg
KiBAc3RyZWFtOiBpOTE1IHN0cmVhbSBpbnN0YW5jZQo+Pj4gKyAqCj4+PiArICogVGhlIHJldHVy
biBmcm9tIHRoaXMgZnVuY3Rpb24gaXMgdXNlZCBhcyBhIGNvbmRpdGlvbiBmb3IKPj4+ICsgKiB3
YWl0X2V2ZW50X2ludGVycnVwdGlibGUgaW4gYmxvY2tpbmcgcmVhZC4gVGhpcyBpcyB1c2VkIHRv
IGRldGVjdAo+Pj4gKyAqIGF2YWlsYWJsZSByZXBvcnRzLgo+Pj4gKyAqCj4+PiArICogQSBjb25k
aXRpb24gaW4gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlIHNlZW1zIHRvIGJlIGNoZWNrZWQgCj4+
PiB0d2ljZSBiZWZvcmUKPj4+ICsgKiB3YWl0aW5nIG9uIGFuIGV2ZW50IHRvIG9jY3VyLiBUaGVz
ZSBjaGVja3MgYXJlIHJlZHVuZGFudCB3aGVuIAo+Pj4gaHJ0aW1lciBldmVudHMKPj4+ICsgKiB3
aWxsIGNhbGwgb2FfYnVmZmVyX2NoZWNrX3VubG9ja2VkIHRvIHVwZGF0ZSB0aGUgb2FfYnVmZmVy
IHRhaWwgCj4+PiBwb2ludGVycy4gVGhlCj4+PiArICogcmVkdW5kYW50IGNoZWNrcyBhZGQgY3B1
IG92ZXJoZWFkLiBXZSBzaW1wbGlmeSB0aGUgY2hlY2sgdG8gCj4+PiByZWR1Y2UgY3B1Cj4+PiAr
ICogb3ZlcmhlYWQuCj4+PiArICovCj4+PiArc3RhdGljIGJvb2wgb2FfYnVmZmVyX2NoZWNrX3Jl
cG9ydHMoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPj4+ICt7Cj4+PiArwqDCoMKg
IHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+PiArwqDCoMKgIGJvb2wgYXZhaWxhYmxlOwo+Pj4gKwo+
Pj4gK8KgwqDCoCBzcGluX2xvY2tfaXJxc2F2ZSgmc3RyZWFtLT5vYV9idWZmZXIucHRyX2xvY2ss
IGZsYWdzKTsKPj4+ICvCoMKgwqAgYXZhaWxhYmxlID0gc3RyZWFtLT5vYV9idWZmZXIudGFpbCAh
PSBzdHJlYW0tPm9hX2J1ZmZlci5oZWFkOwo+Pj4gKyBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZz
dHJlYW0tPm9hX2J1ZmZlci5wdHJfbG9jaywgZmxhZ3MpOwo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1
cm4gYXZhaWxhYmxlOwo+Pj4gK30KPj4+ICsKPj4+IMKgLyoqCj4+PiDCoCAqIGFwcGVuZF9vYV9z
dGF0dXMgLSBBcHBlbmRzIGEgc3RhdHVzIHJlY29yZCB0byBhIHVzZXJzcGFjZSByZWFkKCkgCj4+
PiBidWZmZXIuCj4+PiDCoCAqIEBzdHJlYW06IEFuIGk5MTUtcGVyZiBzdHJlYW0gb3BlbmVkIGZv
ciBPQSBtZXRyaWNzCj4+PiBAQCAtMTE1MCw3ICsxMTc2LDcgQEAgc3RhdGljIGludCBpOTE1X29h
X3dhaXRfdW5sb2NrZWQoc3RydWN0IAo+Pj4gaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTzsKPj4+IMKgwqDCoMKgIHJldHVybiB3YWl0X2V2
ZW50X2ludGVycnVwdGlibGUoc3RyZWFtLT5wb2xsX3dxLAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9hX2J1ZmZlcl9jaGVja191bmxvY2tlZChzdHJlYW0pKTsK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvYV9idWZmZXJfY2hl
Y2tfcmVwb3J0cyhzdHJlYW0pKTsKPj4+IMKgfQo+Pj4gwqAvKioKPj4KPj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

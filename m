Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E16B6893
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 18:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96476F418;
	Wed, 18 Sep 2019 16:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F40F56F418
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 16:59:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 09:59:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; d="scan'208";a="194112434"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Sep 2019 09:59:19 -0700
Date: Wed, 18 Sep 2019 09:59:19 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20190918165919.GB1279@orsosgc001.amr.corp.intel.com>
References: <20190913230620.15906-1-umesh.nerlige.ramappa@intel.com>
 <20190913230620.15906-3-umesh.nerlige.ramappa@intel.com>
 <814defdf-c6d6-c009-f454-67b2a09b32a1@intel.com>
 <20190916191754.GA72596@orsosgc001.amr.corp.intel.com>
 <2dca205b-4045-1583-565b-c0e12a1e8800@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2dca205b-4045-1583-565b-c0e12a1e8800@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/perf: Add support for report
 sizes that are not power of 2
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMTE6MjE6MDFBTSArMDMwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5PbiAxNi8wOS8yMDE5IDIyOjE3LCBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgd3Jv
dGU6Cj4+T24gU3VuLCBTZXAgMTUsIDIwMTkgYXQgMDI6MjQ6NDFQTSArMDMwMCwgTGlvbmVsIExh
bmR3ZXJsaW4gd3JvdGU6Cj4+Pk9uIDE0LzA5LzIwMTkgMDI6MDYsIFVtZXNoIE5lcmxpZ2UgUmFt
YXBwYSB3cm90ZToKPj4+Pk9BIHBlcmYgdW5pdCBzdXBwb3J0cyBub24tcG93ZXIgb2YgMiByZXBv
cnQgc2l6ZXMuIEVuYWJsZSBzdXBwb3J0IGZvcgo+Pj4+dGhlc2Ugc2l6ZXMgaW4gdGhlIGRyaXZl
ci4KPj4+Pgo+Pj4+U2lnbmVkLW9mZi1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5u
ZXJsaWdlLnJhbWFwcGFAaW50ZWwuY29tPgo+Pj4+LS0tCj4+Pj7CoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGVyZi5jIHwgNTkgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+
PsKgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDM4IGRlbGV0aW9ucygtKQo+Pj4+
Cj4+Pj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgCj4+Pj5i
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+Pj5pbmRleCA1MGI2ZDE1NGZkNDYu
LjQ4MmZjYTNkYTdkZSAxMDA2NDQKPj4+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGVyZi5jCj4+Pj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+Pj4+QEAg
LTQ1MCw3ICs0NTAsNyBAQCBzdGF0aWMgYm9vbCBvYV9idWZmZXJfY2hlY2tfdW5sb2NrZWQoc3Ry
dWN0IAo+Pj4+aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+Pj4+wqDCoMKgwqAgdTMyIGd0dF9v
ZmZzZXQgPSBpOTE1X2dndHRfb2Zmc2V0KHN0cmVhbS0+b2FfYnVmZmVyLnZtYSk7Cj4+Pj7CoMKg
wqDCoCBpbnQgcmVwb3J0X3NpemUgPSBzdHJlYW0tPm9hX2J1ZmZlci5mb3JtYXRfc2l6ZTsKPj4+
PsKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+Pj4twqDCoMKgIHUzMiBod190YWlsOwo+
Pj4+K8KgwqDCoCB1MzIgaHdfdGFpbCwgYWdpbmdfdGFpbDsKPj4+PsKgwqDCoMKgIHU2NCBub3c7
Cj4+Pj7CoMKgwqDCoCAvKiBXZSBoYXZlIHRvIGNvbnNpZGVyIHRoZSAodW5saWtlbHkpIHBvc3Np
YmlsaXR5IHRoYXQgCj4+Pj5yZWFkKCkgZXJyb3JzCj4+Pj5AQCAtNDU5LDE2ICs0NTksMTcgQEAg
c3RhdGljIGJvb2wgCj4+Pj5vYV9idWZmZXJfY2hlY2tfdW5sb2NrZWQoc3RydWN0IGk5MTVfcGVy
Zl9zdHJlYW0gKnN0cmVhbSkKPj4+PsKgwqDCoMKgwqAgKi8KPj4+PsKgwqDCoMKgIHNwaW5fbG9j
a19pcnFzYXZlKCZzdHJlYW0tPm9hX2J1ZmZlci5wdHJfbG9jaywgZmxhZ3MpOwo+Pj4+LcKgwqDC
oCBod190YWlsID0gZGV2X3ByaXYtPnBlcmYub3BzLm9hX2h3X3RhaWxfcmVhZChzdHJlYW0pOwo+
Pj4+K8KgwqDCoCBod190YWlsID0gZGV2X3ByaXYtPnBlcmYub3BzLm9hX2h3X3RhaWxfcmVhZChz
dHJlYW0pIC0gZ3R0X29mZnNldDsKPj4+PivCoMKgwqAgYWdpbmdfdGFpbCA9IHN0cmVhbS0+b2Ff
YnVmZmVyLmFnaW5nX3RhaWwgLSBndHRfb2Zmc2V0Owo+Pj4+wqDCoMKgwqAgLyogVGhlIHRhaWwg
cG9pbnRlciBpbmNyZWFzZXMgaW4gNjQgYnl0ZSBpbmNyZW1lbnRzLAo+Pj4+wqDCoMKgwqDCoCAq
IG5vdCBpbiByZXBvcnRfc2l6ZSBzdGVwcy4uLgo+Pj4+wqDCoMKgwqDCoCAqLwo+Pj4+LcKgwqDC
oCBod190YWlsICY9IH4ocmVwb3J0X3NpemUgLSAxKTsKPj4+PivCoMKgwqAgaHdfdGFpbCA9IE9B
X1RBS0VOKGh3X3RhaWwsIChPQV9UQUtFTihod190YWlsLCBhZ2luZ190YWlsKSAKPj4+PiUgcmVw
b3J0X3NpemUpKTsKPj4+Cj4+Pgo+Pj5JJ20gc3RydWdnbGluZyB0byBwYXJzZSB0aGlzIGxpbmUg
YWJvdmUgYW5kIEknbSBub3QgMTAwJSBzdXJlIGl0J3MgCj4+PmNvcnJlY3QuCj4+Pgo+Pj5Db3Vs
ZCBhZGQgYSBjb21tZW50IHRvIGV4cGxhaW4gd2hhdCBpcyBnb2luZyBvbj8KPj4KPj5UaGUgYWdp
bmcgdGFpbCBpcyBhbHdheXMgcG9pbnRpbmcgdG8gdGhlIGJvdW5kYXJ5IG9mIGEgcmVwb3J0IHdo
ZXJlYXMKPj50aGUgaHdfdGFpbCBpcyBhZHZhbmNpbmcgaW4gNjQgYnl0ZSBpbmNyZW1lbnRzLgo+
Pgo+PlRoZSBpbm5lcm1vc3QgT0FfVEFLRU4gaXMgcmV0dXJuaW5nIHRoZSBudW1iZXIgb2YgYnl0
ZXMgYmV0d2VlbiB0aGUKPj5od190YWlsIGFuZCB0aGUgYWdpbmdfdGFpbC4gVGhlIG1vZHVsbyBp
cyBnZXR0aW5nIHRoZSBzaXplIG9mIHRoZQo+PnBhcnRpYWwgcmVwb3J0IChpZiBhbnkpLgo+Pgo+
PlRoZSBvdXRlcm1vc3QgT0FfVEFLRU4gaXMgc3VidHJhY3RpbmcgdGhlIHNpemUgb2YgcGFydGlh
bCByZXBvcnQgZnJvbQo+PnRoZSBod190YWlsIHRvIGdldCBhIGh3X3RhaWwgdGhhdCBwb2ludHMg
dG8gdGhlIGJvdW5kYXJ5IG9mIHRoZSBsYXN0Cj4+ZnVsbCByZXBvcnQuCj4+Cj4+VGhlIHZhbHVl
IG9mIGh3X3RhaWwgd291bGQgYmUgdGhlIHNhbWUgYXMgZnJvbSB0aGUgZGVsZXRlZCBsaW5lIG9m
IGNvZGUKPj5hYm92ZSB0aGlzIGxpbmUuCj4+Cj4+VGhhbmtzLAo+PlVtZXNoCj4KPgo+VGhhbmtz
LCBJIHJhbiBhIGZldyB0ZXN0cyBsb2NhbGx5IHRvIGNvbnZpbmNlIG15c2VsZiBpdCdzIGNvcnJl
Y3QgOikKPgo+Cj5JdCdzIHN0aWxsIGEgYml0IGRpZmZpY3VsdCB0byBwYXJzZSwgcHJvYmFibHkg
YmVjYXVzZSBPQV9UQUtFTigpIAo+d2Fzbid0IG1lYW50IGZvciB0aGlzLgo+Cj5Db3VsZCBjcmVh
dGUgYSBoZWxwZXIgZnVuY3Rpb24gdGhhdCBkb2VzIHRoaXMgY29tcHV0YXRpb24sIHNvbWV0aGlu
ZyAKPmxpa2UgdGhpcyA6Cj4KPgo+c3RhdGljIGlubGluZSB1MzIgYWxpZ25faHdfdGFpbF90b19y
ZXBvcnRfYm91bmRhcnkodTMyIGh3X3RhaWwsIHUzMiAKPmxhc3RfYWxpZ25lZF90YWlsKQo+Cj57
Cj4KPsKgwqDCoCAvKiBDb21wdXRlIHBvdGVudGlhbGx5IHBhcnRpYWxseSBsYW5kZWQgcmVwb3J0
IGluIHRoZSBPQSBidWZmZXIgKi8KPgo+wqDCoMKgIHUzMiBwYXJ0aWFsX3JlcG9ydF9zaXplID0g
T0FfVEFLRU4oaHdfdGFpbCwgbGFzdF9hbGlnbmVkX3RhaWwpICUgCj5yZXBvcnRfc2l6ZTsKPgo+
wqDCoMKgIC8qIFN1YnN0cmFjdCB0aGF0IHBhcnRpYWwgYW1vdW50IG9mZiB0aGUgdGFpbC4gKi8K
Pgo+wqDCoMKgIHJldHVybiAoaHdfdGFpbCAtIHBhcnRpYWxfcmVwb3J0X3NpemUpICUgT0FfQlVG
RkVSX1NJWkU7Cj4KPn0KClN1cmUsIEkgY2FuIGFkZCBhIGhlbHBlciBmdW5jdGlvbiB0byBtYWtl
IHRoaXMgbW9yZSByZWFkYWJsZS4KClRoYW5rcywKVW1lc2gKCj4KPgo+Q2hlZXJzLAo+Cj4KPi1M
aW9uZWwKPgo+Cj4+Cj4+Pgo+Pj4KPj4+VGhhbmtzLAo+Pj4KPj4+Cj4+Pi1MaW9uZWwKPj4+Cj4+
Pgo+Pj4+wqDCoMKgwqAgbm93ID0ga3RpbWVfZ2V0X21vbm9fZmFzdF9ucygpOwo+Pj4+LcKgwqDC
oCBpZiAoaHdfdGFpbCA9PSBzdHJlYW0tPm9hX2J1ZmZlci5hZ2luZ190YWlsKSB7Cj4+Pj4rwqDC
oMKgIGlmIChod190YWlsID09IGFnaW5nX3RhaWwpIHsKPj4+PsKgwqDCoMKgwqDCoMKgwqAgLyog
SWYgdGhlIEhXIHRhaWwgaGFzbid0IG1vdmUgc2luY2UgdGhlIGxhc3QgY2hlY2sgYW5kIHRoZSBI
Vwo+Pj4+wqDCoMKgwqDCoMKgwqDCoMKgICogdGFpbCBoYXMgYmVlbiBhZ2luZyBmb3IgbG9uZyBl
bm91Z2gsIGRlY2xhcmUgaXQgdGhlIG5ldwo+Pj4+wqDCoMKgwqDCoMKgwqDCoMKgICogdGFpbC4K
Pj4+PkBAIC00ODYsOCArNDg3LDYgQEAgc3RhdGljIGJvb2wgb2FfYnVmZmVyX2NoZWNrX3VubG9j
a2VkKHN0cnVjdCAKPj4+Pmk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPj4+PsKgwqDCoMKgwqDC
oMKgwqDCoCAqIGEgcmVhZCgpIGluIHByb2dyZXNzLgo+Pj4+wqDCoMKgwqDCoMKgwqDCoMKgICov
Cj4+Pj7CoMKgwqDCoMKgwqDCoMKgIGhlYWQgPSBzdHJlYW0tPm9hX2J1ZmZlci5oZWFkIC0gZ3R0
X29mZnNldDsKPj4+Pi0KPj4+Pi3CoMKgwqDCoMKgwqDCoCBod190YWlsIC09IGd0dF9vZmZzZXQ7
Cj4+Pj7CoMKgwqDCoMKgwqDCoMKgIHRhaWwgPSBod190YWlsOwo+Pj4+wqDCoMKgwqDCoMKgwqDC
oCAvKiBXYWxrIHRoZSBzdHJlYW0gYmFja3dhcmQgdW50aWwgd2UgZmluZCBhdCBsZWFzdCAyIHJl
cG9ydHMKPj4+PkBAIC02MTMsNyArNjEyLDE4IEBAIHN0YXRpYyBpbnQgYXBwZW5kX29hX3NhbXBs
ZShzdHJ1Y3QgCj4+Pj5pOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4+Pj7CoMKgwqDCoCBidWYg
Kz0gc2l6ZW9mKGhlYWRlcik7Cj4+Pj7CoMKgwqDCoCBpZiAoc2FtcGxlX2ZsYWdzICYgU0FNUExF
X09BX1JFUE9SVCkgewo+Pj4+LcKgwqDCoMKgwqDCoMKgIGlmIChjb3B5X3RvX3VzZXIoYnVmLCBy
ZXBvcnQsIHJlcG9ydF9zaXplKSkKPj4+PivCoMKgwqDCoMKgwqDCoCB1OCAqb2FfYnVmX2VuZCA9
IHN0cmVhbS0+b2FfYnVmZmVyLnZhZGRyICsgT0FfQlVGRkVSX1NJWkU7Cj4+Pj4rwqDCoMKgwqDC
oMKgwqAgaW50IHJlcG9ydF9zaXplX3BhcnRpYWwgPSBvYV9idWZfZW5kIC0gcmVwb3J0Owo+Pj4+
Kwo+Pj4+K8KgwqDCoMKgwqDCoMKgIGlmIChyZXBvcnRfc2l6ZV9wYXJ0aWFsIDwgcmVwb3J0X3Np
emUpIHsKPj4+PivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChjb3B5X3RvX3VzZXIoYnVmLCBy
ZXBvcnQsIHJlcG9ydF9zaXplX3BhcnRpYWwpKQo+Pj4+K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gLUVGQVVMVDsKPj4+PivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJ1ZiAr
PSByZXBvcnRfc2l6ZV9wYXJ0aWFsOwo+Pj4+Kwo+Pj4+K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aWYgKGNvcHlfdG9fdXNlcihidWYsIHN0cmVhbS0+b2FfYnVmZmVyLnZhZGRyLAo+Pj4+K8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlcG9ydF9zaXplIC0gcmVwb3J0X3Np
emVfcGFydGlhbCkpCj4+Pj4rwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAt
RUZBVUxUOwo+Pj4+K8KgwqDCoMKgwqDCoMKgIH0gZWxzZSBpZiAoY29weV90b191c2VyKGJ1Ziwg
cmVwb3J0LCByZXBvcnRfc2l6ZSkpCj4+Pj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IC1FRkFVTFQ7Cj4+Pj7CoMKgwqDCoCB9Cj4+Pj5AQCAtNjgyLDggKzY5Miw4IEBAIHN0YXRpYyBp
bnQgZ2VuOF9hcHBlbmRfb2FfcmVwb3J0cyhzdHJ1Y3QgCj4+Pj5pOTE1X3BlcmZfc3RyZWFtICpz
dHJlYW0sCj4+Pj7CoMKgwqDCoMKgICogb25seSBiZSBpbmNyZW1lbnRlZCBieSBtdWx0aXBsZXMg
b2YgdGhlIHJlcG9ydCBzaXplIAo+Pj4+KG5vdGFibHkgYWxzbwo+Pj4+wqDCoMKgwqDCoCAqIGFs
bCBhIHBvd2VyIG9mIHR3bykuCj4+Pj7CoMKgwqDCoMKgICovCj4+Pj4twqDCoMKgIGlmIChXQVJO
X09OQ0UoaGVhZCA+IE9BX0JVRkZFUl9TSVpFIHx8IGhlYWQgJSByZXBvcnRfc2l6ZSB8fAo+Pj4+
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRhaWwgPiBPQV9CVUZGRVJfU0laRSB8fCB0YWls
ICUgcmVwb3J0X3NpemUsCj4+Pj4rwqDCoMKgIGlmIChXQVJOX09OQ0UoaGVhZCA+IE9BX0JVRkZF
Ul9TSVpFIHx8Cj4+Pj4rwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGFpbCA+IE9BX0JVRkZF
Ul9TSVpFLAo+Pj4+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiSW5jb25zaXN0ZW50IE9B
IGJ1ZmZlciBwb2ludGVyczogaGVhZCA9ICV1LCB0YWlsIAo+Pj4+PSAldVxuIiwKPj4+PsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaGVhZCwgdGFpbCkpCj4+Pj7CoMKgwqDCoMKgwqDCoMKg
IHJldHVybiAtRUlPOwo+Pj4+QEAgLTY5NywyMCArNzA3LDYgQEAgc3RhdGljIGludCBnZW44X2Fw
cGVuZF9vYV9yZXBvcnRzKHN0cnVjdCAKPj4+Pmk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKPj4+
PsKgwqDCoMKgwqDCoMKgwqAgdTMyIGN0eF9pZDsKPj4+PsKgwqDCoMKgwqDCoMKgwqAgdTMyIHJl
YXNvbjsKPj4+Pi3CoMKgwqDCoMKgwqDCoCAvKgo+Pj4+LcKgwqDCoMKgwqDCoMKgwqAgKiBBbGwg
dGhlIHJlcG9ydCBzaXplcyBmYWN0b3IgbmVhdGx5IGludG8gdGhlIGJ1ZmZlcgo+Pj4+LcKgwqDC
oMKgwqDCoMKgwqAgKiBzaXplIHNvIHdlIG5ldmVyIGV4cGVjdCB0byBzZWUgYSByZXBvcnQgc3Bs
aXQKPj4+Pi3CoMKgwqDCoMKgwqDCoMKgICogYmV0d2VlbiB0aGUgYmVnaW5uaW5nIGFuZCBlbmQg
b2YgdGhlIGJ1ZmZlci4KPj4+Pi3CoMKgwqDCoMKgwqDCoMKgICoKPj4+Pi3CoMKgwqDCoMKgwqDC
oMKgICogR2l2ZW4gdGhlIGluaXRpYWwgYWxpZ25tZW50IGNoZWNrIGEgbWlzYWxpZ25tZW50Cj4+
Pj4twqDCoMKgwqDCoMKgwqDCoCAqIGhlcmUgd291bGQgaW1wbHkgYSBkcml2ZXIgYnVnIHRoYXQg
d291bGQgcmVzdWx0Cj4+Pj4twqDCoMKgwqDCoMKgwqDCoCAqIGluIGFuIG92ZXJydW4uCj4+Pj4t
wqDCoMKgwqDCoMKgwqDCoCAqLwo+Pj4+LcKgwqDCoMKgwqDCoMKgIGlmIChXQVJOX09OKChPQV9C
VUZGRVJfU0laRSAtIGhlYWQpIDwgcmVwb3J0X3NpemUpKSB7Cj4+Pj4twqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBEUk1fRVJST1IoIlNwdXJpb3VzIE9BIGhlYWQgcHRyOiBub24taW50ZWdyYWwgCj4+
Pj5yZXBvcnQgb2Zmc2V0XG4iKTsKPj4+Pi3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+
Pj4+LcKgwqDCoMKgwqDCoMKgIH0KPj4+Pi0KPj4+PsKgwqDCoMKgwqDCoMKgwqAgLyoKPj4+PsKg
wqDCoMKgwqDCoMKgwqDCoCAqIFRoZSByZWFzb24gZmllbGQgaW5jbHVkZXMgZmxhZ3MgaWRlbnRp
Znlpbmcgd2hhdAo+Pj4+wqDCoMKgwqDCoMKgwqDCoMKgICogdHJpZ2dlcmVkIHRoaXMgc3BlY2lm
aWMgcmVwb3J0IChtb3N0bHkgdGltZXIKPj4+PkBAIC05NTYsOCArOTUyLDggQEAgc3RhdGljIGlu
dCBnZW43X2FwcGVuZF9vYV9yZXBvcnRzKHN0cnVjdCAKPj4+Pmk5MTVfcGVyZl9zdHJlYW0gKnN0
cmVhbSwKPj4+PsKgwqDCoMKgwqAgKiBvbmx5IGJlIGluY3JlbWVudGVkIGJ5IG11bHRpcGxlcyBv
ZiB0aGUgcmVwb3J0IHNpemUgCj4+Pj4obm90YWJseSBhbHNvCj4+Pj7CoMKgwqDCoMKgICogYWxs
IGEgcG93ZXIgb2YgdHdvKS4KPj4+PsKgwqDCoMKgwqAgKi8KPj4+Pi3CoMKgwqAgaWYgKFdBUk5f
T05DRShoZWFkID4gT0FfQlVGRkVSX1NJWkUgfHwgaGVhZCAlIHJlcG9ydF9zaXplIHx8Cj4+Pj4t
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGFpbCA+IE9BX0JVRkZFUl9TSVpFIHx8IHRhaWwg
JSByZXBvcnRfc2l6ZSwKPj4+PivCoMKgwqAgaWYgKFdBUk5fT05DRShoZWFkID4gT0FfQlVGRkVS
X1NJWkUgfHwKPj4+PivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0YWlsID4gT0FfQlVGRkVS
X1NJWkUsCj4+Pj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJJbmNvbnNpc3RlbnQgT0Eg
YnVmZmVyIHBvaW50ZXJzOiBoZWFkID0gJXUsIHRhaWwgCj4+Pj49ICV1XG4iLAo+Pj4+wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZWFkLCB0YWlsKSkKPj4+PsKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIC1FSU87Cj4+Pj5AQCAtOTY5LDE5ICs5NjUsNiBAQCBzdGF0aWMgaW50IGdlbjdfYXBw
ZW5kX29hX3JlcG9ydHMoc3RydWN0IAo+Pj4+aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAo+Pj4+
wqDCoMKgwqDCoMKgwqDCoCB1OCAqcmVwb3J0ID0gb2FfYnVmX2Jhc2UgKyBoZWFkOwo+Pj4+wqDC
oMKgwqDCoMKgwqDCoCB1MzIgKnJlcG9ydDMyID0gKHZvaWQgKilyZXBvcnQ7Cj4+Pj4twqDCoMKg
wqDCoMKgwqAgLyogQWxsIHRoZSByZXBvcnQgc2l6ZXMgZmFjdG9yIG5lYXRseSBpbnRvIHRoZSBi
dWZmZXIKPj4+Pi3CoMKgwqDCoMKgwqDCoMKgICogc2l6ZSBzbyB3ZSBuZXZlciBleHBlY3QgdG8g
c2VlIGEgcmVwb3J0IHNwbGl0Cj4+Pj4twqDCoMKgwqDCoMKgwqDCoCAqIGJldHdlZW4gdGhlIGJl
Z2lubmluZyBhbmQgZW5kIG9mIHRoZSBidWZmZXIuCj4+Pj4twqDCoMKgwqDCoMKgwqDCoCAqCj4+
Pj4twqDCoMKgwqDCoMKgwqDCoCAqIEdpdmVuIHRoZSBpbml0aWFsIGFsaWdubWVudCBjaGVjayBh
IG1pc2FsaWdubWVudAo+Pj4+LcKgwqDCoMKgwqDCoMKgwqAgKiBoZXJlIHdvdWxkIGltcGx5IGEg
ZHJpdmVyIGJ1ZyB0aGF0IHdvdWxkIHJlc3VsdAo+Pj4+LcKgwqDCoMKgwqDCoMKgwqAgKiBpbiBh
biBvdmVycnVuLgo+Pj4+LcKgwqDCoMKgwqDCoMKgwqAgKi8KPj4+Pi3CoMKgwqDCoMKgwqDCoCBp
ZiAoV0FSTl9PTigoT0FfQlVGRkVSX1NJWkUgLSBoZWFkKSA8IHJlcG9ydF9zaXplKSkgewo+Pj4+
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFJNX0VSUk9SKCJTcHVyaW91cyBPQSBoZWFkIHB0cjog
bm9uLWludGVncmFsIAo+Pj4+cmVwb3J0IG9mZnNldFxuIik7Cj4+Pj4twqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBicmVhazsKPj4+Pi3CoMKgwqDCoMKgwqDCoCB9Cj4+Pj4tCj4+Pj7CoMKgwqDCoMKg
wqDCoMKgIC8qIFRoZSByZXBvcnQtSUQgZmllbGQgZm9yIHBlcmlvZGljIHNhbXBsZXMgaW5jbHVk
ZXMKPj4+PsKgwqDCoMKgwqDCoMKgwqDCoCAqIHNvbWUgdW5kb2N1bWVudGVkIGZsYWdzIHJlbGF0
ZWQgdG8gd2hhdCB0cmlnZ2VyZWQKPj4+PsKgwqDCoMKgwqDCoMKgwqDCoCAqIHRoZSByZXBvcnQg
YW5kIGlzIG5ldmVyIGV4cGVjdGVkIHRvIGJlIHplcm8gc28gd2UKPj4+Cj4+Pgo+Pgo+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDDA14E07C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1101F6E8BF;
	Thu, 30 Jan 2020 18:05:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF3266E8BF
 for <Intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 18:05:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 10:05:07 -0800
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="218355130"
Received: from lodierna-mobl.ger.corp.intel.com (HELO [10.252.22.225])
 ([10.252.22.225])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 30 Jan 2020 10:05:06 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-2-tvrtko.ursulin@linux.intel.com>
 <157650003726.2428.7411733849297083759@skylake-alporthouse-com>
 <f48c66db-d224-e213-e8ac-7d4ceefe9652@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d9909b3d-258a-338f-7d2b-bac13e8b1443@linux.intel.com>
Date: Thu, 30 Jan 2020 18:05:03 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <f48c66db-d224-e213-e8ac-7d4ceefe9652@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Track per-context engine
 busyness
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

Ck9uIDE2LzEyLzIwMTkgMTM6MDksIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDE2LzEy
LzIwMTkgMTI6NDAsIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxp
biAoMjAxOS0xMi0xNiAxMjowNzowMCkKPj4+IEBAIC0xMzg5LDYgKzE0MTUsOSBAQCBzdGF0aWMg
dm9pZCBleGVjbGlzdHNfc3VibWl0X3BvcnRzKHN0cnVjdCAKPj4+IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd3JpdGVfZGVzYyhl
eGVjbGlzdHMsCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcnEgPyBleGVjbGlzdHNfdXBkYXRlX2NvbnRleHQocnEpIDogMCwKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuKTsK
Pj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChuID09IDApCj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAKPj4+IGludGVsX2NvbnRleHRfc3RhdHNfc3RhcnQoJnJx
LT5od19jb250ZXh0LT5zdGF0cyk7Cj4+Cj4+IFRvbyBlYXJseT8gKFRoaW5rIHByZWVtcHRpb24g
cmVxdWVzdHMgdGhhdCBtYXkgbm90IGJlZ2luIGZvciBhIGZldwo+PiBodW5kcmVkIG1zLikgTWFy
ayBpdCBhcyBzdGFydGVkIG9uIHByb21vdGlvbiBpbnN0ZWFkIChzaG91bGQgYmUgd2l0aGluIGEK
Pj4gZmV3IG1pY3Jvc2Vjb25kcywgaWYgbm90IGlkZWFsbHkgYSBmZXcgMTAgbnMpPyBUaGVuIHlv
dSB3aWxsIGFsc28gaGF2ZQo+PiBiZXR0ZXIgc3ltbWV0cnkgaW4gcHJvY2Vzc19jc2IsIHN1Z2dl
c3RpbmcgdGhhdCB3ZSBjYW4gaGF2ZSBhIHJvdXRpbmUKPj4gdGhhdCB0YWtlcyB0aGUgY3VycmVu
dCAqZXhlY2xpc3RzLT5hY3RpdmUgd2l0aCBmZXdlciBjb2RlIGNoYW5nZXMuCj4gCj4gR29vZCBw
b2ludCwgSSB3YXMgZGlzbGlraW5nIHRoZSBjc2IgbGF0ZW5jaWVzIGFuZCBjb21wbGV0ZWx5IG1p
c3NlZCB0aGUgCj4gcHJlZW1wdGlvbiBzaWRlIG9mIHRoaW5ncy4gU3ltbWV0cnkgd2lsbCBiZSBt
dWNoIGJldHRlciBpbiBtb3JlIHRoYW4gb25lIAo+IGFzcGVjdC4KCkRvd25zaWRlIG9mIGhhdmlu
ZyBpdCBpbiBwcm9jZXNzX2NzYiBpcyByZWFsbHkgYmFkIGFjY3VyYWN5IHdpdGggc2hvcnQgCmJh
dGNoZXMgbGlrZSBnZW1fZXhlY19ub3AuIDooIHByb2Nlc3NfY3NiKCkgbGF0ZW5jeSBJIHRoaW5r
LiBJdCBnZXRzIGEgCmxpdHRsZSBiaXQgYmV0dGVyIGZvciB0aGlzIHBhcnRpY3VsYXIgd29ya2xv
YWQgaWYgSSBtb3ZlIHRoZSBzdGFydCBwb2ludCAKdG8gc3VibWl0X3BvcnRzKCksIGJ1dCB0aGF0
IGhhcyB0aGF0IG90aGVyIHByb2JsZW0gd2l0aCBwcmVlbXB0aW9uLgoKQWZ0ZXIgdGhpcyB3b2Vz
IEkgd2FzIGhvcGVmdWwgcHBod3NwIGNvbnRleHQgcnVudGltZSBjb3VsZCBoYXZlIGFuIAphZHZh
bnRhZ2UgaGVyZSwgYnV0IHRoZW4gSSBkaXNjb3ZlciBpdCBpcyBvY2Nhc2lvbmFsbHkgbm90IG1v
bm90b25pYy4gQXQgCmxlYXN0IHdpdGggdGhlIHNwYW1teSBnZW1fZXhlY19ub3AgaXQgb2NjYXNp
b25hbGx5IGJ1dCByZWd1bGFybHkganVtcHMgYSAKdGlueSBiaXQgYmFja3dhcmQ6CgpbIDg4MDIu
MDgyOTgwXSAgKG5ldz03MjgyMTAxIG9sZD03MjgyMDYzIGQ9MzgpClsgODgwMi4wODMwMDddICAo
bmV3PTcyODIxMzkgb2xkPTcyODIxMDEgZD0zOCkKWyA4ODAyLjA4MzA1MV0gIChuZXc9NzI4MjI1
MCBvbGQ9NzI4MjEzOSBkPTExMSkKWyA4ODAyLjA4MzA3N10gIChuZXc9NzI4MjIxNCBvbGQ9NzI4
MjI1MCBkPS0zNikKWyA4ODAyLjA4MzEwM10gIChuZXc9NzI4MjI1NSBvbGQ9NzI4MjIxNCBkPTQx
KQpbIDg4MDIuMDgzMTI5XSAgKG5ldz03MjgyMjkzIG9sZD03MjgyMjU1IGQ9MzgpClsgODgwMi4w
ODMxNTVdICAobmV3PTcyODIzMzEgb2xkPTcyODIyOTMgZD0zOCkKCk91Y2guIFRpbWUgdG8gc2xl
ZXAgb24gaXQuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46022F35CC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 18:38:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802FD6F761;
	Thu,  7 Nov 2019 17:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C864E6F75B;
 Thu,  7 Nov 2019 17:38:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 09:38:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="205738337"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga003.jf.intel.com with ESMTP; 07 Nov 2019 09:38:23 -0800
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 Nov 2019 17:38:22 +0000
Date: Thu, 7 Nov 2019 19:38:20 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: <igt-dev@lists.freedesktop.org>
Message-ID: <20191107173820.2wj2b6ziehhnmoyo@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
MIME-Version: 1.0
Content-Disposition: inline
X-Originating-IP: [10.237.68.143]
Subject: [Intel-gfx] [ANNOUNCEMENT] Documenting tests with igt_describe()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGV5IGFsbCwKCklHVCB0ZXN0cyBhcmUgbGFyZ2VseSB1bmRvY3VtZW50ZWQgYW5kIGEgbG90IG9m
IHRoZW0gYXJlIHF1aXRlIGVuaWdtYXRpYyBpZiB5b3UKaGF2ZW4ndCBpbnRlcm5hbGl6ZWQgdGhl
IHdob2xlIGZyYW1ld29yayBhbmQgYXJlIG5vdCBmYW1pbGlhciB3aXRoIG5hbWluZwpjb252ZW50
aW9ucyB0aGF0IHNvbWUgcGVvcGxlIHVzZS4KClRvIHRhY2tsZSB0aGlzIHdlIHJlcXVpcmVbMF0g
ZG9jdW1lbnRpbmcgbmV3IHRlc3RzIHdpdGggaWd0X2Rlc2NyaWJlKClbMV0uCgpUaGUgaWRlYSBp
cyB0byBwcm92aWRlIGEgc2hvcnQgZGVzY3JpcHRpb24gKG9uZSBvciB0d28gc2VudGVuY2VzKSBv
bgp3aGF0IHRoZSB0ZXN0IGlzIHN1cHBvc2VkIHRvIHZlcmlmeSB0byBnaXZlIHRoZSByZWFkZXIg
ZW5vdWdoIG9mIGNvbnRleHQKc28gdGhleSBlYXNpbHkgY2FuIHRlbGwgd2hhdCBzY2VuYXJpbyB0
aGUgdGVzdCBpcyBleGVyY2lzaW5nLgoKVGhpcyBhbHNvIG1ha2VzIHJlYWRpbmcgdGhlIHRlc3Rz
IHNvIG11Y2ggZWFzaWVyIC0gc29tZXRpbWVzIGl0IGlzCnJlYWxseSBoYXJkIGFuZCB0YWtlcyBh
IGxvbmcgdGltZSB0byB1bmRlcnN0YW5kIHRoZSBtYWluIHRob3VnaHQgYmVoaW5kCmEgdGVzdCBq
dXN0IGZyb20gdGhlIGltcGxlbWVudGF0aW9uIGRldGFpbHMuCgpXZSBkb24ndCB3YW50IHlvdSB0
byB0cmFuc2xhdGUgQyBpbnRvIEVuZ2xpc2gsIHdlIHdhbnQgeW91IHRvIHByb3ZpZGUgYSBiaXQg
b2YKdGhhdCBleHRyYSBpbmZvcm1hdGlvbiB0aGF0IHlvdSB3b3VsZCBoYXZlIHB1dCBpbiB0aGUg
Y29tbWVudHMgYW55d2F5LgoKU2VlIGlndF9kZXNjcmliZSgpIGRvY3VtZW50YXRpb25bMV0gZm9y
IGd1aWRlbGluZXMgb24gd3JpdGluZyBnb29kIGRlc2NyaXB0aW9ucy4KClswXTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzL2Jsb2IvbWFzdGVyL0NPTlRS
SUJVVElORy5tZCNMMTkKWzFdOiBodHRwczovL2RybS5wYWdlcy5mcmVlZGVza3RvcC5vcmcvaWd0
LWdwdS10b29scy9pZ3QtZ3B1LXRvb2xzLUNvcmUuaHRtbCNpZ3QtZGVzY3JpYmUKClNpZ25lZC1v
ZmYtYnk6IEFya2FkaXVzeiBIaWxlciA8YXJrYWRpdXN6LmhpbGVyQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+CgoKIyMgRkFR
CgpROiBIb3cgaXMgdGhpcyBiZWluZyBlbmZvcmNlZD8KQTogSWYgeW91ciBwYXRjaCBpbnRyb2R1
Y2VzIHVuZG9jdW1lbnRlZCB0ZXN0cyB5b3Ugd2lsbCBnZXQgYW4gZW1haWwgd2l0aAogICBpbnN0
cnVjdGlvbiBob3cgdG8gcHJvY2VlZC4gVGhpcyBpcyBjb25zaWRlcmVkIGFzIGZhaWxpbmcgdGhl
IENJIGNoZWNrcy4KICAgZS5nLjogaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2
ZXMvaWd0LWRldi8yMDE5LU5vdmVtYmVyLzAxNzI2Ni5odG1sCgpROiBJIGFtIG5vdCBzdXJlIG15
IGRlc2NyaXB0aW9ucyBhcmUgZ29vZC4uLgpBOiBUaGF0IHdoYXQgdGhlIHJldmlldyBpcyBmb3Iu
IEZlZWwgZnJlZSB0byBwb2tlIG1lIG9yIFBldHJpIG9uIElSQyBpbiBjYXNlIHlvdQogICB3YW50
IHNvbWUgaGVscCB3aXRoIHdyaXRpbmcgdGhlbS4KClE6IFdoeSBhcmUgeW91IHVzaW5nIGlndF9k
ZXNjcmliZSgpIGFuZCBub3QgZG94eWdlbi9zcGhpbngvZ3RrLWRvYy9ldGMuCiAgIGNvbW1lbnRz
PwpBOiBXZSBhcmUgZG9jdW1lbnRpbmcgdGVzdHMsIG5vdCBDIGZ1bmN0aW9ucy4gVGhvc2UgdG9v
bHMgZG8gbm90CiAgIHVuZGVyc3RhbmQgY29tbWVudHMgb3ZlciBtYWdpYyBjb250cm9sIGJsb2Nr
cyB1c2VkIGJ5IHRoZSB0ZXN0CiAgIGhhcm5lc3MgdG8gZGVmaW5lIHRlc3RzL3N1YnRlc3RzLiBB
ZGRpdGlvbmFsIGJlbmVmaXQgaXMgdGhhdCB0aGUKICAgZG9jdW1lbnRhdGlvbiBpcyBhdmFpbGFi
bGUgbm90IG9ubHkgaW4gdGhlIHNvdXJjZSBjb2RlIGFuZCB0aGUKICAgZ2VuZXJhdGVkIGRvY3Vt
ZW50YXRpb24gYnV0IGFsc28gb24gdGhlIGNvbW1hbmQgbGluZSBieSB1c2luZwogICAtLWRlc2Ny
aWJlIHN3aXRjaC4KCi0tIApDaGVlcnMsCkFyZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==

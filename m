Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0444C3D1376
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 18:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F296E9B5;
	Wed, 21 Jul 2021 16:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AAAC6E9BA;
 Wed, 21 Jul 2021 16:12:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="297028216"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="297028216"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 09:12:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="564786963"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 21 Jul 2021 09:12:16 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 21 Jul 2021 09:11:10 -0700
Message-Id: <20210721161120.24610-5-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
References: <20210721161120.24610-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/14] drm/i915/guc/slpc: Adding SLPC
 communication interfaces
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGNvbnN0YW50cyBhbmQgcGFyYW1zIHRoYXQgYXJlIG5lZWRlZCB0byBjb25maWd1cmUgU0xQ
Qy4KCnYyOiBBZGQgYSBuZXcgYWJpIGhlYWRlciBmb3IgU0xQQy4gUmVwbGFjZSBiaXRmaWVsZHMg
d2l0aApnZW5tYXNrcy4gQWRkcmVzcyBvdGhlciBjb21tZW50cyBmcm9tIE1pY2hhbCBXLgoKU2ln
bmVkLW9mZi1ieTogVmluYXkgQmVsZ2F1bWthciA8dmluYXkuYmVsZ2F1bWthckBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IFN1bmRhcmVzYW4gU3VqYXJpdGhhIDxzdWphcml0aGEuc3VuZGFyZXNh
bkBpbnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfYWN0aW9uc19zbHBj
X2FiaS5oIHwgMjAxICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjLmMgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19md2lmLmggICB8ICAgMSArCiAzIGZpbGVzIGNoYW5nZWQsIDIwNiBpbnNlcnRp
b25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJp
L2d1Y19hY3Rpb25zX3NscGNfYWJpLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9hYmkvZ3VjX2FjdGlvbnNfc2xwY19hYmkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2FiaS9ndWNfYWN0aW9uc19zbHBjX2FiaS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uMDVkODA5NzQ2YjMyCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19hY3Rpb25zX3NscGNfYWJpLmgKQEAgLTAsMCAr
MSwyMDEgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5
cmlnaHQgwqkgMjAyMSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgX0dVQ19BQ1RJ
T05TX1NMUENfQUJJX0hfCisjZGVmaW5lIF9HVUNfQUNUSU9OU19TTFBDX0FCSV9IXworCisjaW5j
bHVkZSA8bGludXgvdHlwZXMuaD4KKworLyoqCisgKiBTTFBDIFNIQVJFRCBEQVRBIFNUUlVDVFVS
RQorICoKKyAqICArLS0tKy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCisgKiAgfCBDTHwgQnl0ZXMgfCBEZXNjcmlw
dGlvbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAor
ICogICs9PT0rPT09PT09PSs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PSsKKyAqICB8IDEgfCAwLTMgICB8IFNIQVJFRCBEQVRBIFNJ
WkUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CisgKiAgfCAg
ICstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tKworICogIHwgICB8IDQtNyAgIHwgR0xPQkFMIFNUQVRFICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKKyAqICB8ICAgKy0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0rCisgKiAgfCAgIHwgOC0xMSAgfCBESVNQTEFZIERBVEEgQUREUkVTUyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAorICogIHwgICArLS0tLS0tLSstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSsKKyAqICB8ICAgfCAxMjo2MyB8IFBBRERJTkcgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8CisgKiAgKy0tLSstLS0tLS0tKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKworICog
IHwgICB8IDA6NjMgIHwgUEFERElORyhQTEFURk9STSBJTkZPKSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKKyAqICArLS0tKy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCisgKiAgfCAzIHwg
MC0zICAgfCBUQVNLIFNUQVRFIERBVEEgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfAorICogICsgICArLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKKyAqICB8ICAgfCA0OjYzICB8
IFBBRERJTkcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8CisgKiAgKy0tLSstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKworICogIHw0LTIxIDA6MTA4N3wgT1ZFUlJJ
REUgUEFSQU1TIEFORCBCSVQgRklFTERTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwK
KyAqICArLS0tKy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCisgKiAgfCAgIHwgICAgICAgfCBQQURESU5HICsgRVhU
UkEgUkVTRVJWRUQgUEFHRSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAorICogICst
LS0rLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLSsKKyAqLworCisvKgorICogU0xQQyBleHBvc2VzIGNlcnRhaW4gcGFy
YW1ldGVycyBmb3IgZ2xvYmFsIGNvbmZpZ3VyYXRpb24gYnkgdGhlIGhvc3QuCisgKiBUaGVzZSBh
cmUgcmVmZXJyZWQgdG8gYXMgb3ZlcnJpZGUgcGFyYW1ldGVycywgYmVjYXVzZSBpbiBtb3N0IGNh
c2VzCisgKiB0aGUgaG9zdCB3aWxsIG5vdCBuZWVkIHRvIG1vZGlmeSB0aGUgZGVmYXVsdCB2YWx1
ZXMgdXNlZCBieSBTTFBDLgorICogU0xQQyByZW1lbWJlcnMgdGhlIGRlZmF1bHQgdmFsdWVzIHdo
aWNoIGFsbG93cyB0aGUgaG9zdCB0byBlYXNpbHkgcmVzdG9yZQorICogdGhlbSBieSBzaW1wbHkg
dW5zZXR0aW5nIHRoZSBvdmVycmlkZS4gVGhlIGhvc3QgY2FuIHNldCBvciB1bnNldCBvdmVycmlk
ZQorICogcGFyYW1ldGVycyBkdXJpbmcgU0xQQyAocmUtKWluaXRpYWxpemF0aW9uIHVzaW5nIHRo
ZSBTTFBDIFJlc2V0IGV2ZW50LgorICogVGhlIGhvc3QgY2FuIGFsc28gc2V0IG9yIHVuc2V0IG92
ZXJyaWRlIHBhcmFtZXRlcnMgb24gdGhlIGZseSB1c2luZyB0aGUKKyAqIFBhcmFtZXRlciBTZXQg
YW5kIFBhcmFtZXRlciBVbnNldCBldmVudHMKKyAqLworCisjZGVmaW5lIFNMUENfTUFYX09WRVJS
SURFX1BBUkFNRVRFUlMJCTI1NgorI2RlZmluZSBTTFBDX09WRVJSSURFX0JJVEZJRUxEX1NJWkUg
XAorCQkoU0xQQ19NQVhfT1ZFUlJJREVfUEFSQU1FVEVSUyAvIDMyKQorCisjZGVmaW5lIFNMUENf
UEFHRV9TSVpFX0JZVEVTCQkJNDA5NgorI2RlZmluZSBTTFBDX0NBQ0hFTElORV9TSVpFX0JZVEVT
CQk2NAorI2RlZmluZSBTTFBDX1NIQVJFRF9EQVRBX1NJWkVfQllURV9IRUFERVIJU0xQQ19DQUNI
RUxJTkVfU0laRV9CWVRFUworI2RlZmluZSBTTFBDX1NIQVJFRF9EQVRBX1NJWkVfQllURV9QTEFU
Rk9STV9JTkZPCVNMUENfQ0FDSEVMSU5FX1NJWkVfQllURVMKKyNkZWZpbmUgU0xQQ19TSEFSRURf
REFUQV9TSVpFX0JZVEVfVEFTS19TVEFURQlTTFBDX0NBQ0hFTElORV9TSVpFX0JZVEVTCisjZGVm
aW5lIFNMUENfU0hBUkVEX0RBVEFfTU9ERV9ERUZOX1RBQkxFX1NJWkUJU0xQQ19QQUdFX1NJWkVf
QllURVMKKyNkZWZpbmUgU0xQQ19TSEFSRURfREFUQV9TSVpFX0JZVEVfTUFYCQkoMiAqIFNMUENf
UEFHRV9TSVpFX0JZVEVTKQorI2RlZmluZSBTTFBDX0VWRU5UKGlkLCBhcmdjKQkJCSgodTMyKShp
ZCkgPDwgOCB8IChhcmdjKSkKKyNkZWZpbmUgU0xQQ19FVkVOVF9NQVhfSU5QVVRfQVJHUwkJOQor
CisvKgorICogQ2FjaGVsaW5lIHNpemUgYWxpZ25lZCAoVG90YWwgc2l6ZSBuZWVkZWQgZm9yCisg
KiBTTFBNX0tNRF9NQVhfT1ZFUlJJREVfUEFSQU1FVEVSUz0yNTYgaXMgMTA4OCBieXRlcykKKyAq
LworI2RlZmluZSBTTFBDX09WRVJSSURFX1BBUkFNU19UT1RBTF9CWVRFUwkoKCgoKFNMUENfTUFY
X09WRVJSSURFX1BBUkFNRVRFUlMgKiA0KSBcCisJCQkJCQkrICgoU0xQQ19NQVhfT1ZFUlJJREVf
UEFSQU1FVEVSUyAvIDMyKSAqIDQpKSBcCisJCSsgKFNMUENfQ0FDSEVMSU5FX1NJWkVfQllURVMt
MSkpIC8gU0xQQ19DQUNIRUxJTkVfU0laRV9CWVRFUykqU0xQQ19DQUNIRUxJTkVfU0laRV9CWVRF
UykKKworI2RlZmluZSBTTFBDX1NIQVJFRF9EQVRBX1NJWkVfQllURV9PVEhFUgkoU0xQQ19TSEFS
RURfREFUQV9TSVpFX0JZVEVfTUFYIC0gXAorCQkJCQkoU0xQQ19TSEFSRURfREFUQV9TSVpFX0JZ
VEVfSEVBREVSIFwKKwkJCQkJKyBTTFBDX1NIQVJFRF9EQVRBX1NJWkVfQllURV9QTEFURk9STV9J
TkZPIFwKKwkJCQkJKyBTTFBDX1NIQVJFRF9EQVRBX1NJWkVfQllURV9UQVNLX1NUQVRFIFwKKwkJ
CQkJKyBTTFBDX09WRVJSSURFX1BBUkFNU19UT1RBTF9CWVRFUyBcCisJCQkJCSsgU0xQQ19TSEFS
RURfREFUQV9NT0RFX0RFRk5fVEFCTEVfU0laRSkpCisKK2VudW0gc2xwY190YXNrX2VuYWJsZSB7
CisJU0xQQ19QQVJBTV9UQVNLX0RFRkFVTFQgPSAwLAorCVNMUENfUEFSQU1fVEFTS19FTkFCTEVE
LAorCVNMUENfUEFSQU1fVEFTS19ESVNBQkxFRCwKKwlTTFBDX1BBUkFNX1RBU0tfVU5LTk9XTgor
fTsKKworZW51bSBzbHBjX2dsb2JhbF9zdGF0ZSB7CisJU0xQQ19HTE9CQUxfU1RBVEVfTk9UX1JV
Tk5JTkcgPSAwLAorCVNMUENfR0xPQkFMX1NUQVRFX0lOSVRJQUxJWklORyA9IDEsCisJU0xQQ19H
TE9CQUxfU1RBVEVfUkVTRVRUSU5HID0gMiwKKwlTTFBDX0dMT0JBTF9TVEFURV9SVU5OSU5HID0g
MywKKwlTTFBDX0dMT0JBTF9TVEFURV9TSFVUVElOR19ET1dOID0gNCwKKwlTTFBDX0dMT0JBTF9T
VEFURV9FUlJPUiA9IDUKK307CisKK2VudW0gc2xwY19wYXJhbV9pZCB7CisJU0xQQ19QQVJBTV9U
QVNLX0VOQUJMRV9HVFBFUkYgPSAwLAorCVNMUENfUEFSQU1fVEFTS19ESVNBQkxFX0dUUEVSRiA9
IDEsCisJU0xQQ19QQVJBTV9UQVNLX0VOQUJMRV9CQUxBTkNFUiA9IDIsCisJU0xQQ19QQVJBTV9U
QVNLX0RJU0FCTEVfQkFMQU5DRVIgPSAzLAorCVNMUENfUEFSQU1fVEFTS19FTkFCTEVfRENDID0g
NCwKKwlTTFBDX1BBUkFNX1RBU0tfRElTQUJMRV9EQ0MgPSA1LAorCVNMUENfUEFSQU1fR0xPQkFM
X01JTl9HVF9VTlNMSUNFX0ZSRVFfTUhaID0gNiwKKwlTTFBDX1BBUkFNX0dMT0JBTF9NQVhfR1Rf
VU5TTElDRV9GUkVRX01IWiA9IDcsCisJU0xQQ19QQVJBTV9HTE9CQUxfTUlOX0dUX1NMSUNFX0ZS
RVFfTUhaID0gOCwKKwlTTFBDX1BBUkFNX0dMT0JBTF9NQVhfR1RfU0xJQ0VfRlJFUV9NSFogPSA5
LAorCVNMUENfUEFSQU1fR1RQRVJGX1RIUkVTSE9MRF9NQVhfRlBTID0gMTAsCisJU0xQQ19QQVJB
TV9HTE9CQUxfRElTQUJMRV9HVF9GUkVRX01BTkFHRU1FTlQgPSAxMSwKKwlTTFBDX1BBUkFNX0dU
UEVSRl9FTkFCTEVfRlJBTUVSQVRFX1NUQUxMSU5HID0gMTIsCisJU0xQQ19QQVJBTV9HTE9CQUxf
RElTQUJMRV9SQzZfTU9ERV9DSEFOR0UgPSAxMywKKwlTTFBDX1BBUkFNX0dMT0JBTF9PQ19VTlNM
SUNFX0ZSRVFfTUhaID0gMTQsCisJU0xQQ19QQVJBTV9HTE9CQUxfT0NfU0xJQ0VfRlJFUV9NSFog
PSAxNSwKKwlTTFBDX1BBUkFNX0dMT0JBTF9FTkFCTEVfSUFfR1RfQkFMQU5DSU5HID0gMTYsCisJ
U0xQQ19QQVJBTV9HTE9CQUxfRU5BQkxFX0FEQVBUSVZFX0JVUlNUX1RVUkJPID0gMTcsCisJU0xQ
Q19QQVJBTV9HTE9CQUxfRU5BQkxFX0VWQUxfTU9ERSA9IDE4LAorCVNMUENfUEFSQU1fR0xPQkFM
X0VOQUJMRV9CQUxBTkNFUl9JTl9OT05fR0FNSU5HX01PREUgPSAxOSwKKwlTTFBDX1BBUkFNX0dM
T0JBTF9SVF9NT0RFX1RVUkJPX0ZSRVFfREVMVEFfTUhaID0gMjAsCisJU0xQQ19QQVJBTV9QV1JH
QVRFX1JDX01PREUgPSAyMSwKKwlTTFBDX1BBUkFNX0VEUl9NT0RFX0NPTVBVVEVfVElNRU9VVF9N
UyA9IDIyLAorCVNMUENfUEFSQU1fRURSX1FPU19GUkVRX01IWiA9IDIzLAorCVNMUENfUEFSQU1f
TUVESUFfRkZfUkFUSU9fTU9ERSA9IDI0LAorCVNMUENfUEFSQU1fRU5BQkxFX0lBX0ZSRVFfTElN
SVRJTkcgPSAyNSwKKwlTTFBDX1BBUkFNX1NUUkFURUdJRVMgPSAyNiwKKwlTTFBDX1BBUkFNX1BP
V0VSX1BST0ZJTEUgPSAyNywKKwlTTFBDX1BBUkFNX0lHTk9SRV9FRkZJQ0lFTlRfRlJFUVVFTkNZ
ID0gMjgsCisJU0xQQ19NQVhfUEFSQU0gPSAzMiwKK307CisKK2VudW0gc2xwY19ldmVudF9pZCB7
CisJU0xQQ19FVkVOVF9SRVNFVCA9IDAsCisJU0xQQ19FVkVOVF9TSFVURE9XTiA9IDEsCisJU0xQ
Q19FVkVOVF9QTEFURk9STV9JTkZPX0NIQU5HRSA9IDIsCisJU0xQQ19FVkVOVF9ESVNQTEFZX01P
REVfQ0hBTkdFID0gMywKKwlTTFBDX0VWRU5UX0ZMSVBfQ09NUExFVEUgPSA0LAorCVNMUENfRVZF
TlRfUVVFUllfVEFTS19TVEFURSA9IDUsCisJU0xQQ19FVkVOVF9QQVJBTUVURVJfU0VUID0gNiwK
KwlTTFBDX0VWRU5UX1BBUkFNRVRFUl9VTlNFVCA9IDcsCit9OworCitzdHJ1Y3Qgc2xwY190YXNr
X3N0YXRlX2RhdGEgeworCXVuaW9uIHsKKwkJdTMyIHRhc2tfc3RhdHVzX3BhZGRpbmc7CisJCXN0
cnVjdCB7CisJCQl1MzIgc3RhdHVzOworI2RlZmluZSBTTFBDX0dUUEVSRl9UQVNLX0FDVElWRQkJ
QklUKDApCisjZGVmaW5lIFNMUENfR1RQRVJGX1NUQUxMX1BPU1NJQkxFCUJJVCgxKQorI2RlZmlu
ZSBTTFBDX0dUUEVSRl9HQU1JTkdfTU9ERQkJQklUKDIpCisjZGVmaW5lIFNMUENfR1RQRVJGX1RB
UkdFVF9GUFMJCUJJVCgzKQorI2RlZmluZSBTTFBDX0RDQ19UQVNLX0FDVElWRQkJQklUKDQpCisj
ZGVmaW5lIFNMUENfSU5fRENDCQkJQklUKDUpCisjZGVmaW5lIFNMUENfSU5fRENUCQkJQklUKDYp
CisjZGVmaW5lIFNMUENfRlJFUV9TV0lUQ0hfQUNUSVZFCQlCSVQoNykKKyNkZWZpbmUgU0xQQ19J
QkNfRU5BQkxFRAkJQklUKDgpCisjZGVmaW5lIFNMUENfSUJDX0FDVElWRQkJCUJJVCg5KQorI2Rl
ZmluZSBTTFBDX1BHMV9FTkFCTEVECQlCSVQoMTApCisjZGVmaW5lIFNMUENfUEcxX0FDVElWRQkJ
CUJJVCgxMSkKKwkJfTsKKwl9OworCXVuaW9uIHsKKwkJdTMyIGZyZXFfcGFkZGluZzsKKwkJc3Ry
dWN0IHsKKyNkZWZpbmUgU0xQQ19NQVhfVU5TTElDRV9GUkVRX01BU0sJUkVHX0dFTk1BU0soNywg
MCkKKyNkZWZpbmUgU0xQQ19NSU5fVU5TTElDRV9GUkVRX01BU0sJUkVHX0dFTk1BU0soMTUsIDgp
CisjZGVmaW5lIFNMUENfTUFYX1NMSUNFX0ZSRVFfTUFTSwlSRUdfR0VOTUFTSygyMywgMTYpCisj
ZGVmaW5lIFNMUENfTUlOX1NMSUNFX0ZSRVFfTUFTSwlSRUdfR0VOTUFTSygzMSwgMjQpCisJCQl1
MzIgZnJlcTsKKwkJfTsKKwl9OworfSBfX3BhY2tlZDsKKworc3RydWN0IHNscGNfc2hhcmVkX2Rh
dGFfaGVhZGVyIHsKKwkvKiBUb3RhbCBzaXplIGluIGJ5dGVzIG9mIHRoaXMgc2hhcmVkIGJ1ZmZl
ci4gKi8KKwl1MzIgc2l6ZTsKKwl1MzIgZ2xvYmFsX3N0YXRlOworCXUzMiBkaXNwbGF5X2RhdGFf
YWRkcjsKK307CisKK3N0cnVjdCBzbHBjX292ZXJyaWRlX3BhcmFtcyB7CisJdTMyIGJpdHNbU0xQ
Q19PVkVSUklERV9CSVRGSUVMRF9TSVpFXTsKKwl1MzIgdmFsdWVzW1NMUENfTUFYX09WRVJSSURF
X1BBUkFNRVRFUlNdOworfTsKKworc3RydWN0IHNscGNfc2hhcmVkX2RhdGEgeworCXN0cnVjdCBz
bHBjX3NoYXJlZF9kYXRhX2hlYWRlciBoZWFkZXI7CisJdTggc2hhcmVkX2RhdGFfaGVhZGVyX3Bh
ZFtTTFBDX1NIQVJFRF9EQVRBX1NJWkVfQllURV9IRUFERVIgLQorCQkJCXNpemVvZihzdHJ1Y3Qg
c2xwY19zaGFyZWRfZGF0YV9oZWFkZXIpXTsKKworCXU4IHBsYXRmb3JtX2luZm9fcGFkW1NMUENf
U0hBUkVEX0RBVEFfU0laRV9CWVRFX1BMQVRGT1JNX0lORk9dOworCisJc3RydWN0IHNscGNfdGFz
a19zdGF0ZV9kYXRhIHRhc2tfc3RhdGVfZGF0YTsKKwl1OCB0YXNrX3N0YXRlX2RhdGFfcGFkW1NM
UENfU0hBUkVEX0RBVEFfU0laRV9CWVRFX1RBU0tfU1RBVEUgLQorCQkJCXNpemVvZihzdHJ1Y3Qg
c2xwY190YXNrX3N0YXRlX2RhdGEpXTsKKworCXN0cnVjdCBzbHBjX292ZXJyaWRlX3BhcmFtcyBv
dmVycmlkZV9wYXJhbXMgOworCXU4IG92ZXJyaWRlX3BhcmFtc19wYWRbU0xQQ19PVkVSUklERV9Q
QVJBTVNfVE9UQUxfQllURVMgLQorCQkJCXNpemVvZihzdHJ1Y3Qgc2xwY19vdmVycmlkZV9wYXJh
bXMpXTsKKworCXU4IHNoYXJlZF9kYXRhX3BhZFtTTFBDX1NIQVJFRF9EQVRBX1NJWkVfQllURV9P
VEhFUl07CisKKwkvKiBQQUdFIDIgKDQwOTYgYnl0ZXMpLCBtb2RlIGJhc2VkIHBhcmFtZXRlciB3
aWxsIGJlIHJlbW92ZWQgc29vbiAqLworCXU4IHJlc2VydmVkX21vZGVfZGVmaW5pdGlvbls0MDk2
XTsKK30gX19wYWNrZWQ7CisKKyNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWMuYwppbmRleCAzOWJjM2MxNjA1N2IuLmZjY2NiMTAzYTIxYSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjLmMKQEAgLTIwMywxMSArMjAzLDE1IEBAIHN0YXRpYyB1MzIgZ3Vj
X2N0bF9kZWJ1Z19mbGFncyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCiAKIHN0YXRpYyB1MzIgZ3Vj
X2N0bF9mZWF0dXJlX2ZsYWdzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIHsKKwlzdHJ1Y3QgaW50
ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7CiAJdTMyIGZsYWdzID0gMDsKIAogCWlmICghaW50
ZWxfZ3VjX3N1Ym1pc3Npb25faXNfdXNlZChndWMpKQogCQlmbGFncyB8PSBHVUNfQ1RMX0RJU0FC
TEVfU0NIRURVTEVSOwogCisJaWYgKGludGVsX3VjX3VzZXNfZ3VjX3NscGMoJmd0LT51YykpCisJ
CWZsYWdzIHw9IEdVQ19DVExfRU5BQkxFX1NMUEM7CisKIAlyZXR1cm4gZmxhZ3M7CiB9CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19md2lmLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oCmluZGV4IDgyNTM0MjU5
YjdhZC4uYzMxMjJjYTU0MDdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfZndpZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19md2lmLmgKQEAgLTk1LDYgKzk1LDcgQEAKICNkZWZpbmUgR1VDX0NUTF9XQQkJCTEKICNk
ZWZpbmUgR1VDX0NUTF9GRUFUVVJFCQkJMgogI2RlZmluZSAgIEdVQ19DVExfRElTQUJMRV9TQ0hF
RFVMRVIJKDEgPDwgMTQpCisjZGVmaW5lICAgR1VDX0NUTF9FTkFCTEVfU0xQQwkJQklUKDIpCiAK
ICNkZWZpbmUgR1VDX0NUTF9ERUJVRwkJCTMKICNkZWZpbmUgICBHVUNfTE9HX1ZFUkJPU0lUWV9T
SElGVAkwCi0tIAoyLjI1LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=

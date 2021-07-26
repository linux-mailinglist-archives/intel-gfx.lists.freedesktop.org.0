Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C243D6753
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 21:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A26E72C8E;
	Mon, 26 Jul 2021 19:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D0272C75;
 Mon, 26 Jul 2021 19:08:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="234162103"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="234162103"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 12:08:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="566278178"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2021 12:08:43 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 12:07:49 -0700
Message-Id: <20210726190800.26762-5-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
References: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/15] drm/i915/guc/slpc: Adding SLPC
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
d2l0aApnZW5tYXNrcy4gQWRkcmVzcyBvdGhlciBjb21tZW50cyBmcm9tIE1pY2hhbCBXLgoKdjM6
IEFkZCBzbHBjIEgyRyBmb3JtYXQgaW4gYWJpLCBvdGhlciByZXZpZXcgY29tbW1lbnRzIChNaWNo
YWwgVykKCnY0OiBVcGRhdGUgc3RhdHVzIGJpdHMgYWNjb3JkaW5nIHRvIGxhdGVzdCBzcGVjCgpT
aWduZWQtb2ZmLWJ5OiBWaW5heSBCZWxnYXVta2FyIDx2aW5heS5iZWxnYXVta2FyQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogU3VuZGFyZXNhbiBTdWphcml0aGEgPHN1amFyaXRoYS5zdW5kYXJl
c2FuQGludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfYWN0aW9u
c19hYmkuaCAgfCAgIDEgLQogLi4uL2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfYWN0aW9uc19zbHBj
X2FiaS5oIHwgMjM1ICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjLmMgICAgICAgIHwgICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19md2lmLmggICB8ICAgNyArCiA0IGZpbGVzIGNoYW5nZWQsIDI0NSBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvYWJpL2d1Y19hY3Rpb25zX3NscGNfYWJpLmgKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9hYmkvZ3VjX2FjdGlvbnNfYWJpLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9hYmkvZ3VjX2FjdGlvbnNfYWJpLmgKaW5kZXggZDgzMmM4ZjExYzEx
Li5jYTUzOGU1ZGU5NDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2Fi
aS9ndWNfYWN0aW9uc19hYmkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9hYmkv
Z3VjX2FjdGlvbnNfYWJpLmgKQEAgLTEzNSw3ICsxMzUsNiBAQCBlbnVtIGludGVsX2d1Y19hY3Rp
b24gewogCUlOVEVMX0dVQ19BQ1RJT05fU0VUX0NPTlRFWFRfUFJFRU1QVElPTl9USU1FT1VUID0g
MHgxMDA3LAogCUlOVEVMX0dVQ19BQ1RJT05fQ09OVEVYVF9SRVNFVF9OT1RJRklDQVRJT04gPSAw
eDEwMDgsCiAJSU5URUxfR1VDX0FDVElPTl9FTkdJTkVfRkFJTFVSRV9OT1RJRklDQVRJT04gPSAw
eDEwMDksCi0JSU5URUxfR1VDX0FDVElPTl9TTFBDX1JFUVVFU1QgPSAweDMwMDMsCiAJSU5URUxf
R1VDX0FDVElPTl9BVVRIRU5USUNBVEVfSFVDID0gMHg0MDAwLAogCUlOVEVMX0dVQ19BQ1RJT05f
UkVHSVNURVJfQ09OVEVYVCA9IDB4NDUwMiwKIAlJTlRFTF9HVUNfQUNUSU9OX0RFUkVHSVNURVJf
Q09OVEVYVCA9IDB4NDUwMywKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2FiaS9ndWNfYWN0aW9uc19zbHBjX2FiaS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
YWJpL2d1Y19hY3Rpb25zX3NscGNfYWJpLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi43MGIzMDBkNGE1MzYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9hYmkvZ3VjX2FjdGlvbnNfc2xwY19hYmkuaApAQCAtMCwwICsxLDIzNSBA
QAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDC
qSAyMDIxIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfR1VDX0FDVElPTlNfU0xQ
Q19BQklfSF8KKyNkZWZpbmUgX0dVQ19BQ1RJT05TX1NMUENfQUJJX0hfCisKKyNpbmNsdWRlIDxs
aW51eC90eXBlcy5oPgorCisvKioKKyAqIERPQzogU0xQQyBTSEFSRUQgREFUQSBTVFJVQ1RVUkUK
KyAqCisgKiAgKy0tLS0rLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKworICogIHwgQ0wgfCBCeXRlc3wgRGVzY3JpcHRp
b24gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKKyAq
ICArPT09PSs9PT09PT0rPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0rCisgKiAgfCAxICB8IDAtMyAgfCBTSEFSRUQgREFUQSBTSVpF
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAorICogIHwgICAg
Ky0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSsKKyAqICB8ICAgIHwgNC03ICB8IEdMT0JBTCBTVEFURSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CisgKiAgfCAgICArLS0tLS0t
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tKworICogIHwgICAgfCA4LTExIHwgRElTUExBWSBEQVRBIEFERFJFU1MgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKKyAqICB8ICAgICstLS0tLS0rLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0r
CisgKiAgfCAgICB8IDEyOjYzfCBQQURESU5HICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfAorICogICstLS0tKy0tLS0tLSstLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKKyAqICB8
ICAgIHwgMDo2MyB8IFBBRERJTkcoUExBVEZPUk0gSU5GTykgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8CisgKiAgKy0tLS0rLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKworICogIHwgMyAgfCAw
LTMgIHwgVEFTSyBTVEFURSBEQVRBICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwKKyAqICArICAgICstLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCisgKiAgfCAgICB8IDQ6NjMgfCBQ
QURESU5HICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfAorICogICstLS0tKy0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKKyAqICB8NC0yMXwwOjEwODd8IE9WRVJSSURF
IFBBUkFNUyBBTkQgQklUIEZJRUxEUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cisg
KiAgKy0tLS0rLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tKworICogIHwgICAgfCAgICAgIHwgUEFERElORyArIEVYVFJB
IFJFU0VSVkVEIFBBR0UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKKyAqICArLS0t
LSstLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0rCisgKi8KKworLyoKKyAqIFNMUEMgZXhwb3NlcyBjZXJ0YWluIHBhcmFt
ZXRlcnMgZm9yIGdsb2JhbCBjb25maWd1cmF0aW9uIGJ5IHRoZSBob3N0LgorICogVGhlc2UgYXJl
IHJlZmVycmVkIHRvIGFzIG92ZXJyaWRlIHBhcmFtZXRlcnMsIGJlY2F1c2UgaW4gbW9zdCBjYXNl
cworICogdGhlIGhvc3Qgd2lsbCBub3QgbmVlZCB0byBtb2RpZnkgdGhlIGRlZmF1bHQgdmFsdWVz
IHVzZWQgYnkgU0xQQy4KKyAqIFNMUEMgcmVtZW1iZXJzIHRoZSBkZWZhdWx0IHZhbHVlcyB3aGlj
aCBhbGxvd3MgdGhlIGhvc3QgdG8gZWFzaWx5IHJlc3RvcmUKKyAqIHRoZW0gYnkgc2ltcGx5IHVu
c2V0dGluZyB0aGUgb3ZlcnJpZGUuIFRoZSBob3N0IGNhbiBzZXQgb3IgdW5zZXQgb3ZlcnJpZGUK
KyAqIHBhcmFtZXRlcnMgZHVyaW5nIFNMUEMgKHJlLSlpbml0aWFsaXphdGlvbiB1c2luZyB0aGUg
U0xQQyBSZXNldCBldmVudC4KKyAqIFRoZSBob3N0IGNhbiBhbHNvIHNldCBvciB1bnNldCBvdmVy
cmlkZSBwYXJhbWV0ZXJzIG9uIHRoZSBmbHkgdXNpbmcgdGhlCisgKiBQYXJhbWV0ZXIgU2V0IGFu
ZCBQYXJhbWV0ZXIgVW5zZXQgZXZlbnRzCisgKi8KKworI2RlZmluZSBTTFBDX01BWF9PVkVSUklE
RV9QQVJBTUVURVJTCQkyNTYKKyNkZWZpbmUgU0xQQ19PVkVSUklERV9CSVRGSUVMRF9TSVpFIFwK
KwkJKFNMUENfTUFYX09WRVJSSURFX1BBUkFNRVRFUlMgLyAzMikKKworI2RlZmluZSBTTFBDX1BB
R0VfU0laRV9CWVRFUwkJCTQwOTYKKyNkZWZpbmUgU0xQQ19DQUNIRUxJTkVfU0laRV9CWVRFUwkJ
NjQKKyNkZWZpbmUgU0xQQ19TSEFSRURfREFUQV9TSVpFX0JZVEVfSEVBREVSCVNMUENfQ0FDSEVM
SU5FX1NJWkVfQllURVMKKyNkZWZpbmUgU0xQQ19TSEFSRURfREFUQV9TSVpFX0JZVEVfUExBVEZP
Uk1fSU5GTwlTTFBDX0NBQ0hFTElORV9TSVpFX0JZVEVTCisjZGVmaW5lIFNMUENfU0hBUkVEX0RB
VEFfU0laRV9CWVRFX1RBU0tfU1RBVEUJU0xQQ19DQUNIRUxJTkVfU0laRV9CWVRFUworI2RlZmlu
ZSBTTFBDX1NIQVJFRF9EQVRBX01PREVfREVGTl9UQUJMRV9TSVpFCVNMUENfUEFHRV9TSVpFX0JZ
VEVTCisjZGVmaW5lIFNMUENfU0hBUkVEX0RBVEFfU0laRV9CWVRFX01BWAkJKDIgKiBTTFBDX1BB
R0VfU0laRV9CWVRFUykKKworLyoKKyAqIENhY2hlbGluZSBzaXplIGFsaWduZWQgKFRvdGFsIHNp
emUgbmVlZGVkIGZvcgorICogU0xQTV9LTURfTUFYX09WRVJSSURFX1BBUkFNRVRFUlM9MjU2IGlz
IDEwODggYnl0ZXMpCisgKi8KKyNkZWZpbmUgU0xQQ19PVkVSUklERV9QQVJBTVNfVE9UQUxfQllU
RVMJKCgoKChTTFBDX01BWF9PVkVSUklERV9QQVJBTUVURVJTICogNCkgXAorCQkJCQkJKyAoKFNM
UENfTUFYX09WRVJSSURFX1BBUkFNRVRFUlMgLyAzMikgKiA0KSkgXAorCQkrIChTTFBDX0NBQ0hF
TElORV9TSVpFX0JZVEVTLTEpKSAvIFNMUENfQ0FDSEVMSU5FX1NJWkVfQllURVMpKlNMUENfQ0FD
SEVMSU5FX1NJWkVfQllURVMpCisKKyNkZWZpbmUgU0xQQ19TSEFSRURfREFUQV9TSVpFX0JZVEVf
T1RIRVIJKFNMUENfU0hBUkVEX0RBVEFfU0laRV9CWVRFX01BWCAtIFwKKwkJCQkJKFNMUENfU0hB
UkVEX0RBVEFfU0laRV9CWVRFX0hFQURFUiBcCisJCQkJCSsgU0xQQ19TSEFSRURfREFUQV9TSVpF
X0JZVEVfUExBVEZPUk1fSU5GTyBcCisJCQkJCSsgU0xQQ19TSEFSRURfREFUQV9TSVpFX0JZVEVf
VEFTS19TVEFURSBcCisJCQkJCSsgU0xQQ19PVkVSUklERV9QQVJBTVNfVE9UQUxfQllURVMgXAor
CQkJCQkrIFNMUENfU0hBUkVEX0RBVEFfTU9ERV9ERUZOX1RBQkxFX1NJWkUpKQorCitlbnVtIHNs
cGNfdGFza19lbmFibGUgeworCVNMUENfUEFSQU1fVEFTS19ERUZBVUxUID0gMCwKKwlTTFBDX1BB
UkFNX1RBU0tfRU5BQkxFRCwKKwlTTFBDX1BBUkFNX1RBU0tfRElTQUJMRUQsCisJU0xQQ19QQVJB
TV9UQVNLX1VOS05PV04KK307CisKK2VudW0gc2xwY19nbG9iYWxfc3RhdGUgeworCVNMUENfR0xP
QkFMX1NUQVRFX05PVF9SVU5OSU5HID0gMCwKKwlTTFBDX0dMT0JBTF9TVEFURV9JTklUSUFMSVpJ
TkcgPSAxLAorCVNMUENfR0xPQkFMX1NUQVRFX1JFU0VUVElORyA9IDIsCisJU0xQQ19HTE9CQUxf
U1RBVEVfUlVOTklORyA9IDMsCisJU0xQQ19HTE9CQUxfU1RBVEVfU0hVVFRJTkdfRE9XTiA9IDQs
CisJU0xQQ19HTE9CQUxfU1RBVEVfRVJST1IgPSA1Cit9OworCitlbnVtIHNscGNfcGFyYW1faWQg
eworCVNMUENfUEFSQU1fVEFTS19FTkFCTEVfR1RQRVJGID0gMCwKKwlTTFBDX1BBUkFNX1RBU0tf
RElTQUJMRV9HVFBFUkYgPSAxLAorCVNMUENfUEFSQU1fVEFTS19FTkFCTEVfQkFMQU5DRVIgPSAy
LAorCVNMUENfUEFSQU1fVEFTS19ESVNBQkxFX0JBTEFOQ0VSID0gMywKKwlTTFBDX1BBUkFNX1RB
U0tfRU5BQkxFX0RDQyA9IDQsCisJU0xQQ19QQVJBTV9UQVNLX0RJU0FCTEVfRENDID0gNSwKKwlT
TFBDX1BBUkFNX0dMT0JBTF9NSU5fR1RfVU5TTElDRV9GUkVRX01IWiA9IDYsCisJU0xQQ19QQVJB
TV9HTE9CQUxfTUFYX0dUX1VOU0xJQ0VfRlJFUV9NSFogPSA3LAorCVNMUENfUEFSQU1fR0xPQkFM
X01JTl9HVF9TTElDRV9GUkVRX01IWiA9IDgsCisJU0xQQ19QQVJBTV9HTE9CQUxfTUFYX0dUX1NM
SUNFX0ZSRVFfTUhaID0gOSwKKwlTTFBDX1BBUkFNX0dUUEVSRl9USFJFU0hPTERfTUFYX0ZQUyA9
IDEwLAorCVNMUENfUEFSQU1fR0xPQkFMX0RJU0FCTEVfR1RfRlJFUV9NQU5BR0VNRU5UID0gMTEs
CisJU0xQQ19QQVJBTV9HVFBFUkZfRU5BQkxFX0ZSQU1FUkFURV9TVEFMTElORyA9IDEyLAorCVNM
UENfUEFSQU1fR0xPQkFMX0RJU0FCTEVfUkM2X01PREVfQ0hBTkdFID0gMTMsCisJU0xQQ19QQVJB
TV9HTE9CQUxfT0NfVU5TTElDRV9GUkVRX01IWiA9IDE0LAorCVNMUENfUEFSQU1fR0xPQkFMX09D
X1NMSUNFX0ZSRVFfTUhaID0gMTUsCisJU0xQQ19QQVJBTV9HTE9CQUxfRU5BQkxFX0lBX0dUX0JB
TEFOQ0lORyA9IDE2LAorCVNMUENfUEFSQU1fR0xPQkFMX0VOQUJMRV9BREFQVElWRV9CVVJTVF9U
VVJCTyA9IDE3LAorCVNMUENfUEFSQU1fR0xPQkFMX0VOQUJMRV9FVkFMX01PREUgPSAxOCwKKwlT
TFBDX1BBUkFNX0dMT0JBTF9FTkFCTEVfQkFMQU5DRVJfSU5fTk9OX0dBTUlOR19NT0RFID0gMTks
CisJU0xQQ19QQVJBTV9HTE9CQUxfUlRfTU9ERV9UVVJCT19GUkVRX0RFTFRBX01IWiA9IDIwLAor
CVNMUENfUEFSQU1fUFdSR0FURV9SQ19NT0RFID0gMjEsCisJU0xQQ19QQVJBTV9FRFJfTU9ERV9D
T01QVVRFX1RJTUVPVVRfTVMgPSAyMiwKKwlTTFBDX1BBUkFNX0VEUl9RT1NfRlJFUV9NSFogPSAy
MywKKwlTTFBDX1BBUkFNX01FRElBX0ZGX1JBVElPX01PREUgPSAyNCwKKwlTTFBDX1BBUkFNX0VO
QUJMRV9JQV9GUkVRX0xJTUlUSU5HID0gMjUsCisJU0xQQ19QQVJBTV9TVFJBVEVHSUVTID0gMjYs
CisJU0xQQ19QQVJBTV9QT1dFUl9QUk9GSUxFID0gMjcsCisJU0xQQ19QQVJBTV9JR05PUkVfRUZG
SUNJRU5UX0ZSRVFVRU5DWSA9IDI4LAorCVNMUENfTUFYX1BBUkFNID0gMzIsCit9OworCitlbnVt
IHNscGNfZXZlbnRfaWQgeworCVNMUENfRVZFTlRfUkVTRVQgPSAwLAorCVNMUENfRVZFTlRfU0hV
VERPV04gPSAxLAorCVNMUENfRVZFTlRfUExBVEZPUk1fSU5GT19DSEFOR0UgPSAyLAorCVNMUENf
RVZFTlRfRElTUExBWV9NT0RFX0NIQU5HRSA9IDMsCisJU0xQQ19FVkVOVF9GTElQX0NPTVBMRVRF
ID0gNCwKKwlTTFBDX0VWRU5UX1FVRVJZX1RBU0tfU1RBVEUgPSA1LAorCVNMUENfRVZFTlRfUEFS
QU1FVEVSX1NFVCA9IDYsCisJU0xQQ19FVkVOVF9QQVJBTUVURVJfVU5TRVQgPSA3LAorfTsKKwor
c3RydWN0IHNscGNfdGFza19zdGF0ZV9kYXRhIHsKKwl1bmlvbiB7CisJCXUzMiB0YXNrX3N0YXR1
c19wYWRkaW5nOworCQlzdHJ1Y3QgeworCQkJdTMyIHN0YXR1czsKKyNkZWZpbmUgU0xQQ19HVFBF
UkZfVEFTS19FTkFCTEVECUJJVCgwKQorI2RlZmluZSBTTFBDX0RDQ19UQVNLX0VOQUJMRUQJCUJJ
VCgxMSkKKyNkZWZpbmUgU0xQQ19JTl9EQ0MJCQlCSVQoMTIpCisjZGVmaW5lIFNMUENfQkFMQU5D
RVJfRU5BQkxFRAkJQklUKDE1KQorI2RlZmluZSBTTFBDX0lCQ19UQVNLX0VOQUJMRUQJCUJJVCgx
NikKKyNkZWZpbmUgU0xQQ19CQUxBTkNFUl9JQV9MTVRfRU5BQkxFRAlCSVQoMTcpCisjZGVmaW5l
IFNMUENfQkFMQU5DRVJfSUFfTE1UX0FDVElWRQlCSVQoMTgpCisJCX07CisJfTsKKwl1bmlvbiB7
CisJCXUzMiBmcmVxX3BhZGRpbmc7CisJCXN0cnVjdCB7CisjZGVmaW5lIFNMUENfTUFYX1VOU0xJ
Q0VfRlJFUV9NQVNLCVJFR19HRU5NQVNLKDcsIDApCisjZGVmaW5lIFNMUENfTUlOX1VOU0xJQ0Vf
RlJFUV9NQVNLCVJFR19HRU5NQVNLKDE1LCA4KQorI2RlZmluZSBTTFBDX01BWF9TTElDRV9GUkVR
X01BU0sJUkVHX0dFTk1BU0soMjMsIDE2KQorI2RlZmluZSBTTFBDX01JTl9TTElDRV9GUkVRX01B
U0sJUkVHX0dFTk1BU0soMzEsIDI0KQorCQkJdTMyIGZyZXE7CisJCX07CisJfTsKK30gX19wYWNr
ZWQ7CisKK3N0cnVjdCBzbHBjX3NoYXJlZF9kYXRhX2hlYWRlciB7CisJLyogVG90YWwgc2l6ZSBp
biBieXRlcyBvZiB0aGlzIHNoYXJlZCBidWZmZXIuICovCisJdTMyIHNpemU7CisJdTMyIGdsb2Jh
bF9zdGF0ZTsKKwl1MzIgZGlzcGxheV9kYXRhX2FkZHI7Cit9IF9fcGFja2VkOworCitzdHJ1Y3Qg
c2xwY19vdmVycmlkZV9wYXJhbXMgeworCXUzMiBiaXRzW1NMUENfT1ZFUlJJREVfQklURklFTERf
U0laRV07CisJdTMyIHZhbHVlc1tTTFBDX01BWF9PVkVSUklERV9QQVJBTUVURVJTXTsKK30gX19w
YWNrZWQ7CisKK3N0cnVjdCBzbHBjX3NoYXJlZF9kYXRhIHsKKwlzdHJ1Y3Qgc2xwY19zaGFyZWRf
ZGF0YV9oZWFkZXIgaGVhZGVyOworCXU4IHNoYXJlZF9kYXRhX2hlYWRlcl9wYWRbU0xQQ19TSEFS
RURfREFUQV9TSVpFX0JZVEVfSEVBREVSIC0KKwkJCQlzaXplb2Yoc3RydWN0IHNscGNfc2hhcmVk
X2RhdGFfaGVhZGVyKV07CisKKwl1OCBwbGF0Zm9ybV9pbmZvX3BhZFtTTFBDX1NIQVJFRF9EQVRB
X1NJWkVfQllURV9QTEFURk9STV9JTkZPXTsKKworCXN0cnVjdCBzbHBjX3Rhc2tfc3RhdGVfZGF0
YSB0YXNrX3N0YXRlX2RhdGE7CisJdTggdGFza19zdGF0ZV9kYXRhX3BhZFtTTFBDX1NIQVJFRF9E
QVRBX1NJWkVfQllURV9UQVNLX1NUQVRFIC0KKwkJCQlzaXplb2Yoc3RydWN0IHNscGNfdGFza19z
dGF0ZV9kYXRhKV07CisKKwlzdHJ1Y3Qgc2xwY19vdmVycmlkZV9wYXJhbXMgb3ZlcnJpZGVfcGFy
YW1zIDsKKwl1OCBvdmVycmlkZV9wYXJhbXNfcGFkW1NMUENfT1ZFUlJJREVfUEFSQU1TX1RPVEFM
X0JZVEVTIC0KKwkJCQlzaXplb2Yoc3RydWN0IHNscGNfb3ZlcnJpZGVfcGFyYW1zKV07CisKKwl1
OCBzaGFyZWRfZGF0YV9wYWRbU0xQQ19TSEFSRURfREFUQV9TSVpFX0JZVEVfT1RIRVJdOworCisJ
LyogUEFHRSAyICg0MDk2IGJ5dGVzKSwgbW9kZSBiYXNlZCBwYXJhbWV0ZXIgd2lsbCBiZSByZW1v
dmVkIHNvb24gKi8KKwl1OCByZXNlcnZlZF9tb2RlX2RlZmluaXRpb25bNDA5Nl07Cit9IF9fcGFj
a2VkOworCisvKioKKyAqIERPQzogU0xQQyBIMkcgTUVTU0FHRSBGT1JNQVQKKyAqCisgKiAgKy0t
LSstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tKworICogIHwgICB8IEJpdHMgIHwgRGVzY3JpcHRpb24gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKKyAqICArPT09Kz09PT09
PT0rPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0rCisgKiAgfCAwIHwgICAgMzEgfCBPUklHSU4gPSBHVUNfSFhHX09SSUdJTl9IT1NU
XyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAorICogIHwgICArLS0tLS0tLSstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSsKKyAqICB8ICAgfCAzMDoyOCB8IFRZUEUgPSBHVUNfSFhHX1RZUEVfUkVRVUVTVF8gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8CisgKiAgfCAgICstLS0tLS0tKy0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKworICog
IHwgICB8IDI3OjE2IHwgREFUQTAgPSBNQlogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKKyAqICB8ICAgKy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCisgKiAgfCAgIHwg
IDE1OjAgfCBBQ1RJT04gPSBfYEdVQ19BQ1RJT05fSE9TVDJHVUNfUENfU0xQTV9SRVFVRVNUYCA9
IDB4MzAwMyAgICAgfAorICogICstLS0rLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsKKyAqICB8IDEgfCAgMzE6OCB8
ICoqRVZFTlRfSUQqKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8CisgKiAgKyAgICstLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKworICogIHwgICB8ICAgNzowIHwgKipFVkVO
VF9BUkdDKiogLSBudW1iZXIgb2YgZGF0YSBhcmd1bWVudHMgICAgICAgICAgICAgICAgICAgIHwK
KyAqICArLS0tKy0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rCisgKiAgfCAyIHwgIDMxOjAgfCAqKkVWRU5UX0RBVEEx
KiogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAorICogICst
LS0rLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLSsKKyAqICB8Li4ufCAgMzE6MCB8IC4uLiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CisgKiAgKy0tLSstLS0t
LS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tKworICogIHwyK258ICAzMTowIHwgKipFVkVOVF9EQVRBbioqICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKKyAqICArLS0tKy0tLS0tLS0rLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0rCisgKi8KKworI2RlZmluZSBJTlRFTF9HVUNfQUNUSU9OX1NMUENfUkVRVUVTVAkJCTB4MzAw
MworCisjZGVmaW5lIEhPU1QyR1VDX1BDX1NMUENfUkVRVUVTVF9NU0dfTUlOX0xFTiBcCisJCQkJ
KEdVQ19IWEdfUkVRVUVTVF9NU0dfTUlOX0xFTiArIDF1KQorI2RlZmluZSBIT1NUMkdVQ19QQ19T
TFBDX0VWRU5UX01BWF9JTlBVVF9BUkdTCQk5CisjZGVmaW5lIEhPU1QyR1VDX1BDX1NMUENfUkVR
VUVTVF9NU0dfTUFYX0xFTiBcCisJCShIT1NUMkdVQ19QQ19TTFBDX1JFUVVFU1RfUkVRVUVTVF9N
U0dfTUlOX0xFTiArIFwKKwkJCUhPU1QyR1VDX1BDX1NMUENfRVZFTlRfTUFYX0lOUFVUX0FSR1Mp
CisjZGVmaW5lIEhPU1QyR1VDX1BDX1NMUENfUkVRVUVTVF9NU0dfMF9NQloJCUdVQ19IWEdfUkVR
VUVTVF9NU0dfMF9EQVRBMAorI2RlZmluZSBIT1NUMkdVQ19QQ19TTFBDX1JFUVVFU1RfTVNHXzFf
RVZFTlRfSUQJCSgweGZmIDw8IDgpCisjZGVmaW5lIEhPU1QyR1VDX1BDX1NMUENfUkVRVUVTVF9N
U0dfMV9FVkVOVF9BUkdDCSgweGZmIDw8IDApCisjZGVmaW5lIEhPU1QyR1VDX1BDX1NMUENfUkVR
VUVTVF9NU0dfbl9FVkVOVF9EQVRBbglHVUNfSFhHX1JFUVVFU1RfTVNHX25fREFUQW4KKworI2Rl
ZmluZSBIT1NUMkdVQ19ERVJFR0lTVEVSX0NUQl9SRVFVRVNUX01TR19MRU4gXAorCQkJKEdVQ19I
WEdfUkVRVUVTVF9NU0dfTUlOX0xFTiArIDF1KQorI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5jCmluZGV4IDM5YmMzYzE2MDU3Yi4uNWIwZjhjNTQxYjY5IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYwpAQCAtMjA4LDYgKzIwOCw5IEBAIHN0YXRp
YyB1MzIgZ3VjX2N0bF9mZWF0dXJlX2ZsYWdzKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKIAlpZiAo
IWludGVsX2d1Y19zdWJtaXNzaW9uX2lzX3VzZWQoZ3VjKSkKIAkJZmxhZ3MgfD0gR1VDX0NUTF9E
SVNBQkxFX1NDSEVEVUxFUjsKIAorCWlmIChpbnRlbF9ndWNfc2xwY19pc191c2VkKGd1YykpCisJ
CWZsYWdzIHw9IEdVQ19DVExfRU5BQkxFX1NMUEM7CisKIAlyZXR1cm4gZmxhZ3M7CiB9CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19md2lmLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oCmluZGV4IDgyNTM0MjU5
YjdhZC4uNmVjMzMxYjkwM2E4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfZndpZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19md2lmLmgKQEAgLTEyLDYgKzEyLDcgQEAKICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVf
dHlwZXMuaCIKIAogI2luY2x1ZGUgImFiaS9ndWNfYWN0aW9uc19hYmkuaCIKKyNpbmNsdWRlICJh
YmkvZ3VjX2FjdGlvbnNfc2xwY19hYmkuaCIKICNpbmNsdWRlICJhYmkvZ3VjX2Vycm9yc19hYmku
aCIKICNpbmNsdWRlICJhYmkvZ3VjX2NvbW11bmljYXRpb25fbW1pb19hYmkuaCIKICNpbmNsdWRl
ICJhYmkvZ3VjX2NvbW11bmljYXRpb25fY3RiX2FiaS5oIgpAQCAtOTUsNiArOTYsNyBAQAogI2Rl
ZmluZSBHVUNfQ1RMX1dBCQkJMQogI2RlZmluZSBHVUNfQ1RMX0ZFQVRVUkUJCQkyCiAjZGVmaW5l
ICAgR1VDX0NUTF9ESVNBQkxFX1NDSEVEVUxFUgkoMSA8PCAxNCkKKyNkZWZpbmUgICBHVUNfQ1RM
X0VOQUJMRV9TTFBDCQlCSVQoMikKIAogI2RlZmluZSBHVUNfQ1RMX0RFQlVHCQkJMwogI2RlZmlu
ZSAgIEdVQ19MT0dfVkVSQk9TSVRZX1NISUZUCTAKQEAgLTE0MSw2ICsxNDMsMTEgQEAKICNkZWZp
bmUgR1VDX0lEX1RPX0VOR0lORV9JTlNUQU5DRShndWNfaWQpIFwKIAkoKChndWNfaWQpICYgR1VD
X0VOR0lORV9JTlNUQU5DRV9NQVNLKSA+PiBHVUNfRU5HSU5FX0lOU1RBTkNFX1NISUZUKQogCisj
ZGVmaW5lIFNMUENfRVZFTlQoaWQsYykgKFwKK0ZJRUxEX1BSRVAoSE9TVDJHVUNfUENfU0xQQ19S
RVFVRVNUX01TR18xX0VWRU5UX0lELCBpZCkgfCBcCitGSUVMRF9QUkVQKEhPU1QyR1VDX1BDX1NM
UENfUkVRVUVTVF9NU0dfMV9FVkVOVF9BUkdDLCBjICkgXAorKQorCiBzdGF0aWMgaW5saW5lIHU4
IGVuZ2luZV9jbGFzc190b19ndWNfY2xhc3ModTggY2xhc3MpCiB7CiAJQlVJTERfQlVHX09OKEdV
Q19SRU5ERVJfQ0xBU1MgIT0gUkVOREVSX0NMQVNTKTsKLS0gCjIuMjUuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6721E3A09
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 19:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1D7E6E5C0;
	Thu, 24 Oct 2019 17:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A89E6E5B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 17:29:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 10:29:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="202365872"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga006.jf.intel.com with ESMTP; 24 Oct 2019 10:29:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 10:30:23 -0700
Message-Id: <20191024173023.22113-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191024172506.16454-1-matthew.d.roper@intel.com>
References: <20191024172506.16454-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Handle AUX interrupts for TC
 ports
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UncmUgY3VycmVudGx5IG9ubHkgcHJvY2Vzc2luZyBBVVggaW50ZXJydXB0cyBvbiB0aGUgY29t
Ym8gcG9ydHM7IG1ha2UKc3VyZSB3ZSBoYW5kbGUgdGhlIFRDIHBvcnRzIGFzIHdlbGwuCgp2Mjog
RHJvcCBzdGFsZSBjb21tZW50CgpGaXhlczogZjY2Mzc2OWE1ZWVmICgiZHJtL2k5MTUvdGdsOiBp
bml0aWFsaXplIFRDIGFuZCBUQlQgcG9ydHMiKQpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMTAgKysrKysr
KystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICA2ICsrKysrKwogMiBmaWxl
cyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCmluZGV4IGEwNDhjNzlhNmE1NS4uMmU2NzczNGE2ZDJhIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKQEAgLTI1NzUsMTAgKzI1NzUsMTYgQEAgc3RhdGljIHUzMiBnZW44X2RlX3Bv
cnRfYXV4X21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXUzMiBtYXNr
OwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCi0JCS8qIFRPRE86IEFkZCBBVVgg
ZW50cmllcyBmb3IgVVNCQyAqLwogCQlyZXR1cm4gVEdMX0RFX1BPUlRfQVVYX0RESUEgfAogCQkJ
VEdMX0RFX1BPUlRfQVVYX0RESUIgfAotCQkJVEdMX0RFX1BPUlRfQVVYX0RESUM7CisJCQlUR0xf
REVfUE9SVF9BVVhfRERJQyB8CisJCQlUR0xfREVfUE9SVF9BVVhfVVNCQzEgfAorCQkJVEdMX0RF
X1BPUlRfQVVYX1VTQkMyIHwKKwkJCVRHTF9ERV9QT1JUX0FVWF9VU0JDMyB8CisJCQlUR0xfREVf
UE9SVF9BVVhfVVNCQzQgfAorCQkJVEdMX0RFX1BPUlRfQVVYX1VTQkM1IHwKKwkJCVRHTF9ERV9Q
T1JUX0FVWF9VU0JDNjsKKwogCiAJbWFzayA9IEdFTjhfQVVYX0NIQU5ORUxfQTsKIAlpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA5KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMDdjZjY3
ZDQyNzM1Li5hN2JhODEwMGYxM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzQzNiw2
ICs3NDM2LDEyIEBAIGVudW0gewogI2RlZmluZSAgR0VOOF9QT1JUX0RQX0FfSE9UUExVRwkJKDEg
PDwgMykKICNkZWZpbmUgIEJYVF9ERV9QT1JUX0dNQlVTCQkoMSA8PCAxKQogI2RlZmluZSAgR0VO
OF9BVVhfQ0hBTk5FTF9BCQkoMSA8PCAwKQorI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX1VTQkM2
CQkoMSA8PCAxMykKKyNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9VU0JDNQkJKDEgPDwgMTIpCisj
ZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfVVNCQzQJCSgxIDw8IDExKQorI2RlZmluZSAgVEdMX0RF
X1BPUlRfQVVYX1VTQkMzCQkoMSA8PCAxMCkKKyNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9VU0JD
MgkJKDEgPDwgOSkKKyNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9VU0JDMQkJKDEgPDwgOCkKICNk
ZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9ERElDCQkoMSA8PCAyKQogI2RlZmluZSAgVEdMX0RFX1BP
UlRfQVVYX0RESUIJCSgxIDw8IDEpCiAjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfRERJQQkJKDEg
PDwgMCkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4

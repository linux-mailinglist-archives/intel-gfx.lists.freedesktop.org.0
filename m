Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4066732EEF6
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 16:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FC76EBB7;
	Fri,  5 Mar 2021 15:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E0826EBB7
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Mar 2021 15:36:17 +0000 (UTC)
IronPort-SDR: fXeXGXFRGXNUSj2jFVdtJjj1RYafKBVbqMSBCo1R7xZG8vzrYSg2QWbYSQH9QGDEFvpNntvrWG
 axKSsxxrvnfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="175294168"
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="175294168"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 07:36:16 -0800
IronPort-SDR: uj87+29UozD64YMo880wIB3Ic16cXNnwhLTYE+2TzrLxf/Ko7pjMnYlAynQUiIuD+Kgudyxd/k
 aItw6ANGv84A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,225,1610438400"; d="scan'208";a="446242543"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2021 07:36:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Mar 2021 17:36:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Mar 2021 17:36:05 +0200
Message-Id: <20210305153610.12177-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Fix enabled_planes bitmask
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBlbmFibGVkX3BsYW5lcyBiaXRtYXNrIHdhcyBzdXBwb3NlZCB0byB0cmFjayBsb2dpY2FsbHkg
ZW5hYmxlZApwbGFuZXMgKGllLiBmYiE9TlVMTCBhbmQgY3J0YyE9TlVMTCksIGJ1dCBpbnN0ZWFk
IHdlIGVuZCB1cCBwdXR0aW5nCmV2ZW4gZGlzYWJsZWQgcGxhbmVzIGludG8gdGhlIGJpdG1hc2sg
c2luY2UKaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUoKSBvbmx5IHRha2VzIHRo
ZSBlYXJseSBleGl0CmlmIHRoZSBwbGFuZSB3YXMgZGlzYWJsZWQgYW5kIHN0YXlzIGRpc2FibGVk
LiBJIHRoaW5rIEkgbWlzcmVhZAp0aGUgZWFybHkgc2FpZCBjb2RlcGF0aCB0byBleGl0IHdoZW5l
dmVyIHRoZSBwbGFuZSBpcyBsb2dpY2FsbHkKZGlzYWJsZWQsIHdoaWNoIGlzIG5vdCB0cnVlLgoK
U28gbGV0J3MgZml4IHRoaXMgdXAgcHJvcGVybHkgYW5kIHNldCB0aGUgYml0IG9ubHkgd2hlbiB0
aGUgcGxhbmUKYWN0dWFsbHkgaXMgbG9naWNhbGx5IGVuYWJsZWQuCgpDYzogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KRml4ZXM6IGVlNDJlYzE5Y2EyZSAoImRybS9p
OTE1OiBUcmFjayBsb2dpY2FsbHkgZW5hYmxlZCBwbGFuZXMgZm9yIGh3IHN0YXRlIikKU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHwg
NSArKystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUu
YwppbmRleCA0NjgzZjk4ZjdlNTQuLmMzZjI5NjJhYTFlYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCkBAIC0zMTcsMTIgKzMxNywx
MyBAQCBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjXwogCWlmICghbmV3X3BsYW5lX3N0YXRlLT5ody5j
cnRjICYmICFvbGRfcGxhbmVfc3RhdGUtPmh3LmNydGMpCiAJCXJldHVybiAwOwogCi0JbmV3X2Ny
dGNfc3RhdGUtPmVuYWJsZWRfcGxhbmVzIHw9IEJJVChwbGFuZS0+aWQpOwotCiAJcmV0ID0gcGxh
bmUtPmNoZWNrX3BsYW5lKG5ld19jcnRjX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOwogCWlmIChy
ZXQpCiAJCXJldHVybiByZXQ7CiAKKwlpZiAoZmIpCisJCW5ld19jcnRjX3N0YXRlLT5lbmFibGVk
X3BsYW5lcyB8PSBCSVQocGxhbmUtPmlkKTsKKwogCS8qIEZJWE1FIHByZS1nNHggZG9uJ3Qgd29y
ayBsaWtlIHRoaXMgKi8KIAlpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpCiAJCW5l
d19jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzIHw9IEJJVChwbGFuZS0+aWQpOwotLSAKMi4yNi4y
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

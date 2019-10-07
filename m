Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC13CE6CC
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 17:10:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591646E5F3;
	Mon,  7 Oct 2019 15:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9047B6E5F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 15:10:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:10:10 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="197415557"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:10:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 18:09:30 +0300
Message-Id: <d838d52d7d42c5f365676502996c543bfedc841f.1570460714.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1570460714.git.jani.nikula@intel.com>
References: <cover.1570460714.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: split
 i915_driver_modeset_remove() to pre/post irq uninstall
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHVzaCBpcnEgdW5pbnN0YWxsIGZ1cnRoZXIgdXAsIGJ5IHNwbGl0dGluZyBpOTE1X2RyaXZlcl9t
b2Rlc2V0X3JlbW92ZSgpCnRvIHR3bywgdGhlIHBhcnQgd2l0aCB3b3JraW5nIGlycXMgYmVmb3Jl
IGlycSB1bmluc3RhbGwsIGFuZCB0aGUgcGFydAphZnRlciBpcnEgdW5pbnN0YWxsLiBObyBmdW5j
dGlvbmFsIGNoYW5nZXMuCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAxMSArKysr
KysrKystLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBmMDY3OTEzOTI4MmQuLmM2ZmFiZTc3NTA0NiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0zMzksMTIgKzMzOSwxNSBAQCBzdGF0aWMgaW50
IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CiAJcmV0dXJuIHJldDsKIH0KIAorLyogcGFydCAjMTogY2FsbCBiZWZvcmUgaXJxIHVuaW5zdGFs
bCAqLwogc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKGk5MTUp
OworfQogCi0JaW50ZWxfaXJxX3VuaW5zdGFsbChpOTE1KTsKLQorLyogcGFydCAjMjogY2FsbCBh
ZnRlciBpcnEgdW5pbnN0YWxsICovCitzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Jl
bW92ZV9ub2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKIAlpbnRlbF9tb2Rl
c2V0X2RyaXZlcl9yZW1vdmVfbm9pcnEoaTkxNSk7CiAKIAlpbnRlbF9iaW9zX2RyaXZlcl9yZW1v
dmUoaTkxNSk7CkBAIC0xNTUyLDYgKzE1NTUsMTAgQEAgdm9pZCBpOTE1X2RyaXZlcl9yZW1vdmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlpOTE1X2RyaXZlcl9tb2Rlc2V0X3Jl
bW92ZShpOTE1KTsKIAorCWludGVsX2lycV91bmluc3RhbGwoaTkxNSk7CisKKwlpOTE1X2RyaXZl
cl9tb2Rlc2V0X3JlbW92ZV9ub2lycShpOTE1KTsKKwogCS8qIEZyZWUgZXJyb3Igc3RhdGUgYWZ0
ZXIgaW50ZXJydXB0cyBhcmUgZnVsbHkgZGlzYWJsZWQuICovCiAJY2FuY2VsX2RlbGF5ZWRfd29y
a19zeW5jKCZpOTE1LT5ndC5oYW5nY2hlY2sud29yayk7CiAJaTkxNV9yZXNldF9lcnJvcl9zdGF0
ZShpOTE1KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4

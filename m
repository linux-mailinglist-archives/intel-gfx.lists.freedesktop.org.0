Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E85E59CAE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 15:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA336E924;
	Fri, 28 Jun 2019 13:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6726E924
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 13:12:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 06:12:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="314131466"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2019 06:12:47 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 18:37:50 +0530
Message-Id: <20190628130754.9527-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190628130754.9527-1-anshuman.gupta@intel.com>
References: <20190628130754.9527-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/10] drm/i915/tgl:Added VIDEO power domain.
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

QWRkZWQgUE9XRVJfRE9NQUlOX1ZJREVPIHBvd2VyIGRvbWFpbiBhbmQgYWRkZWQgaXRzIGhlbHBl
ciBzdHVmZi4KUE9XRVJfRE9NQUlOX1ZJREVPIGlzIGEgaG9vayB0byAiREM1IE9mZiIgcG93ZXIg
d2VsbC4Kd2hpY2ggY2FuIGRpc2FsbG93IERDNS82IGluIG9yZGVyIHRvIGFsbG93IGRjM2NvLgoK
Q2M6IGphbmkubmlrdWxhQGludGVsLmNvbQpDYzogaW1yZS5kZWFrQGludGVsLmNvbQpDYzogYW5p
bWVzaC5tYW5uYUBpbnRlbC5jb20KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1
bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgICAgfCA2ICsrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5o
ICAgIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMgfCAzICsr
KwogMyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKaW5kZXggYWNjMWJjOTYzYjA2Li5hZjRlYjIyM2FmYTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaApAQCAtMzYwLDYgKzM2MCwxMiBAQCBzdHJ1Y3QgaW50ZWxfY3NyIHsKIAl1MzIgYWxsb3dl
ZF9kY19tYXNrOwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCWJvb2wgcHJlZmVyX2RjM2Nv
OworCWludGVsX3dha2VyZWZfdCBkYzVfd2FrZXJlZjsKKwkvKgorCSAqIE11dGV4IHRvIHByb3Rl
Y3QgZGM1X3dha2VyZWYgd2hpY2ggbWFrZSBtYWludGFpbiBwcm9wZXIKKwkgKiBwb3dlciBkb21h
aW4gcmVmZXJlbmNlIGNvdW50IG9mIFBPV0VSX0RPTUFJTl9WSURFTworCSAqLworCXN0cnVjdCBt
dXRleCBkYzVfbXV0ZXg7CiB9OwogCiBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgewpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGlzcGxheS5oCmluZGV4IDQxZjJhYTk2NmFiYy4uMjc4OWM1OTBlZDU5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5oCkBAIC0yNTEsNiArMjUxLDcgQEAgZW51
bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiB7CiAJUE9XRVJfRE9NQUlOX1BPUlRfT1RIRVIs
CiAJUE9XRVJfRE9NQUlOX1ZHQSwKIAlQT1dFUl9ET01BSU5fQVVESU8sCisJUE9XRVJfRE9NQUlO
X1ZJREVPLAogCVBPV0VSX0RPTUFJTl9BVVhfQSwKIAlQT1dFUl9ET01BSU5fQVVYX0IsCiAJUE9X
RVJfRE9NQUlOX0FVWF9DLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cnVudGltZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCmlu
ZGV4IDA1NmIwMmMxYWI2Yi4uYTk3MTRjOGVmMjFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcnVudGltZV9wbS5jCkBAIC00NzIsNiArNDcyLDggQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9k
b21haW5fc3RyKGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluKQogCQlyZXR1
cm4gIlZHQSI7CiAJY2FzZSBQT1dFUl9ET01BSU5fQVVESU86CiAJCXJldHVybiAiQVVESU8iOwor
CWNhc2UgUE9XRVJfRE9NQUlOX1ZJREVPOgorCQlyZXR1cm4gIlZJREVPIjsKIAljYXNlIFBPV0VS
X0RPTUFJTl9BVVhfQToKIAkJcmV0dXJuICJBVVhfQSI7CiAJY2FzZSBQT1dFUl9ET01BSU5fQVVY
X0I6CkBAIC0yOTA1LDYgKzI5MDcsNyBAQCB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkgKi8KICNkZWZpbmUgSUNMX0RJU1BM
QVlfRENfT0ZGX1BPV0VSX0RPTUFJTlMgKAkJXAogCUlDTF9QV18yX1BPV0VSX0RPTUFJTlMgfAkJ
CVwKKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9WSURFTykgfAkJCVwKIAlCSVRfVUxMKFBPV0VSX0RP
TUFJTl9NT0RFU0VUKSB8CQkJXAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9BKSB8CQkJXAog
CUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE53037BA43
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 12:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822D06EB6F;
	Wed, 12 May 2021 10:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BAF6EB6A;
 Wed, 12 May 2021 10:24:10 +0000 (UTC)
IronPort-SDR: TIqK+XzjhcVAcjJwVU8czKbI+K1gvSy4kiQ0tT5fBCooBXqS/MZeFf8wZT+3HOerVY12pw/XHg
 M+2YUvObjd7A==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="263598796"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="263598796"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 03:24:07 -0700
IronPort-SDR: 4kS+h43gLefeeuCxKhS0iLflQfiMF85LROO16E2H0UwBhQxVfHrk6jNYpymPr7h6FeNbp6KiqM
 KuAy/ph0mM1g==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="625260530"
Received: from jpludows-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.209.164])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 03:24:06 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 May 2021 11:24:00 +0100
Message-Id: <20210512102400.513710-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Pin the L-shape quirked object as
 unshrinkable
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
Cc: dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpXaGVuIGluc3Rh
bnRpYXRpbmcgYSB0aWxlZCBvYmplY3Qgb24gYW4gTC1zaGFwZWQgbWVtb3J5IG1hY2hpbmUsIHdl
IG1hcmsKdGhlIG9iamVjdCBhcyB1bnNocmlua2FibGUgdG8gcHJldmVudCB0aGUgc2hyaW5rZXIg
ZnJvbSB0cnlpbmcgdG8gc3dhcApvdXQgdGhlIHBhZ2VzLiBXZSBoYXZlIHRvIGRvIHRoaXMgYXMg
d2UgZG8gbm90IGtub3cgdGhlIHN3aXp6bGluZyBvbiB0aGUKaW5kaXZpZHVhbCBwYWdlcywgYW5k
IHNvIHRoZSBkYXRhIHdpbGwgYmUgc2NyYW1ibGVkIGFjcm9zcyBzd2FwIG91dC9pbi4KCk5vdCBv
bmx5IGRvIHdlIG5lZWQgdG8gbW92ZSB0aGUgb2JqZWN0IG9mZiB0aGUgc2hyaW5rZXIgbGlzdCwg
d2UgbmVlZCB0bwptYXJrIHRoZSBvYmplY3Qgd2l0aCBzaHJpbmtfcGluIHNvIHRoYXQgdGhlIGNv
dW50ZXIgaXMgY29uc2lzdGVudCBhY3Jvc3MKY2FsbHMgdG8gbWFkdmlzZS4KCkZpeGVzOiAwMTc1
OTY5ZTQ4OWEgKCJkcm0vaTkxNS9nZW06IFVzZSBzaHJpbmthYmxlIHN0YXR1cyBmb3IgdW5rbm93
biBzd2l6emxlIHF1aXJrcyIpClJlZmVyZW5jZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMzI5MwpSZXBvcnRlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcGFnZXMuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCmluZGV4IGFlZDhhMzdj
Y2RjOS4uNzM2MTk3MWMxNzdkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcGFnZXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
cGFnZXMuYwpAQCAtNjMsNiArNjMsOCBAQCB2b2lkIF9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdl
cyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCSAgICBpOTE1LT5xdWlya3MgJiBR
VUlSS19QSU5fU1dJWlpMRURfUEFHRVMpIHsKIAkJR0VNX0JVR19PTihpOTE1X2dlbV9vYmplY3Rf
aGFzX3RpbGluZ19xdWlyayhvYmopKTsKIAkJaTkxNV9nZW1fb2JqZWN0X3NldF90aWxpbmdfcXVp
cmsob2JqKTsKKwkJR0VNX0JVR19PTighbGlzdF9lbXB0eSgmb2JqLT5tbS5saW5rKSk7CisJCWF0
b21pY19pbmMoJm9iai0+bW0uc2hyaW5rX3Bpbik7CiAJCXNocmlua2FibGUgPSBmYWxzZTsKIAl9
CiAKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==

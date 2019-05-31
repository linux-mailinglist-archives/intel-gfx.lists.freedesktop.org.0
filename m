Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7465330E9F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 15:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C8C8945B;
	Fri, 31 May 2019 13:12:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C518945A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 13:12:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 06:12:10 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 May 2019 06:12:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 16:14:56 +0300
Message-Id: <3c9aaedcacaeaca24b2a35bf2af680dd118823d4.1559308269.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1559308269.git.jani.nikula@intel.com>
References: <cover.1559308269.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/bios: clean up VBT port info
 debug logging
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

Q2hhbmdlIHRoZSBvcmRlciwgYWRkIHNvbWUgc3R5bGlzdGljIHRvdWNoZXMsIGFuZCBhZGQgTFNQ
Q09OLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYmlvcy5jIHwgNSArKystLQogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9i
aW9zLmMKaW5kZXggOGNmZjE3YjVmODkxLi44MWNhOTQ0OTgxNzggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9iaW9zLmMKQEAgLTE0NDUsOCArMTQ0NSw5IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9w
b3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlpZiAoYmRiX3ZlcnNpb24g
Pj0gMjA5KQogCQlpbmZvLT5zdXBwb3J0c190YnQgPSBjaGlsZC0+dGJ0OwogCi0JRFJNX0RFQlVH
X0tNUygiUG9ydCAlYyBWQlQgaW5mbzogRFA6JWQgSERNSTolZCBEVkk6JWQgRURQOiVkIENSVDol
ZCBUQ1VTQjolZCBUQlQ6JWRcbiIsCi0JCSAgICAgIHBvcnRfbmFtZShwb3J0KSwgaXNfZHAsIGlz
X2hkbWksIGlzX2R2aSwgaXNfZWRwLCBpc19jcnQsCisJRFJNX0RFQlVHX0tNUygiUG9ydCAlYyBW
QlQgaW5mbzogQ1JUOiVkIERWSTolZCBIRE1JOiVkIERQOiVkIGVEUDolZCBMU1BDT046JWQgVVNC
LVR5cGUtQzolZCBUQlQ6JWRcbiIsCisJCSAgICAgIHBvcnRfbmFtZShwb3J0KSwgaXNfY3J0LCBp
c19kdmksIGlzX2hkbWksIGlzX2RwLCBpc19lZHAsCisJCSAgICAgIEhBU19MU1BDT04oZGV2X3By
aXYpICYmIGNoaWxkLT5sc3Bjb24sCiAJCSAgICAgIGluZm8tPnN1cHBvcnRzX3R5cGVjX3VzYiwg
aW5mby0+c3VwcG9ydHNfdGJ0KTsKIAogCWlmIChpc19lZHAgJiYgaXNfZHZpKQotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

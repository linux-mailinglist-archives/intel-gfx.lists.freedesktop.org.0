Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63679E56E9
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A116EBC8;
	Fri, 25 Oct 2019 23:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67156EBC2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:06:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:06:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="282396821"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2019 16:06:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 16:06:22 -0700
Message-Id: <20191025230623.27829-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025230623.27829-1-matthew.d.roper@intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Provide more information on DP
 AUX failures
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UncmUgc2VlaW5nIHNvbWUgZmFpbHVyZXMgd2hlcmUgYW4gYXV4IHRyYW5zYWN0aW9uIHN0aWxs
IHNob3dzIGFzCididXN5JyB3ZWxsIGFmdGVyIHRoZSB0aW1lb3V0IGxpbWl0IHRoYXQgdGhlIGhh
cmR3YXJlIGlzIHN1cHBvc2VkIHRvCmVuZm9yY2UuICBJbXByb3ZlIHRoZSBlcnJvciBtZXNzYWdl
IHNvIHRoYXQgd2UgY2FuIHNlZSBleGFjdGx5IHdoaWNoIGF1eApjaGFubmVsIHRoaXMgZXJyb3Ig
aGFwcGVuZWQgb24gYW5kIHdoYXQgdGhlIHN0YXR1cyBiaXRzIHdlcmUgZHVyaW5nIHRoaXMKY2Fz
ZSB0aGF0IGlzbid0IHN1cHBvc2VkIHRvIGhhcHBlbi4KClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMK
aW5kZXggNjViYWI0NmY3YjQzLi4yYjQ5MTViNWNmNTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMKQEAgLTExOTAsNyArMTE5MCw4IEBAIGludGVsX2RwX2F1eF93YWl0
X2RvbmUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAl0cmFjZV9pOTE1X3JlZ19ydyhmYWxz
ZSwgY2hfY3RsLCBzdGF0dXMsIHNpemVvZihzdGF0dXMpLCB0cnVlKTsKIAogCWlmICghZG9uZSkK
LQkJRFJNX0VSUk9SKCJkcCBhdXggaHcgZGlkIG5vdCBzaWduYWwgdGltZW91dCFcbiIpOworCQlE
Uk1fRVJST1IoIiVzIGRpZCBub3QgY29tcGxldGUgb3IgdGltZW91dCB3aXRoaW4gMTBtcyAoc3Rh
dHVzIDB4JTA4eClcbiIsCisJCQkgIGludGVsX2RwLT5hdXgubmFtZSA/OiAiQVVYIiwgc3RhdHVz
KTsKICN1bmRlZiBDCiAKIAlyZXR1cm4gc3RhdHVzOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

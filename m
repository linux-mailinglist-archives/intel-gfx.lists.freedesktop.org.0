Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D301A0871
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 09:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BDB96E558;
	Tue,  7 Apr 2020 07:37:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E9C56E558
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 07:37:30 +0000 (UTC)
IronPort-SDR: ihMYO4YafnB4BgAvywROZMxP+sYQtAV2IBTp5pXbg+zK2QNJJRRBisJVSSSv3Kom46BePDxWaW
 WfKQTcHc++FQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 00:37:30 -0700
IronPort-SDR: LRyW/OBMrQ3pyb8cmk3AeaA7Zd8AMqnkXwQX2NcTsbFF8PItrPzsKbmjF2ubwz+Px6CCGD3s6i
 Kb6Zo/relMpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="397772472"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga004.jf.intel.com with ESMTP; 07 Apr 2020 00:37:27 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 10:33:56 +0300
Message-Id: <20200407073356.3783-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200330122354.24752-2-stanislav.lisovskiy@intel.com>
References: <20200330122354.24752-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/5] drm/i915: Decouple cdclk calculation
 from modeset checks
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

V2UgbmVlZCB0byBjYWxjdWxhdGUgY2RjbGsgYWZ0ZXIgd2F0ZXJtYXJrcy9kZGIgaGFzIGJlZW4g
Y2FsY3VsYXRlZAphcyB3aXRoIHJlY2VudCBodyBDRENMSyBuZWVkcyB0byBiZSBhZGp1c3RlZCBh
Y2NvcmRpbmdseSB0byBEQnVmCnJlcXVpcmVtZW50cywgd2hpY2ggaXMgbm90IHBvc3NpYmxlIHdp
dGggY3VycmVudCBjb2RlIG9yZ2FuaXphdGlvbi4KClNldHRpbmcgQ0RDTEsgYWNjb3JkaW5nIHRv
IERCdWYgQlcgcmVxdWlyZW1lbnRzIGFuZCBub3QganVzdCByZWplY3RpbmcKaWYgaXQgZG9lc24n
dCBzYXRpc2Z5IEJXIHJlcXVpcmVtZW50cywgd2lsbCBhbGxvdyB1cyB0byBzYXZlIHBvd2VyIHdo
ZW4KaXQgaXMgcG9zc2libGUgYW5kIGdhaW4gYWRkaXRpb25hbCBiYW5kd2lkdGggd2hlbiBpdCdz
IG5lZWRlZCAtIGkuZQpib29zdGluZyBib3RoIG91ciBwb3dlciBtYW5hZ2VtZW50IGFuZCBwZXJm
b21hbmNlIGNhcGFiaWxpdGllcy4KClRoaXMgcGF0Y2ggaXMgcHJlcGFyYXRpb24gZm9yIHRoYXQs
IGZpcnN0IHdlIG5vdyBleHRyYWN0IG1vZGVzZXQKY2FsY3VsYXRpb24gZnJvbSBtb2Rlc2V0IGNo
ZWNrcywgaW4gb3JkZXIgdG8gY2FsbCBpdCBhZnRlciB3bS9kZGIKaGFzIGJlZW4gY2FsY3VsYXRl
ZC4KCnYyOiAtIEV4dHJhY3Qgb25seSBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsgZnJvbSBpbnRl
bF9tb2Rlc2V0X2NoZWNrcwogICAgICAoVmlsbGUgU3lyasOkbMOkKQoKdjM6IC0gQ2xlYXIgcGxs
cyBhZnRlciBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsKClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xh
diBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjIgKysrKysrKysrKystLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDcw
ZWMzMDFmZTZlMy4uYzc3MDg4ZTFkMDMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTQ0NjQsMTIgKzE0NDY0LDYgQEAgc3RhdGljIGludCBp
bnRlbF9tb2Rlc2V0X2NoZWNrcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJ
CXJldHVybiByZXQ7CiAJfQogCi0JcmV0ID0gaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0YXRl
KTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OwotCi0JaW50ZWxfbW9kZXNldF9jbGVhcl9wbGxz
KHN0YXRlKTsKLQogCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSkKIAkJcmV0dXJuIGhzd19tb2Rl
X3NldF9wbGFuZXNfd29ya2Fyb3VuZChzdGF0ZSk7CiAKQEAgLTE0ODAxLDEwICsxNDc5NSw2IEBA
IHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJ
CQlnb3RvIGZhaWw7CiAJfQogCi0JcmV0ID0gaW50ZWxfYXRvbWljX2NoZWNrX2NydGNzKHN0YXRl
KTsKLQlpZiAocmV0KQotCQlnb3RvIGZhaWw7Ci0KIAlpbnRlbF9mYmNfY2hvb3NlX2NydGMoZGV2
X3ByaXYsIHN0YXRlKTsKIAlyZXQgPSBjYWxjX3dhdGVybWFya19kYXRhKHN0YXRlKTsKIAlpZiAo
cmV0KQpAQCAtMTQ4MTQsNiArMTQ4MDQsMTggQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hl
Y2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlpZiAocmV0KQogCQlnb3RvIGZhaWw7CiAKKwlp
ZiAoYW55X21zKSB7CisJCXJldCA9IGludGVsX21vZGVzZXRfY2FsY19jZGNsayhzdGF0ZSk7CisJ
CWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OworCisJCWludGVsX21vZGVzZXRfY2xlYXJfcGxscyhz
dGF0ZSk7CisJfQorCisJcmV0ID0gaW50ZWxfYXRvbWljX2NoZWNrX2NydGNzKHN0YXRlKTsKKwlp
ZiAocmV0KQorCQlnb3RvIGZhaWw7CisKIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9z
dGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCiAJCQkJCSAgICBuZXdfY3J0Y19zdGF0
ZSwgaSkgewogCQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpICYmCi0tIAoyLjI0
LjEuNDg1LmdhZDA1YTNkOGU1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EF936FC99
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 16:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E98E36F542;
	Fri, 30 Apr 2021 14:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62BA6F542
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 14:39:53 +0000 (UTC)
IronPort-SDR: YPZdO1SmZHdIxtGH5n1hQyAAM1gFvxXnffbZtf753qk09hc86Da6aVebAbxdEzARcnnL69NMOS
 kjwQqBQKnNgQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="258570423"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="258570423"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 07:39:53 -0700
IronPort-SDR: gRy5OYEHXGfz0lurxFM7oyAF8lfK+q8viwH1yJErHIHxObgT1AtZIQXOjyGnB7pfl/GrtNcPNj
 M6OKwK+GLfQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="388566095"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 30 Apr 2021 07:39:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 17:39:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Apr 2021 17:39:45 +0300
Message-Id: <20210430143945.6776-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210430143945.6776-1-ville.syrjala@linux.intel.com>
References: <20210430143945.6776-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Include intel_de_{read,
 write}_fw() in i915_reg_rw traces
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
Cc: Jani Nikula <jani.nikula@intel.com>, Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGxvc3QgdGhlIGk5MTVfcmVnX3J3IHRyYWNlcG9pbnQgZm9yIGEgbG90IG9mIGRpc3BsYXkgcmVn
aXN0ZXJzCndoZW4gd2Ugc3dpdGNoZWQgZnJvbSB0aGUgaGVhdnl3ZWlnaHQgbm9ybWFsIHJlZ2lz
dGVyIGFjY2Vzc29ycyB0bwp0aGUgbGlnaHR3ZWlnaHQgX2Z3KCkgdmFyaWFudHMuIFNlZSBlZy4g
Y29tbWl0IGRkNTg0ZmMwNzExYQooImRybS9pOTE1OiBVc2UgSTkxNV9SRUFEX0ZXIGZvciBwbGFu
ZSB1cGRhdGVzIikuCgpQdXQgdGhlIHRyYWNlcG9pbnRzIGJhY2sgc28gdGhhdCB0aGUgcmVnaXN0
ZXIgdHJhY2VzIG1pZ2h0CmFjdHVhbGx5IGJlIHVzZWZ1bC4gSG9wZWZ1bGx5IHRoZXNlIHNob3Vs
ZCBiZSBjbG9zZSB0byBmcmVlCndoZW4gdGhlIHRyYWNlcG9pbnQgaXMgbm90IGVuYWJsZWQgYW5k
IHRodXMgbm90IHNsb3cgZG93bgpvdXIgdmJsYW5rIGNyaXRpY2FsIHNlY3Rpb25zIHNpZ25pZmlj
YW50bHkuCgp2MjogQ29weSBwYXN0ZSB0aGUgc2FtZS1jYWNoZWxpbmUtaGFuZyB3YXJuaW5nIGZy
b20KICAgIGludGVsX3VuY29yZS5oIChBbnNodW1hbikKCkNjOiBDb29wZXIgQ2hpb3UgPGNvb3Bl
ci5jaGlvdUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4u
Z3VwdGFAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rl
LmggfCA0MSArKysrKysrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjcgaW5z
ZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZS5oCmluZGV4IDAwZGExMGJmMzVmNS4uOWQ4YzE3N2FhMjI4IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZS5oCkBAIC04LDYgKzgsNyBAQAogCiAjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1X3JlZy5oIgorI2luY2x1ZGUgImk5MTVfdHJhY2Uu
aCIKICNpbmNsdWRlICJpbnRlbF91bmNvcmUuaCIKIAogc3RhdGljIGlubGluZSB1MzIKQEAgLTIy
LDI2ICsyMywxMiBAQCBpbnRlbF9kZV9wb3N0aW5nX3JlYWQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsIGk5MTVfcmVnX3QgcmVnKQogCWludGVsX3VuY29yZV9wb3N0aW5nX3JlYWQoJmk5
MTUtPnVuY29yZSwgcmVnKTsKIH0KIAotLyogTm90ZTogcmVhZCB0aGUgd2FybmluZ3MgZm9yIGlu
dGVsX3VuY29yZV8qX2Z3KCkgZnVuY3Rpb25zISAqLwotc3RhdGljIGlubGluZSB1MzIKLWludGVs
X2RlX3JlYWRfZncoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGk5MTVfcmVnX3QgcmVn
KQotewotCXJldHVybiBpbnRlbF91bmNvcmVfcmVhZF9mdygmaTkxNS0+dW5jb3JlLCByZWcpOwot
fQotCiBzdGF0aWMgaW5saW5lIHZvaWQKIGludGVsX2RlX3dyaXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKIHsKIAlpbnRlbF91bmNvcmVf
d3JpdGUoJmk5MTUtPnVuY29yZSwgcmVnLCB2YWwpOwogfQogCi0vKiBOb3RlOiByZWFkIHRoZSB3
YXJuaW5ncyBmb3IgaW50ZWxfdW5jb3JlXypfZncoKSBmdW5jdGlvbnMhICovCi1zdGF0aWMgaW5s
aW5lIHZvaWQKLWludGVsX2RlX3dyaXRlX2Z3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKLXsKLQlpbnRlbF91bmNvcmVfd3JpdGVfZncoJmk5
MTUtPnVuY29yZSwgcmVnLCB2YWwpOwotfQotCiBzdGF0aWMgaW5saW5lIHZvaWQKIGludGVsX2Rl
X3JtdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcsIHUzMiBj
bGVhciwgdTMyIHNldCkKIHsKQEAgLTY5LDQgKzU2LDMwIEBAIGludGVsX2RlX3dhaXRfZm9yX2Ns
ZWFyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpOTE1X3JlZ190IHJlZywKIAlyZXR1
cm4gaW50ZWxfZGVfd2FpdF9mb3JfcmVnaXN0ZXIoaTkxNSwgcmVnLCBtYXNrLCAwLCB0aW1lb3V0
KTsKIH0KIAorLyoKKyAqIFVubG9ja2VkIG1taW8tYWNjZXNzb3JzLCB0aGluayBjYXJlZnVsbHkg
YmVmb3JlIHVzaW5nIHRoZXNlLgorICoKKyAqIENlcnRhaW4gYXJjaGl0ZWN0dXJlcyB3aWxsIGRp
ZSBpZiB0aGUgc2FtZSBjYWNoZWxpbmUgaXMgY29uY3VycmVudGx5IGFjY2Vzc2VkCisgKiBieSBk
aWZmZXJlbnQgY2xpZW50cyAoZS5nLiBvbiBJdnlicmlkZ2UpLiBBY2Nlc3MgdG8gcmVnaXN0ZXJz
IHNob3VsZAorICogdGhlcmVmb3JlIGdlbmVyYWxseSBiZSBzZXJpYWxpc2VkLCBieSBlaXRoZXIg
dGhlIGRldl9wcml2LT51bmNvcmUubG9jayBvcgorICogYSBtb3JlIGxvY2FsaXNlZCBsb2NrIGd1
YXJkaW5nIGFsbCBhY2Nlc3MgdG8gdGhhdCBiYW5rIG9mIHJlZ2lzdGVycy4KKyAqLworc3RhdGlj
IGlubGluZSB1MzIKK2ludGVsX2RlX3JlYWRfZncoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIGk5MTVfcmVnX3QgcmVnKQoreworCXUzMiB2YWw7CisKKwl2YWwgPSBpbnRlbF91bmNvcmVf
cmVhZF9mdygmaTkxNS0+dW5jb3JlLCByZWcpOworCXRyYWNlX2k5MTVfcmVnX3J3KGZhbHNlLCBy
ZWcsIHZhbCwgc2l6ZW9mKHZhbCksIHRydWUpOworCisJcmV0dXJuIHZhbDsKK30KKworc3RhdGlj
IGlubGluZSB2b2lkCitpbnRlbF9kZV93cml0ZV9mdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCit7CisJdHJhY2VfaTkxNV9yZWdfcncodHJ1
ZSwgcmVnLCB2YWwsIHNpemVvZih2YWwpLCB0cnVlKTsKKwlpbnRlbF91bmNvcmVfd3JpdGVfZnco
Jmk5MTUtPnVuY29yZSwgcmVnLCB2YWwpOworfQorCiAjZW5kaWYgLyogX19JTlRFTF9ERV9IX18g
Ki8KLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 871D22B0DB3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:17:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5A4F6E3F5;
	Thu, 12 Nov 2020 19:17:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07D56E3F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:17:33 +0000 (UTC)
IronPort-SDR: cXcI/GcfBm6xAey9nIi0ceJlAn5P1akKvtDO8LOxYleWKGE4XZBSIITKL6vzNhvB/JKr3peJGU
 NM8ZZF+vGFHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="158142807"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="158142807"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:17:32 -0800
IronPort-SDR: +yPBxXeDA1klV8GDIj+ArwRs/jBtYIB45FS7H0BerAdrQ0oP6+ERs5mm3F1iSBUS9GlF1rOZVr
 Zf+VP7n17fPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="309331516"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 12 Nov 2020 11:17:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Nov 2020 21:17:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 21:17:16 +0200
Message-Id: <20201112191718.16683-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915:
 s/intel_mode_from_pipe_config/intel_mode_from_crtc_timings/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
bmVyYWxpemUgaW50ZWxfbW9kZV9mcm9tX3BpcGVfY29uZmlnKCkgdG8gd29yayBvbiBhbnkgdHdv
CmFyYml0cmFyeSBtb2Rlcy4gQWxzbyByZWxvY2F0ZSB0aGUgY29kZSBmb3IgdGhlIGZ1dHVyZSwg
YW5kCm1ha2UgaXQgc3RhdGljIHNpbmNlIGl0J3Mgbm90IG5lZWRlZCBlbHNld2hlcmUuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNDgg
KysrKysrKysrKy0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oIHwgIDIgLQogMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAyNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IDg4OTY0MmJlZjE5Mi4uZWJmNjIxZmY3ZWY2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtODEyOCw2ICs4MTI4LDI3IEBAIHN0
YXRpYyB1MzIgaWxrX3BpcGVfcGl4ZWxfcmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIAkJICAgICAgIHBmaXRfdyAqIHBmaXRfaCk7CiB9CiAKK3N0YXRpYyB2
b2lkIGludGVsX21vZGVfZnJvbV9jcnRjX3RpbWluZ3Moc3RydWN0IGRybV9kaXNwbGF5X21vZGUg
Km1vZGUsCisJCQkJCSBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqdGltaW5ncykKK3sK
Kwltb2RlLT5oZGlzcGxheSA9IHRpbWluZ3MtPmNydGNfaGRpc3BsYXk7CisJbW9kZS0+aHRvdGFs
ID0gdGltaW5ncy0+Y3J0Y19odG90YWw7CisJbW9kZS0+aHN5bmNfc3RhcnQgPSB0aW1pbmdzLT5j
cnRjX2hzeW5jX3N0YXJ0OworCW1vZGUtPmhzeW5jX2VuZCA9IHRpbWluZ3MtPmNydGNfaHN5bmNf
ZW5kOworCisJbW9kZS0+dmRpc3BsYXkgPSB0aW1pbmdzLT5jcnRjX3ZkaXNwbGF5OworCW1vZGUt
PnZ0b3RhbCA9IHRpbWluZ3MtPmNydGNfdnRvdGFsOworCW1vZGUtPnZzeW5jX3N0YXJ0ID0gdGlt
aW5ncy0+Y3J0Y192c3luY19zdGFydDsKKwltb2RlLT52c3luY19lbmQgPSB0aW1pbmdzLT5jcnRj
X3ZzeW5jX2VuZDsKKworCW1vZGUtPmZsYWdzID0gdGltaW5ncy0+ZmxhZ3M7CisJbW9kZS0+dHlw
ZSA9IERSTV9NT0RFX1RZUEVfRFJJVkVSOworCisJbW9kZS0+Y2xvY2sgPSB0aW1pbmdzLT5jcnRj
X2Nsb2NrOworCisJZHJtX21vZGVfc2V0X25hbWUobW9kZSk7Cit9CisKIHN0YXRpYyB2b2lkIGlu
dGVsX2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwpAQCAtOTAzMCwyNyArOTA1MSw2IEBAIHN0YXRp
YyB2b2lkIGludGVsX2dldF9waXBlX3NyY19zaXplKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAog
CXBpcGVfY29uZmlnLT5ody5tb2RlLmhkaXNwbGF5ID0gcGlwZV9jb25maWctPnBpcGVfc3JjX3c7
CiB9CiAKLXZvaWQgaW50ZWxfbW9kZV9mcm9tX3BpcGVfY29uZmlnKHN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlICptb2RlLAotCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcp
Ci17Ci0JbW9kZS0+aGRpc3BsYXkgPSBwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRj
X2hkaXNwbGF5OwotCW1vZGUtPmh0b3RhbCA9IHBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2Rl
LmNydGNfaHRvdGFsOwotCW1vZGUtPmhzeW5jX3N0YXJ0ID0gcGlwZV9jb25maWctPmh3LmFkanVz
dGVkX21vZGUuY3J0Y19oc3luY19zdGFydDsKLQltb2RlLT5oc3luY19lbmQgPSBwaXBlX2NvbmZp
Zy0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2hzeW5jX2VuZDsKLQotCW1vZGUtPnZkaXNwbGF5ID0g
cGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheTsKLQltb2RlLT52dG90
YWwgPSBwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3Z0b3RhbDsKLQltb2RlLT52
c3luY19zdGFydCA9IHBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdnN5bmNfc3Rh
cnQ7Ci0JbW9kZS0+dnN5bmNfZW5kID0gcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGUuY3J0
Y192c3luY19lbmQ7Ci0KLQltb2RlLT5mbGFncyA9IHBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9t
b2RlLmZsYWdzOwotCW1vZGUtPnR5cGUgPSBEUk1fTU9ERV9UWVBFX0RSSVZFUjsKLQotCW1vZGUt
PmNsb2NrID0gcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGUuY3J0Y19jbG9jazsKLQotCWRy
bV9tb2RlX3NldF9uYW1lKG1vZGUpOwotfQotCiBzdGF0aWMgdm9pZCBpOXh4X3NldF9waXBlY29u
Zihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsK
QEAgLTEyNDI0LDcgKzEyNDI0LDcgQEAgaW50ZWxfZW5jb2Rlcl9jdXJyZW50X21vZGUoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAKIAlpbnRlbF9lbmNvZGVyX2dldF9jb25maWcoZW5j
b2RlciwgY3J0Y19zdGF0ZSk7CiAKLQlpbnRlbF9tb2RlX2Zyb21fcGlwZV9jb25maWcobW9kZSwg
Y3J0Y19zdGF0ZSk7CisJaW50ZWxfbW9kZV9mcm9tX2NydGNfdGltaW5ncyhtb2RlLCAmY3J0Y19z
dGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSk7CiAKIAlrZnJlZShjcnRjX3N0YXRlKTsKIApAQCAtMTg4
NDEsOCArMTg4NDEsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3Rh
dGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAkJaWYgKGNydGNfc3RhdGUtPmh3LmFjdGl2ZSkg
ewogCQkJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUgPSAmY3J0Y19zdGF0ZS0+aHcubW9k
ZTsKIAotCQkJaW50ZWxfbW9kZV9mcm9tX3BpcGVfY29uZmlnKCZjcnRjX3N0YXRlLT5ody5hZGp1
c3RlZF9tb2RlLAotCQkJCQkJICAgIGNydGNfc3RhdGUpOworCQkJaW50ZWxfbW9kZV9mcm9tX2Ny
dGNfdGltaW5ncygmY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZSwKKwkJCQkJCSAgICAgJmNy
dGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUpOwogCiAJCQkqbW9kZSA9IGNydGNfc3RhdGUtPmh3
LmFkanVzdGVkX21vZGU7CiAJCQltb2RlLT5oZGlzcGxheSA9IGNydGNfc3RhdGUtPnBpcGVfc3Jj
X3c7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCmluZGV4
IGE5ODhmOTUxOGVjZS4uNmJlMTRlODU3MWFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuaApAQCAtNjA5LDggKzYwOSw2IEBAIGVudW0gaW50ZWxfZGlz
cGxheV9wb3dlcl9kb21haW4KIGludGVsX2F1eF9wb3dlcl9kb21haW4oc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpOwogZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbgog
aW50ZWxfbGVnYWN5X2F1eF90b19wb3dlcl9kb21haW4oZW51bSBhdXhfY2ggYXV4X2NoKTsKLXZv
aWQgaW50ZWxfbW9kZV9mcm9tX3BpcGVfY29uZmlnKHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpt
b2RlLAotCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpOwogdm9pZCBp
bnRlbF9jcnRjX2FybV9maWZvX3VuZGVycnVuKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJ
CSAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwogCi0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

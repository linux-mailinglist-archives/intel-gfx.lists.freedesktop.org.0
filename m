Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 605DD39228A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 00:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B146EDE0;
	Wed, 26 May 2021 22:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B796E8A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 22:09:15 +0000 (UTC)
IronPort-SDR: IGAfnfIjyPoOfgCgSOH0qQxwI3ErLaYJ5bvW5INmP8TSEL3y0W+8hEjvkwUlNg86Oxgzk/Jy53
 HTLqF4zrBQZg==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202600434"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="202600434"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 15:08:56 -0700
IronPort-SDR: W1n/N3CsY0ORST2EjW0neoPqI4nXBgi60umPkGqycAmrbK9GCMQzcdgWj1zxc6PKONgW1dj1si
 ZlklFQ7tPmsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633689135"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga005.fm.intel.com with ESMTP; 26 May 2021 15:08:56 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 15:08:49 -0700
Message-Id: <20210526220853.4550-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210526220853.4550-1-anusha.srivatsa@intel.com>
References: <20210526220853.4550-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/dmc: Move struct intel_dmc to
 intel_dmc.h
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZSBzdHJ1Y3QgaW50ZWxfZG1jIGZyb20gaTkxNV9kcnYuaCB0byBpbnRlbF9kbWMuaC4KCnYy
OiBBZGQgaW5jbHVkZXMgYWxvbmcgd2l0aCBtb3ZpbmcgdGhlIHN0cnVjdC4KClJldmlld2VkLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaCB8IDIxICsrKysrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8IDE4ICst
LS0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAxNyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RtYy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaAppbmRl
eCA2NDgxNmY0YTcxYjYuLjRjMjJmNTY3YjYxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RtYy5oCkBAIC02LDEyICs2LDMzIEBACiAjaWZuZGVmIF9fSU5URUxfRE1DX0hf
XwogI2RlZmluZSBfX0lOVEVMX0RNQ19IX18KIAorI2luY2x1ZGUgImk5MTVfcmVnLmgiCisjaW5j
bHVkZSAiaW50ZWxfd2FrZXJlZi5oIgorI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPgorCiBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKIAogI2RlZmluZSBETUNfVkVSU0lPTihtYWpvciwgbWlu
b3IpCSgobWFqb3IpIDw8IDE2IHwgKG1pbm9yKSkKICNkZWZpbmUgRE1DX1ZFUlNJT05fTUFKT1Io
dmVyc2lvbikJKCh2ZXJzaW9uKSA+PiAxNikKICNkZWZpbmUgRE1DX1ZFUlNJT05fTUlOT1IodmVy
c2lvbikJKCh2ZXJzaW9uKSAmIDB4ZmZmZikKIAorc3RydWN0IGludGVsX2RtYyB7CisJc3RydWN0
IHdvcmtfc3RydWN0IHdvcms7CisJY29uc3QgY2hhciAqZndfcGF0aDsKKwl1MzIgcmVxdWlyZWRf
dmVyc2lvbjsKKwl1MzIgbWF4X2Z3X3NpemU7IC8qIGJ5dGVzICovCisJdTMyICpkbWNfcGF5bG9h
ZDsKKwl1MzIgZG1jX2Z3X3NpemU7IC8qIGR3b3JkcyAqLworCXUzMiB2ZXJzaW9uOworCXUzMiBt
bWlvX2NvdW50OworCWk5MTVfcmVnX3QgbW1pb2FkZHJbMjBdOworCXUzMiBtbWlvZGF0YVsyMF07
CisJdTMyIGRjX3N0YXRlOworCXUzMiB0YXJnZXRfZGNfc3RhdGU7CisJdTMyIGFsbG93ZWRfZGNf
bWFzazsKKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKK307CisKIHZvaWQgaW50ZWxfZG1jX3Vj
b2RlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpbnRlbF9kbWNf
bG9hZF9wcm9ncmFtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIHZvaWQgaW50ZWxf
ZG1jX3Vjb2RlX2Zpbmkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKaW5kZXggMGY2ZDI3ZGE2OWFjLi4wYzYzMDFiMjhjMzcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaApAQCAtNjcsNiArNjcsNyBAQAogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxf
Ymlvcy5oIgogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGlzcGxheS5oIgogI2luY2x1ZGUgImRp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oIgorI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZG1j
LmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIgogI2luY2x1ZGUgImRpc3Bs
YXkvaW50ZWxfZHNiLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5oIgpA
QCAtMzI4LDIzICszMjksNiBAQCBzdHJ1Y3QgZHJtX2k5MTVfZGlzcGxheV9mdW5jcyB7CiAJdm9p
ZCAoKnJlYWRfbHV0cykoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwogfTsK
IAotc3RydWN0IGludGVsX2RtYyB7Ci0Jc3RydWN0IHdvcmtfc3RydWN0IHdvcms7Ci0JY29uc3Qg
Y2hhciAqZndfcGF0aDsKLQl1MzIgcmVxdWlyZWRfdmVyc2lvbjsKLQl1MzIgbWF4X2Z3X3NpemU7
IC8qIGJ5dGVzICovCi0JdTMyICpkbWNfcGF5bG9hZDsKLQl1MzIgZG1jX2Z3X3NpemU7IC8qIGR3
b3JkcyAqLwotCXUzMiB2ZXJzaW9uOwotCXUzMiBtbWlvX2NvdW50OwotCWk5MTVfcmVnX3QgbW1p
b2FkZHJbMjBdOwotCXUzMiBtbWlvZGF0YVsyMF07Ci0JdTMyIGRjX3N0YXRlOwotCXUzMiB0YXJn
ZXRfZGNfc3RhdGU7Ci0JdTMyIGFsbG93ZWRfZGNfbWFzazsKLQlpbnRlbF93YWtlcmVmX3Qgd2Fr
ZXJlZjsKLX07Ci0KIGVudW0gaTkxNV9jYWNoZV9sZXZlbCB7CiAJSTkxNV9DQUNIRV9OT05FID0g
MCwKIAlJOTE1X0NBQ0hFX0xMQywgLyogYWxzbyB1c2VkIGZvciBzbm9vcGFibGUgbWVtb3J5IG9u
IG5vbi1MTEMgKi8KLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==

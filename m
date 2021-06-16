Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A52003AA476
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 21:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A556E804;
	Wed, 16 Jun 2021 19:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948536E804;
 Wed, 16 Jun 2021 19:40:40 +0000 (UTC)
IronPort-SDR: mSLealRFT3ZCYBOIdFxJcAqZIPDMunJs/PrdDCq120LEOTMOCf2BYIXOC6XZVTFgZ2wXCbSozV
 nxlsIXSllZWQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="185937859"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="185937859"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 12:40:40 -0700
IronPort-SDR: SW7b7KeL32+TCFzb4EDL48YsIBDslqUzF+qyO8FSDoxbQdZ/Dc8lKQSxoOI4mL6AOwGENpw9cq
 hy+AtTHESjPA==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="554923852"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.54])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 12:40:38 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Jun 2021 12:44:15 -0700
Message-Id: <20210616194415.36926-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/dp_mst: Add missing drm parameters to
 recently added call to drm_dbg_kms()
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
Cc: dri-devel@lists.freedesktop.org, Wayne Lin <Wayne.Lin@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDM3NjllNGMwYWY1YiAoImRybS9kcF9tc3Q6IEF2b2lkIHRvIG1lc3MgdXAgcGF5bG9h
ZCB0YWJsZSBieQpwb3J0cyBpbiBzdGFsZSB0b3BvbG9neSIpIGFkZGVkIHRvIGNhbGxzIHRvIGRy
bV9kYmdfa21zKCkgYnV0IGl0Cm1pc3NlZCB0aGUgZmlyc3QgcGFyYW1ldGVyLCB0aGUgZHJtIGRl
dmljZSBicmVha2luZyB0aGUgYnVpbGQuCgpGaXhlczogMzc2OWU0YzBhZjViICgiZHJtL2RwX21z
dDogQXZvaWQgdG8gbWVzcyB1cCBwYXlsb2FkIHRhYmxlIGJ5IHBvcnRzIGluIHN0YWxlIHRvcG9s
b2d5IikKQ2M6IFdheW5lIExpbiA8V2F5bmUuTGluQGFtZC5jb20+CkNjOiBMeXVkZSBQYXVsIDxs
eXVkZUByZWRoYXQuY29tPgpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jIHwgNyArKysrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2RwX21zdF90b3BvbG9neS5jCmluZGV4IDlhYzE0OGVmZDllNDMuLmFkMDc5NWFmYzIx
Y2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwpAQCAtMzM4OSw3ICszMzg5
LDkgQEAgaW50IGRybV9kcF91cGRhdGVfcGF5bG9hZF9wYXJ0MShzdHJ1Y3QgZHJtX2RwX21zdF90
b3BvbG9neV9tZ3IgKm1ncikKIAkJCW11dGV4X3VubG9jaygmbWdyLT5sb2NrKTsKIAogCQkJaWYg
KHNraXApIHsKLQkJCQlkcm1fZGJnX2ttcygiVmlydHVhbCBjaGFubmVsICVkIGlzIG5vdCBpbiBj
dXJyZW50IHRvcG9sb2d5XG4iLCBpKTsKKwkJCQlkcm1fZGJnX2ttcyhtZ3ItPmRldiwKKwkJCQkJ
ICAgICJWaXJ0dWFsIGNoYW5uZWwgJWQgaXMgbm90IGluIGN1cnJlbnQgdG9wb2xvZ3lcbiIsCisJ
CQkJCSAgICBpKTsKIAkJCQljb250aW51ZTsKIAkJCX0KIAkJCS8qIFZhbGlkYXRlZCBwb3J0cyBk
b24ndCBtYXR0ZXIgaWYgd2UncmUgcmVsZWFzaW5nCkBAIC0zNDA0LDcgKzM0MDYsOCBAQCBpbnQg
ZHJtX2RwX3VwZGF0ZV9wYXlsb2FkX3BhcnQxKHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21n
ciAqbWdyKQogCQkJCQkJcGF5bG9hZC0+c3RhcnRfc2xvdCA9IHJlcV9wYXlsb2FkLnN0YXJ0X3Ns
b3Q7CiAJCQkJCQljb250aW51ZTsKIAkJCQkJfSBlbHNlIHsKLQkJCQkJCWRybV9kYmdfa21zKCJG
YWlsOnNldCBwYXlsb2FkIHRvIGludmFsaWQgc2luayIpOworCQkJCQkJZHJtX2RiZ19rbXMobWdy
LT5kZXYsCisJCQkJCQkJICAgICJGYWlsOnNldCBwYXlsb2FkIHRvIGludmFsaWQgc2luayIpOwog
CQkJCQkJbXV0ZXhfdW5sb2NrKCZtZ3ItPnBheWxvYWRfbG9jayk7CiAJCQkJCQlyZXR1cm4gLUVJ
TlZBTDsKIAkJCQkJfQotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK

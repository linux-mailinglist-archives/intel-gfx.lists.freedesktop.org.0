Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 408AB280255
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Oct 2020 17:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E46E6E8C7;
	Thu,  1 Oct 2020 15:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33A8D6E8B3
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Oct 2020 15:16:53 +0000 (UTC)
IronPort-SDR: Gl/EYgYW44QPSX0WEt4dR132FuzkSBVAXSHqUJSpmi7Z+QD5YEQI1y40PEzlffBfizrQcEYs3K
 qHbyjpjKkmcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="161992497"
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="161992497"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 08:16:45 -0700
IronPort-SDR: JdWUC3CIh5m2MJ21SqOh78Z1N5nerSVxN5f3j3COdO7uQ2XuhRTLjl/xrWqz2ig+ivItcgDZYB
 KxshJqaQz9qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,323,1596524400"; d="scan'208";a="416098188"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 01 Oct 2020 08:16:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Oct 2020 18:16:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Oct 2020 18:16:36 +0300
Message-Id: <20201001151640.14590-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/6] drm/i915: Add an encoder .shutdown() hook
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBhIG5ldyBlbmNvZGVyIGhvb2sgLnNodXRkb3duKCkgd2hpY2ggd2lsbCBnZXQgY2FsbGVkIGF0
IHRoZSBlbmQKb2YgdGhlIHBjaSAuc2h1dGRvd24oKSBob29rLiBXZSBzaGFsbCB1c2UgdGhpcyB0
byBkZWFsIHdpdGggdGhlCnBhbmVsIHBvd2VyIGN5Y2xlIGRlbGF5IGlzc3Vlcy4KClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAg
NSArKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgICAg
ICAgfCAxMyArKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oCmluZGV4IGQ1ZGMxOGNiOGMzOS4uNmYzZTNkNzU2MzgzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTk5LDYgKzE5
OSwxMSBAQCBzdHJ1Y3QgaW50ZWxfZW5jb2RlciB7CiAJICogZGV2aWNlIGludGVycnVwdHMgYXJl
IGRpc2FibGVkLgogCSAqLwogCXZvaWQgKCpzdXNwZW5kKShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
KTsKKwkvKgorCSAqIENhbGxlZCBkdXJpbmcgc3lzdGVtIHJlYm9vdC9zaHV0ZG93biBhZnRlciBh
bGwgdGhlCisJICogZW5jb2RlcnMgaGF2ZSBiZWVuIGRpc2FibGVkIGFuZCBzdXNwZW5kZWQuCisJ
ICovCisJdm9pZCAoKnNodXRkb3duKShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7CiAJ
ZW51bSBocGRfcGluIGhwZF9waW47CiAJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBw
b3dlcl9kb21haW47CiAJLyogZm9yIGNvbW11bmljYXRpb24gd2l0aCBhdWRpbyBjb21wb25lbnQ7
IHByb3RlY3RlZCBieSBhdl9tdXRleCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggMDYy
YjYxZWJkOWM0Li5kMzhmY2ViMjM5YWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMTAz
Niw2ICsxMDM2LDE4IEBAIHN0YXRpYyB2b2lkIGludGVsX3N1c3BlbmRfZW5jb2RlcnMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWRybV9tb2Rlc2V0X3VubG9ja19hbGwoZGV2
KTsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfc2h1dGRvd25fZW5jb2RlcnMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSAmZGV2
X3ByaXYtPmRybTsKKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKKworCWRybV9tb2Rl
c2V0X2xvY2tfYWxsKGRldik7CisJZm9yX2VhY2hfaW50ZWxfZW5jb2RlcihkZXYsIGVuY29kZXIp
CisJCWlmIChlbmNvZGVyLT5zaHV0ZG93bikKKwkJCWVuY29kZXItPnNodXRkb3duKGVuY29kZXIp
OworCWRybV9tb2Rlc2V0X3VubG9ja19hbGwoZGV2KTsKK30KKwogdm9pZCBpOTE1X2RyaXZlcl9z
aHV0ZG93bihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlpOTE1X2dlbV9zdXNw
ZW5kKGk5MTUpOwpAQCAtMTA1MCw2ICsxMDYyLDcgQEAgdm9pZCBpOTE1X2RyaXZlcl9zaHV0ZG93
bihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpbnRlbF9ocGRfY2FuY2VsX3dvcmso
aTkxNSk7CiAKIAlpbnRlbF9zdXNwZW5kX2VuY29kZXJzKGk5MTUpOworCWludGVsX3NodXRkb3du
X2VuY29kZXJzKGk5MTUpOwogfQogCiBzdGF0aWMgYm9vbCBzdXNwZW5kX3RvX2lkbGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

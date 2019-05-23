Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A87228DC1
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F98A6E088;
	Thu, 23 May 2019 23:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FC589F49
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:30 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 23 May 2019 16:31:27 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0Z023503; Fri, 24 May 2019 00:31:26 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:29 +0000
Message-Id: <20190523233049.28020-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 02/22] drm/i915/guc: Don't allow GuC
 submission
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

RHVlIHRvIHRoZSB1cGNvbWluZyBjaGFuZ2VzIHRvIHRoZSBHdUMgQUJJIGludGVyZmFjZSwgd2Ug
bXVzdApkaXNhYmxlIEd1QyBzdWJtaXNzaW9uIG1vZGUgdW50aWwgZmluYWwgQUJJIHdpbGwgYmUg
YXZhaWxhYmxlCm9uIGFsbCBHdUMgZmlybXdhcmVzLgoKVG8gYXZvaWQgcmVncmVzc2lvbnMgb24g
c3lzdGVtcyBjb25maWd1cmVkIHRvIHJ1biB3aXRoIG5vIGxvbmdlcgpzdXBwb3J0ZWQgY29uZmln
dXJhdGlvbiAiZW5hYmxlX2d1Yz0zIiBvciAiZW5hYmxlX2d1Yz0xIiBjbGVhcgpHdUMgc3VibWlz
c2lvbiBiaXQuCgp2MjogZm9yY2Ugc3dpdGNoIHRvIG5vbi1HdUMgc3VibWlzc2lvbiBtb2RlCgpT
aWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNv
bT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IEpvaG4gU3BvdHN3b29kIDxqb2hu
LmEuc3BvdHN3b29kQGludGVsLmNvbT4KQ2M6IFZpbmF5IEJlbGdhdW1rYXIgPHZpbmF5LmJlbGdh
dW1rYXJAaW50ZWwuY29tPgpDYzogVG9ueSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+CkNjOiBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+CkNjOiBKZWZmIE1jZ2VlIDxq
ZWZmLm1jZ2VlQGludGVsLmNvbT4KQ2M6IEFudG9uaW8gQXJnZW56aWFubyA8YW50b25pby5hcmdl
bnppYW5vQGludGVsLmNvbT4KQ2M6IFN1amFyaXRoYSBTdW5kYXJlc2FuIDxzdWphcml0aGEuc3Vu
ZGFyZXNhbkBpbnRlbC5jb20+CkNjOiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5p
bnRlbC5jb20+CkFja2VkLWJ5OiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyB8IDEzICsrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3VjLmMKaW5kZXggMWEyNjVmYmQ5NWM3Li5mNjYxMDVkNzU2ZGYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfdWMuYwpAQCAtMTMwLDYgKzEzMCwxNSBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9vcHRpb25z
X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQkJCQkgICJubyBIdUMgZmly
bXdhcmUiKTsKIAl9CiAKKwkvKiBYWFg6IEd1QyBzdWJtaXNzaW9uIGlzIHVuYXZhaWxhYmxlIGZv
ciBub3cgKi8KKwlpZiAoaW50ZWxfdWNfaXNfdXNpbmdfZ3VjX3N1Ym1pc3Npb24oaTkxNSkpIHsK
KwkJRFJNX0lORk8oIkluY29tcGF0aWJsZSBvcHRpb24gZGV0ZWN0ZWQ6ICVzPSVkLCAlcyFcbiIs
CisJCQkgImVuYWJsZV9ndWMiLCBpOTE1X21vZHBhcmFtcy5lbmFibGVfZ3VjLAorCQkJICJHdUMg
c3VibWlzc2lvbiBub3Qgc3VwcG9ydGVkIik7CisJCURSTV9JTkZPKCJTd2l0Y2hpbmcgdG8gbm9u
LUd1QyBzdWJtaXNzaW9uIG1vZGUhXG4iKTsKKwkJaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2d1YyAm
PSB+RU5BQkxFX0dVQ19TVUJNSVNTSU9OOworCX0KKwogCS8qIEEgbmVnYXRpdmUgdmFsdWUgbWVh
bnMgInVzZSBwbGF0Zm9ybS9jb25maWcgZGVmYXVsdCIgKi8KIAlpZiAoaTkxNV9tb2RwYXJhbXMu
Z3VjX2xvZ19sZXZlbCA8IDApCiAJCWk5MTVfbW9kcGFyYW1zLmd1Y19sb2dfbGV2ZWwgPQpAQCAt
Mjk4LDYgKzMwNywxMCBAQCBpbnQgaW50ZWxfdWNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKIAlpZiAoIUhBU19HVUMoaTkxNSkpCiAJCXJldHVybiAtRU5PREVWOwogCisJLyog
WFhYOiBHdUMgc3VibWlzc2lvbiBpcyB1bmF2YWlsYWJsZSBmb3Igbm93ICovCisJaWYgKFVTRVNf
R1VDX1NVQk1JU1NJT04oaTkxNSkpCisJCXJldHVybiAtRUlPOworCiAJcmV0ID0gaW50ZWxfZ3Vj
X2luaXQoZ3VjKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwotLSAKMi4xOS4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

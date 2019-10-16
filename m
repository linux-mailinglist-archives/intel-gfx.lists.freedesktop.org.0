Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E13D86F3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 05:49:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 461466E3F3;
	Wed, 16 Oct 2019 03:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A88EE6E3F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 03:48:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 20:48:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,302,1566889200"; d="scan'208";a="195482429"
Received: from pkumarva-server.ra.intel.com ([10.23.184.130])
 by fmsmga007.fm.intel.com with ESMTP; 15 Oct 2019 20:48:59 -0700
From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 00:05:58 -0400
Message-Id: <20191016040558.12862-1-prathap.kumar.valsan@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Move L3 MOCS to engine reset domain.
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

R2VuMTIgaGFzIEwzIE1PQ1MgaW4gZW5naW5lIHJlc2V0IGRvbWFpbiwgaGF2aW5nIHVzIHRvIHJl
LWluaXRpYWxpemUgb24KYW4gZW5naW5lIHJlc2V0LgoKUmVmZXJlbmNlczogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzIzClJlZmVyZW5jZXM6IGh0dHBz
Oi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTY0NQpSZWZlcmVuY2Vz
OiBIU0RFUyMxNjA3OTgzODE0ClJlZmVyZW5jZXM6IEhTREVTIzE0MDEwMTE1NzAxCgpTaWduZWQt
b2ZmLWJ5OiBQcmF0aGFwIEt1bWFyIFZhbHNhbiA8cHJhdGhhcC5rdW1hci52YWxzYW5AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8IDUgKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9tb2NzLmMKaW5kZXggNzI4NzA0YmJiZTE4Li43NzRjNWRmMGQwZTkgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9tb2NzLmMKQEAgLTM2NSw2ICszNjUsOCBAQCBzdGF0aWMgdTMyIGdldF9l
bnRyeV9jb250cm9sKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlICp0YWJsZSwKIAly
ZXR1cm4gdGFibGUtPnRhYmxlW0k5MTVfTU9DU19QVEVdLmNvbnRyb2xfdmFsdWU7CiB9CiAKK3N0
YXRpYyB2b2lkIGludGVsX21vY3NfaW5pdF9sM2NjX3RhYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
OworCiAvKioKICAqIGludGVsX21vY3NfaW5pdF9lbmdpbmUoKSAtIGVtaXQgdGhlIG1vY3MgY29u
dHJvbCB0YWJsZQogICogQGVuZ2luZToJVGhlIGVuZ2luZSBmb3Igd2hvbSB0byBlbWl0IHRoZSBy
ZWdpc3RlcnMuCkBAIC0zODAsNiArMzgyLDkgQEAgdm9pZCBpbnRlbF9tb2NzX2luaXRfZW5naW5l
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAl1bnNpZ25lZCBpbnQgaW5kZXg7CiAJ
dTMyIHVudXNlZF92YWx1ZTsKIAorCWlmIChJU19HRU4oZ3QtPmk5MTUsIDEyKSAmJiBlbmdpbmUt
PmNsYXNzID09IFJFTkRFUl9DTEFTUykKKwkJaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoZ3Qp
OworCiAJLyogUGxhdGZvcm1zIHdpdGggZ2xvYmFsIE1PQ1MgZG8gbm90IG5lZWQgcGVyLWVuZ2lu
ZSBpbml0aWFsaXphdGlvbi4gKi8KIAlpZiAoSEFTX0dMT0JBTF9NT0NTX1JFR0lTVEVSUyhndC0+
aTkxNSkpCiAJCXJldHVybjsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4

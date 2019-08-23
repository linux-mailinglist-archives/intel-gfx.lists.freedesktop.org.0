Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8791C9AADB
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2AA66EC41;
	Fri, 23 Aug 2019 08:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8B16EC31
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702052"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:42 -0700
Message-Id: <20190823082055.5992-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 10/23] drm/i915: Add
 for_each_new_intel_connector_in_state()
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGUg
c2FtZSBtYWNybyBhcyBmb3JfZWFjaF9uZXdfY29ubmVjdG9yX2luX3N0YXRlKCkgYnV0IGl0IHVz
ZXMKaW50ZWwvaTkxNSB0eXBlcyBpbnN0ZWFkIG9mIHRoZSBkcm0gb25lcy4KClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCA4ICsrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaAppbmRleCBlNTdlNjk2OTA1MWQuLmZkMzA0M2U3N2I1MCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTQxMSw2ICs0
MTEsMTQgQEAgZW51bSBwaHlfZmlhIHsKIAkgICAgIChfX2kpKyspIFwKIAkJZm9yX2VhY2hfaWYo
Y3J0YykKIAorI2RlZmluZSBmb3JfZWFjaF9uZXdfaW50ZWxfY29ubmVjdG9yX2luX3N0YXRlKF9f
c3RhdGUsIGNvbm5lY3RvciwgbmV3X2Nvbm5lY3Rvcl9zdGF0ZSwgX19pKSBcCisJZm9yICgoX19p
KSA9IDA7IFwKKwkgICAgIChfX2kpIDwgKF9fc3RhdGUpLT5iYXNlLm51bV9jb25uZWN0b3I7IFwK
KwkgICAgIChfX2kpKyspIFwKKwkJZm9yX2VhY2hfaWYgKChfX3N0YXRlKS0+YmFzZS5jb25uZWN0
b3JzW19faV0ucHRyICYmIFwKKwkJCSAgICAgKChjb25uZWN0b3IpID0gdG9faW50ZWxfY29ubmVj
dG9yKChfX3N0YXRlKS0+YmFzZS5jb25uZWN0b3JzW19faV0ucHRyKSwgXAorCQkJICAgICAobmV3
X2Nvbm5lY3Rvcl9zdGF0ZSkgPSB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSgoX19z
dGF0ZSktPmJhc2UuY29ubmVjdG9yc1tfX2ldLm5ld19zdGF0ZSksIDEpKQorCiB2b2lkIGludGVs
X2xpbmtfY29tcHV0ZV9tX24odTE2IGJwcCwgaW50IG5sYW5lcywKIAkJCSAgICBpbnQgcGl4ZWxf
Y2xvY2ssIGludCBsaW5rX2Nsb2NrLAogCQkJICAgIHN0cnVjdCBpbnRlbF9saW5rX21fbiAqbV9u
LAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=

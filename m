Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 582B03567AD
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 11:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDBF6E235;
	Wed,  7 Apr 2021 09:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A40446E235
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 09:08:22 +0000 (UTC)
IronPort-SDR: dKryw4JK28COlL0py3f3FQXxbVls9m6f8Bw/lw26DEr4zQ+JGDMEEhhi0QAFYpRG5QtyovAlKK
 0wEKH1FbjSWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9946"; a="172737384"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="172737384"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 02:08:19 -0700
IronPort-SDR: /P2dW4YDss9L2Dpg1gPtBaFstOjJ7AN/TqxaXk6iDG2KgP0NIqxeJJUKW5gQ+8Xa+3VQnNwg1T
 DwY+tQe2+7jA==
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="519361879"
Received: from shochwel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.33.133])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 02:08:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 12:08:12 +0300
Message-Id: <20210407090812.3602-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915/backlight: switch to unique backlight
 device names
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hhbmdlIHRoZSBiYWNrbGlnaHQgZGV2aWNlIG5hbWVzIGZyb20gaW50ZWxfYmFja2xpZ2h0IHRv
CmNhcmQlZC0lcy1iYWNrbGlnaHQgZm9ybWF0LCBmb3IgZXhhbXBsZSBjYXJkMC1lRFAtMS1iYWNr
bGlnaHQsIHRvIG1ha2UKdGhlbSB1bmlxdWUuIE90aGVyd2lzZSwgcmVnaXN0ZXJpbmcgbXVsdGlw
bGUgYmFja2xpZ2h0IGRldmljZXMgd2l0aAppbnRlbF9iYWNrbGlnaHQgbmFtZSB3aWxsIGZhaWws
IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGV5J3JlIHR3bwpjb25uZWN0b3JzIGluIHRoZSBzYW1l
IGRldmljZSBvciB0d28gZGlmZmVyZW50IGRldmljZXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzI3OTQKU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCi0tLQoKSXMgdGhlIG5hbWUgImludGVsX2Jh
Y2tsaWdodCIgcGFydCBvZiB0aGUgVUFCST8gSW4gdGhlb3J5IHRoZSB1c2Vyc3BhY2UKc2hvdWxk
IG9ubHkgbG9vayBhdCB0aGUgbmFtZXMgYW5kIHR5cGVzIGF2YWlsYWJsZSB1bmRlcgovc3lzL2Ns
YXNzL2JhY2tsaWdodCwgbm90IHRoZSBleGFjdCBuYW1lcy4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMgfCAyOSArKysrKysrKysrKysrKy0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCmluZGV4IDEwMDIyZDE1NzVlMS4u
NWViZjhjYjBlOGUzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3BhbmVsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5l
bC5jCkBAIC0xMzcyLDYgKzEzNzIsOCBAQCBpbnQgaW50ZWxfYmFja2xpZ2h0X2RldmljZV9yZWdp
c3RlcihzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwogCXN0cnVjdCBp
bnRlbF9wYW5lbCAqcGFuZWwgPSAmY29ubmVjdG9yLT5wYW5lbDsKIAlzdHJ1Y3QgYmFja2xpZ2h0
X3Byb3BlcnRpZXMgcHJvcHM7CisJY29uc3QgY2hhciAqbmFtZTsKKwlpbnQgcmV0ID0gMDsKIAog
CWlmIChXQVJOX09OKHBhbmVsLT5iYWNrbGlnaHQuZGV2aWNlKSkKIAkJcmV0dXJuIC1FTk9ERVY7
CkBAIC0xMzk4LDI4ICsxNDAwLDMzIEBAIGludCBpbnRlbF9iYWNrbGlnaHRfZGV2aWNlX3JlZ2lz
dGVyKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAllbHNlCiAJCXByb3BzLnBv
d2VyID0gRkJfQkxBTktfUE9XRVJET1dOOwogCi0JLyoKLQkgKiBOb3RlOiB1c2luZyB0aGUgc2Ft
ZSBuYW1lIGluZGVwZW5kZW50IG9mIHRoZSBjb25uZWN0b3IgcHJldmVudHMKLQkgKiByZWdpc3Ry
YXRpb24gb2YgbXVsdGlwbGUgYmFja2xpZ2h0IGRldmljZXMgaW4gdGhlIGRyaXZlci4KLQkgKi8K
KwluYW1lID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJjYXJkJWQtJXMtYmFja2xpZ2h0IiwgaTkx
NS0+ZHJtLnByaW1hcnktPmluZGV4LAorCQkJIGNvbm5lY3Rvci0+YmFzZS5uYW1lKTsKKwlpZiAo
IW5hbWUpCisJCXJldHVybiAtRU5PTUVNOworCiAJcGFuZWwtPmJhY2tsaWdodC5kZXZpY2UgPQot
CQliYWNrbGlnaHRfZGV2aWNlX3JlZ2lzdGVyKCJpbnRlbF9iYWNrbGlnaHQiLAorCQliYWNrbGln
aHRfZGV2aWNlX3JlZ2lzdGVyKG5hbWUsCiAJCQkJCSAgY29ubmVjdG9yLT5iYXNlLmtkZXYsCiAJ
CQkJCSAgY29ubmVjdG9yLAogCQkJCQkgICZpbnRlbF9iYWNrbGlnaHRfZGV2aWNlX29wcywgJnBy
b3BzKTsKIAogCWlmIChJU19FUlIocGFuZWwtPmJhY2tsaWdodC5kZXZpY2UpKSB7Ci0JCWRybV9l
cnIoJmk5MTUtPmRybSwgIkZhaWxlZCB0byByZWdpc3RlciBiYWNrbGlnaHQ6ICVsZFxuIiwKLQkJ
CVBUUl9FUlIocGFuZWwtPmJhY2tsaWdodC5kZXZpY2UpKTsKKwkJZHJtX2VycigmaTkxNS0+ZHJt
LCAiRmFpbGVkIHRvIHJlZ2lzdGVyIGJhY2tsaWdodCAlczogJWxkXG4iLAorCQkJbmFtZSwgUFRS
X0VSUihwYW5lbC0+YmFja2xpZ2h0LmRldmljZSkpOwogCQlwYW5lbC0+YmFja2xpZ2h0LmRldmlj
ZSA9IE5VTEw7Ci0JCXJldHVybiAtRU5PREVWOworCQlyZXQgPSAtRU5PREVWOworCQlnb3RvIG91
dDsKIAl9CiAKIAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAotCQkgICAgIkNvbm5lY3RvciAlcyBi
YWNrbGlnaHQgc3lzZnMgaW50ZXJmYWNlIHJlZ2lzdGVyZWRcbiIsCi0JCSAgICBjb25uZWN0b3It
PmJhc2UubmFtZSk7CisJCSAgICAiQ29ubmVjdG9yICVzIGJhY2tsaWdodCBzeXNmcyBpbnRlcmZh
Y2UgJXMgcmVnaXN0ZXJlZFxuIiwKKwkJICAgIG5hbWUsIGNvbm5lY3Rvci0+YmFzZS5uYW1lKTsK
IAotCXJldHVybiAwOworb3V0OgorCWtmcmVlKG5hbWUpOworCisJcmV0dXJuIHJldDsKIH0KIAog
dm9pZCBpbnRlbF9iYWNrbGlnaHRfZGV2aWNlX3VucmVnaXN0ZXIoc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK

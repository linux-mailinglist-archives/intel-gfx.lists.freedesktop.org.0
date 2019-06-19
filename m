Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0941E4B3C7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 10:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EDD46E316;
	Wed, 19 Jun 2019 08:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247C66E316
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 08:15:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 01:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="164958892"
Received: from shawnle1-cm6330.itwn.intel.com ([10.5.253.127])
 by orsmga006.jf.intel.com with ESMTP; 19 Jun 2019 01:15:55 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 01:43:26 -0700
Message-Id: <1560933806-5184-1-git-send-email-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
References: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Check backlight type while doing
 eDP backlight initializaiton
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
Cc: Jani Nikula <jani.nikula@intel.com>, Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgTEZQIGJhY2tsaWdodCB0eXBlIHNldHRpbmcgZnJvbSBWQlQgd2FzICJWRVNBIGVEUCBBVVgg
SW50ZXJmYWNlIi4KRHJpdmVyIHNob3VsZCBjaGVjayBwYW5lbCBjYXBhYmlsaXR5IGFuZCB0cnkg
dG8gaW5pdGlhbGl6ZSBhdXggYmFja2xpZ2h0LgpObyBtYXR0ZXIgaTkxNV9tb2RwYXJhbXMuZW5h
YmxlX2RwY2RfYmFja2xpZ2h0IHdhcyBlbmFibGVkIG9yIG5vdC4KCnYyOiBhY2Nlc3MgZGV2X3By
aXYtPnZidC5iYWNrbGlnaHQudHlwZSBkaXJlY3RseSBhbmQgcmVtb3ZlIHVudXNlZCBmdW5jdGlv
bi4KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpD
YzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IEpvc2UgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5j
aGlvdUBpbnRlbC5jb20+CgpTaWduZWQtb2ZmLWJ5OiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5o
ICAgICAgICAgICAgIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2F1eF9iYWNrbGlnaHQuYyB8IDQgKysrLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5oCmluZGV4IDRlNDJjZmFmNjFhNy4uMGI3YmU2Mzg5YTA3IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaApAQCAtNDIsNiArNDIsNyBAQCBlbnVtIGludGVsX2Jh
Y2tsaWdodF90eXBlIHsKIAlJTlRFTF9CQUNLTElHSFRfRElTUExBWV9EREksCiAJSU5URUxfQkFD
S0xJR0hUX0RTSV9EQ1MsCiAJSU5URUxfQkFDS0xJR0hUX1BBTkVMX0RSSVZFUl9JTlRFUkZBQ0Us
CisJSU5URUxfQkFDS0xJR0hUX1ZFU0FfRURQX0FVWF9JTlRFUkZBQ0UsCiB9OwogCiBzdHJ1Y3Qg
ZWRwX3Bvd2VyX3NlcSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCmluZGV4IDdkZWQ5NWEzMzRkYi4uZGI3YzdiOWY5YjU2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9i
YWNrbGlnaHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1
eF9iYWNrbGlnaHQuYwpAQCAtMjY0LDggKzI2NCwxMCBAQCBpbnRlbF9kcF9hdXhfZGlzcGxheV9j
b250cm9sX2NhcGFibGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogaW50IGlu
dGVsX2RwX2F1eF9pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpp
bnRlbF9jb25uZWN0b3IpCiB7CiAJc3RydWN0IGludGVsX3BhbmVsICpwYW5lbCA9ICZpbnRlbF9j
b25uZWN0b3ItPnBhbmVsOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoaW50ZWxfY29ubmVjdG9yLT5iYXNlLmRldik7CiAKLQlpZiAoIWk5MTVfbW9kcGFyYW1z
LmVuYWJsZV9kcGNkX2JhY2tsaWdodCkKKwlpZiAoIWk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcGNk
X2JhY2tsaWdodCAmJgorCSAgICAoZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQudHlwZSAhPSBJTlRF
TF9CQUNLTElHSFRfVkVTQV9FRFBfQVVYX0lOVEVSRkFDRSkpCiAJCXJldHVybiAtRU5PREVWOwog
CiAJaWYgKCFpbnRlbF9kcF9hdXhfZGlzcGxheV9jb250cm9sX2NhcGFibGUoaW50ZWxfY29ubmVj
dG9yKSkKLS0gCjIuNy40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=

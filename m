Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1638C2AE49B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 01:06:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0617C89D7C;
	Wed, 11 Nov 2020 00:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB58289D79
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 00:06:05 +0000 (UTC)
IronPort-SDR: j42atnW+T1HDCgRmM1GZX5WM7u43uFI7i2XvpGITZ5dMoKZcp45Z3LDgOL0DLfls4UJM05wxyF
 onc7iI4AfQiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="170177799"
X-IronPort-AV: E=Sophos;i="5.77,467,1596524400"; d="scan'208";a="170177799"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 16:06:04 -0800
IronPort-SDR: MqgMyTG4x9RxEPd6q+XGuXkHpo5/bbBlkDIKIOqbOHBM9dwadErHt3ihI6bEjvVwgf4dhYsto1
 nJMoo/7hvYUQ==
X-IronPort-AV: E=Sophos;i="5.77,467,1596524400"; d="scan'208";a="473633334"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 10 Nov 2020 16:06:04 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Nov 2020 16:08:14 -0800
Message-Id: <20201111000819.29809-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201111000819.29809-1-manasi.d.navare@intel.com>
References: <20201111000819.29809-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 2/7] drm/i915: Move encoder->get_config to a
 new function
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

Tm8gZnVuY3Rpb25hbCBjaGFuZ2VzLCBjcmVhdGUgYSBzZXBhcmF0ZSBpbnRlbF9lbmNvZGVyX2dl
dF9jb25maWcoKQpmdW5jdGlvbiB0aGF0IGNhbGxzIGVuY29kZXItPmdldF9jb25maWcgaG9vay4K
VGhpcyBpcyBuZWVkZWQgc28gdGhhdCBsYXRlciB3ZSBjYW4gYWRkIGJlaWdqb2llbnIgcmVsYXRl
ZApyZWFkb3V0IGhlcmUuCgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5u
YXZhcmVAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDEyICsrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCmluZGV4IDYzYmYzNzYxYmVmYy4uYWQ1ODNhNDkwYjI1IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtODEyMiw2ICs4
MTIyLDEyIEBAIHN0YXRpYyB1MzIgaWxrX3BpcGVfcGl4ZWxfcmF0ZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJICAgICAgIHBmaXRfdyAqIHBmaXRfaCk7CiB9
CiAKK3N0YXRpYyB2b2lkIGludGVsX2VuY29kZXJfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKKwkJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQoreworCWVuY29kZXItPmdldF9jb25maWcoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cit9CisK
IHN0YXRpYyB2b2lkIGludGVsX2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwpAQCAtMTIzOTcsNyAr
MTI0MDMsNyBAQCBpbnRlbF9lbmNvZGVyX2N1cnJlbnRfbW9kZShzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikKIAkJcmV0dXJuIE5VTEw7CiAJfQogCi0JZW5jb2Rlci0+Z2V0X2NvbmZpZyhl
bmNvZGVyLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9lbmNvZGVyX2dldF9jb25maWcoZW5jb2Rlciwg
Y3J0Y19zdGF0ZSk7CiAKIAlpbnRlbF9tb2RlX2Zyb21fcGlwZV9jb25maWcobW9kZSwgY3J0Y19z
dGF0ZSk7CiAKQEAgLTE0NDQyLDcgKzE0NDQ4LDcgQEAgdmVyaWZ5X2NydGNfc3RhdGUoc3RydWN0
IGludGVsX2NydGMgKmNydGMsCiAJCQkJcGlwZV9uYW1lKHBpcGUpKTsKIAogCQlpZiAoYWN0aXZl
KQotCQkJZW5jb2Rlci0+Z2V0X2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZyk7CisJCQlpbnRl
bF9lbmNvZGVyX2dldF9jb25maWcoZW5jb2RlciwgcGlwZV9jb25maWcpOwogCX0KIAogCWludGVs
X2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHBpcGVfY29uZmlnKTsKQEAgLTE4NzU1LDcgKzE4NzYx
LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYpCiAJCQljcnRjX3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRj
LT5iYXNlLnN0YXRlKTsKIAogCQkJZW5jb2Rlci0+YmFzZS5jcnRjID0gJmNydGMtPmJhc2U7Ci0J
CQllbmNvZGVyLT5nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3RhdGUpOworCQkJaW50ZWxfZW5j
b2Rlcl9nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCQkJaWYgKGVuY29kZXItPnN5
bmNfc3RhdGUpCiAJCQkJZW5jb2Rlci0+c3luY19zdGF0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsK
IAkJfSBlbHNlIHsKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==

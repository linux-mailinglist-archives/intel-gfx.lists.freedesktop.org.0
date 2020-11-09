Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9252AC5C0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 21:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1F38930B;
	Mon,  9 Nov 2020 20:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8785E89338
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 20:10:37 +0000 (UTC)
IronPort-SDR: 6YFzas0FItengebY0GGqV+UCFXqf4y5X6lO9xeXEmPKHxwUB1gSAZtUsI5OAFAEuj47xaUoHpx
 DJr94t3CV4mA==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="157647097"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="157647097"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 12:10:36 -0800
IronPort-SDR: y13AgYe6lFdXdbc0j4NhRgJituJy1pUT3ZyZUkKAHdr4vgQ0039JIvlGsbZJZ2d1LI/2E+slqo
 chG12faP24Gg==
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="355830348"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 09 Nov 2020 12:10:36 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Nov 2020 12:12:41 -0800
Message-Id: <20201109201246.17117-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201109201246.17117-1-manasi.d.navare@intel.com>
References: <20201109201246.17117-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 2/7] drm/i915: Move encoder->get_config to a
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
aW50ZWxfZGlzcGxheS5jCmluZGV4IDZmYWNhMWU3MzljOC4uZThlZjJjNTdmZjA1IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtODIyMiw2ICs4
MjIyLDEyIEBAIHN0YXRpYyB1MzIgaWxrX3BpcGVfcGl4ZWxfcmF0ZShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAkJICAgICAgIHBmaXRfdyAqIHBmaXRfaCk7CiB9
CiAKK3N0YXRpYyB2b2lkIGludGVsX2VuY29kZXJfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKKwkJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQoreworCWVuY29kZXItPmdldF9jb25maWcoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cit9CisK
IHN0YXRpYyB2b2lkIGludGVsX2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOwpAQCAtMTI0NzUsNyAr
MTI0ODEsNyBAQCBpbnRlbF9lbmNvZGVyX2N1cnJlbnRfbW9kZShzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikKIAkJcmV0dXJuIE5VTEw7CiAJfQogCi0JZW5jb2Rlci0+Z2V0X2NvbmZpZyhl
bmNvZGVyLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9lbmNvZGVyX2dldF9jb25maWcoZW5jb2Rlciwg
Y3J0Y19zdGF0ZSk7CiAKIAlpbnRlbF9tb2RlX2Zyb21fcGlwZV9jb25maWcobW9kZSwgY3J0Y19z
dGF0ZSk7CiAKQEAgLTE0NTIwLDcgKzE0NTI2LDcgQEAgdmVyaWZ5X2NydGNfc3RhdGUoc3RydWN0
IGludGVsX2NydGMgKmNydGMsCiAJCQkJcGlwZV9uYW1lKHBpcGUpKTsKIAogCQlpZiAoYWN0aXZl
KQotCQkJZW5jb2Rlci0+Z2V0X2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZyk7CisJCQlpbnRl
bF9lbmNvZGVyX2dldF9jb25maWcoZW5jb2RlciwgcGlwZV9jb25maWcpOwogCX0KIAogCWludGVs
X2NydGNfY29tcHV0ZV9waXhlbF9yYXRlKHBpcGVfY29uZmlnKTsKQEAgLTE4ODMzLDcgKzE4ODM5
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

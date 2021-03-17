Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED72B33F5AD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 17:37:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CDF6E842;
	Wed, 17 Mar 2021 16:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C506E842
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 16:37:54 +0000 (UTC)
IronPort-SDR: arPgVVp6Apr0B3Gr1hMYVUOIhS5DAmrofmuYNXhSj1pDwZUlW7WOsAWI7QGf9wVk7sQrxwQW3O
 CNr+zPZjrvrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="186141932"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="186141932"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:37:53 -0700
IronPort-SDR: pC5BY8gSTuAtT8gjqq89LH968M7WWN8lmxUsnygl8s/NjvPXBNhAknGGMKS1tEAcY4B4EjuVSb
 qYAWDzVFt5xA==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="412717480"
Received: from jpferrer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.46.99])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:37:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 18:36:48 +0200
Message-Id: <026b737b122273d256f4247e9b0c84529aa391fd.1615998927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1615998927.git.jani.nikula@intel.com>
References: <cover.1615998927.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/14] drm/i915/bios: add i915 backpointer to
 intel_bios_encoder_data
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UnbGwgYmUgbmVlZGluZyBpdCBpbiB0aGUgZnV0dXJlLgoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDczNzljYmI2YzQxOS4uNDBm
ZDYwYWNkNTQ4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpA
QCAtNjAsNiArNjAsOCBAQAogCiAvKiBXcmFwcGVyIGZvciBWQlQgY2hpbGQgZGV2aWNlIGNvbmZp
ZyAqLwogc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhIHsKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNTsKKwogCXN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnIGNoaWxkOwogCXN0
cnVjdCBkc2NfY29tcHJlc3Npb25fcGFyYW1ldGVyc19lbnRyeSAqZHNjOwogCXN0cnVjdCBsaXN0
X2hlYWQgbm9kZTsKQEAgLTIwMjYsNiArMjAyOCw4IEBAIHBhcnNlX2dlbmVyYWxfZGVmaW5pdGlv
bnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCWlmICghZGV2ZGF0YSkKIAkJCWJy
ZWFrOwogCisJCWRldmRhdGEtPmk5MTUgPSBpOTE1OworCiAJCS8qCiAJCSAqIENvcHkgYXMgbXVj
aCBhcyB3ZSBrbm93IChzaXplb2YpIGFuZCBpcyBhdmFpbGFibGUKIAkJICogKGNoaWxkX2Rldl9z
aXplKSBvZiB0aGUgY2hpbGQgZGV2aWNlIGNvbmZpZy4gQWNjZXNzaW5nIHRoZQpAQCAtMjEwMyw2
ICsyMTA3LDcgQEAgaW5pdF92YnRfbWlzc2luZ19kZWZhdWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKIAkJaWYgKCFkZXZkYXRhKQogCQkJYnJlYWs7CiAKKwkJZGV2ZGF0YS0+aTkx
NSA9IGk5MTU7CiAJCWNoaWxkID0gJmRldmRhdGEtPmNoaWxkOwogCiAJCWlmIChwb3J0ID09IFBP
UlRfRikKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==

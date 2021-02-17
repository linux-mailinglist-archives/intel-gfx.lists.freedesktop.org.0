Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D9F31DDE4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29AE6E5AB;
	Wed, 17 Feb 2021 17:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860C66E5AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:05:26 +0000 (UTC)
IronPort-SDR: dptX2/91SwV0/Z0lPxhJ+USemDkHjevZeEWrurK/KyJPSq1cppvkdoYDm2lXEff4BxhDMtpz1O
 EkjBAbTwFvIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="179744283"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="179744283"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:04:30 -0800
IronPort-SDR: G/N00iTzRInymOQzhFvWuqTB6sIEGsyhTIEC6VfSnY1aS4QGplm1lNcKKyrAzPsurbiU6xcTVR
 cMfEk7A+2KYA==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="512942327"
Received: from mvalka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.39.140])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:04:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Feb 2021 19:03:37 +0200
Message-Id: <a00a89bedb2e5f061a086bf51ad610b5913e11e2.1613580193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1613580193.git.jani.nikula@intel.com>
References: <cover.1613580193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/i915/bios: add i915 backpointer to
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
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
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDBlODgyZGExNjViZS4uMTkz
NzcyZjQyNTgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpA
QCAtNjAsNiArNjAsOCBAQAogCiAvKiBXcmFwcGVyIGZvciBWQlQgY2hpbGQgZGV2aWNlIGNvbmZp
ZyAqLwogc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhIHsKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNTsKKwogCXN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnIGNoaWxkOwogCXN0
cnVjdCBkc2NfY29tcHJlc3Npb25fcGFyYW1ldGVyc19lbnRyeSAqZHNjOwogCXN0cnVjdCBsaXN0
X2hlYWQgbm9kZTsKQEAgLTIwMDIsNiArMjAwNCw4IEBAIHBhcnNlX2dlbmVyYWxfZGVmaW5pdGlv
bnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCWlmICghZGV2ZGF0YSkKIAkJCWJy
ZWFrOwogCisJCWRldmRhdGEtPmk5MTUgPSBpOTE1OworCiAJCS8qCiAJCSAqIENvcHkgYXMgbXVj
aCBhcyB3ZSBrbm93IChzaXplb2YpIGFuZCBpcyBhdmFpbGFibGUKIAkJICogKGNoaWxkX2Rldl9z
aXplKSBvZiB0aGUgY2hpbGQgZGV2aWNlIGNvbmZpZy4gQWNjZXNzaW5nIHRoZQpAQCAtMjA3OSw2
ICsyMDgzLDcgQEAgaW5pdF92YnRfbWlzc2luZ19kZWZhdWx0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKIAkJaWYgKCFkZXZkYXRhKQogCQkJYnJlYWs7CiAKKwkJZGV2ZGF0YS0+aTkx
NSA9IGk5MTU7CiAJCWNoaWxkID0gJmRldmRhdGEtPmNoaWxkOwogCiAJCWlmIChwb3J0ID09IFBP
UlRfRikKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==

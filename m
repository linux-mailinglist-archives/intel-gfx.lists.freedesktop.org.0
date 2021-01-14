Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B932F6C85
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:50:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F846E11C;
	Thu, 14 Jan 2021 20:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 330756E11C
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:50:53 +0000 (UTC)
IronPort-SDR: 2nHcu8K+oQyOkcOrqhKkFrHl0Sqc6baOYAckt2+i9joORMiUyEBtVEAuSFJIglsxv3hmiSHLlQ
 tKZ0ibGylPkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="174936092"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="174936092"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:50:51 -0800
IronPort-SDR: sZ6VZCCSkci8cZE0lbPEkTLCxqd+H19BonvrIhavFP3nm9B6i/uzTttiPIJpnWGG5SVHtuFUC8
 GSCmMGQRHBGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="465370472"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 14 Jan 2021 12:50:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 22:50:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:50:40 +0200
Message-Id: <20210114205046.8247-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
References: <20210114205046.8247-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Fix the training pattern debug
 print
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSBjbGFpbSB0byB1c2UgVFBTNyB3aGVuIHVzaW5nIFRQUzQuIFRoYXQgaXMganVz
dApjb25mdXNpbmcsIHNvIGxldCdzIGZpeCB0aGUgZGVidWcgcHJpbnQuCgpBbmQgd2hpbGUgd2Un
cmUgdG91Y2hpbmcgdGhpcyBsZXQncyBhZGQgdGhlIGN1c3RvbWFyeQplbmNvZGVyIGlkL25hbWUg
YXMgd2VsbC4KCnYyOiBBZGQgTUlTU0lOR19DQVNFKCkgKE1hbmFzaSkKClJldmlld2VkLWJ5OiBN
YW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDI3ICsrKysrKysrKysrKysrKysr
KysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCBlYzk0ZWJkYWY3
YjguLjZlZDkzY2JlZjgyOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YwpAQCAtNDAzNywxOCArNDAzNywzNSBAQCBpdmJfY3B1X2VkcF9zZXRfc2lnbmFsX2xldmVscyhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWludGVsX2RlX3Bvc3RpbmdfcmVhZChkZXZfcHJp
diwgaW50ZWxfZHAtPm91dHB1dF9yZWcpOwogfQogCitzdGF0aWMgY2hhciBkcF90cmFpbmluZ19w
YXR0ZXJuX25hbWUodTggdHJhaW5fcGF0KQoreworCXN3aXRjaCAodHJhaW5fcGF0KSB7CisJY2Fz
ZSBEUF9UUkFJTklOR19QQVRURVJOXzE6CisJY2FzZSBEUF9UUkFJTklOR19QQVRURVJOXzI6CisJ
Y2FzZSBEUF9UUkFJTklOR19QQVRURVJOXzM6CisJCXJldHVybiAnMCcgKyB0cmFpbl9wYXQ7CisJ
Y2FzZSBEUF9UUkFJTklOR19QQVRURVJOXzQ6CisJCXJldHVybiAnNCc7CisJZGVmYXVsdDoKKwkJ
TUlTU0lOR19DQVNFKHRyYWluX3BhdCk7CisJCXJldHVybiAnPyc7CisJfQorfQorCiB2b2lkCiBp
bnRlbF9kcF9wcm9ncmFtX2xpbmtfdHJhaW5pbmdfcGF0dGVybihzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAogCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKIAkJCQkgICAgICAgdTggZHBfdHJhaW5fcGF0KQogewotCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOworCXN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyID0gJmRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0+YmFzZTsKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2
KTsKKwl1OCB0cmFpbl9wYXQgPSBpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuX3N5bWJvbChkcF90
cmFpbl9wYXQpOwogCi0JaWYgKChpbnRlbF9kcF90cmFpbmluZ19wYXR0ZXJuX3N5bWJvbChkcF90
cmFpbl9wYXQpKSAhPQotCSAgICBEUF9UUkFJTklOR19QQVRURVJOX0RJU0FCTEUpCisJaWYgKHRy
YWluX3BhdCAhPSBEUF9UUkFJTklOR19QQVRURVJOX0RJU0FCTEUpCiAJCWRybV9kYmdfa21zKCZk
ZXZfcHJpdi0+ZHJtLAotCQkJICAgICJVc2luZyBEUCB0cmFpbmluZyBwYXR0ZXJuIFRQUyVkXG4i
LAotCQkJICAgIGludGVsX2RwX3RyYWluaW5nX3BhdHRlcm5fc3ltYm9sKGRwX3RyYWluX3BhdCkp
OworCQkJICAgICJbRU5DT0RFUjolZDolc10gVXNpbmcgRFAgdHJhaW5pbmcgcGF0dGVybiBUUFMl
Y1xuIiwKKwkJCSAgICBlbmNvZGVyLT5iYXNlLmJhc2UuaWQsIGVuY29kZXItPmJhc2UubmFtZSwK
KwkJCSAgICBkcF90cmFpbmluZ19wYXR0ZXJuX25hbWUodHJhaW5fcGF0KSk7CiAKIAlpbnRlbF9k
cC0+c2V0X2xpbmtfdHJhaW4oaW50ZWxfZHAsIGNydGNfc3RhdGUsIGRwX3RyYWluX3BhdCk7CiB9
Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=

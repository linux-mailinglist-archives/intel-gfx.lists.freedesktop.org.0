Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D702AA094
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 23:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59156EB48;
	Fri,  6 Nov 2020 22:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21CF06EB43
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 22:55:54 +0000 (UTC)
IronPort-SDR: aSA+r7FrHYhfAcL5GBDSsF4MCM7RHF3jk5cvCPV6nb2/aYXuAEGClNpITDAcFuYjfnkGJ7Bw1g
 pBZ+ffxFdjKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="167022950"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="167022950"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:53 -0800
IronPort-SDR: M8TG0vEkDSCgumwEa824UBc+rMN40o95gERUsKwdK7lHpuxrUQGqj9mFLnybO7Tfe3TQo/TA9A
 Y7gWNY3A6T0A==
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="540022744"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 14:55:26 -0800
Message-Id: <20201106225531.920641-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201106225531.920641-1-lucas.demarchi@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/display: Do not reset display when
 there is none
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpEaXNw
bGF5IGlzIGFsd2F5cyBkaXNhYmxlZCBhbmQgZW5hYmxlZCB3aGVuIHJlc2V0dGluZyBhbnkgZW5n
aW5lLCBidXQgaWYKdGhlcmUgaXMgbm8gZGlzcGxheSBpdCBzaG91bGQgbm90IGRvIGFueXRoaW5n
IHdpdGggZGlzcGxheSBhbmQgb25seQpyZXNldCB0aGUgbmVlZGVkIGVuZ2luZXMuCgpDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCmluZGV4IGFiMDRjODljZGYwNS4uYjZhOWQ0MWEwNDNlIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNDk1OCw2ICs0OTU4LDkg
QEAgdm9pZCBpbnRlbF9kaXNwbGF5X3ByZXBhcmVfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCXN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZTsKIAlpbnQgcmV0
OwogCisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCisJCXJldHVybjsKKwogCS8qIHJlc2V0
IGRvZXNuJ3QgdG91Y2ggdGhlIGRpc3BsYXkgKi8KIAlpZiAoIWRldl9wcml2LT5wYXJhbXMuZm9y
Y2VfcmVzZXRfbW9kZXNldF90ZXN0ICYmCiAJICAgICFncHVfcmVzZXRfY2xvYmJlcnNfZGlzcGxh
eShkZXZfcHJpdikpCkBAIC01MDE4LDYgKzUwMjEsOSBAQCB2b2lkIGludGVsX2Rpc3BsYXlfZmlu
aXNoX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzdHJ1Y3QgZHJt
X2F0b21pY19zdGF0ZSAqc3RhdGU7CiAJaW50IHJldDsKIAorCWlmICghSEFTX0RJU1BMQVkoZGV2
X3ByaXYpKQorCQlyZXR1cm47CisKIAkvKiByZXNldCBkb2Vzbid0IHRvdWNoIHRoZSBkaXNwbGF5
ICovCiAJaWYgKCF0ZXN0X2JpdChJOTE1X1JFU0VUX01PREVTRVQsICZkZXZfcHJpdi0+Z3QucmVz
ZXQuZmxhZ3MpKQogCQlyZXR1cm47Ci0tIAoyLjI5LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

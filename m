Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10671F044F
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 04:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0A46E97A;
	Sat,  6 Jun 2020 02:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CD86E979
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Jun 2020 02:57:46 +0000 (UTC)
IronPort-SDR: YGghA3ejAGOQ5sAfEZS6yr5NUeo1bU4cPn3xq8stptJdNadqGadxf2ZEvp+r4MfxJkx99DQ1DI
 7JowpNVc0Ktw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 19:57:46 -0700
IronPort-SDR: hdUOyruanbeXyoL7Z0A4nPAJrJRj9UXFctMjFqJkKsxbvmXlJGRmICqoVq+Okvt+5zHoCLO91Q
 QAMvBlD85Kxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,478,1583222400"; d="scan'208";a="259347589"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jun 2020 19:57:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jun 2020 19:57:36 -0700
Message-Id: <20200606025740.3308880-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200606025740.3308880-1-matthew.d.roper@intel.com>
References: <20200606025740.3308880-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/7] drm/i915/rkl: Update TGP's pin mapping
 when paired with RKL
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

SFBEIHBpbiBoYW5kbGluZyBmb3IgUktMK1RHUCBpcyBhIHNwZWNpYWwgY2FzZTsgd2UgZWZmZWN0
aXZlbHkgc2VsZWN0CnRoZSBIUEQgcGluIGJhc2VkIG9uIHRoZSBEREkgKEEsQixELEUpIHJhdGhl
ciB0aGFuIHRoZSBQSFkgKEEsQixDLEQpLgpUaGlzIGRpZmZlcnMgZnJvbSB0aGUgcmVndWxhciBi
ZWhhdmlvciBvZiBSS0wrQ01QIChhbmQgYWxzbyBUR0wrVEdQKS4KCnYyOgogLSBSYXRoZXIgdGhh
biBwcm92aWRpbmcgYSBjdXN0b20gaHBkX3BpbiBtYXBwaW5nIHRhYmxlLCBqdXN0IGFzc2lnbgog
ICBlbmNvZGVyLT5ocGRfcGluIGluIGEgY3VzdG9tIG1hbm5lciBmb3IgdGhpcyBzZXR1cC4gIChW
aWxsZSkKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jIHwgOSArKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jCmluZGV4IDRmNmY1NjBlMDkzZS4uZDc5NGRk
NWYxNzBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hv
dHBsdWcuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcu
YwpAQCAtODksNiArODksMTUgQEAgZW51bSBocGRfcGluIGludGVsX2hwZF9waW5fZGVmYXVsdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiB7CiAJZW51bSBwaHkgcGh5ID0gaW50
ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQpOwogCisJLyoKKwkgKiBSS0wgKyBUR1AgUENI
IGlzIGEgc3BlY2lhbCBjYXNlOyB3ZSBlZmZlY3RpdmVseSBjaG9vc2UgdGhlIGhwZF9waW4KKwkg
KiBiYXNlZCBvbiB0aGUgRERJIHJhdGhlciB0aGFuIHRoZSBQSFkgKGkuZS4sIHRoZSBsYXN0IHR3
byBvdXRwdXRzCisJICogc2hvbGQgYmUgSFBEX1BPUlRfe0QsRX0gcmF0aGVyIHRoYW4ge0MsRH0u
ICBOb3RlIHRoYXQgdGhpcyBkaWZmZXJzCisJICogZnJvbSB0aGUgYmVoYXZpb3Igb2YgYm90aCBU
R0wrVEdQIGFuZCBSS0wrQ01QLgorCSAqLworCWlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSAm
JiBIQVNfUENIX1RHUChkZXZfcHJpdikpCisJCXJldHVybiBIUERfUE9SVF9BICsgcG9ydCAtIFBP
UlRfQTsKKwogCXN3aXRjaCAocGh5KSB7CiAJY2FzZSBQSFlfRjoKIAkJcmV0dXJuIElTX0NOTF9X
SVRIX1BPUlRfRihkZXZfcHJpdikgPyBIUERfUE9SVF9FIDogSFBEX1BPUlRfRjsKLS0gCjIuMjQu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

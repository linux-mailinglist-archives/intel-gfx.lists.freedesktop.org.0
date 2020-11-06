Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC6F2AA092
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 23:56:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D446EB47;
	Fri,  6 Nov 2020 22:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082466EB40
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 22:55:53 +0000 (UTC)
IronPort-SDR: jjvJ4I84aQs8YD8BF7oI4n8e6KpVZWawSyG1WMRlN8XWtkFdB7Jum6SqrHHy0RwC+XvIz5Skb0
 oVd2BskmPqHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="167022949"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="167022949"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:53 -0800
IronPort-SDR: xsgrm7rw7Cy3bYeic1nb3/rNDs7SEjRgMPTONQpF++Ltp8p4thJNsyQP8S6tQFxLuUCV4gNuQL
 O7v/AZukOtOA==
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="540022759"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 14:55:31 -0800
Message-Id: <20201106225531.920641-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201106225531.920641-1-lucas.demarchi@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/i915: Do not setup hpd without display
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

Tm93IHRoYXQgaHBkL2Rpc3BsYXkgcmVsYXRlZCBjYWxscyBhcmUgc3BsaXQgZnJvbSB0aGUgcmVz
dCBpbgppbnRlbF9pcnFfaW5pdCgpLCBza2lwIGFsbCBvZiB0aGF0IGluIGNhc2Ugd2UgZG9uJ3Qg
aGF2ZSBkaXNwbGF5LgoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggNGZhZjdjYjljMTU4Li4w
MWY1NzQ5YTU5MDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtNDIxMiw2ICs0MjEyLDkg
QEAgdm9pZCBpbnRlbF9pcnFfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJaWYgKEhBU19HVF9VQyhkZXZfcHJpdikgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8IDExKQog
CQlkZXZfcHJpdi0+Z3QucG1fZ3VjX2V2ZW50cyA9IEdVQ19JTlRSX0dVQzJIT1NUIDw8IDE2Owog
CisJaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCisJCXJldHVybjsKKwogCWludGVsX2hwZF9p
bml0X3BpbnMoZGV2X3ByaXYpOwogCiAJaW50ZWxfaHBkX2luaXRfd29yayhkZXZfcHJpdik7Ci0t
IAoyLjI5LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

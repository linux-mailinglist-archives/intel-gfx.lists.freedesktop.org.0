Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9413C2538F5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 22:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96BEE8908C;
	Wed, 26 Aug 2020 20:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F048908C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 20:13:18 +0000 (UTC)
IronPort-SDR: TBqwmaCk12dzK3VvZXArh/ijbbJ6BsJwIB8nQ/tF0uz0sB9WQeQMi+1jj6sUGIh/OpAPmePypj
 nIQ17cXfp8xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="153797866"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="153797866"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 13:13:17 -0700
IronPort-SDR: 9/CNW8d3UTONIwiCYkk1l1r1H5MRRwoSb0vjfHzEtr1oQw/cCZFDqCsF6qS06OIaC55v7M7umn
 xRfM2VfY2efw==
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="474903235"
Received: from vfumax-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.62.93])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 13:13:13 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 13:15:48 -0700
Message-Id: <20200826201549.83658-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200826201549.83658-1-jose.souza@intel.com>
References: <20200826201549.83658-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/display/ehl: Use EHL DP tables
 for eDP ports without low power support
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

UmV1c2luZyBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucygpIGZvciBlRFAgd2FzIGNhdXNpbmcgdGhl
IHdyb25nIHRhYmxlCmJlaW5nIHVzZWQgd2hlbiB0aGUgZURQIHBvcnQgZG9uJ3Qgc3VwcG9ydCBs
b3cgcG93ZXIgdm9sdGFnZSBzd2luZyB0YWJsZS4KCnYyOiBPbmx5IHVzZSBpY2xfY29tYm9fcGh5
X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjMgaWYgbG93X3Zzd2luZyBpcwpzZXQgYXMgRUhMIGNv
bWJvIHBoeSBzdXBwb3J0cyBIQlIzIChNYXR0IFIpCgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IExlZSBTaGF3biBDIDxzaGF3bi5jLmxlZUBp
bnRlbC5jb20+CkNjOiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRl
bC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMjIgKysrKysrKysr
KysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggOWEw
MzViYjdiZDA2Li42OTk1MTE4NzIyOTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwpAQCAtMTA3NCwxMiArMTA3NCwyOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNu
bF9kZGlfYnVmX3RyYW5zICoKIGVobF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLCBpbnQgdHlwZSwgaW50IHJhdGUsCiAJCQlpbnQgKm5fZW50cmllcykK
IHsKLQlpZiAodHlwZSAhPSBJTlRFTF9PVVRQVVRfSERNSSAmJiB0eXBlICE9IElOVEVMX09VVFBV
VF9FRFApIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVu
Y29kZXItPmJhc2UuZGV2KTsKKworCXN3aXRjaCAodHlwZSkgeworCWNhc2UgSU5URUxfT1VUUFVU
X0hETUk6CisJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9jb21ib19waHlfZGRpX3RyYW5z
bGF0aW9uc19oZG1pKTsKKwkJcmV0dXJuIGljbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19o
ZG1pOworCWNhc2UgSU5URUxfT1VUUFVUX0VEUDoKKwkJaWYgKGRldl9wcml2LT52YnQuZWRwLmxv
d192c3dpbmcpIHsKKwkJCWlmIChyYXRlID4gNTQwMDAwKSB7CisJCQkJKm5fZW50cmllcyA9IEFS
UkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIzKTsKKwkJCQly
ZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIzOworCQkJfSBlbHNl
IHsKKwkJCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xh
dGlvbnNfZWRwX2hicjIpOworCQkJCXJldHVybiBpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlv
bnNfZWRwX2hicjI7CisJCQl9CisJCX0KKwkJLyogZmFsbCB0aHJvdWdoICovCisJZGVmYXVsdDoK
KwkJLyogQWxsIGNvbWJvIERQIGFuZCBlRFAgcG9ydHMgdGhhdCBkbyBub3Qgc3VwcG9ydCBsb3df
dnN3aW5nICovCiAJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGVobF9jb21ib19waHlfZGRpX3Ry
YW5zbGF0aW9uc19kcCk7CiAJCXJldHVybiBlaGxfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNf
ZHA7CiAJfQotCi0JcmV0dXJuIGljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGVuY29kZXIsIHR5cGUs
IHJhdGUsIG5fZW50cmllcyk7CiB9CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZf
dHJhbnMgKgotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK

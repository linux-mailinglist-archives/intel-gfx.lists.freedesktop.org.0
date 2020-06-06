Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A54241F0453
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Jun 2020 04:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2EAC6E980;
	Sat,  6 Jun 2020 02:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0B66E979
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Jun 2020 02:57:47 +0000 (UTC)
IronPort-SDR: NNIeGzb6jyNsFiHix02WrsXMFJxSvt9n9zmm4vhZmxxAR1YfsV6Vt1HtsywJ67A05Jqm5mbNs3
 1R7fu+0YH4VA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 19:57:46 -0700
IronPort-SDR: V3YxpAaE87U8qBrme6Rn+N5blzEjkAUXyocywCj5/TnVmdkINgS3vr3xMzQF0iDdNTK4gA/LkC
 q1Nz/so/L7Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,478,1583222400"; d="scan'208";a="259347596"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jun 2020 19:57:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jun 2020 19:57:37 -0700
Message-Id: <20200606025740.3308880-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200606025740.3308880-1-matthew.d.roper@intel.com>
References: <20200606025740.3308880-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 4/7] drm/i915/rkl: Don't try to read out DSI
 transcoders
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

RnJvbTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+CgpSS0wgZG9lc24n
dCBoYXZlIERTSSBvdXRwdXRzLCBzbyB3ZSBzaG91bGRuJ3QgdHJ5IHRvIHJlYWQgb3V0IHRoZSBE
U0kKdHJhbnNjb2RlciByZWdpc3RlcnMuCgp2MihNYXR0Uik6CiAtIEp1c3Qgc2V0IHRoZSAnZXh0
cmEgcGFuZWwgbWFzaycgdG8gZWRwIHwgZHNpMCB8IGRzaTEgYW5kIHRoZW4gbWFzawogICBhZ2Fp
bnN0IHRoZSBwbGF0Zm9ybSdzIGNwdV90cmFuc2NvZGVyX21hc2sgdG8gZmlsdGVyIG91dCB0aGUg
b25lcwogICB0aGF0IGRvbid0IGV4aXN0IG9uIGEgZ2l2ZW4gcGxhdGZvcm0uICAoVmlsbGUpCgp2
MyhNYXR0Uik6CiAtIE9ubHkgaW5jbHVkZSBEU0kgdHJhbnNjb2RlcnMgb24gZ2VuMTErIGFnYWlu
LiAoVmlsbGUpCiAtIFVzZSBmb3JfZWFjaF9jcHVfdHJhbnNjb2Rlcl9tYXNrZWQoKSBmb3IgbG9v
cC4gKFZpbGxlKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAg
KysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IDk4MjA4NzRkM2VhMi4uNmMyYmIzMzU0Yjg2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTA5MDQsNyArMTA5MDQsNyBAQCBzdGF0aWMgYm9v
bCBoc3dfZ2V0X3RyYW5zY29kZXJfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmJhc2UuZGV2OwogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKIAllbnVtIGludGVsX2Rpc3BsYXlfcG93
ZXJfZG9tYWluIHBvd2VyX2RvbWFpbjsKLQl1bnNpZ25lZCBsb25nIHBhbmVsX3RyYW5zY29kZXJf
bWFzayA9IDA7CisJdW5zaWduZWQgbG9uZyBwYW5lbF90cmFuc2NvZGVyX21hc2sgPSBCSVQoVFJB
TlNDT0RFUl9FRFApOwogCXVuc2lnbmVkIGxvbmcgZW5hYmxlZF9wYW5lbF90cmFuc2NvZGVycyA9
IDA7CiAJZW51bSB0cmFuc2NvZGVyIHBhbmVsX3RyYW5zY29kZXI7CiAJaW50ZWxfd2FrZXJlZl90
IHdmOwpAQCAtMTA5MTQsOSArMTA5MTQsNiBAQCBzdGF0aWMgYm9vbCBoc3dfZ2V0X3RyYW5zY29k
ZXJfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCXBhbmVsX3RyYW5zY29kZXJfbWFz
ayB8PQogCQkJQklUKFRSQU5TQ09ERVJfRFNJXzApIHwgQklUKFRSQU5TQ09ERVJfRFNJXzEpOwog
Ci0JaWYgKEhBU19UUkFOU0NPREVSKGRldl9wcml2LCBUUkFOU0NPREVSX0VEUCkpCi0JCXBhbmVs
X3RyYW5zY29kZXJfbWFzayB8PSBCSVQoVFJBTlNDT0RFUl9FRFApOwotCiAJLyoKIAkgKiBUaGUg
cGlwZS0+dHJhbnNjb2RlciBtYXBwaW5nIGlzIGZpeGVkIHdpdGggdGhlIGV4Y2VwdGlvbiBvZiB0
aGUgZURQCiAJICogYW5kIERTSSB0cmFuc2NvZGVycyBoYW5kbGVkIGJlbG93LgpAQCAtMTA5Mjcs
OSArMTA5MjQsOCBAQCBzdGF0aWMgYm9vbCBoc3dfZ2V0X3RyYW5zY29kZXJfc3RhdGUoc3RydWN0
IGludGVsX2NydGMgKmNydGMsCiAJICogWFhYOiBEbyBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldF9p
Zl9lbmFibGVkIGJlZm9yZSByZWFkaW5nIHRoaXMgKGZvcgogCSAqIGNvbnNpc3RlbmN5IGFuZCBs
ZXNzIHN1cnByaXNpbmcgY29kZTsgaXQncyBpbiBhbHdheXMgb24gcG93ZXIpLgogCSAqLwotCWZv
cl9lYWNoX3NldF9iaXQocGFuZWxfdHJhbnNjb2RlciwKLQkJCSAmcGFuZWxfdHJhbnNjb2Rlcl9t
YXNrLAotCQkJIEFSUkFZX1NJWkUoSU5URUxfSU5GTyhkZXZfcHJpdiktPnRyYW5zX29mZnNldHMp
KSB7CisJZm9yX2VhY2hfY3B1X3RyYW5zY29kZXJfbWFza2VkKGRldl9wcml2LCBwYW5lbF90cmFu
c2NvZGVyLAorCQkJCSAgICAgICBwYW5lbF90cmFuc2NvZGVyX21hc2spIHsKIAkJYm9vbCBmb3Jj
ZV90aHJ1ID0gZmFsc2U7CiAJCWVudW0gcGlwZSB0cmFuc19waXBlOwogCi0tIAoyLjI0LjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

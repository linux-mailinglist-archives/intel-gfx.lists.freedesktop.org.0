Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 327F027DCB7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 01:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C95B6E3F9;
	Tue, 29 Sep 2020 23:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2BEC6E3F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 23:34:54 +0000 (UTC)
IronPort-SDR: IIt1WIQViV1dZ6IjY/9jpMxpSHHoWocJJzZqzQ7ZXcUaoJHkTxxOcQPik7nX/+G4Elo14UZYIG
 7T/ZKgJfO4Ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159700315"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="159700315"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 16:34:54 -0700
IronPort-SDR: XQujO/s6DXVmtHyvWvxoPDZMAXeCoDNB+++800FVKFqik+idvEqsRb2eZHZ31vFp1pjzwz6gzs
 nUC27LHD5faA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="350462019"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 Sep 2020 16:34:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 02:34:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 02:34:39 +0300
Message-Id: <20200929233449.32323-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/11] drm/i915: s/pre_empemph/preemph/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
bWFuYWdlZCB0byBmdW1ibGUgc29tZSBmdW5jdGlvbnMgbmFtZXMuIEZpeCB0aGVtLgoKU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA4ICsrKystLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA1NGE0YjgxZWEzZmYuLmZmOTY1
NDBjODYxMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNDE2
NywxMiArNDE2NywxMiBAQCBzdGF0aWMgdTggaW50ZWxfZHBfdm9sdGFnZV9tYXhfMyhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQogCXJldHVybiBEUF9UUkFJTl9WT0xUQUdFX1NXSU5HX0xFVkVM
XzM7CiB9CiAKLXN0YXRpYyB1OCBpbnRlbF9kcF9wcmVfZW1wZW1waF9tYXhfMihzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQorc3RhdGljIHU4IGludGVsX2RwX3ByZWVtcGhfbWF4XzIoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkKIHsKIAlyZXR1cm4gRFBfVFJBSU5fUFJFX0VNUEhfTEVWRUxf
MjsKIH0KIAotc3RhdGljIHU4IGludGVsX2RwX3ByZV9lbXBlbXBoX21heF8zKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApCitzdGF0aWMgdTggaW50ZWxfZHBfcHJlZW1waF9tYXhfMyhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQogewogCXJldHVybiBEUF9UUkFJTl9QUkVfRU1QSF9MRVZFTF8z
OwogfQpAQCAtNzk1MywxMCArNzk1MywxMCBAQCBib29sIGludGVsX2RwX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiAJaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYp
IHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpIHx8CiAJICAgIChIQVNfUENIX1NQTElUKGRldl9w
cml2KSAmJiBwb3J0ICE9IFBPUlRfQSkpIHsKLQkJZGlnX3BvcnQtPmRwLnByZWVtcGhfbWF4ID0g
aW50ZWxfZHBfcHJlX2VtcGVtcGhfbWF4XzM7CisJCWRpZ19wb3J0LT5kcC5wcmVlbXBoX21heCA9
IGludGVsX2RwX3ByZWVtcGhfbWF4XzM7CiAJCWRpZ19wb3J0LT5kcC52b2x0YWdlX21heCA9IGlu
dGVsX2RwX3ZvbHRhZ2VfbWF4XzM7CiAJfSBlbHNlIHsKLQkJZGlnX3BvcnQtPmRwLnByZWVtcGhf
bWF4ID0gaW50ZWxfZHBfcHJlX2VtcGVtcGhfbWF4XzI7CisJCWRpZ19wb3J0LT5kcC5wcmVlbXBo
X21heCA9IGludGVsX2RwX3ByZWVtcGhfbWF4XzI7CiAJCWRpZ19wb3J0LT5kcC52b2x0YWdlX21h
eCA9IGludGVsX2RwX3ZvbHRhZ2VfbWF4XzI7CiAJfQogCi0tIAoyLjI2LjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

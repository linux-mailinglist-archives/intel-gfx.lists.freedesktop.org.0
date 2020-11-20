Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 575C02BB626
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 20:57:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D6F6E8D3;
	Fri, 20 Nov 2020 19:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3286A6E8D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 19:57:51 +0000 (UTC)
IronPort-SDR: G7+YzkY/X1RW+LgHUP8fd6hGFGC9MsNdo+vOkLkWHsm6v6hvqmOd/RFvyb63rNtIdZjgJl2p6h
 60Zd9/JPMkNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="168963920"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="168963920"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 11:57:50 -0800
IronPort-SDR: d129czfMih+0IMr60PHo+IVITC1TWVH9MBtZDRwvHnaWwgwOX81FVcQAzolU1uZXv6fOA3bj/O
 XnHGryqnN9rw==
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="533672237"
Received: from ffoarta-mobl1.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.212.152.232])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 11:57:49 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Nov 2020 11:57:48 -0800
Message-Id: <20201120195748.99265-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Warn about types of backlight
 not handled
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

UmlnaHQgbm93IHdlIGFyZSBvbmx5IGV4cGxpY2l0bHkgaGFuZGxpbmcgdGhlIGJhY2tsaWdodCBv
ZiB0eXBlcwpJTlRFTF9CQUNLTElHSFRfVkVTQV9FRFBfQVVYX0lOVEVSRkFDRSwgSU5URUxfQkFD
S0xJR0hUX0RTSV9EQ1MgYW5kCklOVEVMX0JBQ0tMSUdIVF9ESVNQTEFZX0RESSBhbGwgb3RoZXJz
IGFyZSBiZWluZyBoYW5kbGVkIGFzCklOVEVMX0JBQ0tMSUdIVF9ESVNQTEFZX0RESShzb3V0aCBk
aXNwbGF5IGVuZ2luZSBQV00pIGJ1dCB0aGF0Cm1pZ2h0IG5vdCBiZSB0aGUgaW50ZW5kZWQgSFcg
dXNhZ2UsIHNvIGxldHMgd2FybiB0byBpZGVudGlmeSB0aG9zZQpzeXN0ZW1zIGFuZCBpbXBsZW1l
bnQgaXQgcHJvcGVybHkgaWYgbmVlZGVkLgoKQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5j
IHwgMTUgKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYwppbmRleCA5ZjIzYmFj
MGQ3OTIuLjM2ODcyMjUzNjQ2MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wYW5lbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcGFuZWwuYwpAQCAtMjAyMyw2ICsyMDIzLDIxIEBAIGludGVsX3BhbmVsX2luaXRfYmFja2xp
Z2h0X2Z1bmNzKHN0cnVjdCBpbnRlbF9wYW5lbCAqcGFuZWwpCiAJc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yID0KIAkJY29udGFpbmVyX29mKHBhbmVsLCBzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yLCBwYW5lbCk7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjb25uZWN0b3ItPmJhc2UuZGV2KTsKKwllbnVtIGludGVsX2JhY2tsaWdodF90eXBlIHR5
cGUgPSBkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC50eXBlOworCisJaWYgKGRldl9wcml2LT5wYXJh
bXMuZW5hYmxlX2RwY2RfYmFja2xpZ2h0KQorCQl0eXBlID0gSU5URUxfQkFDS0xJR0hUX1ZFU0Ff
RURQX0FVWF9JTlRFUkZBQ0U7CisKKwlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKKwkJICAg
ICJDb25uZWN0b3IgJXMgYmFja2xpZ2h0IHR5cGUgJXUgY29udHJvbGxlciAldVxuIiwKKwkJICAg
IGNvbm5lY3Rvci0+YmFzZS5uYW1lLCB0eXBlLAorCQkgICAgZGV2X3ByaXYtPnZidC5iYWNrbGln
aHQuY29udHJvbGxlcik7CisKKwlpZiAodHlwZSAhPSBJTlRFTF9CQUNLTElHSFRfRElTUExBWV9E
REkgJiYKKwkgICAgdHlwZSAhPSBJTlRFTF9CQUNLTElHSFRfVkVTQV9FRFBfQVVYX0lOVEVSRkFD
RSAmJgorCSAgICB0eXBlICE9IElOVEVMX0JBQ0tMSUdIVF9EU0lfRENTKQorCQlkcm1fd2Fybigm
ZGV2X3ByaXYtPmRybSwgIkJhY2tsaWdodCB0eXBlICVpIG5vdCBwcm9wZXJseSBoYW5kbGVkXG4i
LAorCQkJIHR5cGUpOwogCiAJaWYgKGNvbm5lY3Rvci0+YmFzZS5jb25uZWN0b3JfdHlwZSA9PSBE
Uk1fTU9ERV9DT05ORUNUT1JfZURQICYmCiAJICAgIGludGVsX2RwX2F1eF9pbml0X2JhY2tsaWdo
dF9mdW5jcyhjb25uZWN0b3IpID09IDApCi0tIAoyLjI5LjIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

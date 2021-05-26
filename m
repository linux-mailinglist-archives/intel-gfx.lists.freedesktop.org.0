Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA47391E37
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 19:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C3CA6E949;
	Wed, 26 May 2021 17:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BBC16E949
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 17:36:03 +0000 (UTC)
IronPort-SDR: ZBl1ABgWG5nPq+Kz5OoizDHQEFyFAI9cwPDPCPevUKUpW6r8sE8lFN/lJi+vW7o1uhNkYrWjIp
 3bTTXm+xo4OA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="200626916"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="200626916"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 10:36:02 -0700
IronPort-SDR: +4kTwVC5/+MYuFwDLlWF4tViLhbNdCVGoEsC9bLA2BZeI+M7W3/eRSBLdedLUWIdAxQKhXC/tV
 jzt3kRWKX+BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="409355539"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 26 May 2021 10:36:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 May 2021 20:36:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 20:35:59 +0300
Message-Id: <20210526173600.27708-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/adl_p: Disable FIFO underrun
 recovery
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBGSUZPIHVuZGVycnVuIHJlY292ZXJ5IG1lY2hhbmlzbSBoYXMgYSBib2F0bG9hZCBvZiBjYXNl
cwp3aGVyZSBpdCBjYW4ndCBiZSB1c2VkLiBUaGUgZGVzY3JpcHRpb24gaXMgYWxzbyBhIGJpdCBh
bWJpZ3VvdXMKYXMgaXQgZG9lc24ndCBzcGVjaWZ5IHdoZXRoZXIgcGxhbmUgZG93bnNjYWxpbmcg
bmVlZHMgdG8gYmUgY29uc2lkZXJlZApvciBqdXN0IHBpcGUgZG93bnNjYWxpbmcuIFdlIG1heSBu
b3QgZXZlbiBoYXZlIHN1ZmZpY2llbnQgc3RhdGUKdHJhY2tpbmcgdG8gZGVjaWRlIHRoaXMgb24g
ZGVtYW5kLCBzbyBmb3Igbm93IGp1c3QgZGlzYWJsZSB0aGUKd2hvbGUgdGhpbmcuCgpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTUgKysr
KysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
ICB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZDFlZTk1NTEyMjgyLi5h
MmYzZDI1NWE5MDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC0yMjA4LDYgKzIyMDgsMjEgQEAgc3RhdGljIHZvaWQgaWNsX3NldF9waXBlX2No
aWNrZW4oc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJICogYWNyb3NzIHBpcGUKIAkgKi8KIAl0
bXAgfD0gUElYRUxfUk9VTkRJTkdfVFJVTkNfRkJfUEFTU1RIUlU7CisKKwkvKgorCSAqICJUaGUg
dW5kZXJydW4gcmVjb3ZlcnkgbWVjaGFuaXNtIHNob3VsZCBiZSBkaXNhYmxlZAorCSAqICB3aGVu
IHRoZSBmb2xsb3dpbmcgaXMgZW5hYmxlZCBmb3IgdGhpcyBwaXBlOgorCSAqICBXaURpCisJICog
IERvd25zY2FsaW5nICh0aGlzIGluY2x1ZGVzIFlVVjQyMCBmdWxsYmxlbmQpCisJICogIENPRwor
CSAqICBEU0MKKwkgKiAgUFNSMiIKKwkgKgorCSAqIEZJWE1FOiBlbmFibGUgd2hlbmV2ZXIgcG9z
c2libGUuLi4KKwkgKi8KKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQorCQl0bXAgfD0g
VU5ERVJSVU5fUkVDT1ZFUllfRElTQUJMRTsKKwogCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQ
SVBFX0NISUNLRU4ocGlwZSksIHRtcCk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4
IDQ5NzliNDk2NWE4Mi4uZTRkNjMzNmRhYjcxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAg
LTgzNjgsNiArODM2OCw3IEBAIGVudW0gewogI2RlZmluZSBfUElQRUNfQ0hJQ0tFTgkJCQkweDcy
MDM4CiAjZGVmaW5lIFBJUEVfQ0hJQ0tFTihwaXBlKQkJCV9NTUlPX1BJUEUocGlwZSwgX1BJUEVB
X0NISUNLRU4sXAogCQkJCQkJCSAgIF9QSVBFQl9DSElDS0VOKQorI2RlZmluZSAgIFVOREVSUlVO
X1JFQ09WRVJZX0RJU0FCTEUJCVJFR19CSVQoMzApCiAjZGVmaW5lICAgUElYRUxfUk9VTkRJTkdf
VFJVTkNfRkJfUEFTU1RIUlUgCSgxIDw8IDE1KQogI2RlZmluZSAgIFBFUl9QSVhFTF9BTFBIQV9C
WVBBU1NfRU4JCSgxIDw8IDcpCiAKLS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

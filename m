Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA172A6D17
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 17:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 149A18967F;
	Tue,  3 Sep 2019 15:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDA0089135
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 15:40:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 08:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="183590595"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 03 Sep 2019 08:40:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2019 18:40:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 18:40:18 +0300
Message-Id: <20190903154018.26357-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915: Fix DP-MST crtc_mask"
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Jonas=20=C3=85dahl?= <jadahl@gmail.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
aXMgcmV2ZXJ0cyBjb21taXQgNGVhY2VlYTNhMDBmOGU5MzZhN2Y0OGRjZDBjOTc1YTU3Zjg4OTMw
Zi4KClNldmVyYWwgdXNlcnNwYWNlIGNsaWVudHMgKG1vZGVzZXR0aW5nIGRkeCBhbmQgbXV0dGVy
K3dheWxhbmQgYXQgbGVhc3QpCmhhbmRsZSBlbmNvZGVyLnBvc3NpYmxlX2NydGNzIGluY29ycmVj
dGx5LiBXaGF0IHRoZXkgZXNzZW50aWFsbHkgZG8gaXMKdGhlIGZvbGxvd2luZzoKCnBvc3NpYmxl
X2NydGNzID0gfjA7CmZvcl9lYWNoX3Bvc3NpYmxlX2VuY29kZXIoY29ubmVjdG9yKQoJcG9zc2li
bGVfY3J0Y3MgJj0gZW5jb2Rlci0+cG9zc2libGVfY3J0Y3M7CgpJZS4gdGhleSBjYWxjdWxhdGUg
dGhlIGludGVyc2VjdGlvbiBvZiB0aGUgcG9zc2libGVfY3J0Y3MKZm9yIHRoZSBjb25uZWN0b3Ig
d2hlbiB0aGV5IHJlYWxseSBzaG91bGQgYmUgY2FsY3VsYXRpbmcgdGhlCnVuaW9uIGluc3RlYWQu
CgpJbiBvdXIgY2FzZSBlYWNoIE1TVCBlbmNvZGVyIG5vdyBoYXMganVzdCBvbmUgdW5pcXVlIGJp
dCBzZXQsCmFuZCBzbyB0aGUgaW50ZXJzZWN0aW9uIGlzIGFsd2F5cyB6ZXJvLiBUaGUgZW5kIHJl
c3VsdCBpcyB0aGF0Ck1TVCBjb25uZWN0b3JzIGNhbid0IGJlIGxpdCB1cCBiZWNhdXNlIG5vIGNy
dGMgY2FuIGJlIGZvdW5kIHRvCmRyaXZlIHRoZW0uCgpJJ3ZlIHN1Ym1pdHRlZCBhIGZpeCBmb3Ig
dGhlIG1vZGVzZXR0aW5nIGRkeCBbMV0sIGFuZCBjb21wbGFpbmVkCm9uICN3YXlsYW5kIGFib3V0
IG11dHRlciwgc28gaG9wZWZ1bGx5IHRoZSBzaXR1YXRpb24gd2lsbCBpbXByb3ZlCmluIHRoZSBm
dXR1cmUuIEluIHRoZSBtZWFudGltZSB3ZSBoYXZlIHJlZ3Jlc3Npb24sIGFuZCBzbyBtdXN0IGdv
CmJhY2sgdG8gdGhlIG9sZCB3YXkgb2YgbWlzY29uZmlndXJpbmcgcG9zc2libGVfY3J0Y3MgaW4g
dGhlIGtlcm5lbC4KClsxXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcveG9yZy94c2Vy
dmVyL21lcmdlX3JlcXVlc3RzLzI3NwoKQ2M6IEpvbmFzIMOFZGFobCA8amFkYWhsQGdtYWlsLmNv
bT4KQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29t
PgpDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpD
YzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+CkNj
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQnVnemlsbGE6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTUwNwpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwppbmRleCA2ZGYyNDBhMDFiOGMuLjM3
MzY2ZjgxMjU1YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jCkBAIC02MTUsNyArNjE1LDcgQEAgaW50ZWxfZHBfY3JlYXRlX2Zha2VfbXN0X2VuY29kZXIo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsIGVudW0KIAlpbnRlbF9l
bmNvZGVyLT50eXBlID0gSU5URUxfT1VUUFVUX0RQX01TVDsKIAlpbnRlbF9lbmNvZGVyLT5wb3dl
cl9kb21haW4gPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3dlcl9kb21haW47CiAJaW50ZWxfZW5j
b2Rlci0+cG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Ci0JaW50ZWxfZW5jb2Rlci0+
Y3J0Y19tYXNrID0gQklUKHBpcGUpOworCWludGVsX2VuY29kZXItPmNydGNfbWFzayA9IDB4NzsK
IAlpbnRlbF9lbmNvZGVyLT5jbG9uZWFibGUgPSAwOwogCiAJaW50ZWxfZW5jb2Rlci0+Y29tcHV0
ZV9jb25maWcgPSBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWc7Ci0tIAoyLjIxLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

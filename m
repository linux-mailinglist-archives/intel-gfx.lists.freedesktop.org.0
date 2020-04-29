Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 863CC1BD91C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1BC6E89A;
	Wed, 29 Apr 2020 10:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0416E89A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:10:37 +0000 (UTC)
IronPort-SDR: tSxh25cY5oyzC15FHuDNN9hRy0WvgJJklVCVEfAwtVkega3xiW6F6VSQhTG7yyN3zcWU9g3/BQ
 D1tJUXINDctA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:10:37 -0700
IronPort-SDR: 0v35DL5YuPtrwRTAlkFboyhKlbPeTyGQADiOZ1FuIcoGnMkoEh/Fj23yn3ag3h+vRsAkiXGIHb
 UtNKHEN0aFDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="249417280"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 29 Apr 2020 03:10:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:10:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:22 +0300
Message-Id: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: FBC fixes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkEg
YnVuY2ggb2YgRkJDIGZpeGVzLiBUaGUgbW9zdCBpbXBvcnRhbnQgdGhpbmcgaXMgZml4aW5nIGds
aytsaW5lYXIsCmJ1dCBpbmNsdWRlZCBhIHBpbGUgb2Ygc3R1ZmYgSSBoYWQgbHlpbmcgYWJvdXQg
Zm9yIG9sZGVyIHBsYXRmb3JtcwphcyB3ZWxsLgoKVmlsbGUgU3lyasOkbMOkICgxMik6CiAgZHJt
L2k5MTUvZmJjOiBSZXF1aXJlIGxpbmVhciBmYiBzdHJpZGUgdG8gYmUgbXVsdGlwbGUgb2YgNTEy
IGJ5dGVzIG9uCiAgICBnZW45L2dsawogIGRybS9pOTE1L2ZiYzogVXNlIHRoZSBjb3JyZWN0IHBs
YW5lIHN0cmlkZQogIGRybS9pOTE1L2ZiYzogRml4IGZlbmNlX3lfb2Zmc2V0IGhhbmRsaW5nCiAg
ZHJtL2k5MTUvZmJjOiBGaXggbnVrZSBmb3IgcHJlLXNuYiBwbGF0Zm9ybXMKICBkcm0vaTkxNS9m
YmM6IEVuYWJsZSBmYmMgb24gaTg2NQogIGRybS9pOTE1L2ZiYzogRG9uJ3QgY2xlYXIgYnVzeV9i
aXRzIGZvciBvcmlnaW49PUdUVAogIGRybS9pOTE1L2ZiYzogQWxsb3cgRkJDIHRvIHJlY29tcHJl
c3MgYWZ0ZXIgYSAzRCB3b3JrbG9hZCBvbiBpODV4L2k4NjUKICBkcm0vaTkxNS9mYmM6IFBhcmFt
ZXRyaXplIEZCQ19DT05UUk9MCiAgZHJtL2k5MTUvZmJjOiBTdG9yZSB0aGUgZmJjMSBjb21wcmVz
c2lvbiBpbnRlcnZhbCBpbiB0aGUgcGFyYW1zCiAgZHJtL2k5MTUvZmJjOiBSZWR1Y2UgZmJjMSBj
b21wcmVzc2lvbiBpbnRlcnZhbCB0byAxIHNlY29uZAogIGRybS9pOTE1OiBGaXggZzR4IGZiYyB3
YXRlcm1hcmsgZW5hYmxlCiAgZHJtL2k5MTU6IFN1cHByZXNzIHNwdXJpb3VzIHVuZGVycnVucyBv
biBnZW4yCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAg
MTggKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyAgICAgfCAxMDQg
KysrKysrKysrKysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAg
ICAgICAgICAgfCAgIDggKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAg
ICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAg
ICAgIHwgIDE5ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAg
ICAgIHwgIDQzICsrKysrLS0tCiA3IGZpbGVzIGNoYW5nZWQsIDEzNSBpbnNlcnRpb25zKCspLCA1
OSBkZWxldGlvbnMoLSkKCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=

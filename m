Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8126E148F01
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 21:02:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF6872B9B;
	Fri, 24 Jan 2020 20:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA6A72B9B;
 Fri, 24 Jan 2020 20:02:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 12:02:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="260352957"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 24 Jan 2020 12:02:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2020 22:02:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 24 Jan 2020 22:02:29 +0200
Message-Id: <20200124200231.10517-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
References: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/edid: Add a FIXME about DispID CEA data
 block revision
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
Cc: intel-gfx@lists.freedesktop.org, Andres Rodriguez <andresx7@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
ZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IHRoZSBEaXNwSUQgQ0VBIGRhdGEgYmxvY2sgcmV2aXNpb24K
bWVhbnMuIFRoZSBzcGVjIGRvZXNuJ3Qgc2F5LiBJIGd1ZXNzIHNvbWUgRGlzcElEIG11c3QgaGF2
ZQphIHZhbHVlIG9mID49IDMgaW4gdGhlcmUgb3IgZWxzZSB3ZSBnZW5lcmFsbHkgd291bGRuJ3QK
ZXZlbiBwYXJzZSB0aGUgQ0VBIGRhdGEgYmxvY2tzLiBPciBkb2VzIGFsbCB0aGlzIGNvZGUKYWN0
dWFsbHkgbm90IGRvIGFueXRoaW5nPwoKQ2M6IEFuZHJlcyBSb2RyaWd1ZXogPGFuZHJlc3g3QGdt
YWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyB8IDcgKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZWRpZC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9lZGlkLmMKaW5kZXggMDM2
OWE1NGUzZDMyLi5mZDliNzI0MDY3YTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZWRpZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCkBAIC0zOTc3LDYgKzM5Nzcs
MTMgQEAgY2VhX2RiX3RhZyhjb25zdCB1OCAqZGIpCiBzdGF0aWMgaW50CiBjZWFfcmV2aXNpb24o
Y29uc3QgdTggKmNlYSkKIHsKKwkvKgorCSAqIEZJWE1FIGlzIHRoaXMgY29ycmVjdCBmb3IgdGhl
IERpc3BJRCB2YXJpYW50PworCSAqIFRoZSBEaXNwSUQgc3BlYyBkb2Vzbid0IHJlYWxseSBzcGVj
aWZ5IHdoZXRoZXIKKwkgKiB0aGlzIGlzIHRoZSByZXZpc2lvbiBvZiB0aGUgQ0VBIGV4dGVuc2lv
biBvcgorCSAqIHRoZSBEaXNwSUQgQ0VBIGRhdGEgYmxvY2suIEFuZCB0aGUgb25seSB2YWx1ZQor
CSAqIGdpdmVuIGFzIGFuIGV4YW1wbGUgaXMgMC4KKwkgKi8KIAlyZXR1cm4gY2VhWzFdOwogfQog
Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=

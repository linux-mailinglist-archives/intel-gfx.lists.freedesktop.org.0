Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E949AAC6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1FA16EC2C;
	Fri, 23 Aug 2019 08:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A437D6EC2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702011"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:36 -0700
Message-Id: <20190823082055.5992-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 04/23] drm/i915/bdw+: Enable PSR in any eDP
 port
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpGcm9t
IEJEVysgdGhlIFBTUiByZWdpc3RlcnMgbW92ZWQgZnJvbSBERElBIHRvIHRyYW5zY29kZXIsIHNv
IGFueSBwb3J0CndpdGggYSBlRFAgcGFuZWwgY29ubmVjdGVkIGNhbiBoYXZlIFBTUiwgc28gbGV0
cyByZW1vdmUgdGhpcwpsaW1pdGF0aW9uLgoKQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5h
a2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3Vw
dGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCA4MWUz
NjE5Y2Q5MDUuLjAxNzJiODI4NThkOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCkBAIC01ODgsMTEgKzU4OCw5IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29u
ZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAKIAkvKgogCSAqIEhTVyBzcGVjIGV4cGxp
Y2l0bHkgc2F5cyBQU1IgaXMgdGllZCB0byBwb3J0IEEuCi0JICogQkRXKyBwbGF0Zm9ybXMgaGF2
ZSBhIGluc3RhbmNlIG9mIFBTUiByZWdpc3RlcnMgcGVyIHRyYW5zY29kZXIgYnV0Ci0JICogZm9y
IG5vdyBpdCBvbmx5IHN1cHBvcnRzIG9uZSBpbnN0YW5jZSBvZiBQU1IsIHNvIGxldHMga2VlcCBp
dAotCSAqIGhhcmRjb2RlZCB0byBQT1JUX0EKKwkgKiBCRFcrIHBsYXRmb3JtcyBoYXZlIGEgaW5z
dGFuY2Ugb2YgUFNSIHJlZ2lzdGVycyBwZXIgdHJhbnNjb2Rlci4KIAkgKi8KLQlpZiAoZGlnX3Bv
cnQtPmJhc2UucG9ydCAhPSBQT1JUX0EpIHsKKwlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikgJiYg
ZGlnX3BvcnQtPmJhc2UucG9ydCAhPSBQT1JUX0EpIHsKIAkJRFJNX0RFQlVHX0tNUygiUFNSIGNv
bmRpdGlvbiBmYWlsZWQ6IFBvcnQgbm90IHN1cHBvcnRlZFxuIik7CiAJCXJldHVybjsKIAl9Ci0t
IAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

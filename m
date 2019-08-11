Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5EF89369
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 21:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3686E397;
	Sun, 11 Aug 2019 19:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A78F6E2F8
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 19:51:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Aug 2019 12:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,374,1559545200"; d="scan'208";a="375028521"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2019 12:51:40 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.120])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7BJpbx1019994; Sun, 11 Aug 2019 20:51:39 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 11 Aug 2019 19:51:31 +0000
Message-Id: <20190811195132.9660-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190811195132.9660-1-michal.wajdeczko@intel.com>
References: <20190811195132.9660-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/uc: Update messages from fw upload
 step
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3VyIG9sZCBtZXNzYWdlcyB3ZXJlIHJlZHVuZGFudCBvciBtaXNsZWFkaW5nIChhcyBsb2FkZWQg
aXMKbm90IHRoZSBzYW1lIGFzIHJ1bm5pbmcpLiBLZWVwIG9ubHkgb25lIG1lc3NhZ2UgZm9yIGRl
YnVnLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0Bp
bnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDE0ICsrKy0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwppbmRleCAyMjgyOGE3
NjYyNmQuLjU2NjUwMTlkMzQxYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5jCkBAIC00OTMsOSArNDkzLDYgQEAgaW50IGludGVsX3VjX2Z3X3VwbG9hZChzdHJ1Y3Qg
aW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAogewogCWludCBlcnI7CiAK
LQlEUk1fREVCVUdfRFJJVkVSKCIlcyBmdyBsb2FkICVzXG4iLAotCQkJIGludGVsX3VjX2Z3X3R5
cGVfcmVwcih1Y19mdy0+dHlwZSksIHVjX2Z3LT5wYXRoKTsKLQogCS8qIG1ha2Ugc3VyZSB0aGUg
c3RhdHVzIHdhcyBjbGVhcmVkIHRoZSBsYXN0IHRpbWUgd2UgcmVzZXQgdGhlIHVjICovCiAJR0VN
X0JVR19PTihpbnRlbF91Y19md19pc19sb2FkZWQodWNfZncpKTsKIApAQCAtNTE0LDE0ICs1MTEs
OSBAQCBpbnQgaW50ZWxfdWNfZndfdXBsb2FkKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0
cnVjdCBpbnRlbF9ndCAqZ3QsCiAJCWdvdG8gZmFpbDsKIAogCXVjX2Z3LT5zdGF0dXMgPSBJTlRF
TF9VQ19GSVJNV0FSRV9UUkFOU0ZFUlJFRDsKLQlEUk1fREVCVUdfRFJJVkVSKCIlcyBmdyB4ZmVy
IGNvbXBsZXRlZFxuIiwKLQkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpKTsK
LQotCURSTV9JTkZPKCIlczogTG9hZGVkIGZpcm13YXJlICVzICh2ZXJzaW9uICV1LiV1KVxuIiwK
LQkJIGludGVsX3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksCi0JCSB1Y19mdy0+cGF0aCwK
LQkJIHVjX2Z3LT5tYWpvcl92ZXJfZm91bmQsIHVjX2Z3LT5taW5vcl92ZXJfZm91bmQpOwotCisJ
RFJNX0RFVl9ERUJVR19EUklWRVIoZ3QtPmk5MTUtPmRybS5kZXYsICIlcyBmaXJtd2FyZSAlczog
JXNcbiIsCisJCQkgICAgIGludGVsX3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksIHVjX2Z3
LT5wYXRoLAorCQkJICAgICBpbnRlbF91Y19md19zdGF0dXNfcmVwcih1Y19mdy0+c3RhdHVzKSk7
CiAJcmV0dXJuIDA7CiAKIGZhaWw6Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

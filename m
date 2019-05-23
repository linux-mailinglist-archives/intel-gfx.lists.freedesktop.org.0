Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CDF28DD5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA4D89F24;
	Thu, 23 May 2019 23:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108EE6E094
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,504,1549958400"; d="scan'208";a="175934333"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga002.fm.intel.com with ESMTP; 23 May 2019 16:31:47 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0t023503; Fri, 24 May 2019 00:31:46 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:49 +0000
Message-Id: <20190523233049.28020-23-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 22/22] HAX: turn on GuC/HuC auto mode
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

U2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCB8IDIgKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jICAgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMu
aAppbmRleCAzZjE0ZTk4ODFhMGQuLmUyOGFlMjNkZTUxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BhcmFtcy5oCkBAIC01NCw3ICs1NCw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsKIAlwYXJhbShp
bnQsIGRpc2FibGVfcG93ZXJfd2VsbCwgLTEpIFwKIAlwYXJhbShpbnQsIGVuYWJsZV9pcHMsIDEp
IFwKIAlwYXJhbShpbnQsIGludmVydF9icmlnaHRuZXNzLCAwKSBcCi0JcGFyYW0oaW50LCBlbmFi
bGVfZ3VjLCAwKSBcCisJcGFyYW0oaW50LCBlbmFibGVfZ3VjLCAtMSkgXAogCXBhcmFtKGludCwg
Z3VjX2xvZ19sZXZlbCwgLTEpIFwKIAlwYXJhbShjaGFyICosIGd1Y19maXJtd2FyZV9wYXRoLCBO
VUxMKSBcCiAJcGFyYW0oY2hhciAqLCBodWNfZmlybXdhcmVfcGF0aCwgTlVMTCkgXApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9odWMuYwppbmRleCA4NTcyYTA1ODhlZmMuLjMzZDE3Y2E1MTUyZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfaHVjLmMKQEAgLTEzOSw3ICsxMzksNyBAQCBpbnQgaW50ZWxfaHVjX2F1
dGgoc3RydWN0IGludGVsX2h1YyAqaHVjKQogCQkJCQlodWMtPnN0YXR1cy5yZWcsCiAJCQkJCWh1
Yy0+c3RhdHVzLm1hc2ssCiAJCQkJCWh1Yy0+c3RhdHVzLnZhbHVlLAotCQkJCQkyLCA1MCwgTlVM
TCk7CisJCQkJCTIsIDE1MCwgTlVMTCk7CiAJaWYgKHJldCkgewogCQlEUk1fRVJST1IoIkh1Qzog
RmlybXdhcmUgbm90IHZlcmlmaWVkICVkXG4iLCByZXQpOwogCQlnb3RvIGZhaWw7Ci0tIAoyLjE5
LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

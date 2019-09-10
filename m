Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D0FAF312
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 00:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0441B6E9D7;
	Tue, 10 Sep 2019 22:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89C36E9D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 22:52:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 15:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="384496301"
Received: from anusha.jf.intel.com ([10.54.75.179])
 by fmsmga005.fm.intel.com with ESMTP; 10 Sep 2019 15:52:54 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:42:18 -0700
Message-Id: <20190910224218.389-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190910224218.389-1-anusha.srivatsa@intel.com>
References: <20190910224218.389-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] HAX: force enable_guc=2
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

U2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wYXJhbXMuaAppbmRleCBkMjlhZGUzYjdkZTYuLmY5ZmJiMWYyZmFiZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BhcmFtcy5oCkBAIC01NCw3ICs1NCw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsK
IAlwYXJhbShpbnQsIGRpc2FibGVfcG93ZXJfd2VsbCwgLTEpIFwKIAlwYXJhbShpbnQsIGVuYWJs
ZV9pcHMsIDEpIFwKIAlwYXJhbShpbnQsIGludmVydF9icmlnaHRuZXNzLCAwKSBcCi0JcGFyYW0o
aW50LCBlbmFibGVfZ3VjLCAwKSBcCisJcGFyYW0oaW50LCBlbmFibGVfZ3VjLCAyKSBcCiAJcGFy
YW0oaW50LCBndWNfbG9nX2xldmVsLCAtMSkgXAogCXBhcmFtKGNoYXIgKiwgZ3VjX2Zpcm13YXJl
X3BhdGgsIE5VTEwpIFwKIAlwYXJhbShjaGFyICosIGh1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBc
Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==

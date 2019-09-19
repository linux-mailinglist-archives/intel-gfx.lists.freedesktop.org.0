Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A40B8248
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 22:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489D36FB18;
	Thu, 19 Sep 2019 20:12:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24DB06FB18
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 20:12:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 13:12:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,526,1559545200"; d="scan'208";a="188193466"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga007.fm.intel.com with ESMTP; 19 Sep 2019 13:12:23 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 13:12:04 -0700
Message-Id: <20190919201204.9691-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190919201204.9691-1-daniele.ceraolospurio@intel.com>
References: <20190919201204.9691-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] HAX: force enable_guc=2
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKU2lnbmVk
LW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJh
bXMuaAppbmRleCBkMjlhZGUzYjdkZTYuLmY5ZmJiMWYyZmFiZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BhcmFtcy5oCkBAIC01NCw3ICs1NCw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsKIAlwYXJh
bShpbnQsIGRpc2FibGVfcG93ZXJfd2VsbCwgLTEpIFwKIAlwYXJhbShpbnQsIGVuYWJsZV9pcHMs
IDEpIFwKIAlwYXJhbShpbnQsIGludmVydF9icmlnaHRuZXNzLCAwKSBcCi0JcGFyYW0oaW50LCBl
bmFibGVfZ3VjLCAwKSBcCisJcGFyYW0oaW50LCBlbmFibGVfZ3VjLCAyKSBcCiAJcGFyYW0oaW50
LCBndWNfbG9nX2xldmVsLCAtMSkgXAogCXBhcmFtKGNoYXIgKiwgZ3VjX2Zpcm13YXJlX3BhdGgs
IE5VTEwpIFwKIAlwYXJhbShjaGFyICosIGh1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBcCi0tIAoy
LjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

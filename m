Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CA82BA3E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 20:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2B089A77;
	Mon, 27 May 2019 18:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7116689A77
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 18:36:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 11:36:59 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 27 May 2019 11:36:58 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RIaJDO007368; Mon, 27 May 2019 19:36:57 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 18:36:13 +0000
Message-Id: <20190527183613.17076-18-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190527183613.17076-1-michal.wajdeczko@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 17/17] HAX: Turn on GuC/HuC auto mode
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

UnVuIEd1QywgcnVuIQoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndh
amRlY3prb0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMu
aCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCmluZGV4IDNmMTRlOTg4MWEwZC4uZTI4YWUyM2Rl
NTE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKQEAgLTU0LDcgKzU0LDcgQEAgc3Ry
dWN0IGRybV9wcmludGVyOwogCXBhcmFtKGludCwgZGlzYWJsZV9wb3dlcl93ZWxsLCAtMSkgXAog
CXBhcmFtKGludCwgZW5hYmxlX2lwcywgMSkgXAogCXBhcmFtKGludCwgaW52ZXJ0X2JyaWdodG5l
c3MsIDApIFwKLQlwYXJhbShpbnQsIGVuYWJsZV9ndWMsIDApIFwKKwlwYXJhbShpbnQsIGVuYWJs
ZV9ndWMsIC0xKSBcCiAJcGFyYW0oaW50LCBndWNfbG9nX2xldmVsLCAtMSkgXAogCXBhcmFtKGNo
YXIgKiwgZ3VjX2Zpcm13YXJlX3BhdGgsIE5VTEwpIFwKIAlwYXJhbShjaGFyICosIGh1Y19maXJt
d2FyZV9wYXRoLCBOVUxMKSBcCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==

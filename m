Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5092438837D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 02:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F906EAB4;
	Wed, 19 May 2021 00:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7196E111
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:06:53 +0000 (UTC)
IronPort-SDR: IXjFeQOLFVUT4BG8rI7AsFG4+YPhLdGAOeba7YRr0vaIMGz0dzv25RBkfuBeHnN1clS2UzX5eQ
 oTZb23rMPopg==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264768407"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="264768407"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
IronPort-SDR: SY3vl4adRUYeXVqMplJrM6fSFLT+DZogMjUV7RN6diS+4fLW69EYjxP1a9KfrJ93PbUW0H8KRV
 NjxfUf0Bx4Iw==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="473214760"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 17:06:14 -0700
Message-Id: <20210519000625.3184321-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519000625.3184321-1-lucas.demarchi@intel.com>
References: <20210519000625.3184321-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 06/17] drm/i915/adl_p: Don't config MBUS and DBUF
 during display initialization
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBbGRl
cmxha2UtUCBkb24ndCBoYXZlIHByb2dyYW1pbmcgc2VxdWVuY2VzIGZvciBNQlVTIG9yIERCVUYg
ZHVyaW5nCmRpc3BsYXkgaW5pdGlhbGl6YWl0b24sIGluc3RlYWQgaXQgcmVxdWlyZXMgcHJvZ3Jh
bWluZyB0byB0aG9zZQpyZWdpc3RlcnMgZHVyaW5nIG1vZGVzZXQgYmVjYXVzZSBpdCB0byBkZXBl
bmQgb24gdGhlIHBpcGVzIGxlZnQKZW5hYmxlZC4KCkJzcGVjOiA0OTIxMwpDYzogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24g
VGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFN0YW5pc2xhdiBM
aXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDYgKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCA1NGM2ZDY1MDExZWUuLmNhM2Qz
MWMzMThmYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKQEAgLTUyNDUsNiArNTI0NSw5IEBAIHN0YXRpYyB2b2lkIGdlbjEyX2Ri
dWZfc2xpY2VzX2NvbmZpZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJ
ZW51bSBkYnVmX3NsaWNlIHNsaWNlOwogCisJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkK
KwkJcmV0dXJuOworCiAJZm9yX2VhY2hfZGJ1Zl9zbGljZShkZXZfcHJpdiwgc2xpY2UpCiAJCWlu
dGVsX2RlX3JtdyhkZXZfcHJpdiwgREJVRl9DVExfUyhzbGljZSksCiAJCQkgICAgIERCVUZfVFJB
Q0tFUl9TVEFURV9TRVJWSUNFX01BU0ssCkBAIC01MjU2LDYgKzUyNTksOSBAQCBzdGF0aWMgdm9p
ZCBpY2xfbWJ1c19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAl1bnNp
Z25lZCBsb25nIGFib3hfcmVncyA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5hYm94X21hc2s7CiAJ
dTMyIG1hc2ssIHZhbCwgaTsKIAorCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikpCisJCXJl
dHVybjsKKwogCW1hc2sgPSBNQlVTX0FCT1hfQlRfQ1JFRElUX1BPT0wxX01BU0sgfAogCQlNQlVT
X0FCT1hfQlRfQ1JFRElUX1BPT0wyX01BU0sgfAogCQlNQlVTX0FCT1hfQl9DUkVESVRfTUFTSyB8
Ci0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=

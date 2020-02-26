Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 373B516F537
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 02:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B286E077;
	Wed, 26 Feb 2020 01:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30E4E6E071
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 01:45:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:45:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; d="scan'208";a="438261745"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga006.fm.intel.com with ESMTP; 25 Feb 2020 17:45:19 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 17:45:51 -0800
Message-Id: <20200226014603.42190-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200226014603.42190-1-jose.souza@intel.com>
References: <20200226014603.42190-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/14] drm/i915/tgl: Extend Wa_1409825376
 stepping
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

VGhpcyB3b3JrYXJvdW5kIGlzIG9ubHkgZml4ZWQgaW4gQzAgc3RlcHBpbmcgdG8gZXh0ZW5kIGl0
IHRvIEIwIHRvby4KCkJTcGVjOiA1Mjg5MApDYzogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhh
a3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDQ5NDg0ZDVmNWY4NC4uZTZkOWVj
MTI0ZGI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTY4NTIsNyArNjg1Miw3IEBAIHN0
YXRpYyB2b2lkIHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiAJCSAgIEk5MTVfUkVBRChQT1dFUkdBVEVfRU5BQkxFKSB8IHZkX3BnX2VuYWJs
ZSk7CiAKIAkvKiBXYV8xNDA5ODI1Mzc2OnRnbCAocHJlLXByb2QpKi8KLQlpZiAoSVNfVEdMX0RJ
U1BfUkVWSUQoZGV2X3ByaXYsIFRHTF9ESVNQX1JFVklEX0EwLCBUR0xfRElTUF9SRVZJRF9BMCkp
CisJaWYgKElTX1RHTF9ESVNQX1JFVklEKGRldl9wcml2LCBUR0xfRElTUF9SRVZJRF9BMCwgVEdM
X0RJU1BfUkVWSURfQjApKQogCQlJOTE1X1dSSVRFKEdFTjlfQ0xLR0FURV9ESVNfMywgSTkxNV9S
RUFEKEdFTjlfQ0xLR0FURV9ESVNfMykgfAogCQkJICAgVEdMX1ZSSF9HQVRJTkdfRElTKTsKIH0K
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==

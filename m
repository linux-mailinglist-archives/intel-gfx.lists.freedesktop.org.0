Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89499B7F2D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9816F816;
	Thu, 19 Sep 2019 16:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE20A6F816
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:32:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:32:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="271275241"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 19 Sep 2019 09:32:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:32:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:10 +0300
Message-Id: <20190919163113.17402-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 18/21] sna: Get rid of
 -Wno-shift-negative-value
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSBhIGNhc3QgdG8gYXZvaWQgdGhlICJsZWZ0IHNoaWZ0IG9mIG5lZ2F0aXZlIHZhbHVlClstV3No
aWZ0LW5lZ2F0aXZlLXZhbHVlXSIgd2FybmluZywgYW5kIGdldCByaWQgb2YgdGhlCnN1cHByZXNz
aW9uLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBzcmMvc25hL21lc29uLmJ1aWxkICAgICAgICAgICB8IDEgLQogc3Jj
L3NuYS9zbmFfdHJhcGV6b2lkc19tb25vLmMgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NyYy9zbmEvbWVzb24uYnVp
bGQgYi9zcmMvc25hL21lc29uLmJ1aWxkCmluZGV4IDc0MDhmNjNjODJkYi4uZTFlYjI1ZjJiZTM2
IDEwMDY0NAotLS0gYS9zcmMvc25hL21lc29uLmJ1aWxkCisrKyBiL3NyYy9zbmEvbWVzb24uYnVp
bGQKQEAgLTEzMSw3ICsxMzEsNiBAQCBzbmEgPSBzdGF0aWNfbGlicmFyeSgnc25hJywKIAkJICAg
ICBjX2FyZ3MgOiBbCiAJCSAgICAgICAnLVduby11bnVzZWQtYnV0LXNldC12YXJpYWJsZScsCiAJ
CSAgICAgICAnLVduby1leHBhbnNpb24tdG8tZGVmaW5lZCcsCi0JCSAgICAgICAnLVduby1zaGlm
dC1uZWdhdGl2ZS12YWx1ZScsCiAJCSAgICAgICAnLVduby1tYXliZS11bmluaXRpYWxpemVkJywK
IAkJICAgICAgICctV25vLXVudXNlZC1wYXJhbWV0ZXInLAogCQkgICAgICAgJy1Xbm8tdW51c2Vk
LWZ1bmN0aW9uJywKZGlmZiAtLWdpdCBhL3NyYy9zbmEvc25hX3RyYXBlem9pZHNfbW9uby5jIGIv
c3JjL3NuYS9zbmFfdHJhcGV6b2lkc19tb25vLmMKaW5kZXggMDdhNzg2N2Q3ZjA5Li4xNTgyYzk2
YzU3ZTggMTAwNjQ0Ci0tLSBhL3NyYy9zbmEvc25hX3RyYXBlem9pZHNfbW9uby5jCisrKyBiL3Ny
Yy9zbmEvc25hX3RyYXBlem9pZHNfbW9uby5jCkBAIC02NTcsNyArNjU3LDcgQEAgbW9ub19pbml0
KHN0cnVjdCBtb25vICpjLCBpbnQgbnVtX2VkZ2VzKQogCiAJYy0+aGVhZC5keSA9IDA7CiAJYy0+
aGVhZC5oZWlnaHRfbGVmdCA9IElOVF9NQVg7Ci0JYy0+aGVhZC54LnF1byA9IElOVDE2X01JTiA8
PCAxNjsKKwljLT5oZWFkLngucXVvID0gKHVpbnQzMl90KUlOVDE2X01JTiA8PCAxNjsKIAljLT5o
ZWFkLnByZXYgPSBOVUxMOwogCWMtPmhlYWQubmV4dCA9ICZjLT50YWlsOwogCWMtPnRhaWwucHJl
diA9ICZjLT5oZWFkOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=

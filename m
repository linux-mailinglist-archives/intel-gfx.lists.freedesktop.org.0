Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 298E7B7F1D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D7E06F533;
	Thu, 19 Sep 2019 16:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A96A6F533
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="178106036"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 19 Sep 2019 09:31:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:30:54 +0300
Message-Id: <20190919163113.17402-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 02/21] sna: Shut up more
 compiler warns
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClN1
cHByZXNzIG1vcmUgY29tcGlsZXIgd2FybmluZ3MuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIHNyYy9zbmEvbWVzb24u
YnVpbGQgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL3NyYy9zbmEvbWVzb24uYnVpbGQgYi9zcmMvc25hL21lc29uLmJ1aWxkCmluZGV4IDRhZjE4
MWYzN2IyOS4uYjEyNzZhYjNhYTZlIDEwMDY0NAotLS0gYS9zcmMvc25hL21lc29uLmJ1aWxkCisr
KyBiL3NyYy9zbmEvbWVzb24uYnVpbGQKQEAgLTEzMSw4ICsxMzEsMTEgQEAgc25hID0gc3RhdGlj
X2xpYnJhcnkoJ3NuYScsCiAJCSAgICAgY19hcmdzIDogWwogCQkgICAgICAgJy1Xbm8tbWlzc2lu
Zy1maWVsZC1pbml0aWFsaXplcnMnLAogCQkgICAgICAgJy1Xbm8tdW51c2VkLWJ1dC1zZXQtdmFy
aWFibGUnLAorCQkgICAgICAgJy1Xbm8tZXhwYW5zaW9uLXRvLWRlZmluZWQnLAogCQkgICAgICAg
Jy1Xbm8tc2hpZnQtbmVnYXRpdmUtdmFsdWUnLAogCQkgICAgICAgJy1Xbm8tdW51c2VkLXBhcmFt
ZXRlcicsCisJCSAgICAgICAnLVduby11bnVzZWQtZnVuY3Rpb24nLAorCQkgICAgICAgJy1Xbm8t
dW51c2VkLXZhcmlhYmxlJywKIAkJICAgICAgICctV25vLXNpZ24tY29tcGFyZScsCiAJCSAgICAg
ICAnLVduby10eXBlLWxpbWl0cycsCiAJCSAgICAgICAnLVduby1jbG9iYmVyZWQnLAotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

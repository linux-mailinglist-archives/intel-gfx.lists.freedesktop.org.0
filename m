Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DABB7F1C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DBA86F528;
	Thu, 19 Sep 2019 16:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A2536F528
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="181527201"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 19 Sep 2019 09:31:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:30:53 +0300
Message-Id: <20190919163113.17402-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 01/21] sna: Use -Wno-clobbered
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCi4u
L3NyYy9zbmEvc25hX2NvbXBvc2l0ZS5jOjU2NzoxMTogd2FybmluZzogdmFyaWFibGUg4oCYc3ji
gJkgbWlnaHQgYmUgY2xvYmJlcmVkIGJ5IOKAmGxvbmdqbXDigJkgb3Ig4oCYdmZvcmvigJkgWy1X
Y2xvYmJlcmVkXQogICBpbnQxNl90IHN4ID0gc3JjX3ggKyB0eCAtIChkc3QtPnBEcmF3YWJsZS0+
eCArIGRzdF94KTsKICAgICAgICAgICBefgpldGMuCgpJIGhhZCBhIHF1aWNrIGxvb2sgYXQgYSBm
ZXcgb2YgdGhlIGNhc2VzIGFuZCB0aGV5IHNlZW1lZCBmaW5lIHRvIG1lLApzbyBmZWVscyBsaWtl
IGdjYyBqdXN0IGJlaW5nIGRlbnNlLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBzcmMvc25hL21lc29uLmJ1aWxkIHwg
MSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9zcmMvc25h
L21lc29uLmJ1aWxkIGIvc3JjL3NuYS9tZXNvbi5idWlsZAppbmRleCA1NjMxZDRkODA0N2YuLjRh
ZjE4MWYzN2IyOSAxMDA2NDQKLS0tIGEvc3JjL3NuYS9tZXNvbi5idWlsZAorKysgYi9zcmMvc25h
L21lc29uLmJ1aWxkCkBAIC0xMzUsNSArMTM1LDYgQEAgc25hID0gc3RhdGljX2xpYnJhcnkoJ3Nu
YScsCiAJCSAgICAgICAnLVduby11bnVzZWQtcGFyYW1ldGVyJywKIAkJICAgICAgICctV25vLXNp
Z24tY29tcGFyZScsCiAJCSAgICAgICAnLVduby10eXBlLWxpbWl0cycsCisJCSAgICAgICAnLVdu
by1jbG9iYmVyZWQnLAogCQkgICAgIF0sCiAJCSAgICAgaW5zdGFsbCA6IGZhbHNlKQotLSAKMi4y
MS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

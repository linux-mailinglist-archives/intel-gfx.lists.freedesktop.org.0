Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F56B7F26
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322436F75D;
	Thu, 19 Sep 2019 16:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63DE6F7CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="181527406"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 19 Sep 2019 09:31:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:03 +0300
Message-Id: <20190919163113.17402-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 11/21] sna: Increase the size
 of the path name buffer a bit
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
L3NyYy9pbnRlbF9kZXZpY2UuYzogSW4gZnVuY3Rpb24g4oCYX19pbnRlbF9vcGVuX2RldmljZV9f
cGNpLmlzcmEuNuKAmToKLi4vc3JjL2ludGVsX2RldmljZS5jOjMyMToyNTogd2FybmluZzog4oCY
JXPigJkgZGlyZWN0aXZlIHdyaXRpbmcgdXAgdG8gMjU1IGJ5dGVzIGludG8gYSByZWdpb24gb2Yg
c2l6ZSAyNDcgWy1XZm9ybWF0LW92ZXJmbG93PV0KICAgc3ByaW50ZihwYXRoICsgYmFzZSwgIiVz
IiwgZGUtPmRfbmFtZSk7CgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIHNyYy9pbnRlbF9kZXZpY2UuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L3NyYy9pbnRlbF9kZXZpY2UuYyBiL3NyYy9pbnRlbF9kZXZpY2UuYwppbmRleCAyMTk1NTA3MzE1
MDAuLmYyOGQzYmUxMTc5NiAxMDA2NDQKLS0tIGEvc3JjL2ludGVsX2RldmljZS5jCisrKyBiL3Ny
Yy9pbnRlbF9kZXZpY2UuYwpAQCAtMzAxLDkgKzMwMSw5IEBAIHN0YXRpYyBpbnQgb3Blbl9jbG9l
eGVjKGNvbnN0IGNoYXIgKnBhdGgpCiAjaWZkZWYgX19saW51eF9fCiBzdGF0aWMgaW50IF9faW50
ZWxfb3Blbl9kZXZpY2VfX21ham9yX21pbm9yKGludCBfbWFqb3IsIGludCBfbWlub3IpCiB7Ci0J
Y2hhciBwYXRoWzI1Nl07CiAJRElSICpkaXI7CiAJc3RydWN0IGRpcmVudCAqZGU7CisJY2hhciBw
YXRoWzkrc2l6ZW9mKGRlLT5kX25hbWUpXTsKIAlpbnQgYmFzZSwgZmQgPSAtMTsKIAogCWJhc2Ug
PSBzcHJpbnRmKHBhdGgsICIvZGV2L2RyaS8iKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

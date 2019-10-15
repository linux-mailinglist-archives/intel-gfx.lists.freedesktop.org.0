Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A48ED7A47
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D186E836;
	Tue, 15 Oct 2019 15:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAEC8997A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="198647330"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga003.jf.intel.com with ESMTP; 15 Oct 2019 08:45:20 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 0400F84076C; Tue, 15 Oct 2019 18:44:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:42 +0300
Message-Id: <20191015154449.10338-4-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 04/11] drm/i915/tgl: Add extra hdc flush
 workaround
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gb3JkZXIgdG8gZW5zdXJlIGNvbnN0YW50IGNhY2hlcyBhcmUgaW52YWxpZGF0ZWQKcHJvcGVy
bHkgd2l0aCBhMCwgd2UgbmVlZCBleHRyYSBoZGMgZmx1c2ggYWZ0ZXIgaW52YWxpZGF0aW9uLgoK
djI6IHVzZSBJU19UR0xfUkVWSUQgKENocmlzKQoKUmVmZXJlbmNlczogSFNERVMjMTYwNDU0NDg4
OQpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIwICsrKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMjdiNTI1OWYyZjY2Li41ZTk4MTE0YTA3YTEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0zMjU0LDYgKzMyNTQsMjYgQEAg
c3RhdGljIGludCBnZW4xMl9lbWl0X2ZsdXNoX3JlbmRlcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
ZXF1ZXN0LAogCiAJCSpjcysrID0gcHJlcGFyc2VyX2Rpc2FibGUoZmFsc2UpOwogCQlpbnRlbF9y
aW5nX2FkdmFuY2UocmVxdWVzdCwgY3MpOworCisJCS8qCisJCSAqIFdhXzE2MDQ1NDQ4ODk6dGds
CisJCSAqLworCQlpZiAoSVNfVEdMX1JFVklEKHJlcXVlc3QtPmk5MTUsIFRHTF9SRVZJRF9BMCwg
VEdMX1JFVklEX0EwKSkgeworCQkJZmxhZ3MgPSAwOworCQkJZmxhZ3MgfD0gUElQRV9DT05UUk9M
X0NTX1NUQUxMOworCQkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0hEQ19QSVBFTElORV9GTFVTSDsK
KworCQkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX1NUT1JFX0RBVEFfSU5ERVg7CisJCQlmbGFncyB8
PSBQSVBFX0NPTlRST0xfUVdfV1JJVEU7CisKKwkJCWNzID0gaW50ZWxfcmluZ19iZWdpbihyZXF1
ZXN0LCA2KTsKKwkJCWlmIChJU19FUlIoY3MpKQorCQkJCXJldHVybiBQVFJfRVJSKGNzKTsKKwor
CQkJY3MgPSBnZW44X2VtaXRfcGlwZV9jb250cm9sKGNzLCBmbGFncywKKwkJCQkJCSAgICBMUkNf
UFBIV1NQX1NDUkFUQ0hfQUREUik7CisJCQlpbnRlbF9yaW5nX2FkdmFuY2UocmVxdWVzdCwgY3Mp
OworCQl9CiAJfQogCiAJcmV0dXJuIDA7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECE2B261C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 21:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53786F444;
	Fri, 13 Sep 2019 19:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AD1F6F449
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 19:32:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 12:32:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,501,1559545200"; d="scan'208";a="215495252"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 13 Sep 2019 12:32:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Sep 2019 22:32:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 22:31:55 +0300
Message-Id: <20190913193157.9556-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190913193157.9556-1-ville.syrjala@linux.intel.com>
References: <20190913193157.9556-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Allow downscale factor of <3.0 on
 glk+ for all formats
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkJz
cGVjIHNheXMgdGhhdCBnbGsrIG1heCBkb3duc2NhbGUgZmFjdG9yIGlzIDwzLjAgZm9yIGFsbCBw
aXhlbCBmb3JtYXRzLgpPbGRlciBwbGF0Zm9ybXMgaGFkIGEgbWF4IG9mIDwyLjAgZm9yIE5WMTIu
IFVwZGF0ZSB0aGUgY29kZSB0byBkZWFsIHdpdGgKdGhpcy4KClJldmlld2VkLWJ5OiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOSArKysrKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAxZjI2ZWU4
YWRjNGUuLjdlMjliYTY3NTI0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTE0NTU2LDcgKzE0NTU2LDcgQEAgc2tsX21heF9zY2FsZShjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIHsKIAlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
LQlpbnQgbWF4X3NjYWxlLCBtdWx0OworCWludCBtYXhfc2NhbGU7CiAJaW50IGNydGNfY2xvY2ss
IG1heF9kb3RjbGssIHRtcGNsazEsIHRtcGNsazI7CiAKIAlpZiAoIWNydGNfc3RhdGUtPmJhc2Uu
ZW5hYmxlKQpAQCAtMTQ1NzcsOCArMTQ1NzcsMTEgQEAgc2tsX21heF9zY2FsZShjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkgKiAgICAgICAgICAgIG9yCiAJICog
ICAgY2RjbGsvY3J0Y19jbG9jawogCSAqLwotCW11bHQgPSBkcm1fZm9ybWF0X2luZm9faXNfeXV2
X3NlbWlwbGFuYXIoZm9ybWF0KSA/IDIgOiAzOwotCXRtcGNsazEgPSAoMSA8PCAxNikgKiBtdWx0
IC0gMTsKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRl
dl9wcml2KSB8fAorCSAgICAhZHJtX2Zvcm1hdF9pbmZvX2lzX3l1dl9zZW1pcGxhbmFyKGZvcm1h
dCkpCisJCXRtcGNsazEgPSAweDMwMDAwIC0gMTsKKwllbHNlCisJCXRtcGNsazEgPSAweDIwMDAw
IC0gMTsKIAl0bXBjbGsyID0gKDEgPDwgOCkgKiAoKG1heF9kb3RjbGsgPDwgOCkgLyBjcnRjX2Ns
b2NrKTsKIAltYXhfc2NhbGUgPSBtaW4odG1wY2xrMSwgdG1wY2xrMik7CiAKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

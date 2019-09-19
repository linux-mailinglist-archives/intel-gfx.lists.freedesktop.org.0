Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B000CB7F24
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26AE56F792;
	Thu, 19 Sep 2019 16:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EDA36F792
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:31:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:31:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="192097158"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 19 Sep 2019 09:31:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:31:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:01 +0300
Message-Id: <20190919163113.17402-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 09/21] Avoid missing
 initializer warning
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
ZSBhbiBlbXB0eSB7fSBhcyB0aGUgdGVybWluYXRvciBpbiBpbnRlbF9kZXZpY2VfbWF0Y2hbXSB0
byBhdm9pZAp0aGUgd2FybmluZyBhYm91dCBtaXNzaW5nIGluaXRsaXplcnMuCgpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IHNyYy9pbnRlbF9tb2R1bGUuYyB8IDIgKy0KIHNyYy9tZXNvbi5idWlsZCAgICB8IDEgLQogMiBm
aWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9zcmMvaW50ZWxfbW9kdWxlLmMgYi9zcmMvaW50ZWxfbW9kdWxlLmMKaW5kZXggMTcxYjIwZDgz
ZDMzLi5hNzFjMmU0MGI3NzQgMTAwNjQ0Ci0tLSBhL3NyYy9pbnRlbF9tb2R1bGUuYworKysgYi9z
cmMvaW50ZWxfbW9kdWxlLmMKQEAgLTM4OCw3ICszODgsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHBjaV9pZF9tYXRjaCBpbnRlbF9kZXZpY2VfbWF0Y2hbXSA9IHsKIAlJTlRFTF9WR0FfREVWSUNF
KFBDSV9NQVRDSF9BTlksICZpbnRlbF9nZW5lcmljX2luZm8pLAogI2VuZGlmCiAKLQl7IDAsIDAs
IDAgfSwKKwl7fSwKIH07CiAKIHZvaWQKZGlmZiAtLWdpdCBhL3NyYy9tZXNvbi5idWlsZCBiL3Ny
Yy9tZXNvbi5idWlsZAppbmRleCAwYTQ2ZTIzM2E5NGMuLjExMjVjNjViNzNiZSAxMDA2NDQKLS0t
IGEvc3JjL21lc29uLmJ1aWxkCisrKyBiL3NyYy9tZXNvbi5idWlsZApAQCAtMTUwLDcgKzE1MCw2
IEBAIHNoYXJlZF9tb2R1bGUoJ2ludGVsX2RydicsCiAJCSctRE1BSk9SX0lOX1NZU01BQ1JPUycs
CiAJCSctV25vLXVudXNlZC1wYXJhbWV0ZXInLAogCQknLVduby1zaWduLWNvbXBhcmUnLAotCQkn
LVduby1taXNzaW5nLWZpZWxkLWluaXRpYWxpemVycycsCiAJICAgICAgXSwKIAkgICAgICBuYW1l
X3ByZWZpeCA6ICcnLAogCSAgICAgIGluc3RhbGxfZGlyIDogam9pbl9wYXRocyhtb2R1bGVkaXIs
ICdkcml2ZXJzJyksCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==

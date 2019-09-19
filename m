Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 380E3B7F2C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF146F81B;
	Thu, 19 Sep 2019 16:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847166F816
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:32:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:32:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="188138439"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 19 Sep 2019 09:32:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:32:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:09 +0300
Message-Id: <20190919163113.17402-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 17/21] sna: Use
 -Wno-maybe-uninitialized
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjb21waWxlciBzZWVtcyBpbmNhcGFibGUgb2YgZGVkdWNpbmcgd2hldGhlciBzb21ldGhpbmcK
aXMgdXNlZCB1bmluaXRpYWxpemVkIG9yIG5vdC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogc3JjL3NuYS9tZXNvbi5i
dWlsZCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEv
c3JjL3NuYS9tZXNvbi5idWlsZCBiL3NyYy9zbmEvbWVzb24uYnVpbGQKaW5kZXggOWU0YjY5ZjQ1
ZTU1Li43NDA4ZjYzYzgyZGIgMTAwNjQ0Ci0tLSBhL3NyYy9zbmEvbWVzb24uYnVpbGQKKysrIGIv
c3JjL3NuYS9tZXNvbi5idWlsZApAQCAtMTMyLDYgKzEzMiw3IEBAIHNuYSA9IHN0YXRpY19saWJy
YXJ5KCdzbmEnLAogCQkgICAgICAgJy1Xbm8tdW51c2VkLWJ1dC1zZXQtdmFyaWFibGUnLAogCQkg
ICAgICAgJy1Xbm8tZXhwYW5zaW9uLXRvLWRlZmluZWQnLAogCQkgICAgICAgJy1Xbm8tc2hpZnQt
bmVnYXRpdmUtdmFsdWUnLAorCQkgICAgICAgJy1Xbm8tbWF5YmUtdW5pbml0aWFsaXplZCcsCiAJ
CSAgICAgICAnLVduby11bnVzZWQtcGFyYW1ldGVyJywKIAkJICAgICAgICctV25vLXVudXNlZC1m
dW5jdGlvbicsCiAJCSAgICAgICAnLVduby11bnVzZWQtdmFyaWFibGUnLAotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

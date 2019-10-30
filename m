Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EEDE948B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 02:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA3926E868;
	Wed, 30 Oct 2019 01:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28506E875
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 01:25:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 18:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,245,1569308400"; d="scan'208";a="211945559"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2019 18:25:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 18:24:44 -0700
Message-Id: <20191030012448.14937-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191030012448.14937-1-lucas.demarchi@intel.com>
References: <20191030012448.14937-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Add
 for_each_new_intel_connector_in_state()
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGUg
c2FtZSBtYWNybyBhcyBmb3JfZWFjaF9uZXdfY29ubmVjdG9yX2luX3N0YXRlKCkgYnV0IGl0IHVz
ZXMKaW50ZWwvaTkxNSB0eXBlcyBpbnN0ZWFkIG9mIHRoZSBkcm0gb25lcy4KClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwODIzMDgyMDU1LjU5OTIt
MTEtbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmggfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
aAppbmRleCBjYTdjYTI4MDRkOGIuLmZlNTk4ZWMzY2JkYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKQEAgLTQ1Miw2ICs0NTIsMTQgQEAgZW51bSBw
aHlfZmlhIHsKIAkJZm9yX2VhY2hfaWYgKChwbGFuZV9zdGF0ZSA9IFwKIAkJCSAgICAgIHRvX2lu
dGVsX3BsYW5lX3N0YXRlKF9fZHJtX2F0b21pY19nZXRfY3VycmVudF9wbGFuZV9zdGF0ZSgoY3J0
Y19zdGF0ZSktPmJhc2Uuc3RhdGUsICZwbGFuZS0+YmFzZSkpKSkKIAorI2RlZmluZSBmb3JfZWFj
aF9uZXdfaW50ZWxfY29ubmVjdG9yX2luX3N0YXRlKF9fc3RhdGUsIGNvbm5lY3RvciwgbmV3X2Nv
bm5lY3Rvcl9zdGF0ZSwgX19pKSBcCisJZm9yICgoX19pKSA9IDA7IFwKKwkgICAgIChfX2kpIDwg
KF9fc3RhdGUpLT5iYXNlLm51bV9jb25uZWN0b3I7IFwKKwkgICAgIChfX2kpKyspIFwKKwkJZm9y
X2VhY2hfaWYgKChfX3N0YXRlKS0+YmFzZS5jb25uZWN0b3JzW19faV0ucHRyICYmIFwKKwkJCSAg
ICAgKChjb25uZWN0b3IpID0gdG9faW50ZWxfY29ubmVjdG9yKChfX3N0YXRlKS0+YmFzZS5jb25u
ZWN0b3JzW19faV0ucHRyKSwgXAorCQkJICAgICAobmV3X2Nvbm5lY3Rvcl9zdGF0ZSkgPSB0b19p
bnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSgoX19zdGF0ZSktPmJhc2UuY29ubmVjdG9yc1tf
X2ldLm5ld19zdGF0ZSksIDEpKQorCiB2b2lkIGludGVsX2xpbmtfY29tcHV0ZV9tX24odTE2IGJw
cCwgaW50IG5sYW5lcywKIAkJCSAgICBpbnQgcGl4ZWxfY2xvY2ssIGludCBsaW5rX2Nsb2NrLAog
CQkJICAgIHN0cnVjdCBpbnRlbF9saW5rX21fbiAqbV9uLAotLSAKMi4yMy4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

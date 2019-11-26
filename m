Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F0610A6CE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 23:51:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D5436E49D;
	Tue, 26 Nov 2019 22:51:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F19EB6E49D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 22:51:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 14:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="260831835"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Nov 2019 14:51:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 14:51:10 -0800
Message-Id: <20191126225110.8127-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191126225110.8127-1-lucas.demarchi@intel.com>
References: <20191126225110.8127-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/bios: assume vbt is 4-byte aligned
 into oprom
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

VGhlIHVuYWxpZ25lZCBpb3JlYWQzMigpIHdpbGwgbWFrZSB1cyByZWFkIGJ5dGUgYnkgYnl0ZSBs
b29raW5nIGZvciB0aGUKdmJ0LiBXZSBjb3VsZCBqdXN0IGFzIHdlbGwgaGF2ZSBkb25lIGEgaW9y
ZWFkOCgpICsgYSBzaGlmdCBhbmQgYXZvaWQgdGhlCmV4dHJhIGNvbmZ1c2lvbiBvbiBob3cgd2Ug
YXJlIGxvb2tpbmcgZm9yICIkVkJUIi4KCkhvd2V2ZXIgd2hlbiB1c2luZyBBQ1BJIGl0J3MgZ3Vh
cmFudGVlZCB0aGUgVkJUIGlzIDQtYnl0ZSBhbGlnbmVkCnBlciBzcGVjLCBzbyB3ZSBjYW4gcHJv
YmFibHkgYXNzdW1lIGl0IGhlcmUgYXMgd2VsbC4KCnYyOiBkbyBub3QgdHJ5IHRvIHNpbXBsaWZ5
IHRoZSBsb29wIGJ5IGVsaW1pbmF0aW5nIHRoZSBhdXhpbGlhcnkgY291bnRlcgooSmFuaSBhbmQg
VmlsbGUpCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKaW5kZXggNTZlNTY2OTQ1ZTk4
Li5mZWM2NzUyYjFmNTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jCkBAIC0xOTA5LDcgKzE5MDksNyBAQCBzdGF0aWMgc3RydWN0IHZidF9oZWFkZXIgKm9wcm9t
X2dldF92YnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlyZXR1cm4gTlVM
TDsKIAogCS8qIFNjb3VyIG1lbW9yeSBsb29raW5nIGZvciB0aGUgVkJUIHNpZ25hdHVyZS4gKi8K
LQlmb3IgKGkgPSAwOyBpICsgNCA8IHNpemU7IGkrKykgeworCWZvciAoaSA9IDA7IGkgKyA0IDwg
c2l6ZTsgaSArPSA0KSB7CiAJCWlmIChpb3JlYWQzMihvcHJvbSArIGkpICE9ICooKGNvbnN0IHUz
MiAqKSIkVkJUIikpCiAJCQljb250aW51ZTsKIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F4119F3AB0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 22:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668D76F7D6;
	Thu,  7 Nov 2019 21:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2998B6F7D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 21:46:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 13:46:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="353919871"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga004.jf.intel.com with ESMTP; 07 Nov 2019 13:46:04 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 13:45:58 -0800
Message-Id: <20191107214559.77087-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107214559.77087-1-jose.souza@intel.com>
References: <20191107214559.77087-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display/dsi: Add support to pipe D
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIHBpcGUgRCBzdXBwb3J0IHRvIERTSSB0cmFuc2NvZGVyLgpOb3QgYWRkaW5nIGl0IGZv
ciBFRFAgdHJhbnNjb2RlciBjb2RlIHBhdGhzIGFzIG9ubHkgVEdMIGhhcyA0IHBpcGVzCmFuZCBp
dCBkbyBub3QgaGF2ZSBhIEVEUCB0cmFuc2NvZGVyLgoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ljbF9kc2kuYyB8IDYgKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
ICAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4IDhlYjJkN2YyOWM4Mi4uZjY4ODIwNzkz
MmUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwpAQCAtNzQ1LDYgKzc0
NSw5IEBAIGdlbjExX2RzaV9jb25maWd1cmVfdHJhbnNjb2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKIAkJY2FzZSBQSVBFX0M6CiAJCQl0bXAgfD0gVFJBTlNfRERJX0VEUF9JTlBV
VF9DX09OT0ZGOwogCQkJYnJlYWs7CisJCWNhc2UgUElQRV9EOgorCQkJdG1wIHw9IFRSQU5TX0RE
SV9FRFBfSU5QVVRfRF9PTk9GRjsKKwkJCWJyZWFrOwogCQl9CiAKIAkJLyogZW5hYmxlIERESSBi
dWZmZXIgKi8KQEAgLTEzMjUsNiArMTMyOCw5IEBAIHN0YXRpYyBib29sIGdlbjExX2RzaV9nZXRf
aHdfc3RhdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCWNhc2UgVFJBTlNfRERJ
X0VEUF9JTlBVVF9DX09OT0ZGOgogCQkJKnBpcGUgPSBQSVBFX0M7CiAJCQlicmVhazsKKwkJY2Fz
ZSBUUkFOU19ERElfRURQX0lOUFVUX0RfT05PRkY6CisJCQkqcGlwZSA9IFBJUEVfRDsKKwkJCWJy
ZWFrOwogCQlkZWZhdWx0OgogCQkJRFJNX0VSUk9SKCJJbnZhbGlkIFBJUEUgaW5wdXRcbiIpOwog
CQkJZ290byBvdXQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA3MDQ1OWEzZDkzZTMuLjg4
ZDE0MzBhNjgwMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05NjY1LDYgKzk2NjUsNyBA
QCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQV9P
Tk9GRgkoNCA8PCAxMikKICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQl9PTk9GRgkoNSA8
PCAxMikKICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQ19PTk9GRgkoNiA8PCAxMikKKyNk
ZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfRF9PTk9GRgkoNyA8PCAxMikKICNkZWZpbmUgIFRS
QU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVF9NQVNLCVJFR19HRU5NQVNLKDExLCAxMCkKICNk
ZWZpbmUgIFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVCh0cmFucykJXAogCVJFR19GSUVM
RF9QUkVQKFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NFTEVDVF9NQVNLLCB0cmFucykKLS0gCjIu
MjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

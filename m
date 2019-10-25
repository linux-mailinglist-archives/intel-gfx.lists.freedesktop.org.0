Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4012EE4B98
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77FFC89FE3;
	Fri, 25 Oct 2019 12:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B7189FE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:55:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 05:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="201801045"
Received: from helsinki.fi.intel.com ([10.237.66.157])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2019 05:55:50 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 15:55:30 +0300
Message-Id: <20191025125530.1015447-6-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025125530.1015447-1-gwan-gyeong.mun@intel.com>
References: <20191025125530.1015447-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915/dp: Call dp_vsc_enable() /
 dp_hdr_metata_enable() on pipe updates
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

Q2FsbCBpbnRlbF9kcF92c2NfZW5hYmxlKCkgYW5kIGludGVsX2RwX2hkcl9tZXRhZGF0YV9lbmFi
bGUoKSBvbiBwaXBlCnVwZGF0ZXMgdG8gbWFrZSBzdXJlIHRoYXQgd2UgZW5hYmxlIHNlbmRpbmcg
b2YgVlNDIFNEUCBhbmQgSERSIE1ldGFkYXRhCkluZm9mcmFtZSBTRFAgcGFja2V0ICh3aGVuIGFw
cGxpY2FibGUpIG9uIGZhc3RzZXRzLgoKVGhlc2UgZnVuY3Rpb25zIGNoZWNrIHBpcGUgc3RhdGUg
YW5kIHdoZW4gdGhlIGZlYXR1cmVzIGRvZXMgbm90IG5lZWQsCnRoZXkgZGlzYWJsZSB0aGUgZmVh
dHVyZXMuCgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8
IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCAxYTQ5MjY2ZjRmNTcuLmUwNzU5MWZmMmE2ZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC00MDIwLDYgKzQw
MjAsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfdXBkYXRlX3BpcGVfZHAoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCiAJaW50ZWxfZGRpX3NldF9kcF9tc2EoY3J0Y19zdGF0ZSwgY29u
bl9zdGF0ZSk7CiAKIAlpbnRlbF9wc3JfdXBkYXRlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKKwlp
bnRlbF9kcF92c2NfZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsKKwlp
bnRlbF9kcF9oZHJfbWV0YWRhdGFfZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0
YXRlKTsKIAlpbnRlbF9lZHBfZHJyc19lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwogCiAJ
aW50ZWxfcGFuZWxfdXBkYXRlX2JhY2tsaWdodChlbmNvZGVyLCBjcnRjX3N0YXRlLCBjb25uX3N0
YXRlKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4

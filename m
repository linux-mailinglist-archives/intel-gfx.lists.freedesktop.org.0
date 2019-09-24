Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D15BBC861
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 14:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53A58929B;
	Tue, 24 Sep 2019 12:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A0B8926A;
 Tue, 24 Sep 2019 12:59:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:59:49 -0700
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="191012422"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:59:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 24 Sep 2019 15:59:00 +0300
Message-Id: <f6f65ca7e27e949533e8cd1f43c61ecac73c658e.1569329774.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1569329774.git.jani.nikula@intel.com>
References: <cover.1569329774.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i2c/sil164: use drm_debug_enabled()
 to check for debug categories
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgYmV0dGVyIGFic3RyYWN0aW9uIG9mIHRoZSBkcm1fZGVidWcgZ2xvYmFsIHZhcmlhYmxl
IGluIHRoZQpmdXR1cmUuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KCkNjOiBGcmFuY2lzY28gSmVy
ZXogPGN1cnJvamVyZXpAcmlzZXVwLm5ldD4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTJjL3NpbDE2NF9kcnYu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pMmMvc2lsMTY0X2Rydi5jIGIvZHJpdmVycy9n
cHUvZHJtL2kyYy9zaWwxNjRfZHJ2LmMKaW5kZXggOGJjZjBkMTk5MTQ1Li5hODM5Zjc4YTRjOGEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pMmMvc2lsMTY0X2Rydi5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pMmMvc2lsMTY0X2Rydi5jCkBAIC00NCw3ICs0NCw3IEBAIHN0cnVjdCBzaWwx
NjRfcHJpdiB7CiAJKChzdHJ1Y3Qgc2lsMTY0X3ByaXYgKil0b19lbmNvZGVyX3NsYXZlKHgpLT5z
bGF2ZV9wcml2KQogCiAjZGVmaW5lIHNpbDE2NF9kYmcoY2xpZW50LCBmb3JtYXQsIC4uLikgZG8g
ewkJCQlcCi0JCWlmIChkcm1fZGVidWcgJiBEUk1fVVRfS01TKQkJCQlcCisJCWlmIChkcm1fZGVi
dWdfZW5hYmxlZChEUk1fVVRfS01TKSkJCQlcCiAJCQlkZXZfcHJpbnRrKEtFUk5fREVCVUcsICZj
bGllbnQtPmRldiwJCVwKIAkJCQkgICAiJXM6ICIgZm9ybWF0LCBfX2Z1bmNfXywgIyMgX19WQV9B
UkdTX18pOyBcCiAJfSB3aGlsZSAoMCkKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

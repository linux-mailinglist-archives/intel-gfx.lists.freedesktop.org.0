Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50223F3994
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 21:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867D86F7A3;
	Thu,  7 Nov 2019 20:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90286F7A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 20:36:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 12:36:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="353904768"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by orsmga004.jf.intel.com with ESMTP; 07 Nov 2019 12:36:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 12:37:22 -0800
Message-Id: <20191107203722.8814-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't test plane stride with
 !INTEL_DISPLAY_ENABLED
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgSU5URUxfRElTUExBWV9FTkFCTEVEIGlzIGZhbHNlLCB0aGVuIHRoZSBtb2Rlc2V0dGluZyBy
ZXNvdXJjZXMgd2VyZQpuZXZlciBpbml0aWFsaXplZC4gIFVzZXJzcGFjZSBtYXkgc3RpbGwgY2Fs
bCBEUk1fSU9DVExfTU9ERV9DUkVBVEVfRFVNQgp3aGljaCB3aWxsIGV2ZW50dWFsbHkgbGVhZCBp
OTE1X2dlbV9kdW1iX2NyZWF0ZSgpIHRvIHRyeSB0byBkZXJlZmVyZW5jZQphIG5vbi1leGlzdGVu
dCBwaXBlIEEgcHJpbWFyeSBwbGFuZSB3aGlsZSBmaWd1cmluZyBvdXQgYSBwcm9wZXIgcGl0Y2gu
CgpXZSBjb3VsZCBmb3JjZSBkdW1iIGJ1ZmZlciBjcmVhdGlvbiB0byBmYWlsIGluIGNhc2VzIHdo
ZXJlIGRpc3BsYXkgaXNuJ3QKZW5hYmxlZCAoc2luY2UgdGhlcmUgaXNuJ3QgcmVhbGx5IGEgZGVm
aW5pdGlvbiBvZiBhICJzdWl0YWJsZSBmb3IKc2Nhbm91dCIgYnVmZmVyIGluIHRoYXQgY2FzZSks
IGJ1dCBpdCdzIGVhc2llciAoYW5kIHByb2JhYmx5IGxlc3MKaW52YXNpdmUgdG8gSUdUIHRlc3Rz
KSB0byBqdXN0IGRyb3AgdGhlIGF0dGVtcHQgdG8gYWxpZ24gdG8gcGxhbmUgbWF4CnN0cmlkZSBp
biBjYXNlcyB3aGVyZSB0aGUgZGlzcGxheSBpc24ndCBlbmFibGVkLgoKQ2M6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwgMyArKy0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYwppbmRleCAxNDNhODk1MmI3MzYuLmYwMjJhMTczMjhiMCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbS5jCkBAIC0yMjksNyArMjI5LDggQEAgaTkxNV9nZW1fZHVtYl9jcmVhdGUo
c3RydWN0IGRybV9maWxlICpmaWxlLAogCWFyZ3MtPnBpdGNoID0gQUxJR04oYXJncy0+d2lkdGgg
KiBjcHAsIDY0KTsKIAogCS8qIGFsaWduIHN0cmlkZSB0byBwYWdlIHNpemUgc28gdGhhdCB3ZSBj
YW4gcmVtYXAgKi8KLQlpZiAoYXJncy0+cGl0Y2ggPiBpbnRlbF9wbGFuZV9mYl9tYXhfc3RyaWRl
KHRvX2k5MTUoZGV2KSwgZm9ybWF0LAorCWlmIChJTlRFTF9ESVNQTEFZX0VOQUJMRUQodG9faTkx
NShkZXYpKSAmJgorCSAgICBhcmdzLT5waXRjaCA+IGludGVsX3BsYW5lX2ZiX21heF9zdHJpZGUo
dG9faTkxNShkZXYpLCBmb3JtYXQsCiAJCQkJCQkgICAgRFJNX0ZPUk1BVF9NT0RfTElORUFSKSkK
IAkJYXJncy0+cGl0Y2ggPSBBTElHTihhcmdzLT5waXRjaCwgNDA5Nik7CiAKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

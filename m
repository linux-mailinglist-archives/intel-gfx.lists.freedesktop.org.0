Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5197F9F5DF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 00:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A89A89B11;
	Tue, 27 Aug 2019 22:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6253389B11
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 22:15:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 15:15:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="331964655"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga004.jf.intel.com with ESMTP; 27 Aug 2019 15:15:58 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 15:17:33 -0700
Message-Id: <20190827221735.29351-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Transcoder Port Sync preparation
 refactoring/renaming
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

VGhpcyBzZXJpZXMgcmVuYW1lcyBzb21lIGZ1bmN0aW9ucyB0byBtYXRjaCB0aGUgZHJtIGZ1bmN0
aW9uIGRlZmluaXRpb25zCmFuZCBhbHNvIHJlZmFjdG9ycyBzb21lIGZ1bmN0aW9ucyBvdXQgb2Yg
aW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKCkgYXMgYSBwcmVwCmZvciBhZGRpbmcgbmV3ZXIgaG9v
a3MgcmVxdWlyZWQgZm9yIHRyYW5zY29kZXIgcG9ydCBzeW5jIGVuYWJsZSBzZXJpZXMKVGhlIHJl
bmFtaW5nIGlzIGRvbmUgYXMgc3VnZ2VzdGVkIGJ5IERhbmllbCBWZXR0ZXIuCgpUaGVyZSBpcyBu
byBmdW5jdGlvbmFsIGNoYW5nZQoKTWFuYXNpIE5hdmFyZSAoMik6CiAgZHJtL2k5MTUvZGlzcGxh
eTogUmVuYW1lIHVwZGF0ZV9jcnRjcygpIHRvIGNvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoKQogIGRy
bS9pOTE1L2Rpc3BsYXk6IE1vdmUgdGhlIGNvbW1pdF90YWlsKCkgZGlzYWJsZSBzZXF1ZW5jZSB0
bwogICAgY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoKSBob29rCgogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMDQgKysrKysrKysrKysrLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgfCAgIDMgKy0KIDIgZmls
ZXMgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pCgotLSAKMi4xOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

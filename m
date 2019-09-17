Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92269B4D86
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 14:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF7F6EC14;
	Tue, 17 Sep 2019 12:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905146EC0E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 12:10:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 05:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="193733727"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2019 05:10:20 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 05:11:54 -0700
Message-Id: <20190917121155.13197-6-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917121155.13197-1-radhakrishna.sripada@intel.com>
References: <20190917121155.13197-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/framebuffer/tgl: Format modifier for
 Intel Gen 12 render compression with Clear Color
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
Cc: nanley.g.chery@intel.com, dhinakaran.pandiyan@intel.com,
 Kalyan Kondapally <kalyan.kondapally@intel.com>, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBzdXJmYWNlcyBjb21wcmVzc2VkIGJ5IHJlbmRl
ciBlbmdpbmUgd2l0aCBDbGVhciBDb2xvciwgYWRkCmEgbmV3IG1vZGlmaWVyIGFzIHRoZSBkcml2
ZXIgbmVlZHMgdG8ga25vdyB0aGUgc3VyZmFjZSB3YXMgY29tcHJlc3NlZCBieSByZW5kZXIgZW5n
aW5lLgoKVjI6IERlc2NyaXB0aW9uIGNoYW5nZXMgYXMgc3VnZ2VzdGVkIGJ5IFJhZmFlbC4KCkNj
OiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERoaW5h
a2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzogS2FseWFu
IEtvbmRhcGFsbHkgPGthbHlhbi5rb25kYXBhbGx5QGludGVsLmNvbT4KQ2M6IFJhZmFlbCBBbnRv
Z25vbGxpIDxyYWZhZWwuYW50b2dub2xsaUBpbnRlbC5jb20+CkNjOiBOYW5sZXkgQ2hlcnkgPG5h
bmxleS5nLmNoZXJ5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBh
ZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL3VhcGkvZHJt
L2RybV9mb3VyY2MuaCB8IDExICsrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oIGIvaW5j
bHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKaW5kZXggZWM4MzUxOTIyMjY1Li5mMmI3OWNmNzQ5
YTQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCisrKyBiL2luY2x1
ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCkBAIC00MzAsNiArNDMwLDE3IEBAIGV4dGVybiAiQyIg
ewogICovCiAjZGVmaW5lIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUyBmb3Vy
Y2NfbW9kX2NvZGUoSU5URUwsIDcpCiAKKy8qCisgKiBJbnRlbCBjb2xvciBjb250cm9sIHN1cmZh
Y2VzIENsZWFyIENvbG9yKENDU19DQykgZm9yIEdlbi0xMiByZW5kZXIgY29tcHJlc3Npb24uCisg
KgorICogVGhlIG1haW4gc3VyZmFjZSBpcyBZLXRpbGVkIGFuZCBpcyBhdCBwbGFuZSBpbmRleCAw
IHdoZXJlYXMgQ0NTX0NDIGlzIGxpbmVhcgorICogYW5kIGF0IGluZGV4IDEuIFRoZSBjbGVhciBj
b2xvciBpcyBzdG9yZWQgYXQgaW5kZXggMiwgYW5kIHRoZSBwaXRjaCBzaG91bGQKKyAqIGJlIGln
bm9yZWQuIEEgQ0NTX0NDIGNhY2hlIGxpbmUgY29ycmVzcG9uZHMgdG8gYW4gYXJlYSBvZiA0eDEg
dGlsZXMgaW4gdGhlCisgKiBtYWluIHN1cmZhY2UuIFRoZSBtYWluIHN1cmZhY2UgcGl0Y2ggaXMg
cmVxdWlyZWQgdG8gYmUgYSBtdWx0aXBsZSBvZiA0IHRpbGUKKyAqIHdpZHRocy4KKyAqLworI2Rl
ZmluZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MgZm91cmNjX21vZF9j
b2RlKElOVEVMLCA4KQorCiAvKgogICogVGlsZWQsIE5WMTJNVCwgZ3JvdXBlZCBpbiA2NCAocGl4
ZWxzKSB4IDMyIChsaW5lcykgLXNpemVkIG1hY3JvYmxvY2tzCiAgKgotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

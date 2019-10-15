Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BB8D6C97
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 02:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5EC6E5D8;
	Tue, 15 Oct 2019 00:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50D46E5D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 00:45:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 17:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,297,1566889200"; d="scan'208";a="195135962"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga007.fm.intel.com with ESMTP; 14 Oct 2019 17:45:51 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 17:47:41 -0700
Message-Id: <20191015004741.12051-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191015000533.11425-10-radhakrishna.sripada@intel.com>
References: <20191015000533.11425-10-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 09/10] drm/framebuffer/tgl: Format modifier
 for Intel Gen 12 render compression with Clear Color
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
Cc: Nanley Chery <nanley.g.chery@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Kalyan Kondapally <kalyan.kondapally@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBzdXJmYWNlcyBjb21wcmVzc2VkIGJ5IHJlbmRl
ciBlbmdpbmUgd2l0aCBDbGVhciBDb2xvciwgYWRkCmEgbmV3IG1vZGlmaWVyIGFzIHRoZSBkcml2
ZXIgbmVlZHMgdG8ga25vdyB0aGUgc3VyZmFjZSB3YXMgY29tcHJlc3NlZCBieSByZW5kZXIgZW5n
aW5lLgoKVjI6IERlc2NyaXB0aW9uIGNoYW5nZXMgYXMgc3VnZ2VzdGVkIGJ5IFJhZmFlbC4KVjM6
IE1lbnRpb24gdGhlIENsZWFyIENvbG9yIHNpemUgb2YgNjQgYml0cyBpbiB0aGUgY29tbWVudHMo
REspCnY0OiBGaXggdHJhaWxpbmcgd2hpdGVzcGFjZXMKCkNjOiBWaWxsZSBTeXJqYWxhIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5h
a2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzogS2FseWFuIEtvbmRhcGFsbHkgPGthbHlhbi5r
b25kYXBhbGx5QGludGVsLmNvbT4KQ2M6IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZhZWwuYW50b2du
b2xsaUBpbnRlbC5jb20+CkNjOiBOYW5sZXkgQ2hlcnkgPG5hbmxleS5nLmNoZXJ5QGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlw
YWRhQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCB8IDExICsr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91
cmNjLmgKaW5kZXggZGQ5Yzg1MTExZTc3Li44OTc5ZmRkNWE0MTQgMTAwNjQ0Ci0tLSBhL2luY2x1
ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCisrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJj
Yy5oCkBAIC00MzQsNiArNDM0LDE3IEBAIGV4dGVybiAiQyIgewogICovCiAjZGVmaW5lIEk5MTVf
Rk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX01DX0NDUyBmb3VyY2NfbW9kX2NvZGUoSU5URUwsIDcp
CiAKKy8qCisgKiBJbnRlbCBjb2xvciBjb250cm9sIHN1cmZhY2VzIENsZWFyIENvbG9yKENDU19D
QykgZm9yIEdlbi0xMiByZW5kZXIgY29tcHJlc3Npb24uCisgKgorICogVGhlIG1haW4gc3VyZmFj
ZSBpcyBZLXRpbGVkIGFuZCBpcyBhdCBwbGFuZSBpbmRleCAwIHdoZXJlYXMgQ0NTX0NDIGlzIGxp
bmVhcgorICogYW5kIGF0IGluZGV4IDEuIFRoZSBjbGVhciBjb2xvciBpcyBzdG9yZWQgYXQgaW5k
ZXggMiwgYW5kIHRoZSBwaXRjaCBzaG91bGQKKyAqIGJlIGlnbm9yZWQuIFRoZSBzaXplIG9mIGNs
ZWFyIGNvbG9yIHNob3VsZCBiZSA2NCBiaXRzLiBBIENDU19DQyBjYWNoZSBsaW5lCisgKiBjb3Jy
ZXNwb25kcyB0byBhbiBhcmVhIG9mIDR4MSB0aWxlcyBpbiB0aGUgbWFpbiBzdXJmYWNlLiBUaGUg
bWFpbiBzdXJmYWNlCisgKiAgcGl0Y2ggaXMgcmVxdWlyZWQgdG8gYmUgYSBtdWx0aXBsZSBvZiA0
IHRpbGUgd2lkdGhzLgorICovCisjZGVmaW5lIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEy
X1JDX0NDU19DQyBmb3VyY2NfbW9kX2NvZGUoSU5URUwsIDgpCisKIC8qCiAgKiBUaWxlZCwgTlYx
Mk1ULCBncm91cGVkIGluIDY0IChwaXhlbHMpIHggMzIgKGxpbmVzKSAtc2l6ZWQgbWFjcm9ibG9j
a3MKICAqCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==

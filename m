Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0A2D6C50
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 02:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A85CD6E26F;
	Tue, 15 Oct 2019 00:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFDA96E34B
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 00:03:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 17:03:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="185644173"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 17:03:45 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 17:05:32 -0700
Message-Id: <20191015000533.11425-10-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191015000533.11425-1-radhakrishna.sripada@intel.com>
References: <20191015000533.11425-1-radhakrishna.sripada@intel.com>
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
Cc: nanley.g.chery@intel.com, dhinakaran.pandiyan@intel.com,
 Kalyan Kondapally <kalyan.kondapally@intel.com>, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2VuMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBzdXJmYWNlcyBjb21wcmVzc2VkIGJ5IHJlbmRl
ciBlbmdpbmUgd2l0aCBDbGVhciBDb2xvciwgYWRkCmEgbmV3IG1vZGlmaWVyIGFzIHRoZSBkcml2
ZXIgbmVlZHMgdG8ga25vdyB0aGUgc3VyZmFjZSB3YXMgY29tcHJlc3NlZCBieSByZW5kZXIgZW5n
aW5lLgoKVjI6IERlc2NyaXB0aW9uIGNoYW5nZXMgYXMgc3VnZ2VzdGVkIGJ5IFJhZmFlbC4KVjM6
IE1lbnRpb24gdGhlIENsZWFyIENvbG9yIHNpemUgb2YgNjQgYml0cyBpbiB0aGUgY29tbWVudHMo
REspCgpDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNj
OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KQ2M6
IEthbHlhbiBLb25kYXBhbGx5IDxrYWx5YW4ua29uZGFwYWxseUBpbnRlbC5jb20+CkNjOiBSYWZh
ZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwuY29tPgpDYzogTmFubGV5IENo
ZXJ5IDxuYW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2hu
YSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+Ci0tLQogaW5jbHVkZS91
YXBpL2RybS9kcm1fZm91cmNjLmggfCAxMSArKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2Mu
aCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCmluZGV4IGRkOWM4NTExMWU3Ny4uYTIw
ZjJlYThkZGM2IDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaAorKysg
Yi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaApAQCAtNDM0LDYgKzQzNCwxNyBAQCBleHRl
cm4gIkMiIHsKICAqLwogI2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9NQ19D
Q1MgZm91cmNjX21vZF9jb2RlKElOVEVMLCA3KQogCisvKgorICogSW50ZWwgY29sb3IgY29udHJv
bCBzdXJmYWNlcyBDbGVhciBDb2xvcihDQ1NfQ0MpIGZvciBHZW4tMTIgcmVuZGVyIGNvbXByZXNz
aW9uLgorICoKKyAqIFRoZSBtYWluIHN1cmZhY2UgaXMgWS10aWxlZCBhbmQgaXMgYXQgcGxhbmUg
aW5kZXggMCB3aGVyZWFzIENDU19DQyBpcyBsaW5lYXIKKyAqIGFuZCBhdCBpbmRleCAxLiBUaGUg
Y2xlYXIgY29sb3IgaXMgc3RvcmVkIGF0IGluZGV4IDIsIGFuZCB0aGUgcGl0Y2ggc2hvdWxkCisg
KiBiZSBpZ25vcmVkLiBUaGUgc2l6ZSBvZiBjbGVhciBjb2xvciBzaG91bGQgYmUgNjQgYml0cy4g
QSBDQ1NfQ0MgY2FjaGUgbGluZSAKKyAqIGNvcnJlc3BvbmRzIHRvIGFuIGFyZWEgb2YgNHgxIHRp
bGVzIGluIHRoZSBtYWluIHN1cmZhY2UuIFRoZSBtYWluIHN1cmZhY2UgCisgKiAgcGl0Y2ggaXMg
cmVxdWlyZWQgdG8gYmUgYSBtdWx0aXBsZSBvZiA0IHRpbGUgd2lkdGhzLgorICovCisjZGVmaW5l
IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQyBmb3VyY2NfbW9kX2NvZGUo
SU5URUwsIDgpCisKIC8qCiAgKiBUaWxlZCwgTlYxMk1ULCBncm91cGVkIGluIDY0IChwaXhlbHMp
IHggMzIgKGxpbmVzKSAtc2l6ZWQgbWFjcm9ibG9ja3MKICAqCi0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

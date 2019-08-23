Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C3D9AAD0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C6146EC3E;
	Fri, 23 Aug 2019 08:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95F96EC33
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702112"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:54 -0700
Message-Id: <20190823082055.5992-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 22/23] drm/framebuffer/tgl: Format modifier
 for Intel Gen-12 media compression
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpHZW4tMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBzdXJmYWNlcyBjb21wcmVzc2VkIGJ5IHRo
ZSBtZWRpYSBlbmdpbmUsIGFkZAphIG5ldyBtb2RpZmllciBhcyB0aGUgZHJpdmVyIG5lZWRzIHRv
IGtub3cgdGhlIHN1cmZhY2Ugd2FzIGNvbXByZXNzZWQgYnkKdGhlIG1lZGlhIG9yIHJlbmRlciBl
bmdpbmUuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlh
bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oIHwgMTAgKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJj
Yy5oCmluZGV4IGZiNzI3MGJmOTY3MC4uZWM4MzUxOTIyMjY1IDEwMDY0NAotLS0gYS9pbmNsdWRl
L3VhcGkvZHJtL2RybV9mb3VyY2MuaAorKysgYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2Mu
aApAQCAtNDIwLDYgKzQyMCwxNiBAQCBleHRlcm4gIkMiIHsKICAqLwogI2RlZmluZSBJOTE1X0ZP
Uk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MgZm91cmNjX21vZF9jb2RlKElOVEVMLCA2KQog
CisvKgorICogSW50ZWwgY29sb3IgY29udHJvbCBzdXJmYWNlcyAoQ0NTKSBmb3IgR2VuLTEyIG1l
ZGlhIGNvbXByZXNzaW9uLgorICoKKyAqIFRoZSBtYWluIHN1cmZhY2UgaXMgWS10aWxlZCBhbmQg
aXMgYXQgcGxhbmUgaW5kZXggMCB3aGVyZWFzIENDUyBpcyBsaW5lYXIgYW5kCisgKiBhdCBpbmRl
eCAxLiBBIENDUyBjYWNoZSBsaW5lIGNvcnJlc3BvbmRzIHRvIGFuIGFyZWEgb2YgNHgxIHRpbGVz
IGluIHRoZSBtYWluCisgKiBzdXJmYWNlLiBUaGUgbWFpbiBzdXJmYWNlIHBpdGNoIGlzIHJlcXVp
cmVkIHRvIGJlIGEgbXVsdGlwbGUgb2YgNCB0aWxlCisgKiB3aWR0aHMuCisgKi8KKyNkZWZpbmUg
STkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIGZvdXJjY19tb2RfY29kZShJTlRF
TCwgNykKKwogLyoKICAqIFRpbGVkLCBOVjEyTVQsIGdyb3VwZWQgaW4gNjQgKHBpeGVscykgeCAz
MiAobGluZXMpIC1zaXplZCBtYWNyb2Jsb2NrcwogICoKLS0gCjIuMjMuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

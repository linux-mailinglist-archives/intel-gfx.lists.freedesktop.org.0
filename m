Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A4C109746
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 01:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE8E89F1B;
	Tue, 26 Nov 2019 00:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED3DD89DB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 00:25:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 16:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; d="scan'208";a="291549105"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga001.jf.intel.com with ESMTP; 25 Nov 2019 16:25:06 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 16:26:29 -0800
Message-Id: <20191126002635.5779-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
References: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 1/7] drm/framebuffer: Format modifier for
 Intel Gen-12 render compression
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
Cc: nanley.g.chery@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 dhinakaran.pandiyan@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpHZW4tMTIgaGFzIGEgbmV3IGNvbXByZXNzaW9uIGZvcm1hdCwgYWRkIGEgbmV3IG1vZGlmaWVy
IHRvIGluZGljYXRlIHRoYXQuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
CkNjOiBOYW5sZXkgRyBDaGVyeSA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPgpDYzogSmFzb24g
RWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PgpTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFu
IFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogaW5jbHVkZS91
YXBpL2RybS9kcm1fZm91cmNjLmggfCAxMSArKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEx
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2Mu
aCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCmluZGV4IDhjYWFhZjdmZjkxYi4uNWJh
NDgxZjQ5OTMxIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaAorKysg
Yi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaApAQCAtNDEwLDYgKzQxMCwxNyBAQCBleHRl
cm4gIkMiIHsKICNkZWZpbmUgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTCWZvdXJjY19tb2Rf
Y29kZShJTlRFTCwgNCkKICNkZWZpbmUgSTkxNV9GT1JNQVRfTU9EX1lmX1RJTEVEX0NDUwlmb3Vy
Y2NfbW9kX2NvZGUoSU5URUwsIDUpCiAKKy8qCisgKiBJbnRlbCBjb2xvciBjb250cm9sIHN1cmZh
Y2VzIChDQ1MpIGZvciBHZW4tMTIgcmVuZGVyIGNvbXByZXNzaW9uLgorICoKKyAqIFRoZSBtYWlu
IHN1cmZhY2UgaXMgWS10aWxlZCBhbmQgYXQgcGxhbmUgaW5kZXggMCwgdGhlIENDUyBpcyBsaW5l
YXIgYW5kCisgKiBhdCBpbmRleCAxLiBBIDY0QiBDQ1MgY2FjaGUgbGluZSBjb3JyZXNwb25kcyB0
byBhbiBhcmVhIG9mIDR4MSB0aWxlcyBpbgorICogbWFpbiBzdXJmYWNlLiBJbiBvdGhlciB3b3Jk
cywgNCBiaXRzIGluIENDUyBtYXAgdG8gYSBtYWluIHN1cmZhY2UgY2FjaGUKKyAqIGxpbmUgcGFp
ci4gVGhlIG1haW4gc3VyZmFjZSBwaXRjaCBpcyByZXF1aXJlZCB0byBiZSBhIG11bHRpcGxlIG9m
IGZvdXIKKyAqIFktdGlsZSB3aWR0aHMuCisgKi8KKyNkZWZpbmUgSTkxNV9GT1JNQVRfTU9EX1lf
VElMRURfR0VOMTJfUkNfQ0NTIGZvdXJjY19tb2RfY29kZShJTlRFTCwgNikKKwogLyoKICAqIFRp
bGVkLCBOVjEyTVQsIGdyb3VwZWQgaW4gNjQgKHBpeGVscykgeCAzMiAobGluZXMpIC1zaXplZCBt
YWNyb2Jsb2NrcwogICoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4

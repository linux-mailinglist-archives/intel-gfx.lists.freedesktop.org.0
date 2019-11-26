Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF675109747
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 01:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A6B689E63;
	Tue, 26 Nov 2019 00:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7511189DB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 00:25:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 16:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; d="scan'208";a="291549113"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga001.jf.intel.com with ESMTP; 25 Nov 2019 16:25:06 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 16:26:34 -0800
Message-Id: <20191126002635.5779-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
References: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 6/7] drm/framebuffer/tgl: Format modifier for
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
ciBlbmdpbmUgd2l0aApDbGVhciBDb2xvciwgYWRkIGEgbmV3IG1vZGlmaWVyIGFzIHRoZSBkcml2
ZXIgbmVlZHMgdG8ga25vdyB0aGUgc3VyZmFjZQp3YXMgY29tcHJlc3NlZCBieSByZW5kZXIgZW5n
aW5lLgoKVjI6IERlc2NyaXB0aW9uIGNoYW5nZXMgYXMgc3VnZ2VzdGVkIGJ5IFJhZmFlbC4KVjM6
IE1lbnRpb24gdGhlIENsZWFyIENvbG9yIHNpemUgb2YgNjQgYml0cyBpbiB0aGUgY29tbWVudHMo
REspCnY0OiBGaXggdHJhaWxpbmcgd2hpdGVzcGFjZXMKdjU6IEV4cGxhaW4gQ2xlYXIgQ29sb3Ig
aW4gdGhlIGRvY3VtZW50YXRpb24uCnY2OiBEb2N1bWVudGF0aW9uIE5pdHBpY2tzKE5hbmxleSkK
djc6IFJlbW92ZSBhbWJpZ3VpdHkgaW4gQ2xlYXIgQ29sb3Igc3RydWN0dWUgZXhwbGFuYXRpb24o
TmFubGV5KQoKQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CkNjOiBLYWx5YW4gS29uZGFwYWxseSA8a2FseWFuLmtvbmRhcGFsbHlAaW50ZWwuY29tPgpDYzog
UmFmYWVsIEFudG9nbm9sbGkgPHJhZmFlbC5hbnRvZ25vbGxpQGludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IE5hbmxleSBDaGVyeSA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgot
LS0KIGluY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oIHwgMTkgKysrKysrKysrKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRl
L3VhcGkvZHJtL2RybV9mb3VyY2MuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCmlu
ZGV4IDViYTQ4MWY0OTkzMS4uYzk1ZGQzYzQwNjM2IDEwMDY0NAotLS0gYS9pbmNsdWRlL3VhcGkv
ZHJtL2RybV9mb3VyY2MuaAorKysgYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaApAQCAt
NDIxLDYgKzQyMSwyNSBAQCBleHRlcm4gIkMiIHsKICAqLwogI2RlZmluZSBJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MgZm91cmNjX21vZF9jb2RlKElOVEVMLCA2KQogCisvKgor
ICogSW50ZWwgQ29sb3IgQ29udHJvbCBTdXJmYWNlIHdpdGggQ2xlYXIgQ29sb3IgKENDUykgZm9y
IEdlbi0xMiByZW5kZXIKKyAqIGNvbXByZXNzaW9uLgorICoKKyAqIFRoZSBtYWluIHN1cmZhY2Ug
aXMgWS10aWxlZCBhbmQgaXMgYXQgcGxhbmUgaW5kZXggMCB3aGVyZWFzIENDUyBpcyBsaW5lYXIK
KyAqIGFuZCBhdCBpbmRleCAxLiBUaGUgY2xlYXIgY29sb3IgaXMgc3RvcmVkIGF0IGluZGV4IDIs
IGFuZCB0aGUgcGl0Y2ggc2hvdWxkCisgKiBiZSBpZ25vcmVkLiBUaGUgY2xlYXIgY29sb3Igc3Ry
dWN0dXJlIGlzIDI1NiBiaXRzLiBUaGUgZmlyc3QgMTI4IGJpdHMKKyAqIHJlcHJlc2VudHMgUmF3
IENsZWFyIENvbG9yIFJlZCwgR3JlZW4sIEJsdWUgYW5kIEFscGhhIGNvbG9yIGVhY2ggcmVwcmVz
ZW50ZWQKKyAqIGJ5IDMyIGJpdHMuIFRoZSAzRCBlbmdpbmUgY2FuIHVzZSB0aGUgcmF3IGNsZWFy
IGNvbG9yIGFuZCB0aGUgc3VyZmFjZSBmb3JtYXQKKyAqIHRvIGdlbmVyYXRlIGEgY29udmVydGVk
IGNsZWFyIGNvbG9yIG9mIHNpemUgNjQgYml0cy4gVGhlIGZpcnN0IDMyIGJpdHMgc3RvcmUKKyAq
IHRoZSBMb3dlciBDb252ZXJ0ZWQgQ2xlYXIgQ29sb3IgdmFsdWUgYW5kIHRoZSBuZXh0IDMyIGJp
dHMgc3RvcmUgdGhlIEhpZ2hlcgorICogQ29udmVydGVkIENsZWFyIENvbG9yIHZhbHVlIHdoZW4g
YXBwbGljYWJsZS4gVGhlIENvbnZlcnRlZCBDbGVhciBDb2xvciB2YWx1ZXMKKyAqIGFyZSBjb25z
dW1lZCBieSB0aGUgREUuIFRoZSBsYXN0IDY0IGJpdHMgYXJlIHVzZWQgdG8gc3RvcmUgQ29sb3Ig
RGlzY2FyZAorICogRW5hYmxlIGFuZCBEZXB0aCBDbGVhciBWYWx1ZSBWYWxpZCB3aGljaCBhcmUg
aWdub3JlZCBieSB0aGUgREUuIEEgQ0NTIGNhY2hlCisgKiBsaW5lIGNvcnJlc3BvbmRzIHRvIGFu
IGFyZWEgb2YgNHgxIHRpbGVzIGluIHRoZSBtYWluIHN1cmZhY2UuIFRoZSBtYWluCisgKiBzdXJm
YWNlIHBpdGNoIGlzIHJlcXVpcmVkIHRvIGJlIGEgbXVsdGlwbGUgb2YgNCB0aWxlIHdpZHRocy4K
KyAqLworI2RlZmluZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MgZm91
cmNjX21vZF9jb2RlKElOVEVMLCA4KQorCiAvKgogICogVGlsZWQsIE5WMTJNVCwgZ3JvdXBlZCBp
biA2NCAocGl4ZWxzKSB4IDMyIChsaW5lcykgLXNpemVkIG1hY3JvYmxvY2tzCiAgKgotLSAKMi4y
MC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

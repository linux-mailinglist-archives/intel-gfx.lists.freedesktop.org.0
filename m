Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40B4E0EE4
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 02:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DBE86E935;
	Wed, 23 Oct 2019 00:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E86026E935
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 00:07:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 17:07:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,218,1569308400"; d="scan'208";a="191657118"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga008.jf.intel.com with ESMTP; 22 Oct 2019 17:07:29 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 17:09:22 -0700
Message-Id: <20191023000922.32247-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191015004741.12051-1-radhakrishna.sripada@intel.com>
References: <20191015004741.12051-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 09/10] drm/framebuffer/tgl: Format modifier
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
REspCnY0OiBGaXggdHJhaWxpbmcgd2hpdGVzcGFjZXMKdjU6IEV4cGxhaW4gQ2xlYXIgQ29sb3Ig
aW4gdGhlIGRvY3VtZW50YXRpb24uCgpDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRp
eWFuQGludGVsLmNvbT4KQ2M6IEthbHlhbiBLb25kYXBhbGx5IDxrYWx5YW4ua29uZGFwYWxseUBp
bnRlbC5jb20+CkNjOiBSYWZhZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwu
Y29tPgpDYzogTmFubGV5IENoZXJ5IDxuYW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFJhZGhha3Jpc2huYSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5j
b20+Ci0tLQogaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggfCAxOCArKysrKysrKysrKysr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2Mu
aAppbmRleCAxYWE2ZDQ2OGMwNDguLjZiNGQzNmUwY2NkMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS91
YXBpL2RybS9kcm1fZm91cmNjLmgKKysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgK
QEAgLTQzNCw2ICs0MzQsMjQgQEAgZXh0ZXJuICJDIiB7CiAgKi8KICNkZWZpbmUgSTkxNV9GT1JN
QVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIGZvdXJjY19tb2RfY29kZShJTlRFTCwgNykKIAor
LyoKKyAqIEludGVsIGNvbG9yIGNvbnRyb2wgc3VyZmFjZXMgQ2xlYXIgQ29sb3IoQ0NTX0NDKSBm
b3IgR2VuLTEyIHJlbmRlciBjb21wcmVzc2lvbi4KKyAqCisgKiBUaGUgbWFpbiBzdXJmYWNlIGlz
IFktdGlsZWQgYW5kIGlzIGF0IHBsYW5lIGluZGV4IDAgd2hlcmVhcyBDQ1NfQ0MgaXMgbGluZWFy
CisgKiBhbmQgYXQgaW5kZXggMS4gVGhlIGNsZWFyIGNvbG9yIGlzIHN0b3JlZCBhdCBpbmRleCAy
LCBhbmQgdGhlIHBpdGNoIHNob3VsZAorICogYmUgaWdub3JlZC4gVGhlIGNsZWFyIGNvbG9yIHN0
cnVjdHVyZSBpcyAyNTYgYml0cy4gVGhlIGZpcnN0IDEyOCBiaXRzIHJlcHJlc2VudHMKKyAqIFJh
dyBDbGVhciBDb2xvciBSZWQsIEdyZWVuLCBCbHVlIGFuZCBBbHBoYSBjb2xvciBlYWNoIHJlcHJl
c2VudGVkIGJ5IDMyIGJpdHMuCisgKiBUaGUgcmF3IGNsZWFyIGNvbG9yIGlzIGNvbnN1bWVkIGJ5
IHRoZSAzZCBlbmdpbmUgYW5kIGdlbmVyYXRlcyB0aGUgY29udmVydGVkCisgKiBjbGVhciBjb2xv
ciBvZiBzaXplIDY0IGJpdHMuIFRoZSBmaXJzdCAzMiBiaXRzIHN0b3JlIHRoZSBMb3dlciBDb252
ZXJ0ZWQgQ2xlYXIKKyAqIENvbG9yIHZhbHVlIGFuZCB0aGUgbmV4dCAzMiBiaXRzIHN0b3JlIHRo
ZSBIaWdoZXIgQ29udmVydGVkIENsZWFyIENvbG9yIHZhbHVlCisgKiB3aGVuIGFwcGxpY2FibGUu
IFRoZSBDb252ZXJ0ZWQgQ2xlYXIgQ29sb3IgdmFsdWVzIGFyZSBjb25zdW1lZCBieSB0aGUgREUu
IFRoZQorICogbGFzdCA2NCBiaXRzIGFyZSB1c2VkIHRvIHN0b3JlIENvbG9yIERpc2NhcmQgRW5h
YmxlIGFuZCBEZXB0aCBDbGVhciBWYWx1ZSBWYWxpZAorICogd2hpY2ggYXJlIGlnbm9yZWQgYnkg
dGhlIERFLiBBIENDU19DQyBjYWNoZSBsaW5lIGNvcnJlc3BvbmRzIHRvIGFuIGFyZWEgb2YgNHgx
CisgKiB0aWxlcyBpbiB0aGUgbWFpbiBzdXJmYWNlLiBUaGUgbWFpbiBzdXJmYWNlIHBpdGNoIGlz
IHJlcXVpcmVkIHRvIGJlIGEgbXVsdGlwbGUKKyAqIG9mIDQgdGlsZSB3aWR0aHMuCisgKi8KKyNk
ZWZpbmUgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDIGZvdXJjY19tb2Rf
Y29kZShJTlRFTCwgOCkKKwogLyoKICAqIFRpbGVkLCBOVjEyTVQsIGdyb3VwZWQgaW4gNjQgKHBp
eGVscykgeCAzMiAobGluZXMpIC1zaXplZCBtYWNyb2Jsb2NrcwogICoKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

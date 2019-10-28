Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99914E7A43
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 21:39:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1FC66EA18;
	Mon, 28 Oct 2019 20:39:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC4B26EA15
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 20:38:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 13:38:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="202622133"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga003.jf.intel.com with ESMTP; 28 Oct 2019 13:38:47 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 13:40:40 -0700
Message-Id: <20191028204041.13507-10-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028204041.13507-1-radhakrishna.sripada@intel.com>
References: <20191028204041.13507-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 09/10] drm/framebuffer/tgl: Format modifier
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
ciBlbmdpbmUgd2l0aApDbGVhciBDb2xvciwgYWRkIGEgbmV3IG1vZGlmaWVyIGFzIHRoZSBkcml2
ZXIgbmVlZHMgdG8ga25vdyB0aGUgc3VyZmFjZQp3YXMgY29tcHJlc3NlZCBieSByZW5kZXIgZW5n
aW5lLgoKVjI6IERlc2NyaXB0aW9uIGNoYW5nZXMgYXMgc3VnZ2VzdGVkIGJ5IFJhZmFlbC4KVjM6
IE1lbnRpb24gdGhlIENsZWFyIENvbG9yIHNpemUgb2YgNjQgYml0cyBpbiB0aGUgY29tbWVudHMo
REspCnY0OiBGaXggdHJhaWxpbmcgd2hpdGVzcGFjZXMKdjU6IEV4cGxhaW4gQ2xlYXIgQ29sb3Ig
aW4gdGhlIGRvY3VtZW50YXRpb24uCnY2OiBEb2N1bWVudGF0aW9uIE5pdHBpY2tzKE5hbmxleSkK
CkNjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERo
aW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzogS2Fs
eWFuIEtvbmRhcGFsbHkgPGthbHlhbi5rb25kYXBhbGx5QGludGVsLmNvbT4KQ2M6IFJhZmFlbCBB
bnRvZ25vbGxpIDxyYWZhZWwuYW50b2dub2xsaUBpbnRlbC5jb20+CkNjOiBOYW5sZXkgQ2hlcnkg
PG5hbmxleS5nLmNoZXJ5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNy
aXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KLS0tCiBpbmNsdWRlL3VhcGkv
ZHJtL2RybV9mb3VyY2MuaCB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCAxOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91
cmNjLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaAppbmRleCAxYWE2ZDQ2OGMwNDgu
LjRhYTdmM2Y5NzEyYSAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgK
KysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKQEAgLTQzNCw2ICs0MzQsMjUgQEAg
ZXh0ZXJuICJDIiB7CiAgKi8KICNkZWZpbmUgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJf
TUNfQ0NTIGZvdXJjY19tb2RfY29kZShJTlRFTCwgNykKIAorLyoKKyAqIEludGVsIENvbG9yIENv
bnRyb2wgU3VyZmFjZSB3aXRoIENsZWFyIENvbG9yIChDQ1MpIGZvciBHZW4tMTIgcmVuZGVyCisg
KiBjb21wcmVzc2lvbi4KKyAqCisgKiBUaGUgbWFpbiBzdXJmYWNlIGlzIFktdGlsZWQgYW5kIGlz
IGF0IHBsYW5lIGluZGV4IDAgd2hlcmVhcyBDQ1MgaXMgbGluZWFyCisgKiBhbmQgYXQgaW5kZXgg
MS4gVGhlIGNsZWFyIGNvbG9yIGlzIHN0b3JlZCBhdCBpbmRleCAyLCBhbmQgdGhlIHBpdGNoIHNo
b3VsZAorICogYmUgaWdub3JlZC4gVGhlIGNsZWFyIGNvbG9yIHN0cnVjdHVyZSBpcyAyNTYgYml0
cy4gVGhlIGZpcnN0IDEyOCBiaXRzCisgKiByZXByZXNlbnRzIFJhdyBDbGVhciBDb2xvciBSZWQs
IEdyZWVuLCBCbHVlIGFuZCBBbHBoYSBjb2xvciBlYWNoIHJlcHJlc2VudGVkCisgKiBieSAzMiBi
aXRzLiBUaGUgcmF3IGNsZWFyIGNvbG9yIGlzIGNvbnN1bWVkIGJ5IHRoZSAzZCBlbmdpbmUgYW5k
IGdlbmVyYXRlcworICogdGhlIGNvbnZlcnRlZCBjbGVhciBjb2xvciBvZiBzaXplIDY0IGJpdHMu
IFRoZSBmaXJzdCAzMiBiaXRzIHN0b3JlIHRoZSBMb3dlcgorICogQ29udmVydGVkIENsZWFyIENv
bG9yIHZhbHVlIGFuZCB0aGUgbmV4dCAzMiBiaXRzIHN0b3JlIHRoZSBIaWdoZXIgQ29udmVydGVk
CisgKiBDbGVhciBDb2xvciB2YWx1ZSB3aGVuIGFwcGxpY2FibGUuIFRoZSBDb252ZXJ0ZWQgQ2xl
YXIgQ29sb3IgdmFsdWVzIGFyZQorICogY29uc3VtZWQgYnkgdGhlIERFLiBUaGUgbGFzdCA2NCBi
aXRzIGFyZSB1c2VkIHRvIHN0b3JlIENvbG9yIERpc2NhcmQgRW5hYmxlCisgKiBhbmQgRGVwdGgg
Q2xlYXIgVmFsdWUgVmFsaWQgd2hpY2ggYXJlIGlnbm9yZWQgYnkgdGhlIERFLiBBIENDUyBjYWNo
ZSBsaW5lCisgKiBjb3JyZXNwb25kcyB0byBhbiBhcmVhIG9mIDR4MSB0aWxlcyBpbiB0aGUgbWFp
biBzdXJmYWNlLiBUaGUgbWFpbiBzdXJmYWNlCisgKiBwaXRjaCBpcyByZXF1aXJlZCB0byBiZSBh
IG11bHRpcGxlIG9mIDQgdGlsZSB3aWR0aHMuCisgKi8KKyNkZWZpbmUgSTkxNV9GT1JNQVRfTU9E
X1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDIGZvdXJjY19tb2RfY29kZShJTlRFTCwgOCkKKwogLyoK
ICAqIFRpbGVkLCBOVjEyTVQsIGdyb3VwZWQgaW4gNjQgKHBpeGVscykgeCAzMiAobGluZXMpIC1z
aXplZCBtYWNyb2Jsb2NrcwogICoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4

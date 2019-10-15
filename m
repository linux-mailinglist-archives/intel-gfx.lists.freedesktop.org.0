Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D8CD6C54
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 02:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF246E5C6;
	Tue, 15 Oct 2019 00:03:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D376E1CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 00:03:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 17:03:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="185644165"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 17:03:44 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 17:05:29 -0700
Message-Id: <20191015000533.11425-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191015000533.11425-1-radhakrishna.sripada@intel.com>
References: <20191015000533.11425-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 06/10] drm/framebuffer: Format modifier for
 Intel Gen-12 media compression
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
CgpHZW4tMTIgZGlzcGxheSBjYW4gZGVjb21wcmVzcyBzdXJmYWNlcyBjb21wcmVzc2VkIGJ5IHRo
ZSBtZWRpYSBlbmdpbmUsIGFkZAphIG5ldyBtb2RpZmllciBhcyB0aGUgZHJpdmVyIG5lZWRzIHRv
IGtub3cgdGhlIHN1cmZhY2Ugd2FzIGNvbXByZXNzZWQgYnkKdGhlIG1lZGlhIG9yIHJlbmRlciBl
bmdpbmUuCgpDYzogTmFubGV5IEcgQ2hlcnkgPG5hbmxleS5nLmNoZXJ5QGludGVsLmNvbT4KQ2M6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEaGluYWth
cmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogaW5jbHVk
ZS91YXBpL2RybS9kcm1fZm91cmNjLmggfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2Zv
dXJjYy5oIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgKaW5kZXggNTIxMDc1MzM5OTRj
Li5kZDljODUxMTFlNzcgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5o
CisrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oCkBAIC00MjEsNiArNDIxLDE5IEBA
IGV4dGVybiAiQyIgewogICovCiAjZGVmaW5lIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEy
X1JDX0NDUyBmb3VyY2NfbW9kX2NvZGUoSU5URUwsIDYpCiAKKy8qCisgKiBJbnRlbCBjb2xvciBj
b250cm9sIHN1cmZhY2VzIChDQ1MpIGZvciBHZW4tMTIgbWVkaWEgY29tcHJlc3Npb24KKyAqCisg
KiBUaGUgbWFpbiBzdXJmYWNlIGlzIFktdGlsZWQgYW5kIGF0IHBsYW5lIGluZGV4IDAsIHRoZSBD
Q1MgaXMgbGluZWFyIGFuZAorICogYXQgaW5kZXggMS4gQSA2NEIgQ0NTIGNhY2hlIGxpbmUgY29y
cmVzcG9uZHMgdG8gYW4gYXJlYSBvZiA0eDEgdGlsZXMgaW4KKyAqIG1haW4gc3VyZmFjZS4gSW4g
b3RoZXIgd29yZHMsIDQgYml0cyBpbiBDQ1MgbWFwIHRvIGEgbWFpbiBzdXJmYWNlIGNhY2hlCisg
KiBsaW5lIHBhaXIuIFRoZSBtYWluIHN1cmZhY2UgcGl0Y2ggaXMgcmVxdWlyZWQgdG8gYmUgYSBt
dWx0aXBsZSBvZiBmb3VyCisgKiBZLXRpbGUgd2lkdGhzLiBGb3Igc2VtaS1wbGFuYXIgZm9ybWF0
cyBsaWtlIE5WMTIsIENDUyBwbGFuZSBmb2xsb3dzIHRoZQorICogWSBhbmQgVVYgcGxhbmVzIGku
ZS4sIHBsYW5lcyAwIGFuZCAyIGFyZSB1c2VkIGZvciBZIGFuZCBVViBzdXJmYWNlcywKKyAqIHBs
YW5lcyAxIGFuZCAzIGZvciB0aGUgcmVzcGVjdGl2ZSBDQ1MuCisgKi8KKyNkZWZpbmUgSTkxNV9G
T1JNQVRfTU9EX1lfVElMRURfR0VOMTJfTUNfQ0NTIGZvdXJjY19tb2RfY29kZShJTlRFTCwgNykK
KwogLyoKICAqIFRpbGVkLCBOVjEyTVQsIGdyb3VwZWQgaW4gNjQgKHBpeGVscykgeCAzMiAobGlu
ZXMpIC1zaXplZCBtYWNyb2Jsb2NrcwogICoKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

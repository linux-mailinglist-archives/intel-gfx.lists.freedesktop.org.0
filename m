Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2B1193EC2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 13:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A8C6E33E;
	Thu, 26 Mar 2020 12:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A10B6E33E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 12:23:50 +0000 (UTC)
IronPort-SDR: ExE0BCsh6e3I66aAsPKaR17TpMe0cD4wsk/QxlLLLSyZgC7ksH1w1Vd2OgFNiYqAF3BGzc/vI6
 S2Z4OXiMKeGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 05:23:49 -0700
IronPort-SDR: 6/gGtl+0mlQEV6XCTGRzDqQyULy3Feziow46lv4qk0yBmNgLSjkJbiupsGW55gsuHFuxmaFfha
 zbSxdFTnvgFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="393963314"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga004.jf.intel.com with ESMTP; 26 Mar 2020 05:23:47 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 18:21:11 +0530
Message-Id: <20200326125111.11081-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v3] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: SweeAun Khor <swee.aun.khor@intel.com>, Souza@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBmaXhlcyB0aGUgcHJpdmF0ZV9mbGFncyBvZiBtb2RlIHRvIGJlIGNoZWNrZWQg
YW5kCmNvbXBhcmVkIGFnYWluc3QgdWFwaS5tb2RlIGFuZCBub3QgZnJvbSBody5tb2RlLiBUaGlz
IGhlbHBzCnByb3Blcmx5IHRyaWdnZXIgbW9kZXNldCBhdCBib290IGlmIGRlc2lyZWQgYnkgZHJp
dmVyLgoKSXQgaGVscHMgcmVzb2x2ZSBhdWRpb19jb2RlYyBpbml0aWFsaXphdGlvbiBpc3N1ZXMg
aWYgZGlzcGxheQppcyBjb25uZWN0ZWQgYXQgYm9vdC4gSW5pdGlhbCBkaXNjdXNzaW9uIG9uIHRo
aXMgaXNzdWUgaGFzIGhhcHBlbmVkCm9uIGJlbG93IHRocmVhZDoKaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83NDgyOC8KCnYyOiBObyBmdW5jdGlvbmFsIGNoYW5nZS4g
Rml4ZWQgdGhlIENsb3NlcyB0YWcgYW5kIGFkZGVkCk1hYXJ0ZW4ncyBSQi4KCnYzOiBBZGRlZCBG
aXhlcyB0YWcuCgpDYzogVmlsbGUgU3lyasOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5j
b20+CkNjOiBLYWkgVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBT
b3V6YSwgSm9zZSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkZpeGVzOiA1OGQxMjRlYTI3MzkgKCJk
cm0vaTkxNTogQ29tcGxldGUgY3J0YyBody91YXBpIHNwbGl0LCB2Ni4iKQpDbG9zZXM6IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEzNjMKU3VnZ2VzdGVk
LWJ5OiBWaWxsZSBTeXJqw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBTd2VlQXVuIEtob3IgPHN3ZWUuYXVuLmtob3JAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGZlNTVjN2M3MTNmMS4u
ZTYzMDQyOWFmMmMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtMTQ3NDcsOCArMTQ3NDcsOCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19j
aGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCS8qIENhdGNoIEk5MTVfTU9ERV9GTEFHX0lO
SEVSSVRFRCAqLwogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBj
cnRjLCBvbGRfY3J0Y19zdGF0ZSwKIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Ci0JCWlm
IChuZXdfY3J0Y19zdGF0ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzICE9Ci0JCSAgICBvbGRfY3J0
Y19zdGF0ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzKQorCQlpZiAobmV3X2NydGNfc3RhdGUtPnVh
cGkubW9kZS5wcml2YXRlX2ZsYWdzICE9CisJCSAgICBvbGRfY3J0Y19zdGF0ZS0+dWFwaS5tb2Rl
LnByaXZhdGVfZmxhZ3MpCiAJCQluZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0
cnVlOwogCX0KIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK

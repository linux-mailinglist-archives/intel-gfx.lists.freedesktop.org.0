Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7ED57F31
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 11:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7A76E842;
	Thu, 27 Jun 2019 09:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC676E842
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 09:23:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 02:16:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="183401218"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2019 02:16:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 12:19:14 +0300
Message-Id: <20190627091914.30795-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/irq: make i945gm_vblank_work_func()
 static again
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHN0YXRpYyBrZXl3b3JkIHdhcyBhcHBhcmVudGx5IGFjY2lkZW50YWxseSByZW1vdmVkIGlu
IGNvbW1pdAowOGZhOGZkMGZhYTUgKCJkcm0vaTkxNTogU3dpdGNoIHRvIHBlci1jcnRjIHZibGFu
ayB2ZnVuY3MiKSwgbGVhZGluZyB0bwpzcGFyc2Ugd2FybmluZzoKCmRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfaXJxLmM6MzM4Mjo2OiB3YXJuaW5nOiBzeW1ib2wKJ2k5NDVnbV92Ymxhbmtfd29y
a19mdW5jJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwoKTWFrZSB0aGUg
ZnVuY3Rpb24gc3RhdGljIGFnYWluLgoKRml4ZXM6IDA4ZmE4ZmQwZmFhNSAoImRybS9pOTE1OiBT
d2l0Y2ggdG8gcGVyLWNydGMgdmJsYW5rIHZmdW5jcyIpCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDIgKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCmluZGV4IDFiODNkNmUyYWU2OS4uNzNmMDMzOGZhZjlmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKQEAgLTMzNzksNyArMzM3OSw3IEBAIHZvaWQgYmR3X2Rpc2FibGVfdmJsYW5r
KHN0cnVjdCBkcm1fY3J0YyAqY3J0YykKIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJp
di0+aXJxX2xvY2ssIGlycWZsYWdzKTsKIH0KIAotdm9pZCBpOTQ1Z21fdmJsYW5rX3dvcmtfZnVu
YyhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCitzdGF0aWMgdm9pZCBpOTQ1Z21fdmJsYW5rX3dv
cmtfZnVuYyhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiB7CiAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0KIAkJY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlLCBpOTQ1Z21fdmJsYW5rLndvcmspOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

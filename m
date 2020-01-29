Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B4F14D33E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 23:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786D86E452;
	Wed, 29 Jan 2020 22:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 036756E452
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 22:52:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 14:52:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="229763368"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga003.jf.intel.com with ESMTP; 29 Jan 2020 14:52:13 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.138) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 29 Jan 2020 14:52:13 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 29 Jan 2020 14:47:29 -0800
Message-ID: <20200129224729.4684-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.22.254.138]
Subject: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the hpd_pin
 instead of the port
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gc29tZSBwbGF0Zm9ybXMgc3VjaCBhcyBFbGtoYXJ0IExha2UsIGFsdGhvdWdoIHdlIG1heSB1
c2UgRERJIEQKdG8gZHJpdmUgYSBjb25uZWN0b3IsIHdlIGhhdmUgdG8gdXNlIFBIWSBBIChDb21i
byBQaHkgUE9SVCBBKSB0bwpkZXRlY3QgdGhlIGhvdHBsdWcgaW50ZXJydXB0cyBhcyBwZXIgdGhl
IHNwZWMgYmVjYXVzZSB0aGVyZSBpcyBubwpvbmUtdG8tb25lIG1hcHBpbmcgYmV0d2VlbiBERElz
IGFuZCBQSFlzLiBUaGVyZWZvcmUsIHVzZSB0aGUKZnVuY3Rpb24gaW50ZWxfcG9ydF90b19waHko
KSB3aGljaCBjb250YWlucyB0aGUgbG9naWMgZm9yIHN1Y2gKbWFwcGluZyhzKSB0byBmaW5kIHRo
ZSBjb3JyZWN0IGhwZF9waW4uCgpUaGlzIGNoYW5nZSBzaG91bGQgbm90IGFmZmVjdCBvdGhlciBw
bGF0Zm9ybXMgYXMgdGhlcmUgaXMgYWx3YXlzCmEgb25lLXRvLW9uZSBtYXBwaW5nIGJldHdlZW4g
RERJcyBhbmQgUEhZcy4KCkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyB8IDUgKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwppbmRleCAwNDJkOThiYWUx
ZWEuLjQ5MWY2YjZmOTIwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9ob3RwbHVnLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9ob3RwbHVnLmMKQEAgLTg5LDcgKzg5LDggQEAKIGVudW0gaHBkX3BpbiBpbnRlbF9ocGRfcGlu
X2RlZmF1bHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAgIGVudW0g
cG9ydCBwb3J0KQogewotCXN3aXRjaCAocG9ydCkgeworCWVudW0gcGh5IHBoeSA9IGludGVsX3Bv
cnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKKwlzd2l0Y2ggKHBoeSkgewogCWNhc2UgUE9SVF9B
OgogCQlyZXR1cm4gSFBEX1BPUlRfQTsKIAljYXNlIFBPUlRfQjoKQEAgLTExMSw3ICsxMTIsNyBA
QCBlbnVtIGhwZF9waW4gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAljYXNlIFBPUlRfSToKIAkJcmV0dXJuIEhQRF9QT1JUX0k7CiAJZGVm
YXVsdDoKLQkJTUlTU0lOR19DQVNFKHBvcnQpOworCQlNSVNTSU5HX0NBU0UocGh5KTsKIAkJcmV0
dXJuIEhQRF9OT05FOwogCX0KIH0KLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

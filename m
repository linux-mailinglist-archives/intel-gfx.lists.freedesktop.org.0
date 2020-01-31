Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B981C14E687
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 01:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0356E93A;
	Fri, 31 Jan 2020 00:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A924F6E93A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 00:23:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 16:23:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,383,1574150400"; d="scan'208";a="430207735"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jan 2020 16:23:00 -0800
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 16:23:00 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.138) by
 ORSMSX113.amr.corp.intel.com (10.22.240.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 16:22:59 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 30 Jan 2020 16:18:16 -0800
Message-ID: <20200131001816.32741-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <0b0038baaa75ed086bf8ba27d126136f601d6bce.camel@intel.com>
References: <0b0038baaa75ed086bf8ba27d126136f601d6bce.camel@intel.com>
MIME-Version: 1.0
X-Originating-IP: [10.22.254.138]
Subject: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the hpd_pin
 instead of the port (v3)
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
Cc: Jani Nikula <jani.nikula@intel.com>
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
RERJcyBhbmQgUEhZcy4KCnYyOgotIENvbnZlcnQgdGhlIGNhc2Ugc3RhdGVtZW50cyB0byB1c2Ug
UEhZcyBpbnN0ZWFkIG9mIFBPUlRzIChKYW5pKQoKdjM6Ci0gUmVmYWN0b3IgdGhlIGZ1bmN0aW9u
IHRvIHJlZHVjZSB0aGUgbnVtYmVyIG9mIHJldHVybiBzdGF0ZW1lbnRzIGJ5CiAgbHVtcGluZyBh
bGwgdGhlIGNhc2Ugc3RhdGVtZW50cyB0b2dldGhlciBleGNlcHQgUEhZX0Ygd2hpY2ggbmVlZHMK
ICBzcGVjaWFsIGhhbmRsaW5nIChKb3NlKQoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyB8IDM3ICsrKysrKysrLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3Rw
bHVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwppbmRl
eCAwNDJkOThiYWUxZWEuLjI3ZTMwMzMyNzhhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKQEAgLTg5LDI5ICs4OSwyMiBAQAogZW51bSBocGRfcGlu
IGludGVsX2hwZF9waW5fZGVmYXVsdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJCQkJICAgZW51bSBwb3J0IHBvcnQpCiB7Ci0Jc3dpdGNoIChwb3J0KSB7Ci0JY2FzZSBQT1JU
X0E6Ci0JCXJldHVybiBIUERfUE9SVF9BOwotCWNhc2UgUE9SVF9COgotCQlyZXR1cm4gSFBEX1BP
UlRfQjsKLQljYXNlIFBPUlRfQzoKLQkJcmV0dXJuIEhQRF9QT1JUX0M7Ci0JY2FzZSBQT1JUX0Q6
Ci0JCXJldHVybiBIUERfUE9SVF9EOwotCWNhc2UgUE9SVF9FOgotCQlyZXR1cm4gSFBEX1BPUlRf
RTsKLQljYXNlIFBPUlRfRjoKLQkJaWYgKElTX0NOTF9XSVRIX1BPUlRfRihkZXZfcHJpdikpCi0J
CQlyZXR1cm4gSFBEX1BPUlRfRTsKLQkJcmV0dXJuIEhQRF9QT1JUX0Y7Ci0JY2FzZSBQT1JUX0c6
Ci0JCXJldHVybiBIUERfUE9SVF9HOwotCWNhc2UgUE9SVF9IOgotCQlyZXR1cm4gSFBEX1BPUlRf
SDsKLQljYXNlIFBPUlRfSToKLQkJcmV0dXJuIEhQRF9QT1JUX0k7CisJZW51bSBwaHkgcGh5ID0g
aW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQpOworCisJc3dpdGNoIChwaHkpIHsKKwlj
YXNlIFBIWV9GOgorCQlyZXR1cm4gSVNfQ05MX1dJVEhfUE9SVF9GKGRldl9wcml2KSA/IEhQRF9Q
T1JUX0UgOiBIUERfUE9SVF9GOworCWNhc2UgUEhZX0E6CisJY2FzZSBQSFlfQjoKKwljYXNlIFBI
WV9DOgorCWNhc2UgUEhZX0Q6CisJY2FzZSBQSFlfRToKKwljYXNlIFBIWV9HOgorCWNhc2UgUEhZ
X0g6CisJY2FzZSBQSFlfSToKKwkJcmV0dXJuIEhQRF9QT1JUX0EgKyBwaHk7CiAJZGVmYXVsdDoK
LQkJTUlTU0lOR19DQVNFKHBvcnQpOworCQlNSVNTSU5HX0NBU0UocGh5KTsKIAkJcmV0dXJuIEhQ
RF9OT05FOwogCX0KIH0KLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==

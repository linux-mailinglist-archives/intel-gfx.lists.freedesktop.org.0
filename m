Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A450414E5A1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 23:48:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA9F6FA4B;
	Thu, 30 Jan 2020 22:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5975B6FA4B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 22:48:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 14:48:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="428527266"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga005.fm.intel.com with ESMTP; 30 Jan 2020 14:48:11 -0800
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 14:48:10 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.139) by
 ORSMSX113.amr.corp.intel.com (10.22.240.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 14:48:10 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 30 Jan 2020 14:43:23 -0800
Message-ID: <20200130224323.14434-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <87wo999qmu.fsf@intel.com>
References: <87wo999qmu.fsf@intel.com>
MIME-Version: 1.0
X-Originating-IP: [10.22.254.139]
Subject: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the hpd_pin
 instead of the port (v2)
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
UEhZcyBpbnN0ZWFkIG9mIFBPUlRzIChKYW5pKQoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyB8IDI0ICsrKysrKysr
KysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
b3RwbHVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwpp
bmRleCAwNDJkOThiYWUxZWEuLjJiY2ZhNDY4MjUxMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKQEAgLTg5LDI5ICs4OSwzMSBAQAogZW51bSBocGRf
cGluIGludGVsX2hwZF9waW5fZGVmYXVsdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCiAJCQkJICAgZW51bSBwb3J0IHBvcnQpCiB7Ci0Jc3dpdGNoIChwb3J0KSB7Ci0JY2FzZSBQ
T1JUX0E6CisJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIHBvcnQp
OworCisJc3dpdGNoIChwaHkpIHsKKwljYXNlIFBIWV9BOgogCQlyZXR1cm4gSFBEX1BPUlRfQTsK
LQljYXNlIFBPUlRfQjoKKwljYXNlIFBIWV9COgogCQlyZXR1cm4gSFBEX1BPUlRfQjsKLQljYXNl
IFBPUlRfQzoKKwljYXNlIFBIWV9DOgogCQlyZXR1cm4gSFBEX1BPUlRfQzsKLQljYXNlIFBPUlRf
RDoKKwljYXNlIFBIWV9EOgogCQlyZXR1cm4gSFBEX1BPUlRfRDsKLQljYXNlIFBPUlRfRToKKwlj
YXNlIFBIWV9FOgogCQlyZXR1cm4gSFBEX1BPUlRfRTsKLQljYXNlIFBPUlRfRjoKKwljYXNlIFBI
WV9GOgogCQlpZiAoSVNfQ05MX1dJVEhfUE9SVF9GKGRldl9wcml2KSkKIAkJCXJldHVybiBIUERf
UE9SVF9FOwogCQlyZXR1cm4gSFBEX1BPUlRfRjsKLQljYXNlIFBPUlRfRzoKKwljYXNlIFBIWV9H
OgogCQlyZXR1cm4gSFBEX1BPUlRfRzsKLQljYXNlIFBPUlRfSDoKKwljYXNlIFBIWV9IOgogCQly
ZXR1cm4gSFBEX1BPUlRfSDsKLQljYXNlIFBPUlRfSToKKwljYXNlIFBIWV9JOgogCQlyZXR1cm4g
SFBEX1BPUlRfSTsKIAlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0UocG9ydCk7CisJCU1JU1NJTkdf
Q0FTRShwaHkpOwogCQlyZXR1cm4gSFBEX05PTkU7CiAJfQogfQotLSAKMi4yMS4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

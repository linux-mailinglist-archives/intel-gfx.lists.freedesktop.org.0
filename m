Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3022174400
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 01:54:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467B56F53B;
	Sat, 29 Feb 2020 00:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4FA86F53B
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 00:54:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 16:54:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,498,1574150400"; d="scan'208";a="232698446"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga008.fm.intel.com with ESMTP; 28 Feb 2020 16:54:00 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.138) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 28 Feb 2020 16:53:59 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 28 Feb 2020 16:48:06 -0800
Message-ID: <20200229004806.11753-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <87y2to7yu0.fsf@intel.com>
References: <87y2to7yu0.fsf@intel.com>
MIME-Version: 1.0
X-Originating-IP: [10.22.254.138]
Subject: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the hpd_pin
 instead of the port (v4)
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
ICBzcGVjaWFsIGhhbmRsaW5nIChKb3NlKQoKdjQ6Ci0gQWRkIGEgY29tbWVudCBkZXNjcmliaW5n
IGhvdyB0aGUgSFBEIHBpbiB2YWx1ZSBhc3NvY2lhdGVkIHdpdGggYW55CiAgcG9ydCBjYW4gYmUg
cmV0cmlldmVkIHVzaW5nIHBvcnQgb3IgcGh5IGVudW0gdmFsdWUuIChKYW5pKQoKQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5
QGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90
cGx1Zy5jIHwgMzcgKysrKysrKystLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICAgICAgIHwgIDYgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNl
cnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaG90cGx1Zy5jCmluZGV4IDRhNjIwODg1NzQ4OC4uZTFkZGNjYzJjZTk3IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwpAQCAtODcsMjkg
Kzg3LDIyIEBACiBlbnVtIGhwZF9waW4gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgICBlbnVtIHBvcnQgcG9ydCkKIHsKLQlzd2l0
Y2ggKHBvcnQpIHsKLQljYXNlIFBPUlRfQToKLQkJcmV0dXJuIEhQRF9QT1JUX0E7Ci0JY2FzZSBQ
T1JUX0I6Ci0JCXJldHVybiBIUERfUE9SVF9COwotCWNhc2UgUE9SVF9DOgotCQlyZXR1cm4gSFBE
X1BPUlRfQzsKLQljYXNlIFBPUlRfRDoKLQkJcmV0dXJuIEhQRF9QT1JUX0Q7Ci0JY2FzZSBQT1JU
X0U6Ci0JCXJldHVybiBIUERfUE9SVF9FOwotCWNhc2UgUE9SVF9GOgotCQlpZiAoSVNfQ05MX1dJ
VEhfUE9SVF9GKGRldl9wcml2KSkKLQkJCXJldHVybiBIUERfUE9SVF9FOwotCQlyZXR1cm4gSFBE
X1BPUlRfRjsKLQljYXNlIFBPUlRfRzoKLQkJcmV0dXJuIEhQRF9QT1JUX0c7Ci0JY2FzZSBQT1JU
X0g6Ci0JCXJldHVybiBIUERfUE9SVF9IOwotCWNhc2UgUE9SVF9JOgotCQlyZXR1cm4gSFBEX1BP
UlRfSTsKKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7
CisKKwlzd2l0Y2ggKHBoeSkgeworCWNhc2UgUEhZX0Y6CisJCXJldHVybiBJU19DTkxfV0lUSF9Q
T1JUX0YoZGV2X3ByaXYpID8gSFBEX1BPUlRfRSA6IEhQRF9QT1JUX0Y7CisJY2FzZSBQSFlfQToK
KwljYXNlIFBIWV9COgorCWNhc2UgUEhZX0M6CisJY2FzZSBQSFlfRDoKKwljYXNlIFBIWV9FOgor
CWNhc2UgUEhZX0c6CisJY2FzZSBQSFlfSDoKKwljYXNlIFBIWV9JOgorCQlyZXR1cm4gSFBEX1BP
UlRfQSArIHBoeTsKIAlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0UocG9ydCk7CisJCU1JU1NJTkdf
Q0FTRShwaHkpOwogCQlyZXR1cm4gSFBEX05PTkU7CiAJfQogfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKaW5kZXggYjYyMWRmOTMzMjEyLi5jOWQ3YjkxMjdiNmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaApAQCAtMTE3LDYgKzExNywxMiBAQAogCiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsK
IAorLyoKKyAqIFRoZSBjb2RlIGFzc3VtZXMgdGhhdCB0aGUgaHBkX3BpbnMgYmVsb3cgaGF2ZSBj
b25zZWN1dGl2ZSB2YWx1ZXMgYW5kCisgKiBzdGFydGluZyB3aXRoIEhQRF9QT1JUX0EsIHRoZSBI
UEQgcGluIGFzc29jaWF0ZWQgd2l0aCBhbnkgcG9ydCBjYW4gYmUKKyAqIHJldHJpZXZlZCBieSBh
ZGRpbmcgdGhlIGNvcnJlc3BvbmRpbmcgcG9ydCAob3IgcGh5KSBlbnVtIHZhbHVlIHRvCisgKiBI
UERfUE9SVF9BLiBGb3IgZXhhbXBsZSwgSFBEX1BPUlRfQyA9IEhQRF9QT1JUX0EgKyBQT1JUX0Mv
UEhZX0MuCisgKi8KIGVudW0gaHBkX3BpbiB7CiAJSFBEX05PTkUgPSAwLAogCUhQRF9UViA9IEhQ
RF9OT05FLCAgICAgLyogVFYgaXMga25vd24gdG8gYmUgdW5yZWxpYWJsZSAqLwotLSAKMi4yMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

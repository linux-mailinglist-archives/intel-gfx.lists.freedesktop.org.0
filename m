Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A897D179C89
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 00:48:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64436EB72;
	Wed,  4 Mar 2020 23:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2D36EB72
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 23:48:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 15:48:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,515,1574150400"; d="scan'208";a="413325799"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga005.jf.intel.com with ESMTP; 04 Mar 2020 15:48:17 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 15:48:16 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.138) by
 ORSMSX115.amr.corp.intel.com (10.22.240.11) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 15:48:16 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 4 Mar 2020 15:42:40 -0800
Message-ID: <20200304234240.12062-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200302135035.GJ13686@intel.com>
References: <20200302135035.GJ13686@intel.com>
MIME-Version: 1.0
X-Originating-IP: [10.22.254.138]
Subject: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the hpd_pin
 instead of the port (v5)
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
cmV0cmlldmVkIHVzaW5nIHBvcnQgb3IgcGh5IGVudW0gdmFsdWUuIChKYW5pKQoKdjU6Ci0gVXNl
IGNhc2UgcmFuZ2VzIGluc3RlYWQgb2YgaW5kaXZpZHVhbCBsYWJlbHMgYW5kIGFsc28gbm9ybWFs
aXplIHRoZQogIHJldHVybiBzdGF0ZW1lbnQgYnkgYWRkaW5nIC1QSFlfQSB0byB0aGUgZXhwcmVz
c2lvbiAoVmlsbGUpCgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkg
PHZpdmVrLmthc2lyZWRkeUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hvdHBsdWcuYyB8IDMxICsrKysrKy0tLS0tLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICB8ICA3ICsrKysrCiAyIGZpbGVz
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKaW5kZXggNGE2MjA4ODU3NDg4Li41
NjIyMjdkNTRjY2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaG90cGx1Zy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90
cGx1Zy5jCkBAIC04NywyOSArODcsMTYgQEAKIGVudW0gaHBkX3BpbiBpbnRlbF9ocGRfcGluX2Rl
ZmF1bHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAgIGVudW0gcG9y
dCBwb3J0KQogewotCXN3aXRjaCAocG9ydCkgewotCWNhc2UgUE9SVF9BOgotCQlyZXR1cm4gSFBE
X1BPUlRfQTsKLQljYXNlIFBPUlRfQjoKLQkJcmV0dXJuIEhQRF9QT1JUX0I7Ci0JY2FzZSBQT1JU
X0M6Ci0JCXJldHVybiBIUERfUE9SVF9DOwotCWNhc2UgUE9SVF9EOgotCQlyZXR1cm4gSFBEX1BP
UlRfRDsKLQljYXNlIFBPUlRfRToKLQkJcmV0dXJuIEhQRF9QT1JUX0U7Ci0JY2FzZSBQT1JUX0Y6
Ci0JCWlmIChJU19DTkxfV0lUSF9QT1JUX0YoZGV2X3ByaXYpKQotCQkJcmV0dXJuIEhQRF9QT1JU
X0U7Ci0JCXJldHVybiBIUERfUE9SVF9GOwotCWNhc2UgUE9SVF9HOgotCQlyZXR1cm4gSFBEX1BP
UlRfRzsKLQljYXNlIFBPUlRfSDoKLQkJcmV0dXJuIEhQRF9QT1JUX0g7Ci0JY2FzZSBQT1JUX0k6
Ci0JCXJldHVybiBIUERfUE9SVF9JOworCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5
KGRldl9wcml2LCBwb3J0KTsKKworCXN3aXRjaCAocGh5KSB7CisJY2FzZSBQSFlfRjoKKwkJcmV0
dXJuIElTX0NOTF9XSVRIX1BPUlRfRihkZXZfcHJpdikgPyBIUERfUE9SVF9FIDogSFBEX1BPUlRf
RjsKKwljYXNlIFBIWV9BIC4uLiBQSFlfRToKKwljYXNlIFBIWV9HIC4uLiBQSFlfSToKKwkJcmV0
dXJuIEhQRF9QT1JUX0EgKyBwaHkgLSBQSFlfQTsKIAlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0Uo
cG9ydCk7CisJCU1JU1NJTkdfQ0FTRShwaHkpOwogCQlyZXR1cm4gSFBEX05PTkU7CiAJfQogfQpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggMTIzZDBmYWRmYWZjLi4yMWU0YzA4NTJlMjMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTE0LDYgKzExNCwxMyBAQAogCiBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdDsKIAorLyoKKyAqIFRoZSBjb2RlIGFzc3VtZXMgdGhhdCB0aGUgaHBk
X3BpbnMgYmVsb3cgaGF2ZSBjb25zZWN1dGl2ZSB2YWx1ZXMgYW5kCisgKiBzdGFydGluZyB3aXRo
IEhQRF9QT1JUX0EsIHRoZSBIUEQgcGluIGFzc29jaWF0ZWQgd2l0aCBhbnkgcG9ydCBjYW4gYmUK
KyAqIHJldHJpZXZlZCBieSBhZGRpbmcgdGhlIGNvcnJlc3BvbmRpbmcgcG9ydCAob3IgcGh5KSBl
bnVtIHZhbHVlIHRvCisgKiBIUERfUE9SVF9BIGluIG1vc3QgY2FzZXMuIEZvciBleGFtcGxlOgor
ICogSFBEX1BPUlRfQyA9IEhQRF9QT1JUX0EgKyBQSFlfQyAtIFBIWV9BCisgKi8KIGVudW0gaHBk
X3BpbiB7CiAJSFBEX05PTkUgPSAwLAogCUhQRF9UViA9IEhQRF9OT05FLCAgICAgLyogVFYgaXMg
a25vd24gdG8gYmUgdW5yZWxpYWJsZSAqLwotLSAKMi4yMS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

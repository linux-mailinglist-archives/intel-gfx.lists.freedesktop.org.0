Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD43236D58C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 12:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99BF66EB0D;
	Wed, 28 Apr 2021 10:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF076EB0E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 10:14:47 +0000 (UTC)
IronPort-SDR: 50CAzodUP2p1Xh08OkwEaAioWQ99x0oCbh5svUdc/GtYeyWFK/8E3/kKGalaPc/Tax9cXwkAix
 +6XoDCmm5exQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="176186332"
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="176186332"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 03:14:47 -0700
IronPort-SDR: i51EY0FztZB9bgHpz62MiprwA9ojpYIQFOxKnYrVMoRkBfMF+X5ZFHoDIoRekMJ3Kbk/cx4uC+
 Y0I/X+vCOFKg==
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="423460327"
Received: from ajalsove-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.39.247])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 03:14:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Apr 2021 13:14:29 +0300
Message-Id: <7dc3f6974711ce44522189dc9db05d1e6e24e6d8.1619604743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1619604743.git.jani.nikula@intel.com>
References: <cover.1619604743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/backlight: use unique backlight
 device names
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVnaXN0ZXJpbmcgbXVsdGlwbGUgYmFja2xpZ2h0IGRldmljZXMgd2l0aCBpbnRlbF9iYWNrbGln
aHQgbmFtZSB3aWxsCm9idmlvdXNseSBmYWlsLCByZWdhcmRsZXNzIG9mIHdoZXRoZXIgdGhleSdy
ZSB0d28gY29ubmVjdG9ycyBpbiB0aGUgc2FtZQpkcm0gZGV2aWNlIG9yIHR3byBkaWZmZXJlbnQg
ZHJtIGRldmljZXMuCgpJdCB3b3VsZCBiZSBwcmVmZXJyYWJsZSB0byBzd2l0Y2ggdG8gY29tcGxl
dGVseSB1bmlxdWUgbmFtZXMsIGFuZCBzdW5zZXQKdGhlIGdlbmVyaWMgaW50ZWxfYmFja2xpZ2h0
IG5hbWUuIEhvd2V2ZXIsIHRoZXJlIGFyZSBhcHBhcmVudGx5IHVzZXJzCm91dCB0aGVyZSB0aGF0
IGhhcmRjb2RlIHRoZSBuYW1lLCBzbyB0aGUgY2hhbmdlIHdvdWxkIGJyZWFrIGJhY2t3YXJkCmNv
bXBhdGliaWxpdHkuCgpBcyBhIGNvbXByb21pc2UsIHJlZ2lzdGVyIHRoZSBmaXJzdCBkZXZpY2Ug
d2l0aCBpbnRlbF9iYWNrbGlnaHQgbmFtZS4gSW4KdGhlIGNvbW1vbiBjYXNlLCB0aGlzIGlzIHRo
ZSBvbmx5IGJhY2tsaWdodCBkZXZpY2UgYW55d2F5LiBGcm9tIHRoZQpzZWNvbmQgZGV2aWNlIG9u
LCB1c2UgY2FyZCVkLSVzLWJhY2tsaWdodCBmb3JtYXQsIGZvciBleGFtcGxlCmNhcmQwLWVEUC0y
LWJhY2tsaWdodCwgdG8gbWFrZSB0aGUgbmFtZSB1bmlxdWUuCgpUaGlzIGFwcHJvYWNoIGRvZXMg
bm90IHByZWNsdWRlIHVzIGZyb20gcmVnaXN0ZXJpbmcgdGhlIGZpcnN0IGRldmljZQp1c2luZyB0
aGUgc2FtZSBuYW1pbmcgc2NoZW1lIGluIHRoZSBmdXR1cmUuCgp2MjogS2VlcCB1c2luZyBpbnRl
bF9iYWNrbGlnaHQgbmFtZSBmb3IgZmlyc3QgYmFja2xpZ2h0IGRldmljZQoKQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNsb3NlczogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yNzk0ClNpZ25lZC1vZmYt
Ynk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIHwgMjMgKysrKysrKysrKysrKysrKysrLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCmluZGV4IDMwODg2NzdhYjhh
Ny4uYTIwNzYxMDc5YWUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3BhbmVsLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
YW5lbC5jCkBAIC0xNDAxLDE2ICsxNDAxLDMxIEBAIGludCBpbnRlbF9iYWNrbGlnaHRfZGV2aWNl
X3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAllbHNlCiAJCXBy
b3BzLnBvd2VyID0gRkJfQkxBTktfUE9XRVJET1dOOwogCi0JLyoKLQkgKiBOb3RlOiB1c2luZyB0
aGUgc2FtZSBuYW1lIGluZGVwZW5kZW50IG9mIHRoZSBjb25uZWN0b3IgcHJldmVudHMKLQkgKiBy
ZWdpc3RyYXRpb24gb2YgbXVsdGlwbGUgYmFja2xpZ2h0IGRldmljZXMgaW4gdGhlIGRyaXZlci4K
LQkgKi8KIAluYW1lID0ga3N0cmR1cCgiaW50ZWxfYmFja2xpZ2h0IiwgR0ZQX0tFUk5FTCk7CiAJ
aWYgKCFuYW1lKQogCQlyZXR1cm4gLUVOT01FTTsKIAogCWJkID0gYmFja2xpZ2h0X2RldmljZV9y
ZWdpc3RlcihuYW1lLCBjb25uZWN0b3ItPmJhc2Uua2RldiwgY29ubmVjdG9yLAogCQkJCSAgICAg
ICAmaW50ZWxfYmFja2xpZ2h0X2RldmljZV9vcHMsICZwcm9wcyk7CisKKwkvKgorCSAqIFVzaW5n
IHRoZSBzYW1lIG5hbWUgaW5kZXBlbmRlbnQgb2YgdGhlIGRybSBkZXZpY2Ugb3IgY29ubmVjdG9y
CisJICogcHJldmVudHMgcmVnaXN0cmF0aW9uIG9mIG11bHRpcGxlIGJhY2tsaWdodCBkZXZpY2Vz
IGluIHRoZQorCSAqIGRyaXZlci4gSG93ZXZlciwgd2UgbmVlZCB0byB1c2UgdGhlIGRlZmF1bHQg
bmFtZSBmb3IgYmFja3dhcmQKKwkgKiBjb21wYXRpYmlsaXR5LiBVc2UgdW5pcXVlIG5hbWVzIGZv
ciBzdWJzZXF1ZW50IGJhY2tsaWdodCBkZXZpY2VzIGFzIGEKKwkgKiBmYWxsYmFjayB3aGVuIHRo
ZSBkZWZhdWx0IG5hbWUgYWxyZWFkeSBleGlzdHMuCisJICovCisJaWYgKElTX0VSUihiZCkgJiYg
UFRSX0VSUihiZCkgPT0gLUVFWElTVCkgeworCQlrZnJlZShuYW1lKTsKKwkJbmFtZSA9IGthc3By
aW50ZihHRlBfS0VSTkVMLCAiY2FyZCVkLSVzLWJhY2tsaWdodCIsCisJCQkJIGk5MTUtPmRybS5w
cmltYXJ5LT5pbmRleCwgY29ubmVjdG9yLT5iYXNlLm5hbWUpOworCQlpZiAoIW5hbWUpCisJCQly
ZXR1cm4gLUVOT01FTTsKKworCQliZCA9IGJhY2tsaWdodF9kZXZpY2VfcmVnaXN0ZXIobmFtZSwg
Y29ubmVjdG9yLT5iYXNlLmtkZXYsIGNvbm5lY3RvciwKKwkJCQkJICAgICAgICZpbnRlbF9iYWNr
bGlnaHRfZGV2aWNlX29wcywgJnByb3BzKTsKKwl9CisKIAlpZiAoSVNfRVJSKGJkKSkgewogCQlk
cm1fZXJyKCZpOTE1LT5kcm0sCiAJCQkiW0NPTk5FQ1RPUjolZDolc10gYmFja2xpZ2h0IGRldmlj
ZSAlcyByZWdpc3RlciBmYWlsZWQ6ICVsZFxuIiwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

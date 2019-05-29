Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FC32E953
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 01:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DC146E132;
	Wed, 29 May 2019 23:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D0A56E133
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 23:27:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 16:27:44 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com ([10.24.10.138])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 16:27:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 16:27:35 -0700
Message-Id: <20190529232737.31515-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529232737.31515-1-lucas.demarchi@intel.com>
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/5] lib/igt_core: 0 is a valid val for
 long options
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyB1c3VhbGx5IHVzZWQgYnkgbG9uZyBvcHRpb25zIHdoZW4gd29ya2luZyB3aXRoIGVu
dW0gdG8gc2V0IGxvbmcKb3B0aW9uIHZhbHVlcy4gU28gcmVwbGFjZSB0aGUgc3RyY2hyKCkgd2l0
aCBhIG1lbWNocigpIHRvIHRha2UgdGhhdCBpbnRvCmFjY291bnQuCgpTaWduZWQtb2ZmLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBsaWIvaWd0X2Nv
cmUuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2lndF9jb3JlLmMgYi9saWIvaWd0X2NvcmUuYwppbmRl
eCA4MTRmNWM3Mi4uYTBiN2U1ODEgMTAwNjQ0Ci0tLSBhL2xpYi9pZ3RfY29yZS5jCisrKyBiL2xp
Yi9pZ3RfY29yZS5jCkBAIC02ODAsNiArNjgwLDcgQEAgc3RhdGljIGludCBjb21tb25faW5pdChp
bnQgKmFyZ2MsIGNoYXIgKiphcmd2LAogCX07CiAJY2hhciAqc2hvcnRfb3B0czsKIAljb25zdCBj
aGFyICpzdGRfc2hvcnRfb3B0cyA9ICJoIjsKKwlzaXplX3Qgc3RkX3Nob3J0X29wdHNfbGVuID0g
c3RybGVuKHN0ZF9zaG9ydF9vcHRzKTsKIAlzdHJ1Y3Qgb3B0aW9uICpjb21iaW5lZF9vcHRzOwog
CWludCBleHRyYV9vcHRfY291bnQ7CiAJaW50IGFsbF9vcHRfY291bnQ7CkBAIC03MTMsNyArNzE0
LDcgQEAgc3RhdGljIGludCBjb21tb25faW5pdChpbnQgKmFyZ2MsIGNoYXIgKiphcmd2LAogCiAJ
CS8qIGNoZWNrIGZvciBjb25mbGljdHMgd2l0aCBzdGFuZGFyZCBzaG9ydCBvcHRpb25zICovCiAJ
CWlmIChleHRyYV9sb25nX29wdHNbZXh0cmFfb3B0X2NvdW50XS52YWwgIT0gJzonCi0JCSAgICAm
JiAoY29uZmxpY3RpbmdfY2hhciA9IHN0cmNocihzdGRfc2hvcnRfb3B0cywgZXh0cmFfbG9uZ19v
cHRzW2V4dHJhX29wdF9jb3VudF0udmFsKSkpIHsKKwkJICAgICYmIChjb25mbGljdGluZ19jaGFy
ID0gbWVtY2hyKHN0ZF9zaG9ydF9vcHRzLCBleHRyYV9sb25nX29wdHNbZXh0cmFfb3B0X2NvdW50
XS52YWwsIHN0ZF9zaG9ydF9vcHRzX2xlbikpKSB7CiAJCQlpZ3RfY3JpdGljYWwoIkNvbmZsaWN0
aW5nIGxvbmcgYW5kIHNob3J0IG9wdGlvbiAndmFsJyByZXByZXNlbnRhdGlvbiBiZXR3ZWVuIC0t
JXMgYW5kIC0lY1xuIiwKIAkJCQkgICAgIGV4dHJhX2xvbmdfb3B0c1tleHRyYV9vcHRfY291bnRd
Lm5hbWUsCiAJCQkJICAgICAqY29uZmxpY3RpbmdfY2hhcik7CkBAIC03MjcsNyArNzI4LDcgQEAg
c3RhdGljIGludCBjb21tb25faW5pdChpbnQgKmFyZ2MsIGNoYXIgKiphcmd2LAogCQkJY29udGlu
dWU7CiAKIAkJLyogY2hlY2sgZm9yIGNvbmZsaWN0cyB3aXRoIHN0YW5kYXJkIHNob3J0IG9wdGlv
bnMgKi8KLQkJaWYgKHN0cmNocihzdGRfc2hvcnRfb3B0cywgZXh0cmFfc2hvcnRfb3B0c1tpXSkp
IHsKKwkJaWYgKG1lbWNocihzdGRfc2hvcnRfb3B0cywgZXh0cmFfc2hvcnRfb3B0c1tpXSwgc3Rk
X3Nob3J0X29wdHNfbGVuKSkgewogCQkJaWd0X2NyaXRpY2FsKCJDb25mbGljdGluZyBzaG9ydCBv
cHRpb246IC0lY1xuIiwgc3RkX3Nob3J0X29wdHNbaV0pOwogCQkJYXNzZXJ0KDApOwogCQl9Ci0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

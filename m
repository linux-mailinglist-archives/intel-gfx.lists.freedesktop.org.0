Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B29EF4FF8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 16:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 918016F9DA;
	Fri,  8 Nov 2019 15:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BFC76F9D9
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 15:40:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 07:40:40 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="354123914"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 07:40:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 17:39:54 +0200
Message-Id: <93c46390a9b4f1c79ce22a5584ea17e6d21e6c06.1573227240.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1573227240.git.jani.nikula@intel.com>
References: <cover.1573227240.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/dsc: move slice height calculation
 to encoder
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

VHVybnMgb3V0IHRoaXMgaXNuJ3QgY29tcGF0aWJsZSB3aXRoIERTSS4KCkNjOiBNYW5hc2kgTmF2
YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyAgIHwgMTIgKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYyB8IDExIC0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEy
IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwppbmRleCBiMzhhNDlkYjgwZTMuLjYzMWQ2ZDYyM2UyOSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtMjA2MCw2ICsyMDYwLDE4IEBAIHN0
YXRpYyBpbnQgaW50ZWxfZHBfZHNjX2NvbXB1dGVfcGFyYW1zKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwkvKgorCSAqIFNsaWNlIEhl
aWdodCBvZiA4IHdvcmtzIGZvciBhbGwgY3VycmVudGx5IGF2YWlsYWJsZSBwYW5lbHMuIFNvIHN0
YXJ0CisJICogd2l0aCB0aGF0IGlmIHBpY19oZWlnaHQgaXMgYW4gaW50ZWdyYWwgbXVsdGlwbGUg
b2YgOC4KKwkgKiBFdmVudHVhbGx5IGFkZCBsb2dpYyB0byB0cnkgbXVsdGlwbGUgc2xpY2UgaGVp
Z2h0cy4KKwkgKi8KKwlpZiAodmRzY19jZmctPnBpY19oZWlnaHQgJSA4ID09IDApCisJCXZkc2Nf
Y2ZnLT5zbGljZV9oZWlnaHQgPSA4OworCWVsc2UgaWYgKHZkc2NfY2ZnLT5waWNfaGVpZ2h0ICUg
NCA9PSAwKQorCQl2ZHNjX2NmZy0+c2xpY2VfaGVpZ2h0ID0gNDsKKwllbHNlCisJCXZkc2NfY2Zn
LT5zbGljZV9oZWlnaHQgPSAyOworCiAJdmRzY19jZmctPmRzY192ZXJzaW9uX21ham9yID0KIAkJ
KGludGVsX2RwLT5kc2NfZHBjZFtEUF9EU0NfUkVWIC0gRFBfRFNDX1NVUFBPUlRdICYKIAkJIERQ
X0RTQ19NQUpPUl9NQVNLKSA+PiBEUF9EU0NfTUFKT1JfU0hJRlQ7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCmluZGV4IDgzNGQ2NjVhNDdkMi4uYzUzMDI0ZGZiMWVj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwpAQCAtMzQ1LDE3
ICszNDUsNiBAQCBpbnQgaW50ZWxfZHNjX2NvbXB1dGVfcGFyYW1zKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCXZkc2NfY2ZnLT5waWNfaGVpZ2h0ID0gcGlwZV9jb25maWctPmh3LmFk
anVzdGVkX21vZGUuY3J0Y192ZGlzcGxheTsKIAl2ZHNjX2NmZy0+c2xpY2Vfd2lkdGggPSBESVZf
Uk9VTkRfVVAodmRzY19jZmctPnBpY193aWR0aCwKIAkJCQkJICAgICBwaXBlX2NvbmZpZy0+ZHNj
LnNsaWNlX2NvdW50KTsKLQkvKgotCSAqIFNsaWNlIEhlaWdodCBvZiA4IHdvcmtzIGZvciBhbGwg
Y3VycmVudGx5IGF2YWlsYWJsZSBwYW5lbHMuIFNvIHN0YXJ0Ci0JICogd2l0aCB0aGF0IGlmIHBp
Y19oZWlnaHQgaXMgYW4gaW50ZWdyYWwgbXVsdGlwbGUgb2YgOC4KLQkgKiBFdmVudHVhbGx5IGFk
ZCBsb2dpYyB0byB0cnkgbXVsdGlwbGUgc2xpY2UgaGVpZ2h0cy4KLQkgKi8KLQlpZiAodmRzY19j
ZmctPnBpY19oZWlnaHQgJSA4ID09IDApCi0JCXZkc2NfY2ZnLT5zbGljZV9oZWlnaHQgPSA4Owot
CWVsc2UgaWYgKHZkc2NfY2ZnLT5waWNfaGVpZ2h0ICUgNCA9PSAwKQotCQl2ZHNjX2NmZy0+c2xp
Y2VfaGVpZ2h0ID0gNDsKLQllbHNlCi0JCXZkc2NfY2ZnLT5zbGljZV9oZWlnaHQgPSAyOwogCiAJ
LyogR2VuIDExIGRvZXMgbm90IHN1cHBvcnQgWUNiQ3IgKi8KIAl2ZHNjX2NmZy0+c2ltcGxlXzQy
MiA9IGZhbHNlOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A2728DBE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0276E047;
	Thu, 23 May 2019 23:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FA2189F49
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:29 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga004.jf.intel.com with ESMTP; 23 May 2019 16:31:26 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0Y023503; Fri, 24 May 2019 00:31:24 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:28 +0000
Message-Id: <20190523233049.28020-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 01/22] drm/i915/guc: Change platform default
 GuC mode
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG9kYXkgb3VyIG1vc3QgZGVzaXJlZCBHdUMgY29uZmlndXJhdGlvbiBpcyB0byBvbmx5IGVuYWJs
ZSBIdUMKaWYgaXQgaXMgYXZhaWxhYmxlIGFuZCB3ZSByZWFsbHkgZG9uJ3QgY2FyZSBhYm91dCBH
dUMgc3VibWlzc2lvbi4KQ2hhbmdlIHBsYXRmb3JtIGRlZmF1bHQgR3VDIG1vZGUgdG8gbWF0Y2gg
b3VyIGRlc2lyZS4KClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpk
ZWN6a29AaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGlu
dXguaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogSm9obiBT
cG90c3dvb2QgPGpvaG4uYS5zcG90c3dvb2RAaW50ZWwuY29tPgpDYzogVmluYXkgQmVsZ2F1bWth
ciA8dmluYXkuYmVsZ2F1bWthckBpbnRlbC5jb20+CkNjOiBUb255IFllIDx0b255LnllQGludGVs
LmNvbT4KQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KQ2M6
IEplZmYgTWNnZWUgPGplZmYubWNnZWVAaW50ZWwuY29tPgpDYzogQW50b25pbyBBcmdlbnppYW5v
IDxhbnRvbmlvLmFyZ2Vuemlhbm9AaW50ZWwuY29tPgpDYzogU3VqYXJpdGhhIFN1bmRhcmVzYW4g
PHN1amFyaXRoYS5zdW5kYXJlc2FuQGludGVsLmNvbT4KQWNrZWQtYnk6IFRvbnkgWWUgPHRvbnku
eWVAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogU3VqYXJpdGhhIFN1bmRhcmVzYW4gPHN1amFyaXRo
YS5zdW5kYXJlc2FuQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91
Yy5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKaW5kZXggNjNmYzEyY2JjMjVkLi4xYTI2NWZi
ZDk1YzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwpAQCAtNTcsMTAgKzU3LDggQEAgc3RhdGlj
IGludCBfX2dldF9wbGF0Zm9ybV9lbmFibGVfZ3VjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQogCXN0cnVjdCBpbnRlbF91Y19mdyAqaHVjX2Z3ID0gJmk5MTUtPmh1Yy5mdzsKIAlpbnQg
ZW5hYmxlX2d1YyA9IDA7CiAKLQkvKiBEZWZhdWx0IGlzIHRvIGVuYWJsZSBHdUMvSHVDIGlmIHdl
IGtub3cgdGhlaXIgZmlybXdhcmVzICovCi0JaWYgKGludGVsX3VjX2Z3X2lzX3NlbGVjdGVkKGd1
Y19mdykpCi0JCWVuYWJsZV9ndWMgfD0gRU5BQkxFX0dVQ19TVUJNSVNTSU9OOwotCWlmIChpbnRl
bF91Y19md19pc19zZWxlY3RlZChodWNfZncpKQorCS8qIERlZmF1bHQgaXMgdG8gdXNlIEh1QyBp
ZiB3ZSBrbm93IEd1QyBhbmQgSHVDIGZpcm13YXJlcyAqLworCWlmIChpbnRlbF91Y19md19pc19z
ZWxlY3RlZChndWNfZncpICYmIGludGVsX3VjX2Z3X2lzX3NlbGVjdGVkKGh1Y19mdykpCiAJCWVu
YWJsZV9ndWMgfD0gRU5BQkxFX0dVQ19MT0FEX0hVQzsKIAogCS8qIEFueSBwbGF0Zm9ybSBzcGVj
aWZpYyBmaW5lLXR1bmluZyBjYW4gYmUgZG9uZSBoZXJlICovCi0tIAoyLjE5LjIKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

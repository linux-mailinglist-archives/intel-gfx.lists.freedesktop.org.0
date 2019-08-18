Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 652B19178A
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 17:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31B66E049;
	Sun, 18 Aug 2019 15:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BD26E082
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 15:51:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 08:51:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,401,1559545200"; d="scan'208";a="179210435"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 18 Aug 2019 08:51:23 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7IFpJtr025536; Sun, 18 Aug 2019 16:51:21 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 18 Aug 2019 15:51:09 +0000
Message-Id: <20190818155109.31360-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190818155109.31360-1-michal.wajdeczko@intel.com>
References: <20190818155109.31360-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/uc: Turn on GuC/HuC auto mode again
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaG9wZSB0aGF0IG5vdyBhbGwgaXNzdWVzIHJlbGF0ZWQgdG8gbWlzc2luZyB1QyBmaXJtd2Fy
ZXMKYXJlIGZpeGVkIGFuZCB0aGF0IGRyaXZlciBjYW4gY29udGludWUgdG8gbG9hZCB3aXRob3V0
IEd1QwpvciBIdUMgZmlybXdhcmUgYXZhaWxhYmxlIGFuZCBydW5uaW5nOgoKIC0gbWlzc2luZyBv
ciBjb3JydXB0ZWQgSHVDIGZpcm13YXJlIGhhcyBubyBpbXBhY3QgdG8gZHJpdmVyCiAgIGxvYWQg
KGNsaWVudHMgc2hvdWxkIGNvbnRpbnVlIHRvIHVzZSBIVUNfU1RBVFVTIHRvIGNoZWNrCiAgIGlm
IEh1QyBmaXJtd2FyZSB3YXMgbG9hZGVkIGFuZCBhdXRoZW50aWNhdGVkKQoKIC0gbWlzc2luZyBv
ciBjb3JydXB0ZWQgR3VDIGZpcm13YXJlIGhhcyBubyBpbXBhY3QgdG8gZHJpdmVyCiAgIGxvYWQg
KHVubGVzcyBHdUMgZmlybXdhcmUgYmxvYiB3YXMgb3ZlcnJpZGRlbiBieSB0aGUgdXNlcgogICBv
ciBHdUMgc3VibWlzc2lvbiB3YXMgcmVxdWVzdGVkIG9yIEd1QyB3YXMgcHJldmlvdXNseQogICBl
bmFibGVkIG9uIHRoaXMgc3lzdGVtIHdpdGhvdXQgcmVib290IC0gdGhlbiB3ZSB3aWxsIG1hcmsK
ICAgR1BVIGFzIHdlZGdlZCBhbmQgY29udGludWUgd2l0aCBLTVMgb25seSkKClJlZmVyZW5jZXM6
IGNvbW1pdCBmNzc0ZjA5NjQ5MTkgKCJkcm0vaTkxNS9ndWM6IFR1cm4gb24gR3VDL0h1QyBhdXRv
IG1vZGUiKQpTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtv
QGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgfCAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIHwgMiArLQogMiBmaWxlcyBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGFyYW1zLmMKaW5kZXggMjk2NDUyZjllZmU0Li5iNGY0ODFlMWU2YjYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wYXJhbXMuYwpAQCAtMTQ2LDcgKzE0Niw3IEBAIGk5MTVfcGFyYW1fbmFtZWRf
dW5zYWZlKGVkcF92c3dpbmcsIGludCwgMDQwMCwKIGk5MTVfcGFyYW1fbmFtZWRfdW5zYWZlKGVu
YWJsZV9ndWMsIGludCwgMDQwMCwKIAkiRW5hYmxlIEd1QyBsb2FkIGZvciBHdUMgc3VibWlzc2lv
biBhbmQvb3IgSHVDIGxvYWQuICIKIAkiUmVxdWlyZWQgZnVuY3Rpb25hbGl0eSBjYW4gYmUgc2Vs
ZWN0ZWQgdXNpbmcgYml0bWFzayB2YWx1ZXMuICIKLQkiKC0xPWF1dG8sIDA9ZGlzYWJsZSBbZGVm
YXVsdF0sIDE9R3VDIHN1Ym1pc3Npb24sIDI9SHVDIGxvYWQpIik7CisJIigtMT1hdXRvIFtkZWZh
dWx0XSwgMD1kaXNhYmxlLCAxPUd1QyBzdWJtaXNzaW9uLCAyPUh1QyBsb2FkKSIpOwogCiBpOTE1
X3BhcmFtX25hbWVkKGd1Y19sb2dfbGV2ZWwsIGludCwgMDQwMCwKIAkiR3VDIGZpcm13YXJlIGxv
Z2dpbmcgbGV2ZWwuIFJlcXVpcmVzIEd1QyB0byBiZSBsb2FkZWQuICIKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BhcmFtcy5oCmluZGV4IGQyOWFkZTNiN2RlNi4uNTczNmM1NTY5NGZlIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGFyYW1zLmgKQEAgLTU0LDcgKzU0LDcgQEAgc3RydWN0IGRybV9wcmludGVy
OwogCXBhcmFtKGludCwgZGlzYWJsZV9wb3dlcl93ZWxsLCAtMSkgXAogCXBhcmFtKGludCwgZW5h
YmxlX2lwcywgMSkgXAogCXBhcmFtKGludCwgaW52ZXJ0X2JyaWdodG5lc3MsIDApIFwKLQlwYXJh
bShpbnQsIGVuYWJsZV9ndWMsIDApIFwKKwlwYXJhbShpbnQsIGVuYWJsZV9ndWMsIC0xKSBcCiAJ
cGFyYW0oaW50LCBndWNfbG9nX2xldmVsLCAtMSkgXAogCXBhcmFtKGNoYXIgKiwgZ3VjX2Zpcm13
YXJlX3BhdGgsIE5VTEwpIFwKIAlwYXJhbShjaGFyICosIGh1Y19maXJtd2FyZV9wYXRoLCBOVUxM
KSBcCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==

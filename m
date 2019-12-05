Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F081143E0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 16:44:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC9B6E14D;
	Thu,  5 Dec 2019 15:43:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DFC56E14D
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 15:43:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 07:43:57 -0800
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="214158721"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 07:43:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 17:43:41 +0200
Message-Id: <c945ac7b08e0eb0827cf647609885f4abdb84f1d.1575560168.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575560168.git.jani.nikula@intel.com>
References: <cover.1575560168.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/params: support bool values for
 int and uint params
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

SXQncyBub3QgdW5jb21tb24gZm9yIHVzIHRvIHN3aXRjaCBwYXJhbSB0eXBlcyBiZXR3ZWVuIGJv
b2xzIGFuZCBpbnRzLApvZnRlbiBoYXZpbmcgb3RoZXJ3aXNlIGJvb2wgc2VtYW50aWNzIGJ1dCAt
MSB2YWx1ZSBmb3IgcGxhdGZvcm0KZGVmYXVsdC4gQWxsb3cgYm9vbCB2YWx1ZXMgKHN1Y2ggYXMg
WXlObikgZm9yIGludHMuCgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmc19wYXJhbXMu
YyB8IDE0ICsrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmc19wYXJhbXMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmc19wYXJhbXMuYwppbmRleCA3ZjFhZjVh
MzVjYTEuLjlhY2I3NTU3MTRjZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzX3BhcmFtcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
c19wYXJhbXMuYwpAQCAtMzIsNiArMzIsMTMgQEAgc3RhdGljIHNzaXplX3QgaTkxNV9wYXJhbV9p
bnRfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsCiAJaW50IHJldDsKIAogCXJldCA9IGtzdHJ0b2lu
dF9mcm9tX3VzZXIodWJ1ZiwgbGVuLCAwLCB2YWx1ZSk7CisJaWYgKHJldCkgeworCQkvKiBzdXBw
b3J0IGJvb2xlYW4gdmFsdWVzIHRvbyAqLworCQlib29sIGI7CisJCXJldCA9IGtzdHJ0b2Jvb2xf
ZnJvbV91c2VyKHVidWYsIGxlbiwgJmIpOworCQlpZiAoIXJldCkKKwkJCSp2YWx1ZSA9IGI7CisJ
fQogCiAJcmV0dXJuIHJldCA/OiBsZW47CiB9CkBAIC03Nyw2ICs4NCwxMyBAQCBzdGF0aWMgc3Np
emVfdCBpOTE1X3BhcmFtX3VpbnRfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsCiAJaW50IHJldDsK
IAogCXJldCA9IGtzdHJ0b3VpbnRfZnJvbV91c2VyKHVidWYsIGxlbiwgMCwgdmFsdWUpOworCWlm
IChyZXQpIHsKKwkJLyogc3VwcG9ydCBib29sZWFuIHZhbHVlcyB0b28gKi8KKwkJYm9vbCBiOwor
CQlyZXQgPSBrc3RydG9ib29sX2Zyb21fdXNlcih1YnVmLCBsZW4sICZiKTsKKwkJaWYgKCFyZXQp
CisJCQkqdmFsdWUgPSBiOworCX0KIAogCXJldHVybiByZXQgPzogbGVuOwogfQotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

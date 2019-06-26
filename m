Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF5956C47
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343B86E457;
	Wed, 26 Jun 2019 14:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 446626E453
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:37:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183183258"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 07:37:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:40:16 +0300
Message-Id: <20190626144020.2155-10-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626144020.2155-1-jani.nikula@intel.com>
References: <20190626144020.2155-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 09/13] drm/i915: make intel_guc_fwif.h
 self-contained
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

QWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xhcmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIg
c2VsZi1jb250YWluZWQsCmFuZCBlbnN1cmUgaXQgc3RheXMgdGhhdCB3YXkuCgpSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d1Y19md2lmLmggICAgIHwgNCArKysrCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10
ZXN0IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKaW5kZXggYjI5
NmJlMjU2OTEzLi41ODNmZTc2ZjJjZGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlLmhlYWRlci10ZXN0CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
LmhlYWRlci10ZXN0CkBAIC0yMCw2ICsyMCw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKIAlpbnRlbF9j
c3IuaCBcCiAJaW50ZWxfZHJ2LmggXAogCWludGVsX2d1Y19jdC5oIFwKKwlpbnRlbF9ndWNfZndp
Zi5oIFwKIAlpbnRlbF9wbS5oIFwKIAlpbnRlbF9ydW50aW1lX3BtLmggXAogCWludGVsX3NpZGVi
YW5kLmggXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3aWYu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19md2lmLmgKaW5kZXggZjU1ZjNiYzg1
MjRkLi45MmJkN2ZmYjViMTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2d1Y19md2lmLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3aWYuaApA
QCAtMjMsNiArMjMsMTAgQEAKICNpZm5kZWYgX0lOVEVMX0dVQ19GV0lGX0gKICNkZWZpbmUgX0lO
VEVMX0dVQ19GV0lGX0gKIAorI2luY2x1ZGUgPGxpbnV4L2JpdHMuaD4KKyNpbmNsdWRlIDxsaW51
eC9jb21waWxlci5oPgorI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisKICNkZWZpbmUgR1VDX0NM
SUVOVF9QUklPUklUWV9LTURfSElHSAkwCiAjZGVmaW5lIEdVQ19DTElFTlRfUFJJT1JJVFlfSElH
SAkxCiAjZGVmaW5lIEdVQ19DTElFTlRfUFJJT1JJVFlfS01EX05PUk1BTAkyCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

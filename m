Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 303AF109F67
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819416E3C4;
	Tue, 26 Nov 2019 13:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADF9F6E3C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:43:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:26 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="211353562"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:42:40 +0200
Message-Id: <aa863efdf197efa39dcd42e90438030dc46488ed.1574775655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574775655.git.jani.nikula@intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v3 05/13] drm/i915/dsc: move slice height
 calculation to encoder
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

VHVybnMgb3V0IHRoaXMgaXNuJ3QgY29tcGF0aWJsZSB3aXRoIERTSSwgd2hlcmUgd2UgdXNlIHRo
ZSB2YWx1ZSBmcm9tClZCVC4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKQ2M6IE1hbmFzaSBOYXZh
cmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
ICAgfCAxMiArKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmRzYy5jIHwgMTEgLS0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
CmluZGV4IDUwNmM3ZDE5OTY4Yi4uMTE5OTM5MTMzMWMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yMDYwLDYgKzIwNjAsMTggQEAgc3RhdGljIGludCBpbnRl
bF9kcF9kc2NfY29tcHV0ZV9wYXJhbXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJ
aWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAorCS8qCisJICogU2xpY2UgSGVpZ2h0IG9mIDggd29y
a3MgZm9yIGFsbCBjdXJyZW50bHkgYXZhaWxhYmxlIHBhbmVscy4gU28gc3RhcnQKKwkgKiB3aXRo
IHRoYXQgaWYgcGljX2hlaWdodCBpcyBhbiBpbnRlZ3JhbCBtdWx0aXBsZSBvZiA4LiBFdmVudHVh
bGx5IGFkZAorCSAqIGxvZ2ljIHRvIHRyeSBtdWx0aXBsZSBzbGljZSBoZWlnaHRzLgorCSAqLwor
CWlmICh2ZHNjX2NmZy0+cGljX2hlaWdodCAlIDggPT0gMCkKKwkJdmRzY19jZmctPnNsaWNlX2hl
aWdodCA9IDg7CisJZWxzZSBpZiAodmRzY19jZmctPnBpY19oZWlnaHQgJSA0ID09IDApCisJCXZk
c2NfY2ZnLT5zbGljZV9oZWlnaHQgPSA0OworCWVsc2UKKwkJdmRzY19jZmctPnNsaWNlX2hlaWdo
dCA9IDI7CisKIAl2ZHNjX2NmZy0+ZHNjX3ZlcnNpb25fbWFqb3IgPQogCQkoaW50ZWxfZHAtPmRz
Y19kcGNkW0RQX0RTQ19SRVYgLSBEUF9EU0NfU1VQUE9SVF0gJgogCQkgRFBfRFNDX01BSk9SX01B
U0spID4+IERQX0RTQ19NQUpPUl9TSElGVDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmMKaW5kZXggODM0ZDY2NWE0N2QyLi5jNTMwMjRkZmIxZWMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCkBAIC0zNDUsMTcgKzM0NSw2IEBAIGlu
dCBpbnRlbF9kc2NfY29tcHV0ZV9wYXJhbXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CiAJdmRzY19jZmctPnBpY19oZWlnaHQgPSBwaXBlX2NvbmZpZy0+aHcuYWRqdXN0ZWRfbW9kZS5j
cnRjX3ZkaXNwbGF5OwogCXZkc2NfY2ZnLT5zbGljZV93aWR0aCA9IERJVl9ST1VORF9VUCh2ZHNj
X2NmZy0+cGljX3dpZHRoLAogCQkJCQkgICAgIHBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY291bnQp
OwotCS8qCi0JICogU2xpY2UgSGVpZ2h0IG9mIDggd29ya3MgZm9yIGFsbCBjdXJyZW50bHkgYXZh
aWxhYmxlIHBhbmVscy4gU28gc3RhcnQKLQkgKiB3aXRoIHRoYXQgaWYgcGljX2hlaWdodCBpcyBh
biBpbnRlZ3JhbCBtdWx0aXBsZSBvZiA4LgotCSAqIEV2ZW50dWFsbHkgYWRkIGxvZ2ljIHRvIHRy
eSBtdWx0aXBsZSBzbGljZSBoZWlnaHRzLgotCSAqLwotCWlmICh2ZHNjX2NmZy0+cGljX2hlaWdo
dCAlIDggPT0gMCkKLQkJdmRzY19jZmctPnNsaWNlX2hlaWdodCA9IDg7Ci0JZWxzZSBpZiAodmRz
Y19jZmctPnBpY19oZWlnaHQgJSA0ID09IDApCi0JCXZkc2NfY2ZnLT5zbGljZV9oZWlnaHQgPSA0
OwotCWVsc2UKLQkJdmRzY19jZmctPnNsaWNlX2hlaWdodCA9IDI7CiAKIAkvKiBHZW4gMTEgZG9l
cyBub3Qgc3VwcG9ydCBZQ2JDciAqLwogCXZkc2NfY2ZnLT5zaW1wbGVfNDIyID0gZmFsc2U7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

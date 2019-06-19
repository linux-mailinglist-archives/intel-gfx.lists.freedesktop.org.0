Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D37314C3E8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 01:02:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00136E48C;
	Wed, 19 Jun 2019 23:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E608D6E487
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 23:02:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:02:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="153940364"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 16:02:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 16:02:22 -0700
Message-Id: <20190619230222.4346-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190619230222.4346-1-jose.souza@intel.com>
References: <20190619230222.4346-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 4/4] drm/i915: Add transcoder restriction to
 PSR2
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIFBTUjJfQ1RMIGRlZmluaXRpb24gb24gQlNwZWMgdGhlcmUgaXMgb25seSBv
bmUgaW5zdGFuY2UKb2YgUFNSMl9DVEwgYWxzbyBJQ0wgZGlzcGxheSBvdmVydmlldyBzdGF0ZSB0
aGF0IFBTUjIgaXMgb25seQpzdXBwb3J0ZWQgaW4gRURQIHRyYW5zY29kZXIsIHNvIG5vdyB0aGF0
IGlzIHBvc3NpYmxlIHRvIGhhdmUgUFNSIGluCmFueSB0cmFuc2NvZGVyIGxldHMgYWRkIHRoaXMg
aGFyZHdhcmUgcmVzdHJpY3Rpb24uCgpCU3BlYzogNzcxMwpCU3BlYzogMjA1ODQKQ2M6IERoaW5h
a2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4
IGVkNDIyYjc4OGQ4OC4uZGE1NmI4YjFiOWI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKQEAgLTU0NSw2ICs1NDUsMTEgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNy
Ml9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlpZiAoIWRldl9wcml2
LT5wc3Iuc2lua19wc3IyX3N1cHBvcnQpCiAJCXJldHVybiBmYWxzZTsKIAorCWlmIChjcnRjX3N0
YXRlLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0VEUCkgeworCQlEUk1fREVCVUdfS01T
KCJQU1IyIGlzIG9ubHkgc3VwcG9ydGVkIGluIEVEUCB0cmFuc2NvZGVyXG4iKTsKKwkJcmV0dXJu
IGZhbHNlOworCX0KKwogCS8qCiAJICogRFNDIGFuZCBQU1IyIGNhbm5vdCBiZSBlbmFibGVkIHNp
bXVsdGFuZW91c2x5LiBJZiBhIHJlcXVlc3RlZAogCSAqIHJlc29sdXRpb24gcmVxdWlyZXMgRFND
IHRvIGJlIGVuYWJsZWQsIHByaW9yaXR5IGlzIGdpdmVuIHRvIERTQwotLSAKMi4yMi4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

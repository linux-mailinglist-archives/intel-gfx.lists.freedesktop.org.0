Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA533CC071
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 03:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD0A6E9FF;
	Sat, 17 Jul 2021 01:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 273E16E9FD
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Jul 2021 01:08:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="232656457"
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="232656457"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 18:08:16 -0700
X-IronPort-AV: E=Sophos;i="5.84,246,1620716400"; d="scan'208";a="431385296"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 18:08:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jul 2021 18:12:26 -0700
Message-Id: <20210717011227.204494-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210717011227.204494-1-jose.souza@intel.com>
References: <20210717011227.204494-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display/psr2: Fix cursor updates
 using legacy apis
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGZhc3QgcGF0aCBvbmx5IHVwZGF0ZXMgY3Vyc29yIHJlZ2lzdGVyIHdoYXQgd2lsbCBub3Qg
Y2F1c2UKYW55IHVwZGF0ZXMgaW4gdGhlIHNjcmVlbiB3aGVuIHVzaW5nIFBTUjIgc2VsZWN0aXZl
IGZldGNoLgoKVGhlIG9ubHkgb3B0aW9uIHRoYXQgd2UgaGF2ZSBpcyB0byBnbyB0cm91Z2ggdGhl
IHNsb3cgcGF0Y2ggdGhhdCB3aWxsCmRvIGZ1bGwgYXRvbWljIGNvbW1pdCwgdGhhdCB3aWxsIHRy
aWdnZXIgdGhlIFBTUjIgc2VsZWN0aXZlIGZldGNoCmNvbXB1dGUgYW5kIHByb2dyYW1pbmcgY2Fs
bHMuCgpXaXRob3V0IHRoaXMgcGF0Y2ggaXMgcG9zc2libGUgdG8gc2VlIGEgbW91c2UgbW92ZW1l
bnQgbGFnIGluIEdub21lCndoZW4gUFNSMiBzZWxlY3RpdmUgZmV0Y2ggaXMgZW5hYmxlZC4KCkNj
OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMgfCA4ICsrKysrKy0tCiAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jCmluZGV4IGY2MWEyNWZiODdlOTAu
LmM3NjE4ZmVmMDE0MzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3Vyc29yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
dXJzb3IuYwpAQCAtNjI5LDEyICs2MjksMTYgQEAgaW50ZWxfbGVnYWN5X2N1cnNvcl91cGRhdGUo
c3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLAogCiAJLyoKIAkgKiBXaGVuIGNydGMgaXMgaW5hY3Rp
dmUgb3IgdGhlcmUgaXMgYSBtb2Rlc2V0IHBlbmRpbmcsCi0JICogd2FpdCBmb3IgaXQgdG8gY29t
cGxldGUgaW4gdGhlIHNsb3dwYXRoCisJICogd2FpdCBmb3IgaXQgdG8gY29tcGxldGUgaW4gdGhl
IHNsb3dwYXRoLgorCSAqIFBTUjIgc2VsZWN0aXZlIGZldGNoIGFsc28gcmVxdWlyZXMgdGhlIHNs
b3cgcGF0aCBhcworCSAqIFBTUjIgcGxhbmUgYW5kIHRyYW5zY29kZXIgcmVnaXN0ZXJzIGNhbiBv
bmx5IGJlIHVwZGF0ZWQgZHVyaW5nCisJICogdmJsYW5rLgogCSAqCiAJICogRklYTUUgYmlnam9p
bmVyIGZhc3RwYXRoIHdvdWxkIGJlIGdvb2QKIAkgKi8KIAlpZiAoIWNydGNfc3RhdGUtPmh3LmFj
dGl2ZSB8fCBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQoY3J0Y19zdGF0ZSkgfHwKLQkgICAgY3J0
Y19zdGF0ZS0+dXBkYXRlX3BpcGUgfHwgY3J0Y19zdGF0ZS0+Ymlnam9pbmVyKQorCSAgICBjcnRj
X3N0YXRlLT51cGRhdGVfcGlwZSB8fCBjcnRjX3N0YXRlLT5iaWdqb2luZXIgfHwKKwkgICAgY3J0
Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoKQogCQlnb3RvIHNsb3c7CiAKIAkvKgotLSAK
Mi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

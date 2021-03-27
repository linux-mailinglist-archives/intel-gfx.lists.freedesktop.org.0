Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 769FA34B376
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Mar 2021 01:59:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF5476E062;
	Sat, 27 Mar 2021 00:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC186E062
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Mar 2021 00:59:49 +0000 (UTC)
IronPort-SDR: jjbBlOnhjkzFDjpRpDhnnfdVA9hyDGsvaZQBYp6JaiiFGBwrW+/EEHO1H6vu0EZnbQayBL5FJa
 KHndE1yf9PRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="188976879"
X-IronPort-AV: E=Sophos;i="5.81,282,1610438400"; d="scan'208";a="188976879"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 17:59:48 -0700
IronPort-SDR: uTZTtY7Mwedb4yLJbbslq2jD280+L5SoYbHmVQRJQKhZkdEqC1CiJpLpPDK+B1eqlGDXVPfhpd
 O6TzxnK+q8OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,282,1610438400"; d="scan'208";a="377429846"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 26 Mar 2021 17:59:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 27 Mar 2021 02:59:45 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 27 Mar 2021 02:59:45 +0200
Message-Id: <20210327005945.4929-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't zero out the Y plane's
 watermarks
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRv
bid0IHplcm8gb3V0IHRoZSB3YXRlcm1hcmtzIGZvciB0aGUgWSBwbGFuZSBzaW5jZSB3ZSd2ZSBh
bHJlYWR5CmNvbXB1dGVkIHRoZW0gd2hlbiBjb21wdXRpbmcgdGhlIFVWIHBsYW5lJ3Mgd2F0ZXJt
YXJrcyAoc2luY2UgdGhlClVWIHBsYW5lIGFsd2F5cyBhcHBlYXJzIGJlZm9yZSBldGhlIFkgcGxh
bmUgd2hlbiBpdGVyYXRpbmcgdGhyb3VnaAp0aGUgcGxhbmVzKS4KClRoaXMgbGVhZHMgdG8gYWxs
b2NhdGluZyBubyBEREIgZm9yIHRoZSBZIHBsYW5lIHNpbmNlIC5taW5fZGRiX2FsbG9jCmFsc28g
Z2V0cyB6ZXJvZWQuIEFuZCB0aGF0IG9mIGNvdXJzZSBsZWFkcyB0byB1bmRlcnJ1bnMgd2hlbiBz
Y2FubmluZwpvdXQgcGxhbmFyIGZvcm1hdHMuCgpXZSByZWFsbHkgbmVlZCB0byByZS1lbmFibGUg
dGhlIHByZS1tZXJnZSBwaXhlbCBmb3JtYXQgdGVzdHMgb3IgZWxzZQpJJ2xsIGp1c3Qga2VlcCBi
cmVha2luZyB0aGlzIHN0dWZmLi4uCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpDYzogU3Rh
bmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CkZpeGVzOiBk
YmY3MTM4MWQ3MzMgKCJkcm0vaTkxNTogTnVrZSBpbnRlbF9hdG9taWNfY3J0Y19zdGF0ZV9mb3Jf
ZWFjaF9wbGFuZV9zdGF0ZSgpIGZyb20gc2tsKyB3bSBjb2RlIikKU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGIy
YWVkZTJiZTg5ZC4uNDljMTlhY2RiN2M2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTU1
MTEsMTIgKzU1MTEsMTIgQEAgc3RhdGljIGludCBpY2xfYnVpbGRfcGxhbmVfd20oc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJc3RydWN0IHNrbF9wbGFuZV93bSAqd20gPSAm
Y3J0Y19zdGF0ZS0+d20uc2tsLnJhdy5wbGFuZXNbcGxhbmVfaWRdOwogCWludCByZXQ7CiAKLQlt
ZW1zZXQod20sIDAsIHNpemVvZigqd20pKTsKLQogCS8qIFdhdGVybWFya3MgY2FsY3VsYXRlZCBp
biBtYXN0ZXIgKi8KIAlpZiAocGxhbmVfc3RhdGUtPnBsYW5hcl9zbGF2ZSkKIAkJcmV0dXJuIDA7
CiAKKwltZW1zZXQod20sIDAsIHNpemVvZigqd20pKTsKKwogCWlmIChwbGFuZV9zdGF0ZS0+cGxh
bmFyX2xpbmtlZF9wbGFuZSkgewogCQljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiA9
IHBsYW5lX3N0YXRlLT5ody5mYjsKIAkJZW51bSBwbGFuZV9pZCB5X3BsYW5lX2lkID0gcGxhbmVf
c3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmUtPmlkOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

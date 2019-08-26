Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 294D49D7CD
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 22:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37356E312;
	Mon, 26 Aug 2019 20:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758728924A
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 20:55:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 13:55:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="170977903"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.29])
 by orsmga007.jf.intel.com with ESMTP; 26 Aug 2019 13:55:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 13:54:55 -0700
Message-Id: <20190826205459.29447-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826205459.29447-1-lucas.demarchi@intel.com>
References: <20190826205459.29447-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/8] drm: Add
 for_each_oldnew_intel_crtc_in_state_reverse()
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpTYW1l
IGFzIGZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKCkgYnV0IGl0ZXJhdGVzIGlu
IHJldmVyc2UKb3JkZXIuCgp2MjogRml4IGFkZGl0aW9uYWwgYmxhbmsgbGluZQp2MzogUmViYXNl
CgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
TWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTkwODIzMDgyMDU1LjU5OTItMTItbHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmggfCA5ICsrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKaW5k
ZXggZTU3ZTY5NjkwNTFkLi4wMzMyMWZiNGE3MDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC00MTEsNiArNDExLDE1IEBAIGVudW0gcGh5X2Zp
YSB7CiAJICAgICAoX19pKSsrKSBcCiAJCWZvcl9lYWNoX2lmKGNydGMpCiAKKyNkZWZpbmUgZm9y
X2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGVfcmV2ZXJzZShfX3N0YXRlLCBjcnRjLCBv
bGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIF9faSkgXAorCWZvciAoKF9faSkgPSAoX19z
dGF0ZSktPmJhc2UuZGV2LT5tb2RlX2NvbmZpZy5udW1fY3J0YyAtIDE7IFwKKwkgICAgIChfX2kp
ID49IDAgICYmIFwKKwkgICAgICgoY3J0YykgPSB0b19pbnRlbF9jcnRjKChfX3N0YXRlKS0+YmFz
ZS5jcnRjc1tfX2ldLnB0ciksIFwKKwkgICAgICAob2xkX2NydGNfc3RhdGUpID0gdG9faW50ZWxf
Y3J0Y19zdGF0ZSgoX19zdGF0ZSktPmJhc2UuY3J0Y3NbX19pXS5vbGRfc3RhdGUpLCBcCisJICAg
ICAgKG5ld19jcnRjX3N0YXRlKSA9IHRvX2ludGVsX2NydGNfc3RhdGUoKF9fc3RhdGUpLT5iYXNl
LmNydGNzW19faV0ubmV3X3N0YXRlKSwgMSk7IFwKKwkgICAgIChfX2kpLS0pIFwKKwkJZm9yX2Vh
Y2hfaWYoY3J0YykKKwogdm9pZCBpbnRlbF9saW5rX2NvbXB1dGVfbV9uKHUxNiBicHAsIGludCBu
bGFuZXMsCiAJCQkgICAgaW50IHBpeGVsX2Nsb2NrLCBpbnQgbGlua19jbG9jaywKIAkJCSAgICBz
dHJ1Y3QgaW50ZWxfbGlua19tX24gKm1fbiwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

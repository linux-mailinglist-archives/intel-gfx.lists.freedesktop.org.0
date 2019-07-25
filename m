Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 811DC75B52
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 01:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E5F56E839;
	Thu, 25 Jul 2019 23:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECFAF6E839
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 23:40:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 16:40:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="175426852"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by orsmga006.jf.intel.com with ESMTP; 25 Jul 2019 16:40:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 16:39:54 -0700
Message-Id: <20190725233954.15501-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725233954.15501-1-lucas.demarchi@intel.com>
References: <20190725233954.15501-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/tgl: update ddi/tc clock_off bits
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkluIEdFTiAxMiBQ
T1JUX0MgRERJIGNsa19vZmYgYml0IGlzIG5vdCBlcXVhbGx5IGRpc3RhbmNlZCB0byBBL0IsCml0
J3MgYXQgb2Zmc2V0IDI0LiBTaW1pbGFybHkgVEMgcG9ydCAoNS82KSBjbGsgb2ZmIGJpdHMgYXJl
IGF0Cm9mZnNldCAyMi8yMy4gRXh0ZW5kIHRoZSBtYWNyb3MgdG8gY292ZXIgdGhlIGFkZGl0aW9u
YWwgcG9ydHMuCgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClJldmll
d2VkLWJ5OiBNYXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+Ckxpbms6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDcxMzAxMDk0
MC4xNzcxMS00LWx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbQotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmggfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDMwMzVhNDhhMjUy
Ny4uZDJiNzYxMjFkODYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTk3NDIsOCArOTc0
Miw5IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogCiAjZGVmaW5lIElDTF9EUENMS0FfQ0ZHQ1Iw
CQkJX01NSU8oMHgxNjQyODApCiAjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09G
RihwaHkpCSgxIDw8IF9QSUNLKHBoeSwgMTAsIDExLCAyNCkpCi0jZGVmaW5lICBJQ0xfRFBDTEtB
X0NGR0NSMF9UQ19DTEtfT0ZGKHRjX3BvcnQpICgxIDw8ICgodGNfcG9ydCkgPT0gUE9SVF9UQzQg
PyBcCi0JCQkJCQkgICAgICAyMSA6ICh0Y19wb3J0KSArIDEyKSkKKyNkZWZpbmUgIElDTF9EUENM
S0FfQ0ZHQ1IwX1RDX0NMS19PRkYodGNfcG9ydCkJKDEgPDwgKCh0Y19wb3J0KSA8IFBPUlRfVEM0
ID8gXAorCQkJCQkJICAgICAgICh0Y19wb3J0KSArIDEyIDogXAorCQkJCQkJICAgICAgICh0Y19w
b3J0KSAtIFBPUlRfVEM0ICsgMjEpKQogI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NM
S19TRUxfU0hJRlQocGh5KQkoKHBoeSkgKiAyKQogI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBf
RERJX0NMS19TRUxfTUFTSyhwaHkpCSgzIDw8IElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VM
X1NISUZUKHBoeSkpCiAjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChwbGws
IHBoeSkJKChwbGwpIDw8IElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZUKHBoeSkp
Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 083A938F513
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 23:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1F56E975;
	Mon, 24 May 2021 21:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7835E6E971
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 21:44:57 +0000 (UTC)
IronPort-SDR: r69fT5rn3wnxDkzwhlFUJiMb7j12ss5basOJUb7laldVc1bjNJc+RjIYOO8qpB++1eI8RZFE+U
 reTSHwtRTRPw==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="181677508"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="181677508"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:44:55 -0700
IronPort-SDR: v7g398195D+pxHTVLPoPr6PjLxoYx4gYdOlEs41H89x8yN7psDQzzVAqthQbBikixoLY1MWIRC
 F1O86Cpj4O7A==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="546513298"
Received: from xxi2-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.32.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:44:55 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 14:48:03 -0700
Message-Id: <20210524214805.259692-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524214805.259692-1-jose.souza@intel.com>
References: <20210524214805.259692-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: WA for zero memory channel
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IGM0NTdkOWNmMjU2ZSAoImRybS9pOTE1OiBNYWtlIHN1cmUgd2UgaGF2ZSBlbm91Z2gg
bWVtb3J5CmJhbmR3aWR0aCBvbiBJQ0wiKSBhc3N1bWVzIHRoYXQgd2UgYWx3YXlzIGhhdmUgYSBu
b24temVybwpkcmFtX2luZm8tPmNoYW5uZWxzIGFuZCB1c2VzIGl0IGFzIGEgZGl2aXNvci4KV2Ug
bmVlZCBudW0gbWVtb3J5IGNoYW5uZWxzIHRvIGJlIGF0IGxlYXN0IDEgZm9yIHNhbmUgYncgbGlt
aXRzCmNoZWNraW5nLCBldmVuIHdoZW4gUENvZGUgcmV0dXJucyAwIG9yIHRoZXJlIGlzIGEgZXJy
b3IgcmVhZGluZyBpdCwgc28KbGV0cyBmb3JjZSBpdCB0byAxIGluIHRoaXMgY2FzZS4KCkNjOiBT
dGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2Vy
YW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmMKaW5kZXggM2ExYmE1MjI2NmE3Li5iZmIzOThmMDQzMmUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKQEAgLTE2Miw3ICsxNjIsNyBAQCBz
dGF0aWMgaW50IGljbF9nZXRfYndfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGNvbnN0IHN0cnVjdCBpbnRlbAogewogCXN0cnVjdCBpbnRlbF9xZ3ZfaW5mbyBxaSA9IHt9
OwogCWJvb2wgaXNfeV90aWxlID0gdHJ1ZTsgLyogYXNzdW1lIHkgdGlsZSBtYXkgYmUgdXNlZCAq
LwotCWludCBudW1fY2hhbm5lbHMgPSBkZXZfcHJpdi0+ZHJhbV9pbmZvLm51bV9jaGFubmVsczsK
KwlpbnQgbnVtX2NoYW5uZWxzID0gbWF4X3QodTgsIDEsIGRldl9wcml2LT5kcmFtX2luZm8ubnVt
X2NoYW5uZWxzKTsKIAlpbnQgZGVpbnRlcmxlYXZlOwogCWludCBpcHFkZXB0aCwgaXBxZGVwdGhw
Y2g7CiAJaW50IGRjbGtfbWF4OwotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK

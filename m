Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F02AB6FE6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:07:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3698BD5B;
	Thu, 19 Sep 2019 00:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D2273FB7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:07:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="189426726"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga003.jf.intel.com with ESMTP; 18 Sep 2019 17:07:32 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 17:07:13 -0700
Message-Id: <20190919000726.267988-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/13] TGL TC enabling v2
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

VmVyc2lvbiAyIG9mIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjY2
OTUvCgpNb3N0IGltcG9ydGFudCBjaGFuZ2UgaXMgdGhlIGRyb3Agb2YgdGhlIHVzYWdlIG9mIHRo
ZSBoYXJkY29kZWQgdGFibGUgd2l0aCB0aGUKcmVnaXN0ZXJzIHZhbHVlcyB0byBES0wgUExMIHJl
Z2lzdGVycywgYSBidWcgaW4gdGhlIGNhbGN1bGF0aW9uIHdhcyBmaXhlZCBhbmQKYSBzdGVwIHRo
YXQgaXMgbm90IG9uIHRoZSBCU3BlYyB3YXMgYWRkZWQgdG8gbWFrZSBpdCB3b3JrIG9uIEhXIGFu
ZCBtYXRjaCB3aXRoCmhhcmRjb2RlZCB0YWJsZS4KQWxzbyBhZGRyZXNzZWQgTHVjYXMgY29tbWVu
dHMsIGFsbCBvZiB0aG9zZSBub3RlZCBpbiB0aGUgY2hhbmdlbG9nIG9mIGVhY2gKcGF0Y2guCgpD
bGludG9uIEEgVGF5bG9yICg0KToKICBkcm0vaTkxNS90Z2w6IEFkZCBtaXNzaW5nIGRkaSBjbG9j
ayBzZWxlY3QgZHVyaW5nIERQIGluaXQgc2VxdWVuY2UKICBkcm0vaTkxNS90Z2wvcGxsOiBTZXQg
dXBkYXRlX2FjdGl2ZV9kcGxsCiAgZHJtL2k5MTUvdGdsOiBUQyBoZWxwZXIgZnVuY3Rpb24gdG8g
cmV0dXJuIHBpbiBtYXBwaW5nCiAgZHJtL2k5MTUvdGdsOiBBZGQgZGtsIHBoeSBwcm9ncmFtbWlu
ZyBzZXF1ZW5jZXMKCkpvc8OpIFJvYmVydG8gZGUgU291emEgKDUpOgogIGRybS9pOTE1L3RnbDog
RmluaXNoIG1vZHVsYXIgRklBIHN1cHBvcnQgb24gcmVnaXN0ZXJzCiAgZHJtL2k5MTUvaWNsOiBV
bmlmeSBkaXNhYmxlIGFuZCBlbmFibGUgcGh5IGNsb2NrIGdhdGluZyBmdW5jdGlvbnMKICBkcm0v
aTkxNS90Z2w6IENoZWNrIHRoZSBVQyBoZWFsdGggb2YgdGMgY29udHJvbGxlcnMgYWZ0ZXIgcG93
ZXIgb24KICBkcm0vaTkxNS90Z2w6IEFkZCBka2wgcGh5IHBsbCBjYWxjdWxhdGlvbnMKICBkcm0v
aTkxNS90Z2w6IEZpeCBka2wgbGluayB0cmFpbmluZwoKTHVjYXMgRGUgTWFyY2hpICgyKToKICBk
cm0vaTkxNS90Z2w6IEFkZCBpbml0aWFsIGRrbCBwbGwgc3VwcG9ydAogIGRybS9pOTE1L3RnbDog
aW5pdGlhbGl6ZSBUQyBhbmQgVEJUIHBvcnRzCgpWYW5kaXRhIEt1bGthcm5pICgyKToKICBkcm0v
aTkxNS90Z2w6IEFkZCBka2wgcGh5IHJlZ2lzdGVycwogIGRybS9pOTE1L3RnbDogQWRkIHN1cHBv
cnQgZm9yIGRrbCBwbGwgd3JpdGUKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jICAgICAgfCAzMjMgKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAgNyArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgIDEzICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMgfCAzMzIgKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgICAgICAgfCAgNjEgKysrLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oICAgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICB8IDE5NSArKysrKysrKystCiA4IGZp
bGVzIGNoYW5nZWQsIDc4OCBpbnNlcnRpb25zKCspLCAxNDYgZGVsZXRpb25zKC0pCgotLSAKMi4y
My4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

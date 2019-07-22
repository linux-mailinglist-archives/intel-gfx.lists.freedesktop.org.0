Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B2270D34
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 01:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF7C89E2A;
	Mon, 22 Jul 2019 23:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C646389E2A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 23:15:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 16:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,296,1559545200"; d="scan'208";a="320827963"
Received: from dk-chv.jf.intel.com ([10.54.75.59])
 by orsmga004.jf.intel.com with ESMTP; 22 Jul 2019 16:15:42 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jul 2019 16:13:25 -0700
Message-Id: <20190722231325.16615-1-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190719004526.B0CC521850@mail.kernel.org>
References: <20190719004526.B0CC521850@mail.kernel.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH stable v5.2] drm/i915/vbt: Fix VBT parsing for
 the PSR section
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
Cc: sashal@kernel.org, stable@vger.kernel.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QSBzaW5nbGUgMzItYml0IFBTUjIgdHJhaW5pbmcgcGF0dGVybiBmaWVsZCBmb2xsb3dzIHRoZSBz
aXh0ZWVuIGVsZW1lbnQKYXJyYXkgb2YgUFNSIHRhYmxlIGVudHJpZXMgaW4gdGhlIFZCVCBzcGVj
LiBCdXQsIHdlIGluY29ycmVjdGx5IGRlZmluZQp0aGlzIFBTUjIgZmllbGQgZm9yIGVhY2ggb2Yg
dGhlIFBTUiB0YWJsZSBlbnRyaWVzLiBBcyBhIHJlc3VsdCwgdGhlIFBTUjEKdHJhaW5pbmcgcGF0
dGVybiBkdXJhdGlvbiBmb3IgYW55IHBhbmVsX3R5cGUgIT0gMCB3aWxsIGJlIHBhcnNlZAppbmNv
cnJlY3RseS4gU2Vjb25kbHksIFBTUjIgdHJhaW5pbmcgcGF0dGVybiBkdXJhdGlvbnMgZm9yIFZC
VHMgd2l0aCBiZGIKdmVyc2lvbiA+PSAyMjYgd2lsbCBhbHNvIGJlIHdyb25nLgoKQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZyAjdjUuMgpGaXhlczogODhhMGQ5NjA2YWZmICgiZHJtL2k5
MTUvdmJ0OiBQYXJzZSBhbmQgdXNlIHRoZSBuZXcgZmllbGQgd2l0aCBQU1IyIFRQMi8zIHdha2V1
cCB0aW1lIikKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTA4OApCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3df
YnVnLmNnaT9pZD0yMDQxODMKU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhp
bmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkFja2VkLWJ5OiBSb2RyaWdvIFZpdmkg
PHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClRlc3RlZC1ieTogRnJhbsOnb2lzIEd1ZXJyYXogPGt1
YnJpY2tAZmd2Ni5uZXQ+ClNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNo
L21zZ2lkLzIwMTkwNzE3MjIzNDUxLjI1OTUtMS1kaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNv
bQooY2hlcnJ5IHBpY2tlZCBmcm9tIGNvbW1pdCBiNWVhOWM5MzM3MDA3ZDZlNzAwMjgwYzhhNjBi
NGUxMGQwNzBmYjUzKQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYyAgICAg
fCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF92YnRfZGVmcy5oIHwgNiArKystLS0K
IDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Jpb3MuYwppbmRleCAxZGM4ZDAzZmYxMjcuLmVlNmZhNzVkNjVhMiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYwpAQCAtNzYyLDcgKzc2Miw3IEBAIHBhcnNlX3Bzcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHN0cnVjdCBiZGJfaGVhZGVy
ICpiZGIpCiAJfQogCiAJaWYgKGJkYi0+dmVyc2lvbiA+PSAyMjYpIHsKLQkJdTMyIHdha2V1cF90
aW1lID0gcHNyX3RhYmxlLT5wc3IyX3RwMl90cDNfd2FrZXVwX3RpbWU7CisJCXUzMiB3YWtldXBf
dGltZSA9IHBzci0+cHNyMl90cDJfdHAzX3dha2V1cF90aW1lOwogCiAJCXdha2V1cF90aW1lID0g
KHdha2V1cF90aW1lID4+ICgyICogcGFuZWxfdHlwZSkpICYgMHgzOwogCQlzd2l0Y2ggKHdha2V1
cF90aW1lKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF92YnRfZGVm
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0X2RlZnMuaAppbmRleCBmZGJiYjlh
NTM4MDQuLjc5NmMwNzBiYmU2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfdmJ0X2RlZnMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF92YnRfZGVmcy5o
CkBAIC03NzIsMTMgKzc3MiwxMyBAQCBzdHJ1Y3QgcHNyX3RhYmxlIHsKIAkvKiBUUCB3YWtlIHVw
IHRpbWUgaW4gbXVsdGlwbGUgb2YgMTAwICovCiAJdTE2IHRwMV93YWtldXBfdGltZTsKIAl1MTYg
dHAyX3RwM193YWtldXBfdGltZTsKLQotCS8qIFBTUjIgVFAyL1RQMyB3YWtldXAgdGltZSBmb3Ig
MTYgcGFuZWxzICovCi0JdTMyIHBzcjJfdHAyX3RwM193YWtldXBfdGltZTsKIH0gX19wYWNrZWQ7
CiAKIHN0cnVjdCBiZGJfcHNyIHsKIAlzdHJ1Y3QgcHNyX3RhYmxlIHBzcl90YWJsZVsxNl07CisK
KwkvKiBQU1IyIFRQMi9UUDMgd2FrZXVwIHRpbWUgZm9yIDE2IHBhbmVscyAqLworCXUzMiBwc3Iy
X3RwMl90cDNfd2FrZXVwX3RpbWU7CiB9IF9fcGFja2VkOwogCiAvKgotLSAKMi4xNy4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

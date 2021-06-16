Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949473AA54C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 22:28:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A046E81E;
	Wed, 16 Jun 2021 20:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 201CE6E05D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 20:28:18 +0000 (UTC)
IronPort-SDR: tLCGDb2ocz2baCDkGNrPll5oHubEa0NJxQuyue+Izp+5J8Sc2kHFUX6HS3+obobzhJHV3upuWp
 RrJgKrdJJZog==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="206289219"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="206289219"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 13:28:16 -0700
IronPort-SDR: LQ3E53A7TNTadtJ7+drbygzHUxmr6ArKQLWDgrh95TWnRUiU/6u9bqWMLhHjh9Y8eHvlWbAvjT
 Cxm89Kfe4dow==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="479227668"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.54])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 13:28:16 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Jun 2021 13:31:57 -0700
Message-Id: <20210616203158.118111-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210616203158.118111-1-jose.souza@intel.com>
References: <20210616203158.118111-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/display/adl_p: Implement
 Wa_16011303918
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

UFNSMiBpcyBub3QgY29tcGF0aWJsZSB3aXRoIERDM0NPIG9yIFZSUiBpbiB0aGlzIHN0ZXBwaW5n
LCBzbyBub3QKZW5hYmxpbmcgUFNSMiBpZiBWUlIgd2lsbCBiZSBlbmFibGVkIG9yIG5vdCBlbmFi
bGluZyBEQzNDTyBpZiBQU1IyIGlzCnBvc3NpYmxlLgoKQlNwZWM6IDU0MzY5CkNjOiBHd2FuLWd5
ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+CkNjOiBNYXR0IEF0d29vZCA8bWF0
dGhldy5zLmF0d29vZEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5k
ZXggM2NiODc1OGJlNDA0Mi4uOTY0MzYyNGZlMTYwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCkBAIC03MzMsNiArNzMzLDEwIEBAIHRnbF9kYzNjb19leGl0bGlu
ZV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWlmICghZGMzY29f
aXNfcGlwZV9wb3J0X2NvbXBhdGlibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUpKQogCQlyZXR1cm47
CiAKKwkvKiBXYV8xNjAxMTMwMzkxODphZGxwICovCisJaWYgKElTX0FETFBfRElTUExBWV9TVEVQ
KGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0EwKSkKKwkJcmV0dXJuOworCiAJLyoKIAkgKiBEQzND
TyBFeGl0IHRpbWUgMjAwdXMgQi5TcGVjIDQ5MTk2CiAJICogUFNSMiB0cmFuc2NvZGVyIEVhcmx5
IEV4aXQgc2NhbmxpbmVzID0gUk9VTkRVUCgyMDAgLyBsaW5lIHRpbWUpICsgMQpAQCAtOTYxLDYg
Kzk2NSwxNCBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAogCQlyZXR1cm4gZmFsc2U7CiAJfQogCisJLyogV2FfMTYwMTEzMDM5
MTg6YWRscCAqLworCWlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxlICYmCisJICAgIElTX0FETFBf
RElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0EwKSkgeworCQlkcm1fZGJnX2tt
cygmZGV2X3ByaXYtPmRybSwKKwkJCSAgICAiUFNSMiBub3QgZW5hYmxlZCwgbm90IGNvbXBhdGli
bGUgd2l0aCBIVyBzdGVwcGluZyArIFZSUlxuIik7CisJCXJldHVybiBmYWxzZTsKKwl9CisKIAl0
Z2xfZGMzY29fZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwog
CXJldHVybiB0cnVlOwogfQotLSAKMi4zMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK

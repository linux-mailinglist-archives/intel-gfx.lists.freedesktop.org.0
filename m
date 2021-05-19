Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCFD389211
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 16:54:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D176EDEA;
	Wed, 19 May 2021 14:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54A536EDE7;
 Wed, 19 May 2021 14:54:10 +0000 (UTC)
IronPort-SDR: v+TEeGxVxhCc32tu0F0ELUUiZBdngVCI7LkIbQL7WQia4oQkCl8geSATHSYMtszyIA2Czzqpnd
 9T/LXmStVfoA==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="188401231"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="188401231"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:54:10 -0700
IronPort-SDR: zvUb/OczHot0xOppiCspUURTEboLnPL3dMbKX5htHOd36Z91gCEMdVNecZI4asG6Qt6MSEWIb8
 o6KEI5MCKVKA==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="473527481"
Received: from ajwalton-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.22.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 07:54:07 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 19 May 2021 15:53:37 +0100
Message-Id: <20210519145337.255167-10-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210519145337.255167-1-matthew.auld@intel.com>
References: <20210519145337.255167-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 9/9] tests/i915/gem_exec_basic: Iterate
 over all memory regions
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
Cc: Vanshidhar Konda <vanshidhar.r.konda@intel.com>,
 thomas.hellstrom@linux.intel.com,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 Janulgue Abdiel <abdiel.janulgue@intel.com>, intel-gfx@lists.freedesktop.org,
 "Kalamarz, Lukasz" <lukasz.kalamarz@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogIkthbGFtYXJ6LCBMdWthc3oiIDxsdWthc3oua2FsYW1hcnpAaW50ZWwuY29tPgoKQXMg
YSBwYXJ0IG9mIGxvY2FsIG1lbW9yeSBlZmZvcnQgd2UgbmVlZCB0byBtYWtlIHN1cmUsIHRoYXQK
ZXZlcnkgYXZhaWxhYmxlIG1lbW9yeSByZWdpb24gaXMgY292ZXJlZC4gVGhpcyBwYXRjaCBpcyBh
biBhdHRlbXB0CmZvciB0aGlzIHByb2JsZW0uIElmIGl0IHdpbGwgYmUgYWNjZXB0ZWQgaXQgd2ls
bCBiZSByZXBsaWNhdGVkIG9uCmVhY2ggdGVzdCB0aGF0IGNhbiBhY3R1YWxseSBiZW5lZml0IGZy
b20gaXQuCgpTaWduZWQtb2ZmLWJ5OiBEb21pbmlrIEdyemVnb3J6ZWsgPGRvbWluaWsuZ3J6ZWdv
cnpla0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1a2FzeiBLYWxhbWFyeiA8bHVrYXN6Lmth
bGFtYXJ6QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmluYXkgQmVsZ2F1bWthciA8dmluYXku
YmVsZ2F1bWthckBpbnRlbC5jb20+CkNjOiBKYW51bGd1ZSBBYmRpZWwgPGFiZGllbC5qYW51bGd1
ZUBpbnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNj
OiBLYXRhcnp5bmEgRGVjIDxrYXRhcnp5bmEuZGVjQGludGVsLmNvbT4KQ2M6IFZhbnNoaWRoYXIg
S29uZGEgPHZhbnNoaWRoYXIuci5rb25kYUBpbnRlbC5jb20+CkNjOiBTdHVhcnQgU3VtbWVycyA8
c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgpDYzogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymln
bmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8
bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX2Jhc2ljLmMg
fCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFzaWMuYyBiL3Rlc3RzL2k5MTUvZ2Vt
X2V4ZWNfYmFzaWMuYwppbmRleCA4YmM0ZGM1Mi4uODcyYjFkM2IgMTAwNjQ0Ci0tLSBhL3Rlc3Rz
L2k5MTUvZ2VtX2V4ZWNfYmFzaWMuYworKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2Jhc2ljLmMK
QEAgLTU2LDcgKzU2LDggQEAgaWd0X21haW4KIAkJaWd0X2Fzc2VydChxdWVyeV9pbmZvKTsKIAog
CQlzZXQgPSBnZXRfbWVtb3J5X3JlZ2lvbl9zZXQocXVlcnlfaW5mbywKLQkJCQkJICAgIEk5MTVf
U1lTVEVNX01FTU9SWSk7CisJCQkJCSAgICBJOTE1X1NZU1RFTV9NRU1PUlksCisJCQkJCSAgICBJ
OTE1X0RFVklDRV9NRU1PUlkpOwogCX0KIAogCWlndF9zdWJ0ZXN0X3dpdGhfZHluYW1pYygiYmFz
aWMiKSB7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=

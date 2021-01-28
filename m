Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3892E306CF5
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 06:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80CC36E8CC;
	Thu, 28 Jan 2021 05:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677D66E8D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 05:30:38 +0000 (UTC)
IronPort-SDR: aKmkycdf7uly2d9RZHYXYx1hPKM4RUCYMi0gFi8opQOSyw2AaFc2XZ88qBiV9e7YQjpyLR4+1X
 dEkudIlcFTtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167279162"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="167279162"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:37 -0800
IronPort-SDR: N+S7hWY0G17XNldOkZOiy0Yqe+vxakqUKgwPz2x39OIKYojegtdonZ3LSuIZPWKH+kvyIJX2fk
 GfJvTMOiwi+g==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="430386087"
Received: from kamathas-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.24.125])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:37 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 21:30:22 -0800
Message-Id: <20210128053024.23540-8-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210128053024.23540-1-aditya.swarup@intel.com>
References: <20210128053024.23540-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/adl_s: Update memory bandwidth
 parameters
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGVqYXMgVXBhZGh5YXkgPHRlamFza3VtYXJ4LnN1cmVuZHJha3VtYXIudXBhZGh5YXlA
aW50ZWwuY29tPgoKSnVzdCBsaWtlIFJLTCwgdGhlIEFETF9TIHBsYXRmb3JtIGFsc28gaGFzIGRp
ZmZlcmVudCBtZW1vcnkKY2hhcmFjdGVyaXN0aWNzIGZyb20gcGFzdCBwbGF0Zm9ybXMuICBVcGRh
dGUgdGhlIHZhbHVlcyB1c2VkCmJ5IG91ciBtZW1vcnkgYmFuZHdpZHRoIGNhbGN1bGF0aW9ucyBh
Y2NvcmRpbmdseS4KCnYyOiBGaXggbWlub3Igbml0cGljayBmb3Igc2hpZnRpbmcgQURMUyBjYXNl
IGFib3ZlIFJLTChiYXNlZCBvbiBwbGF0Zm9ybQpvcmRlcikuKG1kcm9wZXIpCgpCc3BlYzogNjQ2
MzEKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBUZWphcyBVcGFkaHlheSA8dGVqYXNrdW1hcnguc3VyZW5kcmFrdW1hci51cGFkaHlh
eUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8
IDExICsrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCBiZDA2
MDQwNGQyNDkuLjRlN2EzMGQ0NGZjMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYwpAQCAtMjA1LDYgKzIwNSwxMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX3Nh
X2luZm8gcmtsX3NhX2luZm8gPSB7CiAJLmRpc3BsYXlydGlkcyA9IDEyOCwKIH07CiAKK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfc2FfaW5mbyBhZGxzX3NhX2luZm8gPSB7CisJLmRlYnVyc3Qg
PSAxNiwKKwkuZGVwcm9nYndsaW1pdCA9IDM4LCAvKiBHQi9zICovCisJLmRpc3BsYXlydGlkcyA9
IDI1NiwKK307CisKIHN0YXRpYyBpbnQgaWNsX2dldF9id19pbmZvKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgY29uc3Qgc3RydWN0IGludGVsX3NhX2luZm8gKnNhKQogewogCXN0
cnVjdCBpbnRlbF9xZ3ZfaW5mbyBxaSA9IHt9OwpAQCAtMzE1LDcgKzMyMSwxMCBAQCB2b2lkIGlu
dGVsX2J3X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWlmICgh
SEFTX0RJU1BMQVkoZGV2X3ByaXYpKQogCQlyZXR1cm47CiAKLQlpZiAoSVNfUk9DS0VUTEFLRShk
ZXZfcHJpdikpCisKKwlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQorCQlpY2xfZ2V0X2J3
X2luZm8oZGV2X3ByaXYsICZhZGxzX3NhX2luZm8pOworCWVsc2UgaWYgKElTX1JPQ0tFVExBS0Uo
ZGV2X3ByaXYpKQogCQlpY2xfZ2V0X2J3X2luZm8oZGV2X3ByaXYsICZya2xfc2FfaW5mbyk7CiAJ
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMikpCiAJCWljbF9nZXRfYndfaW5mbyhkZXZfcHJp
diwgJnRnbF9zYV9pbmZvKTsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==

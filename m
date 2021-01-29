Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C383308C67
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF3A6EBAC;
	Fri, 29 Jan 2021 18:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F9D96EBA0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 18:30:00 +0000 (UTC)
IronPort-SDR: 7fpwIIRnims0P1JdpiRHR+ti1b7cl0w6Tv4Wd9ZWVAI1heKyiapReiL1DXb+B7UkrTQm2Kv9k7
 qOjyQ9Ts7adQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="168131283"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="168131283"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:59 -0800
IronPort-SDR: Z1/6/niyh10KgPW22UuLk7yNg5M2BBzzb14LWbum0OoNM8UdEGsSgaWoV6mb2SdYcmWf3esomg
 6/B+/U7r4hiA==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="474952955"
Received: from dhamor-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.22.55])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 10:29:59 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 10:29:43 -0800
Message-Id: <20210129182945.217078-7-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129182945.217078-1-aditya.swarup@intel.com>
References: <20210129182945.217078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/adl_s: Update memory bandwidth
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
YncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwppbmRleCA0YjVh
MzBhYzg0YmMuLmVjODAzODYxYWNiMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9idy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYwpAQCAtMTQyLDYgKzE0MiwxMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX3Nh
X2luZm8gcmtsX3NhX2luZm8gPSB7CiAJLmRpc3BsYXlydGlkcyA9IDEyOCwKIH07CiAKK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfc2FfaW5mbyBhZGxzX3NhX2luZm8gPSB7CisJLmRlYnVyc3Qg
PSAxNiwKKwkuZGVwcm9nYndsaW1pdCA9IDM4LCAvKiBHQi9zICovCisJLmRpc3BsYXlydGlkcyA9
IDI1NiwKK307CisKIHN0YXRpYyBpbnQgaWNsX2dldF9id19pbmZvKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgY29uc3Qgc3RydWN0IGludGVsX3NhX2luZm8gKnNhKQogewogCXN0
cnVjdCBpbnRlbF9xZ3ZfaW5mbyBxaSA9IHt9OwpAQCAtMjUxLDcgKzI1NywxMCBAQCB2b2lkIGlu
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

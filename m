Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 852AB2A963
	for <lists+intel-gfx@lfdr.de>; Sun, 26 May 2019 13:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE397891D5;
	Sun, 26 May 2019 11:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B2EC891D5;
 Sun, 26 May 2019 11:25:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 352E6A011B;
 Sun, 26 May 2019 11:25:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sun, 26 May 2019 11:25:53 -0000
Message-ID: <20190526112553.542.1797@emeril.freedesktop.org>
References: <20190521164025.30225-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190521164025.30225-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv5=2C1/2=5D_drm/i915=3A_Make_sandybr?=
 =?utf-8?q?idge=5Fpcode=5Fread=28=29_deal_with_the_second_data_register_?=
 =?utf-8?b?KHJldjIp?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y1LDEv
Ml0gZHJtL2k5MTU6IE1ha2Ugc2FuZHlicmlkZ2VfcGNvZGVfcmVhZCgpIGRlYWwgd2l0aCB0aGUg
c2Vjb25kIGRhdGEgcmVnaXN0ZXIgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82MDkyMS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09
CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjdjMzc1NTMzZWE3MSBkcm0vaTkxNTog
TWFrZSBzYW5keWJyaWRnZV9wY29kZV9yZWFkKCkgZGVhbCB3aXRoIHRoZSBzZWNvbmQgZGF0YSBy
ZWdpc3Rlcgo3N2M4ZjJjZjY0Y2MgZHJtL2k5MTU6IE1ha2Ugc3VyZSB3ZSBoYXZlIGVub3VnaCBt
ZW1vcnkgYmFuZHdpZHRoIG9uIElDTAotOjE4NjogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzog
YWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVw
ZGF0aW5nPwojMTg2OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06NDA0OiBXQVJOSU5HOlRZUE9f
U1BFTExJTkc6ICdzdWNjZXNmdWxseScgbWF5IGJlIG1pc3NwZWxsZWQgLSBwZXJoYXBzICdzdWNj
ZXNzZnVsbHknPwojNDA0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9idy5jOjIx
NDoKKwkvKiBEaWQgd2UgaW5pdGlhbGl6ZSB0aGUgYncgbGltaXRzIHN1Y2Nlc2Z1bGx5PyAqLwoK
dG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCAwIGNoZWNrcywgNjc1IGxpbmVzIGNoZWNrZWQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

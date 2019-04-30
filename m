Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F32FC38
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 17:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8741A891AD;
	Tue, 30 Apr 2019 15:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FE32891AD;
 Tue, 30 Apr 2019 15:06:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 991F6A0084;
 Tue, 30 Apr 2019 15:06:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 30 Apr 2019 15:06:51 -0000
Message-ID: <20190430150651.26877.53913@emeril.freedesktop.org>
References: <20190430142901.7302-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190430142901.7302-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Don=27t_skip_audi?=
 =?utf-8?q?o_enable_if_ELD_is_bogus?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IERvbid0IHNraXAgYXVkaW8gZW5hYmxlIGlmIEVMRCBpcyBib2d1cwpVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAxMTkvClN0YXRlIDog
d2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApl
Njg1ZTU5NDRhNTMgZHJtL2k5MTU6IERvbid0IHNraXAgYXVkaW8gZW5hYmxlIGlmIEVMRCBpcyBi
b2d1cwpiODQ3MmZlOGNhOTQgZHJtL2k5MTU6IGhzdysgYXVkaW8gcmVncyBhcmUgcGVyLXRyYW5z
b2NkZXIKLTozMDogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwoj
MzA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6OTAxNzoKKyNkZWZpbmUg
SFNXX0FVRF9NSVNDX0NUUkwodHJhbnMpCV9NTUlPX1RSQU5TKHRyYW5zLCBfSFNXX0FVRF9NSVND
X0NUUkxfQSwgX0hTV19BVURfTUlTQ19DVFJMX0IpCgotOjM1OiBXQVJOSU5HOkxPTkdfTElORTog
bGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMzNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaDo5MDIxOgorI2RlZmluZSBIU1dfQVVEX01fQ1RTX0VOQUJMRSh0cmFucykJX01N
SU9fVFJBTlModHJhbnMsIF9IU1dfQVVEX01fQ1RTX0VOQUJMRV9BLCBfSFNXX0FVRF9NX0NUU19F
TkFCTEVfQikKCi06NDM6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3Rl
cnMKIzQzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjkwMjg6CisjZGVm
aW5lIEhTV19BVURfRElQX0VMRF9DVFJMKHRyYW5zKQlfTU1JT19UUkFOUyh0cmFucywgX0hTV19B
VURfRElQX0VMRF9DVFJMX1NUX0EsIF9IU1dfQVVEX0RJUF9FTERfQ1RSTF9TVF9CKQoKLTo1NTog
V0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojNTU6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmg6OTAzODoKKyNkZWZpbmUgSFNXX0FVRF9FRElE
X0RBVEEodHJhbnMpCV9NTUlPX1RSQU5TKHRyYW5zLCBfSFNXX0FVRF9FRElEX0RBVEFfQSwgX0hT
V19BVURfRURJRF9EQVRBX0IpCgp0b3RhbDogMCBlcnJvcnMsIDQgd2FybmluZ3MsIDAgY2hlY2tz
LCAxOTUgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4

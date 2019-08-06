Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC12830E5
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 13:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74A546E35F;
	Tue,  6 Aug 2019 11:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BC1F46E35F;
 Tue,  6 Aug 2019 11:43:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B8B6CA0084;
 Tue,  6 Aug 2019 11:43:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 06 Aug 2019 11:43:26 -0000
Message-ID: <20190806114326.1116.71621@emeril.freedesktop.org>
References: <cover.1565085691.git.jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <cover.1565085691.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_some_more_header_juggling_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IHNvbWUgbW9yZSBoZWFkZXIg
anVnZ2xpbmcgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82NDc2NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjM4ZTMyMGJmOTU3NiBkcm0vaTkxNTogbW92ZSBpbnRlbF9k
aXNwbGF5LmMgZnVuY3Rpb24gZGVjbGFyYXRpb25zCmUzMzZmZWE0ODRkZCBkcm0vaTkxNS9zcHJp
dGU6IHVuLWlubGluZSBpY2xfaXNfaGRyX3BsYW5lKCkKY2Q5MzE4ZjY4YzNmIGRybS9pOTE1L2ly
cTogdW4taW5saW5lIGZ1bmN0aW9ucyB0byBhdm9pZCBpOTE1X2Rydi5oIGluY2x1ZGUKZTQwNTZj
ZDJlNjRkIGRybS9pOTE1L2J3OiBtYWtlIGludGVsX2F0b21pY19nZXRfYndfc3RhdGUoKSBzdGF0
aWMKYmU3YTcwN2UxYTU5IGRybS9pOTE1L21zdDogdW4taW5saW5lIGludGVsX2RwX21zdF9lbmNv
ZGVyX2FjdGl2ZV9saW5rcygpCjRhMWJjYTE5NjU5ZiBkcm0vaTkxNS90YzogdW4taW5saW5lIGlu
dGVsX3RjX3BvcnRfcmVmX2hlbGQoKQo3MmNiMzJkMzg4MDIgZHJtL2k5MTU6IGF2b2lkIGluY2x1
ZGluZyBpbnRlbF9kcnYuaCB2aWEgaTkxNV9kcnYuaC0+aTkxNV90cmFjZS5oCmFkODVjOGJhNzg1
NyBkcm0vaTkxNTogcmVuYW1lIGludGVsX2Rydi5oIHRvIGRpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCi06MjYwOiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3Ig
ZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMyNjA6IApy
ZW5hbWUgZnJvbSBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAoKdG90YWw6IDAgZXJy
b3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNzAyIGxpbmVzIGNoZWNrZWQKMDg4OGY3ODQxNThm
IGRybS9pOTE1OiByZW1vdmUgdW5uZWNlc3NhcnkgaW5jbHVkZXMgb2YgaW50ZWxfZGlzcGxheV90
eXBlcy5oIGhlYWRlcgpmYzgwY2M4NDg5YmQgZHJtL2k5MTU6IG1vdmUgcHJvcGVydHkgZW51bXMg
dG8gaW50ZWxfZGlzcGxheV90eXBlcy5oCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=

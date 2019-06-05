Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE093635A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 20:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45E5892CF;
	Wed,  5 Jun 2019 18:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2C46C89248;
 Wed,  5 Jun 2019 18:28:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 261DBA00EF;
 Wed,  5 Jun 2019 18:28:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 05 Jun 2019 18:28:22 -0000
Message-ID: <20190605182822.10843.6194@emeril.freedesktop.org>
References: <20190605181735.7020-1-hdegoede@redhat.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190605181735.7020-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915/dsi=3A_Move_logging_?=
 =?utf-8?q?of_DSI_VBT_parameters_to_a_helper_function?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvZHNpOiBNb3ZlIGxvZ2dpbmcgb2YgRFNJIFZCVCBwYXJhbWV0ZXJzIHRvIGEgaGVs
cGVyIGZ1bmN0aW9uClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82MTY3OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCmU1ODI5ZWEzNTE5NSBkcm0vaTkxNS9kc2k6IE1vdmUgbG9nZ2lu
ZyBvZiBEU0kgVkJUIHBhcmFtZXRlcnMgdG8gYSBoZWxwZXIgZnVuY3Rpb24KLTo1OTogQ0hFQ0s6
UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50
aGVzaXMKIzU5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2lfdmJ0LmM6NTc1
OgorCURSTV9ERUJVR19LTVMoIkJUQSAlc1xuIiwKKwkJCWVuYWJsZWRkaXNhYmxlZCghKGludGVs
X2RzaS0+dmlkZW9fZnJtdF9jZmdfYml0cyAmIERJU0FCTEVfVklERU9fQlRBKSkpOwoKdG90YWw6
IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgMTAxIGxpbmVzIGNoZWNrZWQKYzQ4ODQz
MTcxYzQxIGRybS9pOTE1L2RzaTogTW92ZSB2bHYvaWNsX2RwaHlfcGFyYW1faW5pdCBjYWxsIG91
dCBvZiBpbnRlbF9kc2lfdmJ0X2luaXQgKHYyKQotOjU1MjogQ0hFQ0s6T1BFTl9FTkRFRF9MSU5F
OiBMaW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygnCiM1NTI6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L3Zsdl9kc2kuYzoxNzQzOgorCWV4aXRfemVyb19jbnQgPSBESVZfUk9VTkRfVVAo
CgotOjU3MjogQ0hFQ0s6T1BFTl9FTkRFRF9MSU5FOiBMaW5lcyBzaG91bGQgbm90IGVuZCB3aXRo
IGEgJygnCiM1NzI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2kuYzoxNzYzOgor
CWNsa196ZXJvX2NudCA9IERJVl9ST1VORF9VUCgKCi06NjA4OiBXQVJOSU5HOkJMT0NLX0NPTU1F
TlRfU1RZTEU6IEJsb2NrIGNvbW1lbnRzIHVzZSBhIHRyYWlsaW5nICovIG9uIGEgc2VwYXJhdGUg
bGluZQojNjA4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmM6MTc5OToKKwkg
KiBUaGUgY29tbWVudCBhYm92ZSBkb2VzIG5vdCBtYXRjaCB3aXRoIHRoZSBjb2RlICovCgotOjYy
NzogQ0hFQ0s6T1BFTl9FTkRFRF9MSU5FOiBMaW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygn
CiM2Mjc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2kuYzoxODE4OgorCQlESVZf
Uk9VTkRfVVAoCgotOjY0MzogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQg
c2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzY0MzogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvdmx2X2RzaS5jOjE4MzQ6CisJCURJVl9ST1VORF9VUCgyICogdGxweF91aSArIHRyYWls
X2NudCAqIDIgKyA4LAorCQkJOCk7Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDQgY2hl
Y2tzLCA2MTQgbGluZXMgY2hlY2tlZAo5Nzg3Zjk1OWYzN2MgZHJtL2k5MTUvZHNpOiBSZWFkIGJh
Y2sgcGNsayBzZXQgYnkgR09QIGFuZCB1c2UgdGhhdCBhcyBwY2xrICh2MykKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

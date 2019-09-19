Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7755CB7F7E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF9626F802;
	Thu, 19 Sep 2019 16:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D29416F802;
 Thu, 19 Sep 2019 16:57:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA2DAA0019;
 Thu, 19 Sep 2019 16:57:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 19 Sep 2019 16:57:50 -0000
Message-ID: <20190919165750.23913.14233@emeril.freedesktop.org>
References: <cover.1568901239.git.jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <cover.1568901239.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_modeset_probe/remove_path_refactoring?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IG1vZGVzZXQgcHJvYmUvcmVt
b3ZlIHBhdGggcmVmYWN0b3JpbmcKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzY2OTMzLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGlt
IGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMzc0MDdlZTc3ZTNkIGRybS9pOTE1OiBhZGQgaTkx
NV9kcml2ZXJfbW9kZXNldF9yZW1vdmUoKQo1MDE2ZWEzZjAyMjYgZHJtL2k5MTU6IHBhc3MgaTkx
NSB0byBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkKMjMwYWI0Mjk2YTkxIGRybS9pOTE1OiBw
YXNzIGk5MTUgdG8gaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKCkKMjI3NDUyNTkzYmI0IGRy
bS9pOTE1OiBhYnN0cmFjdCBpbnRlbF9wYW5lbF9zYW5pdGl6ZV9zc2MoKSBmcm9tIGludGVsX21v
ZGVzZXRfaW5pdCgpCmYwNDg2MmRhZDQzMyBkcm0vaTkxNTogYWJzdHJhY3QgaW50ZWxfbW9kZV9j
b25maWdfaW5pdCgpIGZyb20gaW50ZWxfbW9kZXNldF9pbml0KCkKN2E4NzE2MGIxZDk1IGRybS9p
OTE1OiBwYXNzIGk5MTUgdG8gaW50ZWxfbW9kZXNldF9pbml0KCkgYW5kIGludGVsX21vZGVzZXRf
aW5pdF9odygpCi06NDE6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3Np
Z25tZW50cyBzaG91bGQgYmUgYXZvaWRlZAojNDE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE1OTQxOgorCWk5MTUtPmNkY2xrLmxvZ2ljYWwgPSBp
OTE1LT5jZGNsay5hY3R1YWwgPSBpOTE1LT5jZGNsay5odzsKCnRvdGFsOiAwIGVycm9ycywgMCB3
YXJuaW5ncywgMSBjaGVja3MsIDE1NyBsaW5lcyBjaGVja2VkCmUwNDU5YmUxOTY0OCBkcm0vaTkx
NTogc3BsaXQgaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKCkgdG8gcHJlL3Bvc3QgaXJxIHVu
aW5zdGFsbAplMGViMWI1MWY1NTUgZHJtL2k5MTU6IHNwbGl0IGk5MTVfZHJpdmVyX21vZGVzZXRf
cmVtb3ZlKCkgdG8gcHJlL3Bvc3QgaXJxIHVuaW5zdGFsbApmMGE0MTIzOWZlNTMgZHJtL2k5MTU6
IG1vdmUgZ21idXMgc2V0dXAgZG93biB0byBpbnRlbF9tb2Rlc2V0X2luaXQoKQo4NTA4MGM2YWFj
N2IgZHJtL2k5MTU6IHNwbGl0IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoKSB0byBwcmUvcG9z
dCBpcnEgaW5zdGFsbAo4YzM2N2YwMThhOWEgZHJtL2k5MTU6IG1vdmUgZ2VtIGluaXQgdXAgZnJv
bSBtb2Rlc2V0IGluaXQKMWZhM2YyMDNjYmU3IGRybS9pOTE1OiBwdXNoIGludGVsX292ZXJsYXlf
aW5pdCgpIGRvd24gdG8gaW50ZWxfbW9kZXNldF9pbml0KCkKMmY1ZTMyOGM3ZjJkIGRybS9pOTE1
OiBzcGxpdCBpbnRlbF9tb2Rlc2V0X2luaXQoKSB0byBwcmUvcG9zdCBpcnEgaW5zdGFsbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

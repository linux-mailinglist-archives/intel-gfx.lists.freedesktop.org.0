Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C06D11406A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 12:58:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999346F88C;
	Thu,  5 Dec 2019 11:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E9EB6F5B5;
 Thu,  5 Dec 2019 11:58:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0441EA47E1;
 Thu,  5 Dec 2019 11:58:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 05 Dec 2019 11:58:40 -0000
Message-ID: <157554712099.19944.13354537803860395094@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Cleanups_around_intel=5Fattached=5Fencoder=28=29?=
 =?utf-8?b?ICYgY28uIChyZXYyKQ==?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENsZWFudXBzIGFyb3VuZCBp
bnRlbF9hdHRhY2hlZF9lbmNvZGVyKCkgJiBjby4gKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDQ1Ni8KU3RhdGUgOiB3YXJuaW5nCgo9PSBT
dW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjgzMmExYzU1ZmU3NiBk
cm0vaTkxNS9oZGNwOiBOdWtlIGludGVsX2hkY3BfdHJhbnNjb2Rlcl9jb25maWcoKQoxNzBlYzNi
NzEzZmYgZHJtL2k5MTU6IFBhc3MgaW50ZWxfY29ubmVjdG9yIHRvIGludGVsX2F0dGFjaGVkXyoo
KQotOjU1NzogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojNTU3
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYzo0NTEyOgorCQlpbnRl
bF9kcCA9IGVuY190b19pbnRlbF9kcCgmaW50ZWxfYXR0YWNoZWRfZW5jb2Rlcih0b19pbnRlbF9j
b25uZWN0b3IoY29ubmVjdG9yKSktPmJhc2UpOwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdz
LCAwIGNoZWNrcywgNDI3IGxpbmVzIGNoZWNrZWQKMzhmZWIyNmMyM2RmIGRybS9pOTE1OiBQYXNz
IGludGVsX2VuY29kZXIgdG8gZW5jX3RvXyooKQotOjUyMDogRVJST1I6Q09ERV9JTkRFTlQ6IGNv
ZGUgaW5kZW50IHNob3VsZCB1c2UgdGFicyB3aGVyZSBwb3NzaWJsZQojNTIwOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jOjQxNTA6CiteSV5JICAgICAgICAg
ICAgICAgcmVxdWlyZWRfbGFuZXMpOyQKCi06NTIwOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1F
TlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNTIwOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jOjQxNTA6CisJaW50ZWxfdGNf
cG9ydF9nZXRfbGluayhlbmNfdG9fZGlnX3BvcnQoZW5jb2RlciksCisJCSAgICAgICAgICAgICAg
IHJlcXVpcmVkX2xhbmVzKTsKCi06MTQ5OTogQ0hFQ0s6Q09NUEFSSVNPTl9UT19OVUxMOiBDb21w
YXJpc29uIHRvIE5VTEwgY291bGQgYmUgd3JpdHRlbiAiaHBkX3B1bHNlIgojMTQ5OTogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmM6MzA1OgorCQllbmNf
dG9fZGlnX3BvcnQoZW5jb2RlciktPmhwZF9wdWxzZSAhPSBOVUxMOwoKdG90YWw6IDEgZXJyb3Jz
LCAwIHdhcm5pbmdzLCAyIGNoZWNrcywgMTYxMCBsaW5lcyBjaGVja2VkCjc2N2M1NzY1ZTQwMyBk
cm0vaTkxNTogVXNlIHRoZSBwYXNzZWQgaW4gZW5jb2Rlcgo0MjRlNmNhOTZlODggZHJtL2k5MTU6
IFVzZSBpbnRlbF9hdHRhY2hlZF9lbmNvZGVyKCkKLToxNjg6IFdBUk5JTkc6TE9OR19MSU5FOiBs
aW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzE2ODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYzo1MDg6CisJCWlmICghaW50ZWxfYXR0YWNoZWRfZW5jb2Rl
cihjb25uZWN0b3IpLT5nZXRfaHdfc3RhdGUoaW50ZWxfYXR0YWNoZWRfZW5jb2Rlcihjb25uZWN0
b3IpLCAmcGlwZSkpCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAyMDYg
bGluZXMgY2hlY2tlZAoyN2U2NzdmNDA2NDEgZHJtL2k5MTU6IFJlbG9jYXRlIGludGVsX2F0dGFj
aGVkX2RwKCkKNGUwOTMxODgxZTIyIGRybS9pOTE1OiBVc2UgaW50ZWxfYXR0YWNoZWRfZHAoKSBp
bnN0ZWFkIG9mIGhhbmQgcm9sbGluZyBpdAo0MjBjMjE5OThkYmMgZHJtL2k5MTU6IFJlbmFtZSBj
b25uX3RvX2RpZ19wb3J0KCkgdG8gaW50ZWxfYXR0YWNoZWRfZGlnX3BvcnQoKQo4MzhkNjI2YzVh
ZGEgZHJtL2k5MTUvaGRjcDogQ2xlYW4gdXAgbG9jYWwgdmFyaWFibGVzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

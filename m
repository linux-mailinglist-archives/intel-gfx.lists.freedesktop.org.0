Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CED9C203A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 13:55:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DC296E3C6;
	Mon, 30 Sep 2019 11:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69B626E3A0;
 Mon, 30 Sep 2019 11:55:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61F8FA0073;
 Mon, 30 Sep 2019 11:55:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Sep 2019 11:55:42 -0000
Message-ID: <20190930115542.32576.89401@emeril.freedesktop.org>
References: <20190930110917.21194-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190930110917.21194-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Exercise_context_switching_in_parallel?=
 =?utf-8?q?l_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBFeGVyY2lz
ZSBjb250ZXh0IHN3aXRjaGluZyBpbiBwYXJhbGxlbGwgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzM5NS8KU3RhdGUgOiB3YXJuaW5nCgo9
PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmIyMTRjNjRiMjg2
MiBkcm0vaTkxNS9zZWxmdGVzdHM6IEV4ZXJjaXNlIGNvbnRleHQgc3dpdGNoaW5nIGluIHBhcmFs
bGVsCi06MzI6IFdBUk5JTkc6TElORV9TUEFDSU5HOiBNaXNzaW5nIGEgYmxhbmsgbGluZSBhZnRl
ciBkZWNsYXJhdGlvbnMKIzMyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX2NvbnRleHQuYzoxNjg6CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBhcmctPmNlWzBdLT5lbmdpbmUtPmk5MTU7CisJSUdUX1RJTUVPVVQoZW5kX3RpbWUpOwoK
LTo3OTogV0FSTklORzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRl
Y2xhcmF0aW9ucwojNzk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fY29udGV4dC5jOjIxNToKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGFyZy0+Y2VbMF0tPmVuZ2luZS0+aTkxNTsKKwlJR1RfVElNRU9VVChlbmRfdGltZSk7CgotOjEx
NjogV0FSTklORzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xh
cmF0aW9ucwojMTE2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NvbnRleHQuYzoyNTI6CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBh
cmc7CisJc3RhdGljIGludCAoKiBjb25zdCBmdW5jW10pKHZvaWQgKmFyZykgPSB7CgotOjEyMzog
V0FSTklORzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0
aW9ucwojMTIzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2NvbnRleHQuYzoyNTk6CisJc3RydWN0IHBhcmFsbGVsX3N3aXRjaCAqZGF0YTsKKwlpbnQg
KCogY29uc3QgKmZuKSh2b2lkICphcmcpOwoKLToxNzg6IENIRUNLOkNPTVBBUklTT05fVE9fTlVM
TDogQ29tcGFyaXNvbiB0byBOVUxMIGNvdWxkIGJlIHdyaXR0ZW4gIiFkYXRhW25dLmNlWzBdIgoj
MTc4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2Nv
bnRleHQuYzozMTQ6CisJCQlpZiAoZGF0YVtuXS5jZVswXSA9PSBOVUxMIHx8IGRhdGFbbl0uY2Vb
MV0gPT0gTlVMTCkKCi06MTc4OiBDSEVDSzpDT01QQVJJU09OX1RPX05VTEw6IENvbXBhcmlzb24g
dG8gTlVMTCBjb3VsZCBiZSB3cml0dGVuICIhZGF0YVtuXS5jZVsxXSIKIzE3ODogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmM6MzE0Ogor
CQkJaWYgKGRhdGFbbl0uY2VbMF0gPT0gTlVMTCB8fCBkYXRhW25dLmNlWzFdID09IE5VTEwpCgp0
b3RhbDogMCBlcnJvcnMsIDQgd2FybmluZ3MsIDIgY2hlY2tzLCAyMTUgbGluZXMgY2hlY2tlZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

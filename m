Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF9519ED0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 16:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4586B89D77;
	Fri, 10 May 2019 14:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A322E89D77;
 Fri, 10 May 2019 14:13:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C8DDA011F;
 Fri, 10 May 2019 14:13:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 10 May 2019 14:13:33 -0000
Message-ID: <20190510141333.17666.79217@emeril.freedesktop.org>
References: <20190510132240.11029-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190510132240.11029-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Per_context_and_per_client_GPU_busyness_tracking?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUGVyIGNvbnRleHQgYW5kIHBlciBjbGllbnQg
R1BVIGJ1c3luZXNzIHRyYWNraW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82MDUwNi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRp
bSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjNhZTBmMTBkMjFkMSBkcm0vaTkxNTogTW92ZSBp
bnRlbF9lbmdpbmVfY29udGV4dF9pbi9vdXQgaW50byBpbnRlbF9scmMuYwplNzZiODc3ZDQyNzMg
ZHJtL2k5MTU6IFRyYWNrIHBlci1jb250ZXh0IGVuZ2luZSBidXN5bmVzcwo4M2JlMjIxODUzYjEg
ZHJtL2k5MTU6IEV4cG9zZSBsaXN0IG9mIGNsaWVudHMgaW4gc3lzZnMKLTo5NjogQ0hFQ0s6UEFS
RU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVz
aXMKIzk2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jOjQ4Mzk6CitpOTE1
X2dlbV9hZGRfY2xpZW50KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQlzdHJ1Y3Qg
ZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXYsCgp0b3RhbDogMCBlcnJvcnMsIDAgd2Fy
bmluZ3MsIDEgY2hlY2tzLCAyMDEgbGluZXMgY2hlY2tlZAo0OTEyMzU5ZjBkMTQgZHJtL2k5MTU6
IFVwZGF0ZSBjbGllbnQgbmFtZSBvbiBjb250ZXh0IGNyZWF0ZQotOjI0OiBDSEVDSzpQQVJFTlRI
RVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwoj
MjQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmg6MzA5MjoKK2k5MTVfZ2Vt
X2FkZF9jbGllbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCisJCXN0cnVjdCBkcm1f
aTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiwKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5n
cywgMSBjaGVja3MsIDY4IGxpbmVzIGNoZWNrZWQKNGMyZWMyODJmMzNiIGRybS9pOTE1OiBFeHBv
c2UgcGVyLWVuZ2luZSBjbGllbnQgYnVzeW5lc3MKLToyNTogV0FSTklORzpDT01NSVRfTE9HX0xP
TkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEg
bWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzI1OiAKICAgICBSZW5kZXIvM0QvMCAgIDYzLjcz
JSB84paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI4paI
4paIICAgICAgICAgICB8ICAgICAgMyUgICAgICAwJQoKLTo5NTogQ0hFQ0s6UFJFRkVSX0tFUk5F
TF9UWVBFUzogUHJlZmVyIGtlcm5lbCB0eXBlICd1NjQnIG92ZXIgJ3VpbnQ2NF90JwojOTU6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmM6NDg0OToKKwl1aW50NjRfdCB0b3Rh
bCA9IGJjLT50b3RhbDsKCi06MTI4OiBXQVJOSU5HOlNUQVRJQ19DT05TVF9DSEFSX0FSUkFZOiBz
dGF0aWMgY29uc3QgY2hhciAqIGFycmF5IHNob3VsZCBwcm9iYWJseSBiZSBzdGF0aWMgY29uc3Qg
Y2hhciAqIGNvbnN0CiMxMjg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmM6
NDg4MjoKK3N0YXRpYyBjb25zdCBjaGFyICp1YWJpX2NsYXNzX25hbWVzW10gPSB7CgotOjE4NTog
RVJST1I6Q09ERV9JTkRFTlQ6IGNvZGUgaW5kZW50IHNob3VsZCB1c2UgdGFicyB3aGVyZSBwb3Nz
aWJsZQojMTg1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jOjQ5NTU6Cite
SV5JXkleSSAgICAgICAgKHN0cnVjdCBhdHRyaWJ1dGUgKilhdHRyKTskCgotOjE4NTogQ0hFQ0s6
UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50
aGVzaXMKIzE4NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYzo0OTU1Ogor
CQlyZXQgPSBzeXNmc19jcmVhdGVfZmlsZShmaWxlX3ByaXYtPmNsaWVudC5idXN5X3Jvb3QsCisJ
CQkJICAgICAgICAoc3RydWN0IGF0dHJpYnV0ZSAqKWF0dHIpOwoKdG90YWw6IDEgZXJyb3JzLCAy
IHdhcm5pbmdzLCAyIGNoZWNrcywgMTYxIGxpbmVzIGNoZWNrZWQKODE2ZDI1MjYzMTkxIGRybS9p
OTE1OiBBZGQgc3lzZnMgdG9nZ2xlIHRvIGVuYWJsZSBwZXItY2xpZW50IGVuZ2luZSBzdGF0cwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CF125709
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 19:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F37888EAA;
	Tue, 21 May 2019 17:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C59E88EAA;
 Tue, 21 May 2019 17:54:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04867A0074;
 Tue, 21 May 2019 17:54:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 21 May 2019 17:54:42 -0000
Message-ID: <20190521175442.13174.5042@emeril.freedesktop.org>
References: <20190520213945.17046-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190520213945.17046-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_mm=3A_Check_if_mmu_notifier_c?=
 =?utf-8?q?allbacks_are_allowed_to_fail_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
bW06IENoZWNrIGlmIG1tdSBub3RpZmllciBjYWxsYmFja3MgYXJlIGFsbG93ZWQgdG8gZmFpbCAo
cmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYw
ODc0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3Jp
Z2luL2RybS10aXAKYjJmMTgxMmU3OWNjIG1tOiBDaGVjayBpZiBtbXUgbm90aWZpZXIgY2FsbGJh
Y2tzIGFyZSBhbGxvd2VkIHRvIGZhaWwKLTo2MjogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6
IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEg
d2FybmluZ3MsIDAgY2hlY2tzLCA5IGxpbmVzIGNoZWNrZWQKOTM2ZGMyNTk4MTMyIGtlcm5lbC5o
OiBBZGQgbm9uX2Jsb2NrX3N0YXJ0L2VuZCgpCi06Nzc6IFdBUk5JTkc6U0lOR0xFX1NUQVRFTUVO
VF9ET19XSElMRV9NQUNSTzogU2luZ2xlIHN0YXRlbWVudCBtYWNyb3Mgc2hvdWxkIG5vdCB1c2Ug
YSBkbyB7fSB3aGlsZSAoMCkgbG9vcAojNzc6IEZJTEU6IGluY2x1ZGUvbGludXgva2VybmVsLmg6
MjM1OgorIyBkZWZpbmUgbm9uX2Jsb2NrX3N0YXJ0KCkgXAorCWRvIHsgY3VycmVudC0+bm9uX2Js
b2NrX2NvdW50Kys7IH0gd2hpbGUgKDApCgotOjc5OiBXQVJOSU5HOlNJTkdMRV9TVEFURU1FTlRf
RE9fV0hJTEVfTUFDUk86IFNpbmdsZSBzdGF0ZW1lbnQgbWFjcm9zIHNob3VsZCBub3QgdXNlIGEg
ZG8ge30gd2hpbGUgKDApIGxvb3AKIzc5OiBGSUxFOiBpbmNsdWRlL2xpbnV4L2tlcm5lbC5oOjIz
NzoKKyMgZGVmaW5lIG5vbl9ibG9ja19lbmQoKSBcCisJZG8geyBXQVJOX09OKGN1cnJlbnQtPm5v
bl9ibG9ja19jb3VudC0tID09IDApOyB9IHdoaWxlICgwKQoKLToxMjY6IFdBUk5JTkc6UFJFRkVS
X1BSX0xFVkVMOiBQcmVmZXIgW3N1YnN5c3RlbSBlZzogbmV0ZGV2XV9lcnIoW3N1YnN5c3RlbV1k
ZXYsIC4uLiB0aGVuIGRldl9lcnIoZGV2LCAuLi4gdGhlbiBwcl9lcnIoLi4uICB0byBwcmludGso
S0VSTl9FUlIgLi4uCiMxMjY6IEZJTEU6IGtlcm5lbC9zY2hlZC9jb3JlLmM6MzI3NjoKKwkJcHJp
bnRrKEtFUk5fRVJSICJCVUc6IHNjaGVkdWxpbmcgaW4gYSBub24tYmxvY2tpbmcgc2VjdGlvbjog
JXMvJWQvJWlcbiIsCgotOjEyNzogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1l
bnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzEyNzogRklMRToga2VybmVsL3NjaGVk
L2NvcmUuYzozMjc3OgorCQlwcmludGsoS0VSTl9FUlIgIkJVRzogc2NoZWR1bGluZyBpbiBhIG5v
bi1ibG9ja2luZyBzZWN0aW9uOiAlcy8lZC8laVxuIiwKKwkJCXByZXYtPmNvbW0sIHByZXYtPnBp
ZCwgcHJldi0+bm9uX2Jsb2NrX2NvdW50KTsKCi06MTY0OiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdO
X09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9y
ICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9y
cywgNCB3YXJuaW5ncywgMSBjaGVja3MsIDg3IGxpbmVzIGNoZWNrZWQKZGM0MTZhNGNmNGU1IG1t
LCBub3RpZmllcjogQ2F0Y2ggc2xlZXBpbmcvYmxvY2tpbmcgZm9yICFibG9ja2FibGUKLTo1Njog
V0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBi
eSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxNCBsaW5lcyBj
aGVja2VkCjFjYjVmM2QxNjljNyBtbSwgbm90aWZpZXI6IEFkZCBhIGxvY2tkZXAgbWFwIGZvciBp
bnZhbGlkYXRlX3JhbmdlX3N0YXJ0Ci06OTM6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBN
aXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0Rhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdh
cm5pbmdzLCAwIGNoZWNrcywgMzUgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

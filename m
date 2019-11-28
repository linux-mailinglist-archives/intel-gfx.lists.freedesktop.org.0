Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E9410CFA2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 22:57:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A2089A57;
	Thu, 28 Nov 2019 21:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 41BC689A4E;
 Thu, 28 Nov 2019 21:57:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 37313A00E8;
 Thu, 28 Nov 2019 21:57:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 21:57:49 -0000
Message-ID: <157497826919.21455.16112428805753667856@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191128205129.404969-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191128205129.404969-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Introduce_DRM=5FI915=5FGEM=5FMMAP=5FOFFSET_=28re?=
 =?utf-8?b?djQp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEludHJvZHVjZSBEUk1fSTkx
NV9HRU1fTU1BUF9PRkZTRVQgKHJldjQpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy83MDE2NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjEwYmYwOWVlN2U2ZSBkcm0vaTkxNTogSW50
cm9kdWNlIERSTV9JOTE1X0dFTV9NTUFQX09GRlNFVAotOjQ2NjogV0FSTklORzpVTk5FQ0VTU0FS
WV9FTFNFOiBlbHNlIGlzIG5vdCBnZW5lcmFsbHkgdXNlZnVsIGFmdGVyIGEgYnJlYWsgb3IgcmV0
dXJuCiM0NjY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmM6
NTg3OgorCQlyZXR1cm4gLUVOT0RFVjsKKwllbHNlCgotOjY2MjogV0FSTklORzpGSUxFX1BBVEhf
Q0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVS
UyBuZWVkIHVwZGF0aW5nPwojNjYyOiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06NjY3OiBXQVJO
SU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzY2NzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX21tYW4uaDoxOgorLyoKCi06NjY4OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9U
QUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGlu
c3RlYWQKIzY2ODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
aDoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKLTo2OTg6IENIRUNLOlVOQ09N
TUVOVEVEX0RFRklOSVRJT046IHN0cnVjdCBtdXRleCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVu
dAojNjk4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5oOjMy
OgorCQkJICAgICAgc3RydWN0IG11dGV4ICptdXRleCk7CgotOjEyMzA6IFdBUk5JTkc6U1BEWF9M
SUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBs
aW5lIDEgaW5zdGVhZAojMTIzMDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRw
YXJhbS5jOjI6CiAgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgotOjEyODA6IFdBUk5J
Tkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzEyODA6IEZJTEU6IGluY2x1
ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaDozOTg6CisjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9N
TUFQX09GRlNFVAlEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX01NQVBf
R1RULCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0KQoKdG90YWw6IDAgZXJyb3JzLCA2
IHdhcm5pbmdzLCAxIGNoZWNrcywgMTE2MCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

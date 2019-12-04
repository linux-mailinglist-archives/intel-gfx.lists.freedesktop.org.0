Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 674E4112CF7
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 14:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31B76F4E5;
	Wed,  4 Dec 2019 13:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BADE46F4D6;
 Wed,  4 Dec 2019 13:53:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3319A0093;
 Wed,  4 Dec 2019 13:53:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 04 Dec 2019 13:53:18 -0000
Message-ID: <157546759873.12196.7912035332179744510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191204120032.3682839-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191204120032.3682839-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Introduce_DRM=5FI915=5FGEM=5FMMAP=5FOFFSET_=28re?=
 =?utf-8?b?djkp?=
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
NV9HRU1fTU1BUF9PRkZTRVQgKHJldjkpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy83MDE2NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjk2Y2Q4NzI2NmJkNyBkcm0vaTkxNTogSW50
cm9kdWNlIERSTV9JOTE1X0dFTV9NTUFQX09GRlNFVAotOjQ2MjogV0FSTklORzpVTk5FQ0VTU0FS
WV9FTFNFOiBlbHNlIGlzIG5vdCBnZW5lcmFsbHkgdXNlZnVsIGFmdGVyIGEgYnJlYWsgb3IgcmV0
dXJuCiM0NjI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmM6
NTkyOgorCQlyZXR1cm4gLUVOT0RFVjsKKwllbHNlCgotOjY0NzogV0FSTklORzpGSUxFX1BBVEhf
Q0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVS
UyBuZWVkIHVwZGF0aW5nPwojNjQ3OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06NjUyOiBXQVJO
SU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzY1MjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX21tYW4uaDoxOgorLyoKCi06NjUzOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9U
QUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGlu
c3RlYWQKIzY1MzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
aDoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKLToxMjI5OiBXQVJOSU5HOlNQ
RFhfTElDRU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1
c2UgbGluZSAxIGluc3RlYWQKIzEyMjk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2V0cGFyYW0uYzoyOgogICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKLToxMjgyOiBX
QVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMxMjgyOiBGSUxFOiBp
bmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmg6Mzk4OgorI2RlZmluZSBEUk1fSU9DVExfSTkxNV9H
RU1fTU1BUF9PRkZTRVQJRFJNX0lPV1IoRFJNX0NPTU1BTkRfQkFTRSArIERSTV9JOTE1X0dFTV9N
TUFQX0dUVCwgc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX29mZnNldCkKCnRvdGFsOiAwIGVycm9y
cywgNiB3YXJuaW5ncywgMCBjaGVja3MsIDExNjQgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

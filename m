Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D82EFD91F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8605A6E2C0;
	Fri, 15 Nov 2019 09:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC9516E2C0;
 Fri, 15 Nov 2019 09:30:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4351A0114;
 Fri, 15 Nov 2019 09:30:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 15 Nov 2019 09:30:46 -0000
Message-ID: <157381024679.3300.4384851704528204235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_fb=5Fcreate_drive-through_cleanups?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZmJfY3JlYXRlIGRyaXZlLXRocm91Z2ggY2xl
YW51cHMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5
NTE0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3Jp
Z2luL2RybS10aXAKMTA4NWY3ZGZjMWQzIGRybS9mYjogTW9yZSBwYXJhbm9pYSBpbiBhZGRmYiBj
aGVja3MKLTo1MDogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9m
Zi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tz
LCAyNiBsaW5lcyBjaGVja2VkCjdmYzQ1MDhhY2I2MyBkcm0vYXRtZWw6IGRpdGNoIGZiX2NyZWF0
ZSB3cmFwcGVyCi06NDE6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25l
ZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRh
bmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNo
ZWNrcywgMjAgbGluZXMgY2hlY2tlZAoyNzEwNmViYjg5NTQgZHJtL21lZGlhdGVrOiBkb24ndCBv
cGVuLWNvZGUgZHJtX2dlbV9mYl9jcmVhdGUKLTo2OTogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdF
UzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVk
IHVwZGF0aW5nPwojNjk6IApkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKCnRvdGFsOiAwIGVycm9y
cywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDQzIGxpbmVzIGNoZWNrZWQKYzdmMTRjMWMyNDhmIGRy
bS9yb2NrY2hpcDogVXNlIGRybV9nZW1fZmJfY3JlYXRlX3dpdGhfZGlydHkKLTo4ODogV0FSTklO
RzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21p
bmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4n
Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA2NSBsaW5lcyBjaGVja2Vk
Cjg1NDllY2IxZjYwMCBkcm0vdGlsY2RjOiBEcm9wIGRybV9nZW1fZmJfY3JlYXRlIHdyYXBwZXIK
LTozNzogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTog
bGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAyMCBs
aW5lcyBjaGVja2VkCjBmZGZhODAyMzM5MyBkcm0veGVuOiBTaW1wbGlmeSBmYl9jcmVhdGUKLToz
NzogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGlu
ZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBm
ZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxNSBsaW5l
cyBjaGVja2VkCjgwNTI3OGJiNDdlNiBkcm0vaGlibWM6IFVzZSBkcm1fZ2VtX2ZiX2NyZWF0ZQot
OjE5MDogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTog
bGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxNTcg
bGluZXMgY2hlY2tlZAoxNzVmNzUxZTQwOTMgZHJtL3RvZG86IEFkZCBlbnRyeSBmb3IgZmIgZnVu
Y3MgcmVsYXRlZCBjbGVhbnVwcwotOjQ3OiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlz
c2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJu
aW5ncywgMCBjaGVja3MsIDMyIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

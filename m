Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 103A32AB8B
	for <lists+intel-gfx@lfdr.de>; Sun, 26 May 2019 20:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F54289817;
	Sun, 26 May 2019 18:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9345A897F6;
 Sun, 26 May 2019 18:05:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D309A011C;
 Sun, 26 May 2019 18:05:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sam Ravnborg" <sam@ravnborg.org>
Date: Sun, 26 May 2019 18:05:48 -0000
Message-ID: <20190526180548.542.65097@emeril.freedesktop.org>
References: <20190526173535.32701-1-sam@ravnborg.org>
X-Patchwork-Hint: ignore
In-Reply-To: <20190526173535.32701-1-sam@ravnborg.org>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm=3A_make_headers_self-contained_and_drop_drmP=2Eh?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtOiBtYWtlIGhlYWRlcnMgc2VsZi1jb250
YWluZWQgYW5kIGRyb3AgZHJtUC5oClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82MTE1Ni8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRp
bSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjY3ZDc5MjMwNzNlNiBkcm06IG1ha2UgZHJtL2Ry
bV9hdXRoLmggc2VsZiBjb250YWluZWQKLToyMTogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBN
aXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4gbGluZSAx
CiMyMTogRklMRTogaW5jbHVkZS9kcm0vZHJtX2F1dGguaDoxOgorI2lmbmRlZiBfRFJNX0FVVEhf
SF8KCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDIwIGxpbmVzIGNoZWNr
ZWQKZmU1NjYxYzk5OTJjIGRybTogbWFrZSBkcm0vZHJtX2xlZ2FjeS5oIHNlbGYtY29udGFpbmVk
CmNhYzViMDgzZjJjNSBkcm06IG1ha2UgZHJtX2NydGNfaW50ZXJuYWwuaCBzZWxmLWNvbnRhaW5l
ZAphZTBiYmJiZDFjOTIgZHJtOiBtYWtlIGRybV9pbnRlcm5hbC5oIHNlbGYtY29udGFpbmVkCjE4
ZDI4MjcwOTExYyBkcm06IG1ha2UgZHJtX2xlZ2FjeS5oIHNlbGYtY29udGFpbmVkCmUwODhjZjZh
NDE1OSBkcm06IG1ha2UgZHJtX3RyYWNlLmggc2VsZi1jb250YWluZWQKMTdmMzc2NzZjMGU1IGRy
bTogZHJvcCB1c2Ugb2YgZHJtUC5oIGluIGRybS8qCi06MTIxMzogV0FSTklORzpTUERYX0xJQ0VO
U0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcg
aW4gbGluZSAxCiMxMjEzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vZHJtX3RyYWNlX3BvaW50cy5j
OjE6CisKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDEwMjAgbGluZXMg
Y2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

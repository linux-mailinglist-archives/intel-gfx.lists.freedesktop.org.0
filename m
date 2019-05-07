Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C80169AE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 19:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80916E816;
	Tue,  7 May 2019 17:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4B7D6E816;
 Tue,  7 May 2019 17:58:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCFF2A0109;
 Tue,  7 May 2019 17:58:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 07 May 2019 17:58:15 -0000
Message-ID: <20190507175815.858.17783@emeril.freedesktop.org>
References: <20190507173329.17031-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190507173329.17031-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_RFC=3A_x86/smp=3A_use_printk=5Fdeferred_in_native=5Fsmp=5Fse?=
 =?utf-8?q?nd=5Freschedule?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUkZDOiB4ODYvc21wOiB1c2UgcHJpbnRrX2Rl
ZmVycmVkIGluIG5hdGl2ZV9zbXBfc2VuZF9yZXNjaGVkdWxlClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDM4NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBT
dW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjc5YmQ0NDliOGUyZCBS
RkM6IHg4Ni9zbXA6IHVzZSBwcmludGtfZGVmZXJyZWQgaW4gbmF0aXZlX3NtcF9zZW5kX3Jlc2No
ZWR1bGUKLTo5MzogV0FSTklORzpVTk5FQ0VTU0FSWV9LRVJOX0xFVkVMOiBQb3NzaWJsZSB1bm5l
Y2Vzc2FyeSBLRVJOX1dBUk5JTkcKIzkzOiBGSUxFOiBhcmNoL3g4Ni9rZXJuZWwvc21wLmM6MTI4
OgorCQlwcmludGtfZGVmZXJyZWQoS0VSTl9XQVJOSU5HCgotOjk3OiBXQVJOSU5HOk5PX0FVVEhP
Ul9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2gg
YXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAw
IGVycm9ycywgMiB3YXJuaW5ncywgMCBjaGVja3MsIDkgbGluZXMgY2hlY2tlZAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

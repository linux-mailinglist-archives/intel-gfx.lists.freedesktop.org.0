Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A4E108D51
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 12:55:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B90A89E33;
	Mon, 25 Nov 2019 11:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ADDE789E33;
 Mon, 25 Nov 2019 11:55:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A22A5A432F;
 Mon, 25 Nov 2019 11:55:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 25 Nov 2019 11:55:08 -0000
Message-ID: <157468290863.15530.7293032161910256203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_consistently_use_dma=5Fresv_locking_wrappers?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogY29uc2lzdGVudGx5IHVzZSBkbWFfcmVzdiBs
b2NraW5nIHdyYXBwZXJzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82OTk3MC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVj
a3BhdGNoIG9yaWdpbi9kcm0tdGlwCjc3NzZjMzk0YjZlMiBkcm0vZXRuYXZpdjogVXNlIGRtYV9y
ZXN2IGxvY2tpbmcgd3JhcHBlcnMKLTo0OTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1p
c3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2Fy
bmluZ3MsIDAgY2hlY2tzLCAyNiBsaW5lcyBjaGVja2VkCmMxM2Q3ODhkOGJkNiBkcm0vaTkxNTog
VXNlIGRtYV9yZXN2IGxvY2tpbmcgd3JhcHBlcnMKLTo1MTogV0FSTklORzpOT19BVVRIT1JfU0lH
Tl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhv
ciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJv
cnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAyNCBsaW5lcyBjaGVja2VkCjVlOGM3ZjA0ZDQ0NyBk
cm0vbXNtOiBVc2UgZG1hX3Jlc3YgbG9ja2luZyB3cmFwcGVycwotOjUxOiBXQVJOSU5HOk5PX0FV
VEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0
Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFs
OiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDI4IGxpbmVzIGNoZWNrZWQKODE5OTYz
NjM1OTIyIGRybS92YzQ6IFVzZSBkbWFfcmVzdiBsb2NraW5nIHdyYXBwZXJzCi06NTg6IFdBUk5J
Tkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9t
aW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+
JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMzkgbGluZXMgY2hlY2tl
ZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

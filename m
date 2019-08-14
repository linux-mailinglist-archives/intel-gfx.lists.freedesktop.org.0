Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 262D88D64E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 16:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF7346E445;
	Wed, 14 Aug 2019 14:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09FD86E445;
 Wed, 14 Aug 2019 14:36:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0041AA0071;
 Wed, 14 Aug 2019 14:36:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 14 Aug 2019 14:36:36 -0000
Message-ID: <20190814143636.21407.20256@emeril.freedesktop.org>
References: <20190814124933.19056-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190814124933.19056-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Comment_userptr_r?=
 =?utf-8?q?ecursion_on_struct=5Fmutex?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IENvbW1lbnQgdXNlcnB0ciByZWN1cnNpb24gb24gc3RydWN0X211dGV4ClVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTE3Ny8KU3RhdGUg
OiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlw
CmVhNDIyZjRhNWE5ZSBkcm0vaTkxNTogQ29tbWVudCB1c2VycHRyIHJlY3Vyc2lvbiBvbiBzdHJ1
Y3RfbXV0ZXgKLTozMDogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVk
LW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hl
Y2tzLCAxMiBsaW5lcyBjaGVja2VkCjJjNGMxZDQ4NjUxZCBSRkM6IGRybS9pOTE1OiBTd2l0Y2gg
b2JqLT5tbS5sb2NrIGxvY2tkZXAgYW5ub3RhdGlvbnMgb24gaXRzIGhlYWQKLTo3ODogV0FSTklO
RzpCTE9DS19DT01NRU5UX1NUWUxFOiBCbG9jayBjb21tZW50cyB1c2UgYSB0cmFpbGluZyAqLyBv
biBhIHNlcGFyYXRlIGxpbmUKIzc4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0Lmg6Mjg3OgorCSAqIHN0cnVjdF9tdXRleCBpbiB0aGUgZW50aXJlIHN5c3Rl
bS4gKi8KCi06MjMxOiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQt
b2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPicKCnRvdGFsOiAwIGVycm9ycywgMiB3YXJuaW5ncywgMCBjaGVj
a3MsIDEzNyBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

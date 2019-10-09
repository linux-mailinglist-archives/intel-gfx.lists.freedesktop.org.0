Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D74BFD1448
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 18:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210F26EA0C;
	Wed,  9 Oct 2019 16:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 960106EA09;
 Wed,  9 Oct 2019 16:41:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F20CA011C;
 Wed,  9 Oct 2019 16:41:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "tip-bot2 for Qian Cai" <tip-bot2@linutronix.de>
Date: Wed, 09 Oct 2019 16:41:11 -0000
Message-ID: <20191009164111.31955.81280@emeril.freedesktop.org>
References: <1568909380-32199-1-git-send-email-cai@lca.pw>
X-Patchwork-Hint: ignore
In-Reply-To: <1568909380-32199-1-git-send-email-cai@lca.pw>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_tr?=
 =?utf-8?q?eewide=3A_remove_unused_argument_in_lock=5Frelease=28=29_=28rev?=
 =?utf-8?q?2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogdHJlZXdpZGU6IHJlbW92ZSB1bnVzZWQgYXJn
dW1lbnQgaW4gbG9ja19yZWxlYXNlKCkgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzAwNy8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5
ID09CgpBcHBseWluZzogbG9ja2luZy9sb2NrZGVwOiBSZW1vdmUgdW51c2VkIEBuZXN0ZWQgYXJn
dW1lbnQgZnJvbSBsb2NrX3JlbGVhc2UoKQplcnJvcjogc2hhMSBpbmZvcm1hdGlvbiBpcyBsYWNr
aW5nIG9yIHVzZWxlc3MgKG1tL21lbWNvbnRyb2wuYykuCmVycm9yOiBjb3VsZCBub3QgYnVpbGQg
ZmFrZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8g
c2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAwMDEgbG9ja2luZy9sb2NrZGVw
OiBSZW1vdmUgdW51c2VkIEBuZXN0ZWQgYXJndW1lbnQgZnJvbSBsb2NrX3JlbGVhc2UoKQpXaGVu
IHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIu
CklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGlu
c3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywg
cnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

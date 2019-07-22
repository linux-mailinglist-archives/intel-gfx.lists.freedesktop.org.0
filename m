Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C286FEA8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 13:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1A0389C33;
	Mon, 22 Jul 2019 11:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89F2D89C33;
 Mon, 22 Jul 2019 11:25:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 815A4A010E;
 Mon, 22 Jul 2019 11:25:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 22 Jul 2019 11:25:30 -0000
Message-ID: <20190722112530.5092.97188@emeril.freedesktop.org>
References: <20190628082454.16345-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190628082454.16345-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Send?=
 =?utf-8?q?_a_hotplug_when_edid_changes_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogU2VuZCBhIGhvdHBsdWcgd2hlbiBlZGlkIGNo
YW5nZXMgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82MjgxNi8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJt
OiBBZGQgaGVscGVyIHRvIGNvbXBhcmUgZWRpZHMuCkFwcGx5aW5nOiBkcm06IEludHJvZHVjZSBj
aGFuZ2UgY291bnRlciB0byBkcm1fY29ubmVjdG9yCkFwcGx5aW5nOiBkcm0vaTkxNTogU2VuZCBo
b3RwbHVnIGV2ZW50IGlmIGVkaWQgaGFkIGNoYW5nZWQuClVzaW5nIGluZGV4IGluZm8gdG8gcmVj
b25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpNCWRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jCkZhbGxpbmcgYmFjayB0
byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4uLgpBdXRvLW1lcmdpbmcgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKQ09ORkxJQ1QgKGNvbnRlbnQpOiBN
ZXJnZSBjb25mbGljdCBpbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBs
dWcuYwpBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMKQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpl
cnJvcjogRmFpbGVkIHRvIG1lcmdlIGluIHRoZSBjaGFuZ2VzLgpoaW50OiBVc2UgJ2dpdCBhbSAt
LXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVk
IGF0IDAwMDMgZHJtL2k5MTU6IFNlbmQgaG90cGx1ZyBldmVudCBpZiBlZGlkIGhhZCBjaGFuZ2Vk
LgpXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250
aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNr
aXAiIGluc3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRj
aGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=

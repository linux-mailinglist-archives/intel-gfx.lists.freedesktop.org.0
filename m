Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C696876E95
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 18:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90EB76EDBB;
	Fri, 26 Jul 2019 16:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 106696EDBB;
 Fri, 26 Jul 2019 16:08:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04573A011B;
 Fri, 26 Jul 2019 16:08:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Fri, 26 Jul 2019 16:08:09 -0000
Message-ID: <20190726160809.14361.96415@emeril.freedesktop.org>
References: <20190726155805.2736-1-michal.wajdeczko@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190726155805.2736-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/3=5D_drm/i915/uc=3A_Remove_redundant_h?=
 =?utf-8?q?eader=5Foffset/size_definitions?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvdWM6IFJlbW92ZSByZWR1bmRhbnQgaGVhZGVyX29mZnNldC9zaXplIGRlZmluaXRp
b25zClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDMy
Mi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2Ry
bS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1L3VjOiBSZW1vdmUg
cmVkdW5kYW50IGhlYWRlcl9vZmZzZXQvc2l6ZSBkZWZpbml0aW9ucwpPa2F5IQoKQ29tbWl0OiBk
cm0vaTkxNS91YzogUmVtb3ZlIHJlZHVuZGFudCB1Y29kZSBvZmZzZXQgZGVmaW5pdGlvbgpPa2F5
IQoKQ29tbWl0OiBkcm0vaTkxNS91YzogUmVtb3ZlIHJlZHVuZGFudCBSU0Egb2Zmc2V0IGRlZmlu
aXRpb24KLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYzo1MTQ6MjA6
IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmM6NTE0OjIwOiB3YXJuaW5nOiBleHByZXNzaW9uIHVz
aW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncu
Yzo1MTM6MjA6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jOjUxMzoyMDogd2FybmluZzogZXhwcmVz
c2lvbiB1c2luZyBzaXplb2Yodm9pZCkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 761DD32988
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 09:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E070B899B7;
	Mon,  3 Jun 2019 07:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 71517899B7;
 Mon,  3 Jun 2019 07:27:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6AAE3A0071;
 Mon,  3 Jun 2019 07:27:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Xiaolin Zhang" <xiaolin.zhang@intel.com>
Date: Mon, 03 Jun 2019 07:27:57 -0000
Message-ID: <20190603072757.25580.92225@emeril.freedesktop.org>
References: <1559541769-25279-1-git-send-email-xiaolin.zhang@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1559541769-25279-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_i?=
 =?utf-8?q?915_vgpu_PV_to_improve_vgpu_performance?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogaTkxNSB2Z3B1IFBWIHRvIGltcHJvdmUgdmdw
dSBwZXJmb3JtYW5jZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjE0OTMvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNl
IG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNTog
aW50cm9kdWNlZCB2Z3B1IHB2IGNhcGFiaWxpdHkKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IHZn
cHUgc2hhcmVkIG1lbW9yeSBzZXR1cCBmb3IgcHYgb3B0aW1pemF0aW9uCk9rYXkhCgpDb21taXQ6
IGRybS9pOTE1OiB2Z3B1IHBwZ3R0IHVwZGF0ZSBwdiBvcHRpbWl6YXRpb24KT2theSEKCkNvbW1p
dDogZHJtL2k5MTU6IHZncHUgY29udGV4dCBzdWJtaXNzaW9uIHB2IG9wdGltaXphdGlvbgorLi9p
bmNsdWRlL3VhcGkvbGludXgvcGVyZl9ldmVudC5oOjE0Nzo1Njogd2FybmluZzogY2FzdCB0cnVu
Y2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICg4MDAwMDAwMDAwMDAwMDAwIGJlY29tZXMg
MCkKCkNvbW1pdDogZHJtL2k5MTUvZ3Z0OiBHVlRnIGhhbmRsZSBwdl9jYXBzIFBWSU5GTyByZWdp
c3RlcgpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndnQ6IEdWVGcgaGFuZGxlIHNoYXJlZF9wYWdl
IHNldHVwCk9rYXkhCgpDb21taXQ6IGRybS9pOTE1L2d2dDogR1ZUZyBzdXBwb3J0IHBwZ3R0IHB2
IG9wdGltaXphdGlvbgorLi9pbmNsdWRlL2xpbnV4L3NsYWIuaDo2NjY6MTM6IGVycm9yOiB1bmRl
ZmluZWQgaWRlbnRpZmllciAnX19idWlsdGluX211bF9vdmVyZmxvdycKKy4vaW5jbHVkZS9saW51
eC9zbGFiLmg6NjY2OjEzOiB3YXJuaW5nOiBjYWxsIHdpdGggbm8gdHlwZSEKCkNvbW1pdDogZHJt
L2k5MTUvZ3Z0OiBHVlRnIHN1cHBvcnQgY29udGV4dCBzdWJtaXNzaW9uIHB2IG9wdGltaXphdGlv
bgpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7952E5FC88
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 19:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1966E39B;
	Thu,  4 Jul 2019 17:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA3716E39B;
 Thu,  4 Jul 2019 17:33:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E48C2A0088;
 Thu,  4 Jul 2019 17:33:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 04 Jul 2019 17:33:02 -0000
Message-ID: <20190704173302.29488.26374@emeril.freedesktop.org>
References: <20190704154407.25551-1-mika.kuoppala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190704154407.25551-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/3=5D_drm/i915/gtt=3A_pde_entry_encodin?=
 =?utf-8?q?g_is_identical?=
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
ZHJtL2k5MTUvZ3R0OiBwZGUgZW50cnkgZW5jb2RpbmcgaXMgaWRlbnRpY2FsClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzIyOS8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZl
cnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1L2d0dDogcGRlIGVudHJ5IGVuY29kaW5nIGlz
IGlkZW50aWNhbAotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzoxNjA4Ojk6
IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjE2MDg6OTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBz
aXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjE1NzU6OTog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jOjE1NzU6OTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKCkNvbW1pdDogZHJtL2k5MTUvZ3R0OiBUZWFyIGRvd24gc2V0dXAgYW5kIGNsZWFu
dXAgbWFjcm9zIGZvciBwYWdlIGRtYQpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS9ndHQ6IFNldHVw
IHBoeXMgcGFnZXMgZm9yIDNsdmwgcGRwcwpPa2F5IQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4

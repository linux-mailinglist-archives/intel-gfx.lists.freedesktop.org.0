Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AFA6682D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 10:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841606E2EF;
	Fri, 12 Jul 2019 08:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 886E66E2EE;
 Fri, 12 Jul 2019 08:03:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FA08A010C;
 Fri, 12 Jul 2019 08:03:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 12 Jul 2019 08:03:44 -0000
Message-ID: <20190712080344.29165.637@emeril.freedesktop.org>
References: <20190712075818.20616-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190712075818.20616-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gtt=3A_Use_shallow_dma_pages_for_scratch_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBVc2Ugc2hhbGxvdyBk
bWEgcGFnZXMgZm9yIHNjcmF0Y2ggKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy82MzU5NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09
CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjgyMGI4NDQ5NjM3YyBkcm0vaTkxNS9n
dHQ6IFVzZSBzaGFsbG93IGRtYSBwYWdlcyBmb3Igc2NyYXRjaAotOjU0MDogQ0hFQ0s6TUFDUk9f
QVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAncHgnIC0gcG9zc2libGUgc2lkZS1lZmZl
Y3RzPwojNTQwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaDoyNjI6
CisjZGVmaW5lIHB4X2Jhc2UocHgpIFwKKwlfX3B4X2Nob29zZV9leHByKHB4LCBzdHJ1Y3QgaTkx
NV9wYWdlX2RtYSAqLCBfX3gsIFwKKwlfX3B4X2Nob29zZV9leHByKHB4LCBzdHJ1Y3QgaTkxNV9w
YWdlX3RhYmxlICosICZfX3gtPmJhc2UsIFwKKwlfX3B4X2Nob29zZV9leHByKHB4LCBzdHJ1Y3Qg
aTkxNV9wYWdlX2RpcmVjdG9yeSAqLCAmX194LT5iYXNlLCBcCisJKHZvaWQpMCkpKQoKdG90YWw6
IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgNTAxIGxpbmVzIGNoZWNrZWQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

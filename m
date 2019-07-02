Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF275D815
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 00:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6472898E8;
	Tue,  2 Jul 2019 22:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 929FB898C6;
 Tue,  2 Jul 2019 22:34:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C293A008C;
 Tue,  2 Jul 2019 22:34:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Jul 2019 22:34:55 -0000
Message-ID: <20190702223455.28693.30022@emeril.freedesktop.org>
References: <20190702215842.32483-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190702215842.32483-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Common_live_setup/teardown?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBDb21tb24g
bGl2ZSBzZXR1cC90ZWFyZG93bgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjMwOTkvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0g
Y2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo1Zjg0NmRiYTFkMTkgZHJtL2k5MTUvc2VsZnRlc3Rz
OiBDb21tb24gbGl2ZSBzZXR1cC90ZWFyZG93bgotOjIzOTogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNF
OiBNYWNybyBhcmd1bWVudCByZXVzZSAnVCcgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMyMzk6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2VsZnRlc3QuaDo4NToKKyNkZWZpbmUg
aTkxNV9saXZlX3N1YnRlc3RzKFQsIGRhdGEpICh7IFwKKwl0eXBlY2hlY2soc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKiwgZGF0YSk7IFwKKwlfX2k5MTVfc3VidGVzdHMoX19mdW5jX18sIFwKKwkJ
CV9faTkxNV9saXZlX3NldHVwLCBfX2k5MTVfbGl2ZV90ZWFyZG93biwgXAorCQkJVCwgQVJSQVlf
U0laRShUKSwgZGF0YSk7IFwKK30pCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hl
Y2tzLCAyNzMgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4

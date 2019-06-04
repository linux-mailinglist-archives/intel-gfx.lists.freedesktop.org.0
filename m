Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4192D34B85
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 17:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396DA89A4E;
	Tue,  4 Jun 2019 15:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46A5D89A1F;
 Tue,  4 Jun 2019 15:05:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D200A0096;
 Tue,  4 Jun 2019 15:05:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 04 Jun 2019 15:05:16 -0000
Message-ID: <20190604150516.13710.47634@emeril.freedesktop.org>
References: <20190604120022.20472-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190604120022.20472-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5BCI=2C1/3=5D_drm/i915/selftests=3A_Flush_?=
 =?utf-8?q?partial-tiling_object_once?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
M10gZHJtL2k5MTUvc2VsZnRlc3RzOiBGbHVzaCBwYXJ0aWFsLXRpbGluZyBvYmplY3Qgb25jZQpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjE1NzgvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlw
ClNwYXJzZSB2ZXJzaW9uOiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9zZWxmdGVzdHM6IEZsdXNo
IHBhcnRpYWwtdGlsaW5nIG9iamVjdCBvbmNlCi0uL2luY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24u
aDoyMjA6MjA6IHdhcm5pbmc6IGRlcmVmZXJlbmNlIG9mIG5vZGVyZWYgZXhwcmVzc2lvbgotLi9p
bmNsdWRlL2xpbnV4L3Jlc2VydmF0aW9uLmg6MjIwOjQ1OiB3YXJuaW5nOiBkZXJlZmVyZW5jZSBv
ZiBub2RlcmVmIGV4cHJlc3Npb24KCkNvbW1pdDogZHJtL2k5MTU6IFVzZSB1bmNoZWNrZWQgd3Jp
dGVzIGZvciBzZXR0aW5nIHVwIHRoZSBmZW5jZXMKT2theSEKCkNvbW1pdDogZHJtL2k5MTU6IFVz
ZSB1bmNoZWNrZWQgdW5jb3JlIHdyaXRlcyB0byBmbHVzaCB0aGUgR1RUCk9rYXkhCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

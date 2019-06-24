Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3C451872
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 18:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 624F489CF1;
	Mon, 24 Jun 2019 16:23:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323FA89CE0;
 Mon, 24 Jun 2019 16:23:23 +0000 (UTC)
Received: from submarine.cbg.collabora.co.uk (unknown
 [IPv6:2a00:5f00:102:0:6dae:eb08:2e0f:5281])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E6A6A287B1F;
 Mon, 24 Jun 2019 17:23:21 +0100 (BST)
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>, "Ser, Simon" <simon.ser@intel.com>
Date: Mon, 24 Jun 2019 17:22:33 +0100
Message-Id: <23b863385d39309b9294684d8156647901a4e1d3.1561393147.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1561393147.git.guillaume.tucker@collabora.com>
References: <cover.1561393147.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 1/4] meson: add libatomic dependency
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGNvbmRpdGlvbmFsIGRlcGVuZGVuY3kgb24gR0NDJ3MgbGliYXRvbWljIGluIG9yZGVyIHRv
IGJlIGFibGUgdG8KdXNlIHRoZSBfX2F0b21pY18qIGZ1bmN0aW9ucyBpbnN0ZWFkIG9mIHRoZSBv
bGRlciBfX3N5bmNfKiBvbmVzLiAgVGhlCmxpYmF0b21pYyBsaWJyYXJ5IGlzIG9ubHkgbmVlZGVk
IHdoZW4gdGhlcmUgYXJlbid0IGFueSBuYXRpdmUgc3VwcG9ydApvbiB0aGUgY3VycmVudCBhcmNo
aXRlY3R1cmUsIHNvIGEgbGlua2VyIHRlc3QgaXMgdXNlZCBmb3IgdGhpcwpwdXJwb3NlLiAgVGhp
cyBtYWtlcyBhdG9taWMgb3BlcmF0aW9ucyBhdmFpbGFibGUgb24gYSB3aWRlciBudW1iZXIgb2YK
YXJjaGl0ZWN0dXJlcyBpbmNsdWRpbmcgTUlQUy4KClNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBU
dWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4KUmV2aWV3ZWQtYnk6IFNpbW9u
IFNlciA8c2ltb24uc2VyQGludGVsLmNvbT4KLS0tCgpOb3RlczoKICAgIHYyOiBhZGQgbGlua2Vy
IHRlc3QgZm9yIGxpYmF0b21pYwogICAgdjM6IHVzZSBudWxsX2RlcAogICAgdjQ6IGZpeCBzZW50
ZW5jZSBpbiBjb21taXQgbWVzc2FnZQoKIG1lc29uLmJ1aWxkIHwgMTQgKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbWVzb24uYnVp
bGQgYi9tZXNvbi5idWlsZAppbmRleCBiMTAyOGVlNmFhYWYuLmYwY2IyNTQzY2E2NCAxMDA2NDQK
LS0tIGEvbWVzb24uYnVpbGQKKysrIGIvbWVzb24uYnVpbGQKQEAgLTE4MCw2ICsxODAsMjAgQEAg
cmVhbHRpbWUgPSBjYy5maW5kX2xpYnJhcnkoJ3J0JykKIGRsc3ltID0gY2MuZmluZF9saWJyYXJ5
KCdkbCcpCiB6bGliID0gY2MuZmluZF9saWJyYXJ5KCd6JykKIAoraWYgY2MubGlua3MoJycnCisj
aW5jbHVkZSA8c3RkaW50Lmg+CitpbnQgbWFpbih2b2lkKSB7CisgIHVpbnQzMl90IHgzMiA9IDA7
CisgIHVpbnQ2NF90IHg2NCA9IDA7CisgIF9fYXRvbWljX2xvYWRfbigmeDMyLCBfX0FUT01JQ19T
RVFfQ1NUKTsKKyAgX19hdG9taWNfbG9hZF9uKCZ4NjQsIF9fQVRPTUlDX1NFUV9DU1QpOworICBy
ZXR1cm4gMDsKK30nJycsIG5hbWUgOiAnYnVpbHQtaW4gYXRvbWljcycpCisJbGliYXRvbWljID0g
bnVsbF9kZXAKK2Vsc2UKKwlsaWJhdG9taWMgPSBjYy5maW5kX2xpYnJhcnkoJ2F0b21pYycpCitl
bmRpZgorCiBpZiBjYy5oYXNfaGVhZGVyKCdsaW51eC9rZC5oJykKIAljb25maWcuc2V0KCdIQVZF
X0xJTlVYX0tEX0gnLCAxKQogZW5kaWYKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

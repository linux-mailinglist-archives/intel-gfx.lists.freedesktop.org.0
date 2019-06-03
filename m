Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1D632F0D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 13:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C445489257;
	Mon,  3 Jun 2019 11:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C20A891AD;
 Mon,  3 Jun 2019 11:55:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id DC7B0281DC5
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Mon,  3 Jun 2019 12:54:47 +0100
Message-Id: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/4] tests: add libatomic dependency
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

QWRkIGRlcGVuZGVuY3kgdG8gbGliYXRvbWljIGluIG9yZGVyIHRvIGJlIGFibGUgdG8gdXNlIHRo
ZSBfX2F0b21pY18qCmZ1bmN0aW9ucyBpbnN0ZWFkIG9mIHRoZSBvbGRlciBfX3N5bmNfKiBvbmVz
LiAgVGhpcyBpcyB0byBlbmFibGUKYXRvbWljIG9wZXJhdGlvbnMgb24gYSB3aWRlciBudW1iZXIg
b2YgYXJjaGl0ZWN0dXJlcyBpbmNsdWRpbmcgTUlQUy4KClNpZ25lZC1vZmYtYnk6IEd1aWxsYXVt
ZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJAY29sbGFib3JhLmNvbT4KLS0tCiBtZXNvbi5idWls
ZCAgICAgICB8IDEgKwogdGVzdHMvbWVzb24uYnVpbGQgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21lc29uLmJ1aWxk
IGIvbWVzb24uYnVpbGQKaW5kZXggNjI2OGM1OGQzNjM0Li40ZTViYjMyM2ZhNDkgMTAwNjQ0Ci0t
LSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxkCkBAIC0xNzksNiArMTc5LDcgQEAgbWF0
aCA9IGNjLmZpbmRfbGlicmFyeSgnbScpCiByZWFsdGltZSA9IGNjLmZpbmRfbGlicmFyeSgncnQn
KQogZGxzeW0gPSBjYy5maW5kX2xpYnJhcnkoJ2RsJykKIHpsaWIgPSBjYy5maW5kX2xpYnJhcnko
J3onKQorbGliYXRvbWljID0gY2MuZmluZF9saWJyYXJ5KCdhdG9taWMnKQogCiBpZiBjYy5oYXNf
aGVhZGVyKCdsaW51eC9rZC5oJykKIAljb25maWcuc2V0KCdIQVZFX0xJTlVYX0tEX0gnLCAxKQpk
aWZmIC0tZ2l0IGEvdGVzdHMvbWVzb24uYnVpbGQgYi90ZXN0cy9tZXNvbi5idWlsZAppbmRleCA4
MDY3NjZlNTE2NjcuLjY4NzdjY2Q1OTIzNSAxMDA2NDQKLS0tIGEvdGVzdHMvbWVzb24uYnVpbGQK
KysrIGIvdGVzdHMvbWVzb24uYnVpbGQKQEAgLTIzMyw3ICsyMzMsNyBAQCBpOTE1X3Byb2dzID0g
WwogCSdpOTE1X3N1c3BlbmQnLAogXQogCi10ZXN0X2RlcHMgPSBbIGlndF9kZXBzIF0KK3Rlc3Rf
ZGVwcyA9IFsgaWd0X2RlcHMsIGxpYmF0b21pYyBdCiAKIGlmIGxpYmRybV9ub3V2ZWF1LmZvdW5k
KCkKIAl0ZXN0X3Byb2dzICs9IFsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4

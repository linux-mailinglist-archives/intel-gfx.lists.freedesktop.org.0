Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D03436F4
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F1789A91;
	Thu, 13 Jun 2019 13:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E3089A91;
 Thu, 13 Jun 2019 13:53:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 8AEA128A24F
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Thu, 13 Jun 2019 14:53:19 +0100
Message-Id: <b1e0d69a8352f9fd2e65293f2292086f4ef260e7.1560433744.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1560433744.git.guillaume.tucker@collabora.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 1/4] meson: add libatomic dependency
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

QWRkIGNvbmRpdGlvbmFsIGRlcGVuZGVuY3kgb24gbGliYXRvbWljIGluIG9yZGVyIHRvIGJlIGFi
bGUgdG8gdXNlIHRoZQpfX2F0b21pY18qIGZ1bmN0aW9ucyBpbnN0ZWFkIG9mIHRoZSBvbGRlciBf
X3N5bmNfKiBvbmVzLiAgVGhlCmxpYmF0b21pYyBsaWJyYXJ5IGlzIG9ubHkgbmVlZGVkIHdoZW4g
dGhlcmUgYXJlbid0IGFueSBuYXRpdmUgc3VwcG9ydApvbiB0aGUgY3VycmVudCBhcmNoaXRlY3R1
cmUsIHNvIGEgbGlua2VyIHRlc3QgaXMgdXNlZCBmb3IgdGhpcwpwdXJwb3NlLiAgVGhpcyBlbmFi
bGVzIGF0b21pYyBvcGVyYXRpb25zIHRvIGJlIG9uIGEgd2lkZXIgbnVtYmVyIG9mCmFyY2hpdGVj
dHVyZXMgaW5jbHVkaW5nIE1JUFMuCgpTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxn
dWlsbGF1bWUudHVja2VyQGNvbGxhYm9yYS5jb20+Ci0tLQogbWVzb24uYnVpbGQgfCAxMyArKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L21lc29uLmJ1aWxkIGIvbWVzb24uYnVpbGQKaW5kZXggNjI2OGM1OGQzNjM0Li5kYTI1YTI4ZjMy
NjggMTAwNjQ0Ci0tLSBhL21lc29uLmJ1aWxkCisrKyBiL21lc29uLmJ1aWxkCkBAIC0xNzksNiAr
MTc5LDE5IEBAIG1hdGggPSBjYy5maW5kX2xpYnJhcnkoJ20nKQogcmVhbHRpbWUgPSBjYy5maW5k
X2xpYnJhcnkoJ3J0JykKIGRsc3ltID0gY2MuZmluZF9saWJyYXJ5KCdkbCcpCiB6bGliID0gY2Mu
ZmluZF9saWJyYXJ5KCd6JykKK2lmIGNjLmxpbmtzKCcnJworI2luY2x1ZGUgPHN0ZGludC5oPgor
aW50IG1haW4odm9pZCkgeworICB1aW50MzJfdCB4MzIgPSAwOworICB1aW50NjRfdCB4NjQgPSAw
OworICBfX2F0b21pY19sb2FkX24oJngzMiwgX19BVE9NSUNfU0VRX0NTVCk7CisgIF9fYXRvbWlj
X2xvYWRfbigmeDY0LCBfX0FUT01JQ19TRVFfQ1NUKTsKKyAgcmV0dXJuIDA7Cit9JycnLCBuYW1l
IDogJ2J1aWx0LWluIGF0b21pY3MnKQorCWxpYmF0b21pYyA9IFtdCitlbHNlCisJbGliYXRvbWlj
ID0gY2MuZmluZF9saWJyYXJ5KCdhdG9taWMnKQorZW5kaWYKIAogaWYgY2MuaGFzX2hlYWRlcign
bGludXgva2QuaCcpCiAJY29uZmlnLnNldCgnSEFWRV9MSU5VWF9LRF9IJywgMSkKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9174556BBD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23EEC6E451;
	Wed, 26 Jun 2019 14:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2B926E44B;
 Wed, 26 Jun 2019 14:18:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9DCBA0019;
 Wed, 26 Jun 2019 14:18:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 26 Jun 2019 14:18:55 -0000
Message-ID: <20190626141855.9081.85589@emeril.freedesktop.org>
References: <20190626134433.6318-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190626134433.6318-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/3=5D_drm/i915/selftests=3A_Se?=
 =?utf-8?q?rialise_nop_reset_with_retirement?=
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
M10gZHJtL2k5MTUvc2VsZnRlc3RzOiBTZXJpYWxpc2Ugbm9wIHJlc2V0IHdpdGggcmV0aXJlbWVu
dApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjI3ODQv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcAphMzhiZjY3N2MzZmMgZHJtL2k5MTUvc2VsZnRlc3RzOiBTZXJpYWxpc2Ugbm9wIHJl
c2V0IHdpdGggcmV0aXJlbWVudAphZWRlNGU2ZWMzYmEgZHJtL2k5MTUvc2VsZnRlc3RzOiBEcm9w
IG1hbnVhbCByZXF1ZXN0IHdha2VyZWZzIGFyb3VuZCBoYW5nY2hlY2sKLToxMTogRVJST1I6R0lU
X0NPTU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21t
aXQgPDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDc5
ZmZhYzg1OTljNCAoImRybS9pOTE1OiBJbnZlcnQgdGhlIEdFTSB3YWtlcmVmIGhpZXJhcmNoeSIp
JwojMTE6IApSZWZlcmVuY2VzOiA3OWZmYWM4NTk5YzQgKCJkcm0vaTkxNTogSW52ZXJ0IHRoZSBH
RU0gd2FrZXJlZiBoaWVyYXJjaHkiKQoKdG90YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNo
ZWNrcywgNjEgbGluZXMgY2hlY2tlZAo1OTI4NjYzNjFiMjAgZHJtL2k5MTUvc2VsZnRlc3RzOiBG
aXh1cCBhdG9taWMgcmVzZXQgY2hlY2tpbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==

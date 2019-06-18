Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE8A4AC10
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 22:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2F96E24B;
	Tue, 18 Jun 2019 20:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30A206E24B;
 Tue, 18 Jun 2019 20:51:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 292CAA00E9;
 Tue, 18 Jun 2019 20:51:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <John.C.Harrison@Intel.com>
Date: Tue, 18 Jun 2019 20:51:43 -0000
Message-ID: <20190618205143.30451.56550@emeril.freedesktop.org>
References: <6d8350d9-7078-96d5-eba8-e8a894500492@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <6d8350d9-7078-96d5-eba8-e8a894500492@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Implement_read-only_support_in_whitelist_selftest?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEltcGxlbWVudCByZWFkLW9u
bHkgc3VwcG9ydCBpbiB3aGl0ZWxpc3Qgc2VsZnRlc3QKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyMzM5LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1h
cnkgPT0KCkFwcGx5aW5nOiBkcm0vaTkxNTogSW1wbGVtZW50IHJlYWQtb25seSBzdXBwb3J0IGlu
IHdoaXRlbGlzdCBzZWxmdGVzdAplcnJvcjogc2hhMSBpbmZvcm1hdGlvbiBpcyBsYWNraW5nIG9y
IHVzZWxlc3MgKGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMpLgpl
cnJvcjogY291bGQgbm90IGJ1aWxkIGZha2UgYW5jZXN0b3IKaGludDogVXNlICdnaXQgYW0gLS1z
aG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZhaWxlZCBh
dCAwMDAxIGRybS9pOTE1OiBJbXBsZW1lbnQgcmVhZC1vbmx5IHN1cHBvcnQgaW4gd2hpdGVsaXN0
IHNlbGZ0ZXN0CldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBh
bSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0
IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBz
dG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7015EFE3C8
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B769D89DA8;
	Fri, 15 Nov 2019 17:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5AD9289DA7;
 Fri, 15 Nov 2019 17:17:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53DF6A011A;
 Fri, 15 Nov 2019 17:17:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Nov 2019 17:17:28 -0000
Message-ID: <157383824831.3301.13613282201165935100@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191115122755.830355-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191115122755.830355-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_Simplify_NEEDS=5FWaRsDisableCoarsePowerGating?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFNpbXBsaWZ5IE5FRURTX1dh
UnNEaXNhYmxlQ29hcnNlUG93ZXJHYXRpbmcKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzY5NTI5LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0K
CkFwcGx5aW5nOiBkcm0vaTkxNTogU2ltcGxpZnkgTkVFRFNfV2FSc0Rpc2FibGVDb2Fyc2VQb3dl
ckdhdGluZwplcnJvcjogc2hhMSBpbmZvcm1hdGlvbiBpcyBsYWNraW5nIG9yIHVzZWxlc3MgKGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgpLgplcnJvcjogY291bGQgbm90IGJ1aWxkIGZh
a2UgYW5jZXN0b3IKaGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNl
ZSB0aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZhaWxlZCBhdCAwMDAxIGRybS9pOTE1OiBTaW1wbGlm
eSBORUVEU19XYVJzRGlzYWJsZUNvYXJzZVBvd2VyR2F0aW5nCldoZW4geW91IGhhdmUgcmVzb2x2
ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0
byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9y
ZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFi
b3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

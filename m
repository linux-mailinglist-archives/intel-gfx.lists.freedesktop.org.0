Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA018EC922
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 20:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E736D6E2E4;
	Fri,  1 Nov 2019 19:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33D128813A;
 Fri,  1 Nov 2019 19:36:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C7CFA0088;
 Fri,  1 Nov 2019 19:36:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 Nov 2019 19:36:36 -0000
Message-ID: <20191101193636.19150.89328@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191101181820.12932-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191101181820.12932-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/perf=3A_Reverse_a_ternary_to_make_sparse_happy_=28r?=
 =?utf-8?q?ev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvcGVyZjogUmV2ZXJzZSBhIHRl
cm5hcnkgdG8gbWFrZSBzcGFyc2UgaGFwcHkgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODg4My8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1t
YXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjc0MGM3MjFlMDIwZiBkcm0v
aTkxNS9wZXJmOiBSZXZlcnNlIGEgdGVybmFyeSB0byBtYWtlIHNwYXJzZSBoYXBweQotOjQ6IFdB
Uk5JTkc6RU1BSUxfU1VCSkVDVDogQSBwYXRjaCBzdWJqZWN0IGxpbmUgc2hvdWxkIGRlc2NyaWJl
IHRoZSBjaGFuZ2Ugbm90IHRoZSB0b29sIHRoYXQgZm91bmQgaXQKIzQ6IApTdWJqZWN0OiBbUEFU
Q0hdIGRybS9pOTE1L3BlcmY6IFJldmVyc2UgYSB0ZXJuYXJ5IHRvIG1ha2Ugc3BhcnNlIGhhcHB5
Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAyOCBsaW5lcyBjaGVja2Vk
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

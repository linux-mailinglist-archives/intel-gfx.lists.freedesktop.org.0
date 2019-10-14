Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7822D66FC
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 18:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309C56E52C;
	Mon, 14 Oct 2019 16:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93FE46E52A;
 Mon, 14 Oct 2019 16:14:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F2E1A0094;
 Mon, 14 Oct 2019 16:14:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 14 Oct 2019 16:14:10 -0000
Message-ID: <20191014161410.23969.27454@emeril.freedesktop.org>
References: <20191013203012.25208-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191013203012.25208-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/execlists=3A_Tweak_virtual_unsubmission?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBUd2VhayB2
aXJ0dWFsIHVuc3VibWlzc2lvbgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjc5NTgvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlp
bmc6IGRybS9pOTE1L2V4ZWNsaXN0czogVHdlYWsgdmlydHVhbCB1bnN1Ym1pc3Npb24KZXJyb3I6
IHNoYTEgaW5mb3JtYXRpb24gaXMgbGFja2luZyBvciB1c2VsZXNzIChkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYykuCmVycm9yOiBjb3VsZCBub3QgYnVpbGQgZmFrZSBhbmNlc3Rv
cgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWls
ZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAwMDEgZHJtL2k5MTUvZXhlY2xpc3RzOiBUd2VhayB2
aXJ0dWFsIHVuc3VibWlzc2lvbgpXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwg
cnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNo
LCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJy
YW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

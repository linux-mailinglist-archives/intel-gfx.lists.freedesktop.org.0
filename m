Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D59134D56C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 19:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A0DA6E5E1;
	Thu, 20 Jun 2019 17:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B36BE6E5DC;
 Thu, 20 Jun 2019 17:44:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC7ADA3C0D;
 Thu, 20 Jun 2019 17:44:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Jun 2019 17:44:56 -0000
Message-ID: <20190620174456.12830.97618@emeril.freedesktop.org>
References: <20190620142052.19311-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190620142052.19311-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5BCI=2C1/2=5D_drm/i915/execlists=3A_Preemp?=
 =?utf-8?q?t-to-busy?=
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
Ml0gZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDYxLwpTdGF0ZSA6IHdhcm5pbmcKCj09
IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjog
djAuNS4yCkNvbW1pdDogZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kKLWRyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy8uLi9pOTE1X3V0aWxzLmg6MjIwOjE2OiB3YXJuaW5n
OiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzLy4uL2k5MTVfdXRpbHMuaDoyMzI6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcg
c2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1L2V4ZWNsaXN0czogTWluaW1hbGlzdGljIHRp
bWVzbGljaW5nCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzo4OTU6MTY6IHdh
cm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYzo4OTU6MTY6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9m
KHZvaWQpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

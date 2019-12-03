Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369FF10FEEB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 14:38:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B4DF6E532;
	Tue,  3 Dec 2019 13:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E33846E52F;
 Tue,  3 Dec 2019 13:38:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B93BAA011B;
 Tue,  3 Dec 2019 13:38:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 03 Dec 2019 13:38:12 -0000
Message-ID: <157538029272.4659.9867008078554715034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191203101347.2836057-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191203101347.2836057-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/gem=3A_Take_runtime-?=
 =?utf-8?q?pm_wakeref_prior_to_unbinding?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvZ2VtOiBUYWtlIHJ1bnRpbWUtcG0gd2FrZXJlZiBwcmlvciB0byB1bmJpbmRpbmcK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMzQ3LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKZDQ1Njg2OTM1NTgzIGRybS9pOTE1L2dlbTogVGFrZSBydW50aW1lLXBtIHdha2VyZWYg
cHJpb3IgdG8gdW5iaW5kaW5nCi06MTY6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBv
c3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUg
Y2hhcnMgcGVyIGxpbmUpCiMxNjogCjw0PiBbNTcuMTIxNzU4XSBmZmZmZmZmZjgyMjYzYTQwIChm
c19yZWNsYWltKXsrLisufSwgYXQ6IGZzX3JlY2xhaW1fYWNxdWlyZS5wYXJ0LjExNysweDAvMHgz
MAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMzIgbGluZXMgY2hlY2tl
ZAphNzEzZGJkODUxYzggZHJtL2k5MTUvZ2VtOiBBdm9pZCBwYXJraW5nIHRoZSB2bWEgYXMgd2Ug
dW5iaW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

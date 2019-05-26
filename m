Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435DD2AA1E
	for <lists+intel-gfx@lfdr.de>; Sun, 26 May 2019 16:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407B5895A8;
	Sun, 26 May 2019 14:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB102894D7;
 Sun, 26 May 2019 14:01:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4819A0074;
 Sun, 26 May 2019 14:01:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sam Ravnborg" <sam@ravnborg.org>
Date: Sun, 26 May 2019 14:01:20 -0000
Message-ID: <20190526140120.542.79505@emeril.freedesktop.org>
References: <20190516194818.29230-1-jani.nikula@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190516194818.29230-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BRFC=2C1/3=5D_kbuild=3A_add_support_for_ensu?=
 =?utf-8?q?ring_headers_are_self-contained_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW1JGQywx
LzNdIGtidWlsZDogYWRkIHN1cHBvcnQgZm9yIGVuc3VyaW5nIGhlYWRlcnMgYXJlIHNlbGYtY29u
dGFpbmVkIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjA3MzgvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGti
dWlsZDogYWRkIHN1cHBvcnQgZm9yIGVuc3VyaW5nIGhlYWRlcnMgYXJlIHNlbGYtY29udGFpbmVk
ClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlzY3JpcHRz
L01ha2VmaWxlLmJ1aWxkCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBt
ZXJnZS4uLgpBdXRvLW1lcmdpbmcgc2NyaXB0cy9NYWtlZmlsZS5idWlsZApDT05GTElDVCAoY29u
dGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIHNjcmlwdHMvTWFrZWZpbGUuYnVpbGQKZXJyb3I6IEZh
aWxlZCB0byBtZXJnZSBpbiB0aGUgY2hhbmdlcy4KaGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1
cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZhaWxlZCBhdCAwMDAx
IGtidWlsZDogYWRkIHN1cHBvcnQgZm9yIGVuc3VyaW5nIGhlYWRlcnMgYXJlIHNlbGYtY29udGFp
bmVkCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNv
bnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0t
c2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBh
dGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==

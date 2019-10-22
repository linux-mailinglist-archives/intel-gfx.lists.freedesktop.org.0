Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8764E0E89
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 01:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF436E931;
	Tue, 22 Oct 2019 23:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03B536E842;
 Tue, 22 Oct 2019 23:30:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F18ECA011C;
 Tue, 22 Oct 2019 23:30:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 22 Oct 2019 23:30:54 -0000
Message-ID: <20191022233054.9303.40368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191022130221.20644-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191022130221.20644-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5Bv2=5D_drm/i915=3A_Teach_record=5Fdefaults_t?=
 =?utf-8?q?o_operate_on_the_intel=5Fgt_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyXSBk
cm0vaTkxNTogVGVhY2ggcmVjb3JkX2RlZmF1bHRzIHRvIG9wZXJhdGUgb24gdGhlIGludGVsX2d0
IChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
NjgzOTEvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRybS9pOTE1
OiBUZWFjaCByZWNvcmRfZGVmYXVsdHMgdG8gb3BlcmF0ZSBvbiB0aGUgaW50ZWxfZ3QKVXNpbmcg
aW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3BtLmgKTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCk0JZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2VsZnRlc3QuYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hp
bmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KTm8gY2hhbmdlcyAtLSBQYXRjaCBhbHJlYWR5IGFw
cGxpZWQuCkFwcGx5aW5nOiBkcm0vaTkxNS9zZWxmdGVzdHM6IFRlYWNoIHN3aXRjaF90b19jb250
ZXh0KCkgdG8gdXNlIHRoZSBjb250ZXh0ClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3Qg
YSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0u
YwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KTm8gY2hh
bmdlcyAtLSBQYXRjaCBhbHJlYWR5IGFwcGxpZWQuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=

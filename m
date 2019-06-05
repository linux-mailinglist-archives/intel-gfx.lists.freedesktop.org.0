Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBB3363B6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 21:05:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EAD89267;
	Wed,  5 Jun 2019 19:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EE0589267;
 Wed,  5 Jun 2019 19:05:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 485ADA0137;
 Wed,  5 Jun 2019 19:05:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Wed, 05 Jun 2019 19:05:56 -0000
Message-ID: <20190605190556.10842.99420@emeril.freedesktop.org>
References: <20190605184128.4602-1-vivek.kasireddy@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190605184128.4602-1-vivek.kasireddy@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/ehl=3A_Add_support_for_DPLL4_=28v5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZWhsOiBBZGQgc3VwcG9ydCBm
b3IgRFBMTDQgKHY1KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjE2ODQvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRy
bS9pOTE1L2VobDogQWRkIHN1cHBvcnQgZm9yIERQTEw0ICh2NSkKLmdpdC9yZWJhc2UtYXBwbHkv
cGF0Y2g6MTQ2OiBuZXcgYmxhbmsgbGluZSBhdCBFT0YuCisKd2FybmluZzogMSBsaW5lIGFkZHMg
d2hpdGVzcGFjZSBlcnJvcnMuClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNl
IHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5jCk0JZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBsbF9tZ3IuaApNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3J1bnRpbWVfcG0uYwpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0u
aApGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1t
ZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaApDT05GTElDVCAo
Y29udGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1
bnRpbWVfcG0uaApBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGlt
ZV9wbS5jCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5o
CkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5jCmVycm9y
OiBGYWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hv
dy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQg
MDAwMSBkcm0vaTkxNS9laGw6IEFkZCBzdXBwb3J0IGZvciBEUExMNCAodjUpCldoZW4geW91IGhh
dmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91
IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4K
VG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdp
dCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==

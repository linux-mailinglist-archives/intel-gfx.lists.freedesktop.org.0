Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EA3114EB8
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 11:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680BB6F9B1;
	Fri,  6 Dec 2019 10:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FECF6F9AF;
 Fri,  6 Dec 2019 10:07:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 489F5A0075;
 Fri,  6 Dec 2019 10:07:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 06 Dec 2019 10:07:59 -0000
Message-ID: <157562687929.31674.6935734527708188686@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191206094512.1101710-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191206094512.1101710-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Disable_hear?=
 =?utf-8?q?tbeats_around_long_queues?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTUvc2VsZnRlc3RzOiBEaXNhYmxlIGhlYXJ0YmVhdHMgYXJvdW5kIGxvbmcgcXVldWVz
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDU1Ni8K
U3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTUvc2VsZnRl
c3RzOiBEaXNhYmxlIGhlYXJ0YmVhdHMgYXJvdW5kIGxvbmcgcXVldWVzCkFwcGx5aW5nOiBkcm0v
aTkxNS9zZWxmdGVzdHM6IEltcG9zZSBhIHRpbWVvdXQgZm9yIHJlcXVlc3Qgc3VibWlzc2lvbgpB
cHBseWluZzogZHJtL2k5MTUvZ3Q6IFJlbW92ZSBkaXJlY3QgaW52b2NhdGlvbiBvZiBicmVhZGNy
dW1iIHNpZ25hbGluZwpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVl
Li4uCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwpGYWxsaW5n
IGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5nIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKQ09ORkxJQ1QgKGNvbnRl
bnQpOiBNZXJnZSBjb25mbGljdCBpbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVh
ZGNydW1icy5jCmVycm9yOiBGYWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVz
ZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQ
YXRjaCBmYWlsZWQgYXQgMDAwMyBkcm0vaTkxNS9ndDogUmVtb3ZlIGRpcmVjdCBpbnZvY2F0aW9u
IG9mIGJyZWFkY3J1bWIgc2lnbmFsaW5nCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9i
bGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMg
cGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2lu
YWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

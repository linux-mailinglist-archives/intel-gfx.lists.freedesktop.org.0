Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7209CD3CB9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 11:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466836EBFC;
	Fri, 11 Oct 2019 09:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3A016EBFB;
 Fri, 11 Oct 2019 09:49:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAB21A011C;
 Fri, 11 Oct 2019 09:49:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 11 Oct 2019 09:49:32 -0000
Message-ID: <20191011094932.18210.24442@emeril.freedesktop.org>
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191010071434.31195-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5B01/10=5D_drm/i915=3A_Note_the_addition_of?=
 =?utf-8?q?_timeslicing_to_the_pretend_scheduler_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEw
XSBkcm0vaTkxNTogTm90ZSB0aGUgYWRkaXRpb24gb2YgdGltZXNsaWNpbmcgdG8gdGhlIHByZXRl
bmQgc2NoZWR1bGVyIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjc4MjcvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlp
bmc6IGRybS9pOTE1OiBOb3RlIHRoZSBhZGRpdGlvbiBvZiB0aW1lc2xpY2luZyB0byB0aGUgcHJl
dGVuZCBzY2hlZHVsZXIKVXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJl
ZS4uLgpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyX3R5cGVzLmgKRmFsbGlu
ZyBiYWNrIHRvIHBhdGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCk5vIGNoYW5nZXMgLS0g
UGF0Y2ggYWxyZWFkeSBhcHBsaWVkLgpBcHBseWluZzogZHJtL2k5MTUvZXhlY2xpc3RzOiBMZWF2
ZSB0ZWxsLXRhbGVzIGFzIHRvIHdoeSBwZW5kaW5nW10gaXMgYmFkClVzaW5nIGluZGV4IGluZm8g
dG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgKRmFsbGluZyBiYWNr
IHRvIHBhdGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCkNPTkZMSUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxp
Y3QgaW4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uaApBdXRvLW1lcmdpbmcgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJnZSBj
b25mbGljdCBpbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwplcnJvcjogRmFp
bGVkIHRvIG1lcmdlIGluIHRoZSBjaGFuZ2VzLgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3Vy
cmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAwMDIg
ZHJtL2k5MTUvZXhlY2xpc3RzOiBMZWF2ZSB0ZWxsLXRhbGVzIGFzIHRvIHdoeSBwZW5kaW5nW10g
aXMgYmFkCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAt
LWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFt
IC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9w
IHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

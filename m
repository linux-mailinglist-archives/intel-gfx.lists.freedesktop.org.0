Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 874ECFD859
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 10:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07976E17A;
	Fri, 15 Nov 2019 09:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FE7E6E179;
 Fri, 15 Nov 2019 09:05:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30688A0134;
 Fri, 15 Nov 2019 09:05:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 15 Nov 2019 09:05:04 -0000
Message-ID: <157380870419.3300.10634123465759640215@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191115081857.683827-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191115081857.683827-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gt=3A_Track_engine_round-trip_times_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFRyYWNrIGVuZ2luZSBy
b3VuZC10cmlwIHRpbWVzIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjk1MTMvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBk
aW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcApmYWQ0ODg2ZjQ1MDEgZHJtL2k5MTUvZ3Q6IFRy
YWNrIGVuZ2luZSByb3VuZC10cmlwIHRpbWVzCi06MTQ6IFdBUk5JTkc6VFlQT19TUEVMTElORzog
J3ByZWVtcHRhYmxlJyBtYXkgYmUgbWlzc3BlbGxlZCAtIHBlcmhhcHMgJ3ByZWVtcHRpYmxlJz8K
IzE0OiAKdGhlIGVuZ2luZSBpcyBpZGxlIGF0IHRoaXMgcG9pbnQsIGFuZCB0aGUgcHVsc2UgaXMg
bm9uLXByZWVtcHRhYmxlLCBzbwoKLToyMDogRVJST1I6R0lUX0NPTU1JVF9JRDogUGxlYXNlIHVz
ZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQgPDEyKyBjaGFycyBvZiBzaGEx
PiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDdlMzRmNGU0YWFkMyAoImRybS9pOTE1
L2dlbjgrOiBBZGQgUkM2IENUWCBjb3JydXB0aW9uIFdBIiknCiMyMDogClJlZmVyZW5jZXM6IDdl
MzRmNGU0YWFkMyAoImRybS9pOTE1L2dlbjgrOiBBZGQgUkM2IENUWCBjb3JydXB0aW9uIFdBIikK
CnRvdGFsOiAxIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDg0IGxpbmVzIGNoZWNrZWQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A31C48D84
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 21:08:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C48E892B0;
	Mon, 17 Jun 2019 19:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74604892AC;
 Mon, 17 Jun 2019 19:08:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DA32A0136;
 Mon, 17 Jun 2019 19:08:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Mon, 17 Jun 2019 19:08:03 -0000
Message-ID: <20190617190803.2339.93314@emeril.freedesktop.org>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Impl?=
 =?utf-8?q?icit_dev=5Fpriv_removal_and_GT_compartmentalization_=28rev9=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogSW1wbGljaXQgZGV2X3ByaXYgcmVtb3ZhbCBh
bmQgR1QgY29tcGFydG1lbnRhbGl6YXRpb24gKHJldjkpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjA0Ni8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1t
YXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6IENvbnZlcnQgaW50ZWxfdmd0XyhkZSliYWxsb29u
IHRvIHVuY29yZQpBcHBseWluZzogZHJtL2k5MTU6IEludHJvZHVjZSBzdHJ1Y3QgaW50ZWxfZ3Qg
YXMgcmVwbGFjZW1lbnQgZm9yIGFub255bW91cyBpOTE1LT5ndApVc2luZyBpbmRleCBpbmZvIHRv
IHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaApGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0
by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQXBwbHlpbmc6IGRybS9p
OTE1OiBNb3ZlIGludGVsX2d0IGluaXRpYWxpemF0aW9uIHRvIGEgc2VwYXJhdGUgZmlsZQpBcHBs
eWluZzogZHJtL2k5MTU6IFN0b3JlIHNvbWUgYmFja3BvaW50ZXJzIGluIHN0cnVjdCBpbnRlbF9n
dApBcHBseWluZzogZHJtL2k5MTU6IE1vdmUgaW50ZWxfZ3RfcG1faW5pdCB1bmRlciBpbnRlbF9n
dF9pbml0X2Vhcmx5CkFwcGx5aW5nOiBkcm0vaTkxNTogTWFrZSBpOTE1X2NoZWNrX2FuZF9jbGVh
cl9mYXVsdHMgdGFrZSBpbnRlbF9ndAplcnJvcjogc2hhMSBpbmZvcm1hdGlvbiBpcyBsYWNraW5n
IG9yIHVzZWxlc3MgKGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMpLgplcnJvcjogY291
bGQgbm90IGJ1aWxkIGZha2UgYW5jZXN0b3IKaGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1cnJl
bnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZhaWxlZCBhdCAwMDA2IGRy
bS9pOTE1OiBNYWtlIGk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyB0YWtlIGludGVsX2d0Cldo
ZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVl
Ii4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIg
aW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5n
LCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==

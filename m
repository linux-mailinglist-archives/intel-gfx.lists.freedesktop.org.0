Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA78310395
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 02:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2C589265;
	Wed,  1 May 2019 00:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C279789265;
 Wed,  1 May 2019 00:58:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB44CA0073;
 Wed,  1 May 2019 00:58:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stuart Summers" <stuart.summers@intel.com>
Date: Wed, 01 May 2019 00:58:22 -0000
Message-ID: <20190501005822.26874.38164@emeril.freedesktop.org>
References: <20190430230606.8421-1-stuart.summers@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190430230606.8421-1-stuart.summers@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_Refa?=
 =?utf-8?q?ctor_to_expand_subslice_mask_=28rev6=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmVmYWN0b3IgdG8gZXhwYW5kIHN1YnNsaWNl
IG1hc2sgKHJldjYpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy81OTc0Mi8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJt
L2k5MTU6IFVzZSBsb2NhbCB2YXJpYWJsZSBmb3IgU1NFVSBpbmZvIGluIEdFVFBBUkFNIGlvY3Rs
CkFwcGx5aW5nOiBkcm0vaTkxNTogQWRkIG1hY3JvIGZvciBTU0VVIHN0cmlkZSBjYWxjdWxhdGlv
bgpBcHBseWluZzogZHJtL2k5MTU6IE1vdmUgY2FsY3VsYXRpb24gb2Ygc3Vic2xpY2VzIHBlciBz
bGljZSB0byBuZXcgZnVuY3Rpb24KQXBwbHlpbmc6IGRybS9pOTE1OiBNb3ZlIHNzZXUgaGVscGVy
IGZ1bmN0aW9ucyB0byBpbnRlbF9zc2V1LmgKQXBwbHlpbmc6IGRybS9pOTE1OiBSZW1vdmUgaW5s
aW5lIGZyb20gc3NldSBoZWxwZXIgZnVuY3Rpb25zCkFwcGx5aW5nOiBkcm0vaTkxNTogRXhwYW5k
IHN1YnNsaWNlIG1hc2sKZXJyb3I6IHNoYTEgaW5mb3JtYXRpb24gaXMgbGFja2luZyBvciB1c2Vs
ZXNzIChkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYykuCmVycm9yOiBjb3VsZCBu
b3QgYnVpbGQgZmFrZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3VycmVudC1w
YXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAwMDYgZHJtL2k5
MTU6IEV4cGFuZCBzdWJzbGljZSBtYXNrCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9i
bGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMg
cGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2lu
YWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

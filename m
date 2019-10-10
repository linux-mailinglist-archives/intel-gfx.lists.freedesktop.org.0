Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B41D314C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 21:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB2FC6E3CE;
	Thu, 10 Oct 2019 19:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30A536E3CE;
 Thu, 10 Oct 2019 19:24:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 976D4A0091;
 Thu, 10 Oct 2019 19:24:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 10 Oct 2019 19:24:07 -0000
Message-ID: <20191010192407.23079.39050@emeril.freedesktop.org>
References: <20191009222511.1497-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20191009222511.1497-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5Bv7=2C1/6=5D_drm/i915/display/icl=3A_Save_?=
 =?utf-8?q?Master_transcoder_in_slave=27s_crtc=5Fstate_for_Transcoder_Port?=
 =?utf-8?q?_Sync_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y3LDEv
Nl0gZHJtL2k5MTUvZGlzcGxheS9pY2w6IFNhdmUgTWFzdGVyIHRyYW5zY29kZXIgaW4gc2xhdmUn
cyBjcnRjX3N0YXRlIGZvciBUcmFuc2NvZGVyIFBvcnQgU3luYyAocmV2MikKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3ODA2LwpTdGF0ZSA6IGZhaWx1
cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkcm0vaTkxNS9kaXNwbGF5L2ljbDogU2F2ZSBN
YXN0ZXIgdHJhbnNjb2RlciBpbiBzbGF2ZSdzIGNydGNfc3RhdGUgZm9yIFRyYW5zY29kZXIgUG9y
dCBTeW5jCkFwcGx5aW5nOiBkcm0vaTkxNS9kaXNwbGF5L2ljbDogRW5hYmxlIFRSQU5TQ09ERVIg
UE9SVCBTWU5DIGZvciB0aWxlZCBkaXNwbGF5cyBhY3Jvc3Mgc2VwYXJhdGUgcG9ydHMKZXJyb3I6
IHNoYTEgaW5mb3JtYXRpb24gaXMgbGFja2luZyBvciB1c2VsZXNzIChkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYykuCmVycm9yOiBjb3VsZCBub3QgYnVpbGQgZmFr
ZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2Vl
IHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0IDAwMDIgZHJtL2k5MTUvZGlzcGxheS9p
Y2w6IEVuYWJsZSBUUkFOU0NPREVSIFBPUlQgU1lOQyBmb3IgdGlsZWQgZGlzcGxheXMgYWNyb3Nz
IHNlcGFyYXRlIHBvcnRzCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4g
ImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1
biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNo
IGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

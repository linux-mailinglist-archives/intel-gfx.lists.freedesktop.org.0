Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0308E14914B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 23:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B256E461;
	Fri, 24 Jan 2020 22:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 557376E461;
 Fri, 24 Jan 2020 22:47:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 513C0A0003;
 Fri, 24 Jan 2020 22:47:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 24 Jan 2020 22:47:12 -0000
Message-ID: <157990603232.15089.787776426747960016@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124195351.534551-1-matthew.d.roper@intel.com>
In-Reply-To: <20200124195351.534551-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/tgl=3A_Suppress_DC5/DC6_around_DSB_usage?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdGdsOiBTdXBwcmVzcyBEQzUv
REM2IGFyb3VuZCBEU0IgdXNhZ2UKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzcyNTQ5LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkNBTEwg
ICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAgICBzY3JpcHRzL2F0b21pYy9jaGVj
ay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENISyAgICAgaW5jbHVkZS9nZW5lcmF0
ZWQvY29tcGlsZS5oCiAgSERSVEVTVCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5oCkluIGZpbGUgaW5jbHVkZWQgZnJvbSA8Y29tbWFuZC1saW5lPjowOjA6Ci4vZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaDoyOToyOiBlcnJvcjogdW5rbm93biB0
eXBlIG5hbWUg4oCYaW50ZWxfd2FrZXJlZl904oCZCiAgaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7
CiAgXn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlOjMwMzogcmVj
aXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmhk
cnRlc3QnIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmhkcnRlc3RdIEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDM6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoq
KiBbZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1
MDM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAq
KiogW2RyaXZlcnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwMzog
cmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2
ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmlsZToxNjkzOiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVy
cycgZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

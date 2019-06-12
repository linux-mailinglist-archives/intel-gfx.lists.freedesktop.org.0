Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4DD42FDF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 21:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7ED08907B;
	Wed, 12 Jun 2019 19:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F2BD8907B;
 Wed, 12 Jun 2019 19:24:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 887F7A0138;
 Wed, 12 Jun 2019 19:24:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 12 Jun 2019 19:24:41 -0000
Message-ID: <20190612192441.21004.80499@emeril.freedesktop.org>
References: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190612183748.7693-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_RPM_?=
 =?utf-8?q?Encapsulation?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUlBNIEVuY2Fwc3VsYXRpb24KVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYxOTc2LwpTdGF0ZSA6IGZh
aWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkcm0vaTkxNTogcHJlZmVyIGk5MTVfcnVu
dGltZV9wbSBpbiBpbnRlbF9ydW50aW1lIGZ1bmN0aW9uCkFwcGx5aW5nOiBkcm0vaTkxNTogUmVt
b3ZlIHJwbSBhc3NlcnRzIHRoYXQgdXNlIGk5MTUKQXBwbHlpbmc6IGRybS9pOTE1OiBtYWtlIGVu
YWJsZS9kaXNhYmxlIHJwbSBhc3NlcnQgZnVuY3Rpb24gdXNlIHRoZSBycG0gc3RydWN0dXJlCkFw
cGx5aW5nOiBkcm0vaTkxNTogbW92ZSBhbmQgcmVuYW1lIGk5MTVfcnVudGltZV9wbQpBcHBseWlu
ZzogZHJtL2k5MTU6IG1vdmUgYSBmZXcgbW9yZSBmdW5jdGlvbnMgdG8gYWNjZXB0IHRoZSBycG0g
c3RydWN0dXJlCkFwcGx5aW5nOiBkcm0vaTkxNTogdXBkYXRlIHJwbV9nZXQvcHV0IHRvIHVzZSB0
aGUgcnBtIHN0cnVjdHVyZQplcnJvcjogc2hhMSBpbmZvcm1hdGlvbiBpcyBsYWNraW5nIG9yIHVz
ZWxlc3MgKGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jKS4KZXJyb3I6IGNvdWxk
IG5vdCBidWlsZCBmYWtlIGFuY2VzdG9yCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50
LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwNiBkcm0v
aTkxNTogdXBkYXRlIHJwbV9nZXQvcHV0IHRvIHVzZSB0aGUgcnBtIHN0cnVjdHVyZQpXaGVuIHlv
dSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklm
IHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3Rl
YWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVu
ICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=

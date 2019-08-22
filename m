Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1739A19A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 23:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838B16EB0B;
	Thu, 22 Aug 2019 21:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79C696EB0B;
 Thu, 22 Aug 2019 21:02:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7235EA363E;
 Thu, 22 Aug 2019 21:02:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Thu, 22 Aug 2019 21:02:17 -0000
Message-ID: <20190822210217.14425.31585@emeril.freedesktop.org>
References: <20190822203127.24648-1-lyude@redhat.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190822203127.24648-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Call_dma=5Fset?=
 =?utf-8?b?X21heF9zZWdfc2l6ZSgpIGluIGk5MTVfZ2d0dF9wcm9iZV9odygp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
Ml0gZHJtL2k5MTU6IENhbGwgZG1hX3NldF9tYXhfc2VnX3NpemUoKSBpbiBpOTE1X2dndHRfcHJv
YmVfaHcoKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
NjU2NDMvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdp
bi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9uOiB2MC42LjAKQ29tbWl0OiBkcm0vaTkxNTogQ2FsbCBk
bWFfc2V0X21heF9zZWdfc2l6ZSgpIGluIGk5MTVfZ2d0dF9wcm9iZV9odygpCk9rYXkhCgpDb21t
aXQ6IGRybS9pOTE1OiBFbmFibGUgQ09ORklHX0RNQV9BUElfREVCVUdfU0cgZm9yIGludGVsLWNp
CisKKworICBEZXBlbmRzIG9uIFtuXTogRE1BX0FQSV9ERUJVRyBbPW5dCisgIERlcGVuZHMgb24g
W25dOiBETUFfQVBJX0RFQlVHIFs9bl0KKyAgRGVwZW5kcyBvbiBbbl06IERNQV9BUElfREVCVUcg
Wz1uXQorICAtIERSTV9JOTE1X0RFQlVHIFs9eV0gJiYgSEFTX0lPTUVNIFs9eV0gJiYgRVhQRVJU
IFs9eV0gJiYgRFJNX0k5MTUgWz1tXQorICAtIERSTV9JOTE1X0RFQlVHIFs9eV0gJiYgSEFTX0lP
TUVNIFs9eV0gJiYgRVhQRVJUIFs9eV0gJiYgRFJNX0k5MTUgWz1tXQorICAtIERSTV9JOTE1X0RF
QlVHIFs9eV0gJiYgSEFTX0lPTUVNIFs9eV0gJiYgRVhQRVJUIFs9eV0gJiYgRFJNX0k5MTUgWz1t
XQorICBTZWxlY3RlZCBieSBbbV06CisgIFNlbGVjdGVkIGJ5IFttXToKKyAgU2VsZWN0ZWQgYnkg
W21dOgorV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3RlZCBmb3IgRE1B
X0FQSV9ERUJVR19TRworV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3Rl
ZCBmb3IgRE1BX0FQSV9ERUJVR19TRworV0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2ll
cyBkZXRlY3RlZCBmb3IgRE1BX0FQSV9ERUJVR19TRwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4

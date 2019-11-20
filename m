Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F6E1046DB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 00:13:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020846E422;
	Wed, 20 Nov 2019 23:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCC836E131;
 Wed, 20 Nov 2019 23:13:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3953A0BCB;
 Wed, 20 Nov 2019 23:13:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 Nov 2019 23:13:31 -0000
Message-ID: <157429161184.19986.15911955108871514513@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191120165514.3955081-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191120165514.3955081-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Close_race_bet?=
 =?utf-8?q?ween_engine=5Fpark_and_intel=5Fgt=5Fretire=5Frequests?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvZ3Q6IENsb3NlIHJhY2UgYmV0d2VlbiBlbmdpbmVfcGFyayBhbmQgaW50ZWxf
Z3RfcmV0aXJlX3JlcXVlc3RzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82OTc2NS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWlu
ZzogZHJtL2k5MTUvZ3Q6IENsb3NlIHJhY2UgYmV0d2VlbiBlbmdpbmVfcGFyayBhbmQgaW50ZWxf
Z3RfcmV0aXJlX3JlcXVlc3RzClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNl
IHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCk0J
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpNCWRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lX3R5cGVzLmgKRmFsbGluZyBiYWNrIHRvIHBhdGNoaW5n
IGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF90aW1lbGluZS5jCkNPTkZMSUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxpY3Qg
aW4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpBdXRvLW1lcmdpbmcg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwpDT05GTElDVCAoY29u
dGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
X3JlcXVlc3RzLmMKZXJyb3I6IEZhaWxlZCB0byBtZXJnZSBpbiB0aGUgY2hhbmdlcy4KaGludDog
VXNlICdnaXQgYW0gLS1zaG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNo
ClBhdGNoIGZhaWxlZCBhdCAwMDAxIGRybS9pOTE1L2d0OiBDbG9zZSByYWNlIGJldHdlZW4gZW5n
aW5lX3BhcmsgYW5kIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cwpXaGVuIHlvdSBoYXZlIHJlc29s
dmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIg
dG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3Rv
cmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1h
Ym9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

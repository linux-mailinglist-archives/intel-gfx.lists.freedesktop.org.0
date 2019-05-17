Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AF721896
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 14:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2112898B7;
	Fri, 17 May 2019 12:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B2438932E;
 Fri, 17 May 2019 12:46:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04A34A0087;
 Fri, 17 May 2019 12:46:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 May 2019 12:46:04 -0000
Message-ID: <20190517124604.9055.68390@emeril.freedesktop.org>
References: <20190517102225.3069-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190517102225.3069-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915/gvt=3A_Set_return_va?=
 =?utf-8?q?lue_for_ppgtt=5Fpopulate_error_path?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvZ3Z0OiBTZXQgcmV0dXJuIHZhbHVlIGZvciBwcGd0dF9wb3B1bGF0ZSBlcnJvciBw
YXRoClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDc2
OS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdp
bi9kcm0tdGlwCjA2Y2YxNmNiZTVmNSBkcm0vaTkxNS9ndnQ6IFNldCByZXR1cm4gdmFsdWUgZm9y
IHBwZ3R0X3BvcHVsYXRlIGVycm9yIHBhdGgKLTo3OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19M
SU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhp
bXVtIDc1IGNoYXJzIHBlciBsaW5lKQojNzogCmRyaXZlcnMvZ3B1L2RybS9pOTE1Ly9ndnQvZ3R0
LmM6MTEwNiBwcGd0dF9wb3B1bGF0ZV9zcHRfYnlfZ3Vlc3RfZW50cnkoKSBlcnJvcjogdW5pbml0
aWFsaXplZCBzeW1ib2wgJ3JldCcuCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hl
Y2tzLCAxMSBsaW5lcyBjaGVja2VkCjJkOGE1MTZmYjQ1OSBkcm0vaTkxNS9kcDogSW5pdGlhbGlz
ZSBsb2NhbHMgZm9yIHN0YXRpYyBhbmFseXNpcwotOjg6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05H
X0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1h
eGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiM4OiAKZHJpdmVycy9ncHUvZHJtL2k5MTUvL2ludGVs
X2RwLmM6MjMwIGludGVsX2RwX2dldF9maWFfc3VwcG9ydGVkX2xhbmVfY291bnQoKSBlcnJvcjog
dW5pbml0aWFsaXplZCBzeW1ib2wgJ2xhbmVfaW5mbycuCgp0b3RhbDogMCBlcnJvcnMsIDEgd2Fy
bmluZ3MsIDAgY2hlY2tzLCAxNiBsaW5lcyBjaGVja2VkCmIxMWNlYTlmMTdiOSBkcm0vaTkxNS9o
ZGNwOiBVc2UgYm90aCBiaXRzIGZvciBkZXZpY2VfY291bnQKLTo3OiBXQVJOSU5HOkNPTU1JVF9M
T0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVm
ZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojNzogCmRyaXZlcnMvZ3B1L2RybS9pOTE1
Ly9pbnRlbF9oZGNwLmM6MTQwNiBoZGNwMl9hdXRoZW50aWNhdGVfcmVwZWF0ZXJfdG9wb2xvZ3ko
KSB3YXJuOiBzaG91bGQgdGhpcyBiZSBhIGJpdHdpc2Ugb3A/Cgp0b3RhbDogMCBlcnJvcnMsIDEg
d2FybmluZ3MsIDAgY2hlY2tzLCAxMCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

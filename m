Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8FDBE2C1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 18:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C1F6E08C;
	Wed, 25 Sep 2019 16:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACB026E084;
 Wed, 25 Sep 2019 16:47:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A56DAA0087;
 Wed, 25 Sep 2019 16:47:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 25 Sep 2019 16:47:23 -0000
Message-ID: <20190925164723.13733.99258@emeril.freedesktop.org>
References: <20190925145901.3943-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190925145901.3943-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_drm/i915=3A_Prepare_to_split_?=
 =?utf-8?q?crtc_state_in_uapi_and_hw_state?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTU6IFByZXBhcmUgdG8gc3BsaXQgY3J0YyBzdGF0ZSBpbiB1YXBpIGFuZCBodyBzdGF0
ZQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjcyMjcv
ClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4v
ZHJtLXRpcAo0Y2MzNWE2ZWE5YzcgZHJtL2k5MTU6IFByZXBhcmUgdG8gc3BsaXQgY3J0YyBzdGF0
ZSBpbiB1YXBpIGFuZCBodyBzdGF0ZQotOjIxMzA6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRT
OiBtdWx0aXBsZSBhc3NpZ25tZW50cyBzaG91bGQgYmUgYXZvaWRlZAojMjEzMDogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTEyNjQ6CisJY3J0Y19z
dGF0ZS0+dWFwaS5hY3RpdmUgPSBjcnRjX3N0YXRlLT51YXBpLmVuYWJsZSA9IHRydWU7CgotOjI4
Mzc6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25tZW50cyBzaG91
bGQgYmUgYXZvaWRlZAojMjgzNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmM6MTY3MzU6CisJCWNydGNfc3RhdGUtPmh3LmFjdGl2ZSA9IGNydGNfc3Rh
dGUtPmh3LmVuYWJsZSA9CgotOjQwMDE6IEVSUk9SOkNPREVfSU5ERU5UOiBjb2RlIGluZGVudCBz
aG91bGQgdXNlIHRhYnMgd2hlcmUgcG9zc2libGUKIzQwMDE6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmM6MjExOgorXkleSV5JXkkgICAgICAgICAgbmV3
X2NydGNfc3RhdGUtPnVhcGkuZXZlbnQpOyQKCi06NDAwMTogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJ
R05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzQwMDE6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmM6MjExOgorCQlk
cm1fY3J0Y19hcm1fdmJsYW5rX2V2ZW50KCZjcnRjLT5iYXNlLAorCQkJCSAgICAgICAgICBuZXdf
Y3J0Y19zdGF0ZS0+dWFwaS5ldmVudCk7Cgp0b3RhbDogMSBlcnJvcnMsIDAgd2FybmluZ3MsIDMg
Y2hlY2tzLCA0MzcxIGxpbmVzIGNoZWNrZWQKYjYwOTQ5NzNkOGE1IGRybS9pOTE1OiBIYW5kbGUg
YSBmZXcgbW9yZSBjYXNlcyBmb3IgaHcvc3cgc3BsaXQKODY0MjAzMjUxYTg5IGRybS9pOTE1OiBD
b21wbGV0ZSBzdy9odyBzcGxpdCwgdjIuCi06MTU6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJ
TkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGlt
dW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMxNTogCi0gQ2xlYXIgY3J0Y19zdGF0ZS0+aHcgb24gZGlz
YWJsZSwgaW5zdGVhZCBvZiB1c2luZyBjbGVhcl9pbnRlbF9jcnRjX3N0YXRlKCkuCgp0b3RhbDog
MCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAyMDQgbGluZXMgY2hlY2tlZApmZDE4ZGMy
ZTI0OTUgZHJtL2k5MTU6IFJlbW92ZSBiZWdpbi9maW5pc2hfY3J0Y19jb21taXQsIHYyLgotOjEy
NTogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9w
ZW4gcGFyZW50aGVzaXMKIzEyNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmM6MTM3NDc6CisJCQlJOTE1X1dSSVRFKFBJUEVTUkMoY3J0Yy0+cGlwZSks
CisJCQkJICAoKG5ld19jcnRjX3N0YXRlLT5waXBlX3NyY193IC0gMSkgPDwgMTYpIHwKCnRvdGFs
OiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDIzOCBsaW5lcyBjaGVja2VkCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

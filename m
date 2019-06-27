Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB6D58BEF
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A636E812;
	Thu, 27 Jun 2019 20:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 859926E812;
 Thu, 27 Jun 2019 20:44:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CB3AA010A;
 Thu, 27 Jun 2019 20:44:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 27 Jun 2019 20:44:56 -0000
Message-ID: <20190627204456.21380.63925@emeril.freedesktop.org>
References: <20190627203225.3427-1-daniele.ceraolospurio@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190627203225.3427-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/tgl=3A_Gen12_csb_support?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvdGdsOiBHZW4xMiBjc2Igc3Vw
cG9ydApVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjI4
OTAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmln
aW4vZHJtLXRpcAo3MmYyZmI4OGM3MDAgZHJtL2k5MTUvdGdsOiBHZW4xMiBjc2Igc3VwcG9ydAot
OjQxOiBDSEVDSzpNQUNST19BUkdfUFJFQ0VERU5DRTogTWFjcm8gYXJndW1lbnQgJ2NzYl9kdycg
bWF5IGJlIGJldHRlciBhcyAnKGNzYl9kdyknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNzdWVzCiM0
MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MTY4OgorI2RlZmlu
ZSBHRU4xMl9DVFhfU1dJVENIX0RFVEFJTChjc2JfZHcpCShjc2JfZHcgJiAweEYpIC8qIHVwcGVy
IGNzYiBkd29yZCAqLwoKLToxMTI6IENIRUNLOlVOTkVDRVNTQVJZX1BBUkVOVEhFU0VTOiBVbm5l
Y2Vzc2FyeSBwYXJlbnRoZXNlcyBhcm91bmQgJ2N0eF9hd2F5ID09IGN0eF90bycKIzExMjogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MTM0NzoKKwlpZiAoKGN0eF9h
d2F5ID09IGN0eF90bykgJiYgY3R4X3RvX3ZhbGlkKQoKLToxMTU6IENIRUNLOlVOTkVDRVNTQVJZ
X1BBUkVOVEhFU0VTOiBVbm5lY2Vzc2FyeSBwYXJlbnRoZXNlcyBhcm91bmQgJ2N0eF9hd2F5ICE9
IGN0eF90bycKIzExNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6
MTM1MDoKKwlpZiAoKGN0eF9hd2F5ICE9IGN0eF90bykgJiYgY3R4X2F3YXlfdmFsaWQgJiYgY3R4
X3RvX3ZhbGlkICYmICFuZXdfcXVldWUpCgotOjExODogQ0hFQ0s6VU5ORUNFU1NBUllfUEFSRU5U
SEVTRVM6IFVubmVjZXNzYXJ5IHBhcmVudGhlc2VzIGFyb3VuZCAnc3dpdGNoX2RldGFpbCA9PSBH
RU4xMl9DVFhfUFJFRU1QVEVEJwojMTE4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYzoxMzUzOgorCWlmICgoc3dpdGNoX2RldGFpbCA9PSBHRU4xMl9DVFhfUFJFRU1Q
VEVEKSB8fCAobmV3X3F1ZXVlICYmIGN0eF9hd2F5X3ZhbGlkKSkKCi06MTIxOiBDSEVDSzpVTk5F
Q0VTU0FSWV9QQVJFTlRIRVNFUzogVW5uZWNlc3NhcnkgcGFyZW50aGVzZXMgYXJvdW5kICdzd2l0
Y2hfZGV0YWlsID09IEdFTjEyX0NUWF9DT01QTEVURScKIzEyMTogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6MTM1NjoKKwlpZiAoKHN3aXRjaF9kZXRhaWwgPT0gR0VO
MTJfQ1RYX0NPTVBMRVRFKSAmJiBjdHhfYXdheV92YWxpZCkKCnRvdGFsOiAwIGVycm9ycywgMCB3
YXJuaW5ncywgNSBjaGVja3MsIDExNyBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE87DC0A9
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 11:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7578489CF9;
	Fri, 18 Oct 2019 09:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CA6689C9A;
 Fri, 18 Oct 2019 09:15:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 661A8A006B;
 Fri, 18 Oct 2019 09:15:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 18 Oct 2019 09:15:41 -0000
Message-ID: <20191018091541.27987.87940@emeril.freedesktop.org>
References: <20191017080144.16899-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017080144.16899-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Add_coverage_of_mocs_registers_=28rev4?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQgY292
ZXJhZ2Ugb2YgbW9jcyByZWdpc3RlcnMgKHJldjQpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODEzNS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmY3ODU3MTIyYjY5ZSBkcm0vaTkx
NS9zZWxmdGVzdHM6IEFkZCBjb3ZlcmFnZSBvZiBtb2NzIHJlZ2lzdGVycwotOjI4OiBXQVJOSU5H
OkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2Vz
IE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMyODogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cgot
OjMzOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzMzOiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9tb2NzLmM6MToKKy8qCgotOjM0OiBXQVJOSU5HOlNQRFhfTElD
RU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGlu
ZSAxIGluc3RlYWQKIzM0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9t
b2NzLmM6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCnRvdGFsOiAwIGVycm9y
cywgMyB3YXJuaW5ncywgMCBjaGVja3MsIDQ0NSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

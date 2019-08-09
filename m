Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E14787AD3
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 15:07:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA2C6ED75;
	Fri,  9 Aug 2019 13:07:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 95BDE6ED75;
 Fri,  9 Aug 2019 13:07:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B7E6A363D;
 Fri,  9 Aug 2019 13:07:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Fri, 09 Aug 2019 13:07:16 -0000
Message-ID: <20190809130716.30609.30246@emeril.freedesktop.org>
References: <20190807135312.1730-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190807135312.1730-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_dma-buf=3A_add_reservation=5F?=
 =?utf-8?q?object=5Ffences_helper?=
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
ZG1hLWJ1ZjogYWRkIHJlc2VydmF0aW9uX29iamVjdF9mZW5jZXMgaGVscGVyClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDk1NS8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjZmZjM0
MmExNTEzYyBkbWEtYnVmOiBhZGQgcmVzZXJ2YXRpb25fb2JqZWN0X2ZlbmNlcyBoZWxwZXIKLToy
NTogV0FSTklORzpVTlNQRUNJRklFRF9JTlQ6IFByZWZlciAndW5zaWduZWQgaW50JyB0byBiYXJl
IHVzZSBvZiAndW5zaWduZWQnCiMyNTogRklMRTogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYzoy
MDI6CisJdW5zaWduZWQgc2hhcmVkX2NvdW50OwoKLToxOTE6IFdBUk5JTkc6VU5TUEVDSUZJRURf
SU5UOiBQcmVmZXIgJ3Vuc2lnbmVkIGludCcgdG8gYmFyZSB1c2Ugb2YgJ3Vuc2lnbmVkJwojMTkx
OiBGSUxFOiBkcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYzo1MDg6CisJdW5zaWduZWQgc2hh
cmVkX2NvdW50OwoKLToyMzg6IFdBUk5JTkc6VU5TUEVDSUZJRURfSU5UOiBQcmVmZXIgJ3Vuc2ln
bmVkIGludCcgdG8gYmFyZSB1c2Ugb2YgJ3Vuc2lnbmVkJwojMjM4OiBGSUxFOiBkcml2ZXJzL2Rt
YS1idWYvcmVzZXJ2YXRpb24uYzo1OTk6CisJdW5zaWduZWQgc2hhcmVkX2NvdW50OwoKLTo0Mjc6
IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUg
Ynkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0NocmlzdGlhbiBLw7ZuaWcgPGNrb2VuaWcubGVpY2h0
enVtZXJrZW5AZ21haWwuY29tPicKCnRvdGFsOiAwIGVycm9ycywgNCB3YXJuaW5ncywgMCBjaGVj
a3MsIDM4MSBsaW5lcyBjaGVja2VkCmFhZWY1NWY2Yjg4ZCBkcm0vaTkxNTogdXNlIG5ldyByZXNl
cnZhdGlvbl9vYmplY3RfZmVuY2VzIGhlbHBlcgotOjYxOiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdO
X09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9y
ICdDaHJpc3RpYW4gS8O2bmlnIDxja29lbmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4nCgp0
b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA0MyBsaW5lcyBjaGVja2VkCjVk
ZDVlM2Y1NTg5NSBkbWEtYnVmOiBmdXJ0aGVyIHJlbGF4IHJlc2VydmF0aW9uX29iamVjdF9hZGRf
c2hhcmVkX2ZlbmNlCi06OTogV0FSTklORzpDT01NSVRfTE9HX0xPTkdfTElORTogUG9zc2libGUg
dW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBw
ZXIgbGluZSkKIzk6IApPdGhlciBjb3JlcyBkb24ndCBidXN5IHdhaXQgYW55IG1vcmUgYW5kIHdl
IHJlbW92ZWQgdGhlIGxhc3QgdXNlciBvZiBjaGVja2luZwoKLTo1NTogV0FSTklORzpOT19BVVRI
T1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNo
IGF1dGhvciAnQ2hyaXN0aWFuIEvDtm5pZyA8Y2tvZW5pZy5sZWljaHR6dW1lcmtlbkBnbWFpbC5j
b20+JwoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCAwIGNoZWNrcywgMzEgbGluZXMgY2hl
Y2tlZAplZTlkZTI0OTI4MTEgZG1hLWJ1ZjogbnVrZSByZXNlcnZhdGlvbl9vYmplY3Qgc2VxIG51
bWJlcgotOjk6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBl
ZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUp
CiM5OiAKVGhlIG9ubHkgcmVtYWluaW5nIHVzZSBmb3IgdGhpcyBpcyB0byBwcm90ZWN0IGFnYWlu
c3Qgc2V0dGluZyBhIG5ldyBleGNsdXNpdmUKCi06NTc6IFdBUk5JTkc6TUVNT1JZX0JBUlJJRVI6
IG1lbW9yeSBiYXJyaWVyIHdpdGhvdXQgY29tbWVudAojNTc6IEZJTEU6IGRyaXZlcnMvZG1hLWJ1
Zi9yZXNlcnZhdGlvbi5jOjI3OToKKwkJc21wX3N0b3JlX21iKG9sZC0+c2hhcmVkX2NvdW50LCAw
KTsKCi06MTEyOiBXQVJOSU5HOk5PX0FVVEhPUl9TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2Zm
LWJ5OiBsaW5lIGJ5IG5vbWluYWwgcGF0Y2ggYXV0aG9yICdDaHJpc3RpYW4gS8O2bmlnIDxja29l
bmlnLmxlaWNodHp1bWVya2VuQGdtYWlsLmNvbT4nCgp0b3RhbDogMCBlcnJvcnMsIDMgd2Fybmlu
Z3MsIDAgY2hlY2tzLCA4MCBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=

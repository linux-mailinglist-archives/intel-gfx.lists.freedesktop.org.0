Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A27DE725
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 10:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA88989C1A;
	Mon, 21 Oct 2019 08:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23CFE89AB2;
 Mon, 21 Oct 2019 08:54:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18BEAA0137;
 Mon, 21 Oct 2019 08:54:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 21 Oct 2019 08:54:08 -0000
Message-ID: <20191021085408.800.14155@emeril.freedesktop.org>
References: <20191021080226.537-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191021080226.537-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/16=5D_drm/i915=3A_Don=27t_set_que?=
 =?utf-8?q?ue=5Fpriority=5Fhint_if_we_don=27t_kick_the_submission?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE2
XSBkcm0vaTkxNTogRG9uJ3Qgc2V0IHF1ZXVlX3ByaW9yaXR5X2hpbnQgaWYgd2UgZG9uJ3Qga2lj
ayB0aGUgc3VibWlzc2lvbgpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvNjgyOTUvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hl
Y2twYXRjaCBvcmlnaW4vZHJtLXRpcAo0OGNkYWMzMjE0ODIgZHJtL2k5MTU6IERvbid0IHNldCBx
dWV1ZV9wcmlvcml0eV9oaW50IGlmIHdlIGRvbid0IGtpY2sgdGhlIHN1Ym1pc3Npb24KYzA0YjFk
MzEzMDVhIGRybS9pOTE1OiBEcm9wIGFzc2VydGlvbiB0aGF0IGNlLT5waW5fbXV0ZXggZ3VhcmRz
IHN0YXRlIHVwZGF0ZXMKOTQzNWYzNWE4ZTJiIGRybS9pOTE1L3NlbGZ0ZXN0czogQWRkIGNvdmVy
YWdlIG9mIG1vY3MgcmVnaXN0ZXJzCi06Mjk6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFk
ZGVkLCBtb3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRh
dGluZz8KIzI5OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06MzQ6IFdBUk5JTkc6U1BEWF9MSUNF
TlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFn
IGluIGxpbmUgMQojMzQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21v
Y3MuYzoxOgorLyoKCi06MzU6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojMzU6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21vY3MuYzoyOgorICogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVAoKdG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCAwIGNoZWNr
cywgNDQ1IGxpbmVzIGNoZWNrZWQKNzM4M2E3ZTliNmJmIGRybS9pOTE1L3NlbGZ0ZXN0czogVGVh
Y2ggaWd0X2ZsdXNoX3Rlc3QgYW5kIGlndF9saXZlX3Rlc3QgdG8gdGFrZSBpbnRlbF9ndAowOWZm
YWMxMzFhMGQgZHJtL2k5MTUvc2VsZnRlc3RzOiBGb3JjZSBvcmRlcmluZyBvZiBjb250ZXh0IHN3
aXRjaGVzCjU3NTE0MjlhNjM1OSBkcm0vaTkxNTogRXhwb3NlIGVuZ2luZSBwcm9wZXJ0aWVzIHZp
YSBzeXNmcwotOjczOiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3Ig
ZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiM3MzogCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CgotOjc4OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Np
bmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzc4
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3lzZnMuYzoxOgor
LyoKCi06Nzk6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAojNzk6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5jOjI6CisgKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUCgotOjE3ODogQ0hFQ0s6U1BBQ0lORzogTm8gc3BhY2UgaXMgbmVjZXNz
YXJ5IGFmdGVyIGEgY2FzdAojMTc4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfc3lzZnMuYzoxMDE6CisJCQkgc2hvd191bmtub3duID8gQklUU19QRVJfVFlQRSh0
eXBlb2YoY2FwcykpIDogY291bnQpIHsKCi06Mjg5OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6
IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5l
IDEKIzI4OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N5c2Zz
Lmg6MToKKy8qCgotOjI5MDogV0FSTklORzpTUERYX0xJQ0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxpbmUgMSBpbnN0ZWFkCiMyOTA6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zeXNmcy5oOjI6CisgKiBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCgp0b3RhbDogMCBlcnJvcnMsIDUgd2FybmluZ3MsIDEg
Y2hlY2tzLCAyNDQgbGluZXMgY2hlY2tlZAoyYWVhZTEzZTBiYWEgZHJtL2k5MTU6IEV4cG9zZSBl
bmdpbmUtPm1taW9fYmFzZSB2aWEgc3lzZnMKZGM1NzE4MDJlYjUzIGRybS9pOTE1OiBFeHBvc2Ug
dGltZXNsaWNlIGR1cmF0aW9uIHRvIHN5c2ZzCmNkYTlmNmIyMWYwZiBkcm0vaTkxNS9leGVjbGlz
dHM6IEZvcmNlIHByZWVtcHRpb24KMjYzMjEzZDFlMGRkIGRybS9pOTE1L2d0OiBJbnRyb2R1Y2Ug
YmFycmllciBwdWxzZXMgYWxvbmcgZW5naW5lcwotOjI5OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFO
R0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5l
ZWQgdXBkYXRpbmc/CiMyOTogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjM0OiBXQVJOSU5HOlNQ
RFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyIHRhZyBpbiBsaW5lIDEKIzM0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfaGVhcnRiZWF0LmM6MToKKy8qCgotOjM1OiBXQVJOSU5HOlNQRFhfTElDRU5TRV9U
QUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGluZSAxIGlu
c3RlYWQKIzM1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVh
cnRiZWF0LmM6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06OTY6IFdBUk5J
Tkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXIgdGFnIGluIGxpbmUgMQojOTY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9oZWFydGJlYXQuaDoxOgorLyoKCi06OTc6IFdBUk5JTkc6U1BEWF9MSUNF
TlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5l
IDEgaW5zdGVhZAojOTc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9oZWFydGJlYXQuaDoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAoKdG90YWw6
IDAgZXJyb3JzLCA1IHdhcm5pbmdzLCAwIGNoZWNrcywgOTIgbGluZXMgY2hlY2tlZAowOTI3NjEy
NzM3NTggZHJtL2k5MTUvZXhlY2xpc3RzOiBDYW5jZWwgYmFubmVkIGNvbnRleHRzIG9uIHNjaGVk
dWxlLW91dAphYjliYmMyODM1OTYgZHJtL2k5MTUvZ2VtOiBDYW5jZWwgY29udGV4dHMgd2hlbiBo
YW5nY2hlY2tpbmcgaXMgZGlzYWJsZWQKM2QwYjAxY2RhZTYxIGRybS9pOTE1OiBSZXBsYWNlIGhh
bmdjaGVjayBieSBoZWFydGJlYXRzCi06MjcxOiBXQVJOSU5HOkVNQkVEREVEX0ZVTkNUSU9OX05B
TUU6IFByZWZlciB1c2luZyAnIiVzLi4uIiwgX19mdW5jX18nIHRvIHVzaW5nICdoZWFydGJlYXQn
LCB0aGlzIGZ1bmN0aW9uJ3MgbmFtZSwgaW4gYSBzdHJpbmcKIzI3MTogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5jOjEwMjoKKwkJCQkJICAgICAg
InN0b3BwZWQgaGVhcnRiZWF0IG9uICVzIiwKCi06NjA1OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFO
R0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5l
ZWQgdXBkYXRpbmc/CiM2MDU6IApkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKCi06OTk2OiBXQVJO
SU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzk5NjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jOjE6CisvKgoKLTo5OTc6IFdBUk5JTkc6U1BE
WF9MSUNFTlNFX1RBRzogTWlzcGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVz
ZSBsaW5lIDEgaW5zdGVhZAojOTk3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9lbmdpbmVfaGVhcnRiZWF0LmM6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBN
SVQKCi06MTA1OTogV0FSTklORzpZSUVMRDogVXNpbmcgeWllbGQoKSBpcyBnZW5lcmFsbHkgd3Jv
bmcuIFNlZSB5aWVsZCgpIGtlcm5lbC1kb2MgKHNjaGVkL2NvcmUuYykKIzEwNTk6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYzo2NDoKKwkJ
CXlpZWxkKCk7IC8qIHdvcmsgaXMgb24gdGhlIGxvY2FsIGNwdSEgKi8KCnRvdGFsOiAwIGVycm9y
cywgNSB3YXJuaW5ncywgMCBjaGVja3MsIDkzOSBsaW5lcyBjaGVja2VkCmIyYmJmNzZiZjgwMiBk
cm0vaTkxNS9nZW06IE1ha2UgY29udGV4dCBwZXJzaXN0ZW5jZSBvcHRpb25hbApmMDdmYTgyYjYy
YzEgZHJtL2k5MTUvZ2VtOiBEaXN0aW5ndWlzaCBlYWNoIG9iamVjdCB0eXBlCmU0ZWRhMDkwZmE0
MiBkcm0vaTkxNTogRmx1c2ggaWRsZSBiYXJyaWVycyB3aGVuIHdhaXRpbmcKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

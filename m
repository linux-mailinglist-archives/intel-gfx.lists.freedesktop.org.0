Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D19BC455D5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 09:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9AC1897C3;
	Fri, 14 Jun 2019 07:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB64C8972D;
 Fri, 14 Jun 2019 07:22:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DC03A0106;
 Fri, 14 Jun 2019 07:22:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 14 Jun 2019 07:22:17 -0000
Message-ID: <20190614072217.19703.87140@emeril.freedesktop.org>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190614071023.17929-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/39=5D_drm/i915=3A_Discard_some_re?=
 =?utf-8?q?dundant_cache_domain_flushes?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzM5
XSBkcm0vaTkxNTogRGlzY2FyZCBzb21lIHJlZHVuZGFudCBjYWNoZSBkb21haW4gZmx1c2hlcwpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjIwODUvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJt
LXRpcAo2ZWIzYjRkOGQ0YmQgZHJtL2k5MTU6IERpc2NhcmQgc29tZSByZWR1bmRhbnQgY2FjaGUg
ZG9tYWluIGZsdXNoZXMKYTE0NWQxYjAxMGYxIGRybS9pOTE1OiBSZWZpbmUgaTkxNV9yZXNldC5s
b2NrX21hcAoxODg2OGQyZDVmNGEgZHJtL2k5MTU6IEF2b2lkIHRhaW50aW5nIGk5MTVfZ2VtX3Bh
cmsoKSB3aXRoIHdha2VyZWYubG9jawozZGQ2ZWVjNGQyMDQgZHJtL2k5MTU6IEVuYWJsZSByZWZj
b3VudCBkZWJ1Z2dpbmcgZm9yIGRlZmF1bHQgZGVidWcgbGV2ZWxzCjhjMDYyYWM5MDZiZSBkcm0v
aTkxNTogS2VlcCBjb250ZXh0cyBwaW5uZWQgdW50aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVsIGNv
bnRleHQgc3dpdGNoCmIwNDlkMmRiMjY2YyBkcm0vaTkxNTogU3RvcCByZXRpcmluZyBhbG9uZyBl
bmdpbmUKOThmNjU1MTEzMTIyIGRybS9pOTE1OiBSZXBsYWNlIGVuZ2luZS0+dGltZWxpbmUgd2l0
aCBhIHBsYWluIGxpc3QKLToxODA6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHNwaW5s
b2NrX3QgZGVmaW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzE4MDogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmg6MjkyOgorCQlzcGlubG9ja190IGxvY2s7
Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCA5NjggbGluZXMgY2hlY2tl
ZAo3ZjhjNWMwZDk1NjggZHJtL2k5MTU6IEZsdXNoIHRoZSBleGVjdXRpb24tY2FsbGJhY2tzIG9u
IHJldGlyaW5nCjc5NjBjNmY3ZTI0ZSBkcm0vaTkxNS9leGVjbGlzdHM6IFByZWVtcHQtdG8tYnVz
eQotOjE0OTQ6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3Bf
cHRyJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzE0OTQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdXRpbHMuaDoxMzQ6CisjZGVmaW5lIHB0cl9jb3VudF9kZWMocF9wdHIpIGRv
IHsJCQkJCVwKKwl0eXBlb2YocF9wdHIpIF9fcCA9IChwX3B0cik7CQkJCQlcCisJdW5zaWduZWQg
bG9uZyBfX3YgPSAodW5zaWduZWQgbG9uZykoKl9fcCk7CQkJXAorCSpfX3AgPSAodHlwZW9mKCpw
X3B0cikpKC0tX192KTsJCQkJCVwKK30gd2hpbGUgKDApCgotOjE1MDA6IENIRUNLOk1BQ1JPX0FS
R19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3BfcHRyJyAtIHBvc3NpYmxlIHNpZGUtZWZm
ZWN0cz8KIzE1MDA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaDoxNDA6
CisjZGVmaW5lIHB0cl9jb3VudF9pbmMocF9wdHIpIGRvIHsJCQkJCVwKKwl0eXBlb2YocF9wdHIp
IF9fcCA9IChwX3B0cik7CQkJCQlcCisJdW5zaWduZWQgbG9uZyBfX3YgPSAodW5zaWduZWQgbG9u
ZykoKl9fcCk7CQkJXAorCSpfX3AgPSAodHlwZW9mKCpwX3B0cikpKCsrX192KTsJCQkJCVwKK30g
d2hpbGUgKDApCgotOjE3ODM6IFdBUk5JTkc6TElORV9TUEFDSU5HOiBNaXNzaW5nIGEgYmxhbmsg
bGluZSBhZnRlciBkZWNsYXJhdGlvbnMKIzE3ODM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2d1Y19zdWJtaXNzaW9uLmM6ODIwOgorCQlpbnQgcmVtID0gQVJSQVlfU0laRShleGVj
bGlzdHMtPmluZmxpZ2h0KSAtIGlkeDsKKwkJbWVtbW92ZShleGVjbGlzdHMtPmluZmxpZ2h0LCBw
b3J0LCByZW0gKiBzaXplb2YoKnBvcnQpKTsKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywg
MiBjaGVja3MsIDE2ODIgbGluZXMgY2hlY2tlZAo0MzYyZWJmYzllMTEgZHJtL2k5MTUvZXhlY2xp
c3RzOiBNaW5pbWFsaXN0aWMgdGltZXNsaWNpbmcKLTozNDU6IFdBUk5JTkc6TE9OR19MSU5FOiBs
aW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzM0NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfbHJjLmM6MjExOgorCQkJICAgICAgMiAqIFJVTlRJTUVfSU5GTyhvdXRlci0+
aTkxNSktPm51bV9lbmdpbmVzICogKGNvdW50ICsgMikgKiAoY291bnQgKyAzKSkgPCAwKSB7Cgp0
b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA0MjYgbGluZXMgY2hlY2tlZApl
ZTNmOWRiZDVkYWQgZHJtL2k5MTUvZXhlY2xpc3RzOiBGb3JjZSBwcmVlbXB0aW9uCjQ0YzJmODlm
NjJmYSBkbWEtZmVuY2U6IFByb3BhZ2F0ZSBlcnJvcnMgdG8gZG1hLWZlbmNlLWFycmF5IGNvbnRh
aW5lcgplN2Q1YzRmMjVjZWMgZG1hLWZlbmNlOiBSZXBvcnQgdGhlIGNvbXBvc2l0ZSBzeW5jX2Zp
bGUgc3RhdHVzCjJjZGFkNjlhNDVmYiBkbWEtZmVuY2U6IFJlZmFjdG9yIHNpZ25hbGluZyBmb3Ig
bWFudWFsIGludm9jYXRpb24KLTozMzogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQs
IG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5n
PwojMzM6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTozODogV0FSTklORzpTUERYX0xJQ0VOU0Vf
VEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgaW4g
bGluZSAxCiMzODogRklMRTogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS10cmFjZS5jOjE6Cisv
KgoKLToyOTM6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMjkzOiBGSUxFOiBpbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS10eXBlcy5oOjE6CisvKgoKLTozNjg6IENIRUNLOlVOQ09NTUVOVEVE
X0RFRklOSVRJT046IHNwaW5sb2NrX3QgZGVmaW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzM2ODog
RklMRTogaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdHlwZXMuaDo3NjoKKwlzcGlubG9ja190ICps
b2NrOwoKdG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCAxIGNoZWNrcywgNzI4IGxpbmVzIGNo
ZWNrZWQKZTE3MWVhMGUyYWNiIGRtYS1mZW5jZTogQWx3YXlzIGV4ZWN1dGUgc2lnbmFsIGNhbGxi
YWNrcwo0N2E4MWYxNzA0NTYgZHJtL2k5MTU6IEV4ZWN1dGUgc2lnbmFsIGNhbGxiYWNrcyBmcm9t
IG5vLW9wIGk5MTVfcmVxdWVzdF93YWl0CjFjZWRkMTg2YTk4MiBkcm0vaTkxNTogTWFrZSB0aGUg
c2VtYXBob3JlIHNhdHVyYXRpb24gbWFzayBnbG9iYWwKNWRhNmE0MTYzNzUzIGRybS9pOTE1OiBU
aHJvdyBhd2F5IHRoZSBhY3RpdmUgb2JqZWN0IHJldGlyZW1lbnQgY29tcGxleGl0eQoxNWU2NGFm
OWU1OTIgZHJtL2k5MTU6IFByb3ZpZGUgYW4gaTkxNV9hY3RpdmUuYWNxdWlyZSBjYWxsYmFjawot
OjY4NDogQ0hFQ0s6VU5DT01NRU5URURfREVGSU5JVElPTjogc3RydWN0IG11dGV4IGRlZmluaXRp
b24gd2l0aG91dCBjb21tZW50CiM2ODQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
YWN0aXZlX3R5cGVzLmg6MzY6CisJc3RydWN0IG11dGV4IG11dGV4OwoKdG90YWw6IDAgZXJyb3Jz
LCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgNzMwIGxpbmVzIGNoZWNrZWQKMGRiZjRhZmVjNzU5IGRy
bS9pOTE1OiBQdXNoIHRoZSBpOTE1X2FjdGl2ZS5yZXRpcmUgaW50byBhIHdvcmtlcgo2NTU5NzBl
ZDEzZGIgZHJtL2k5MTUvb3ZlcmxheTogU3dpdGNoIHRvIHVzaW5nIGk5MTVfYWN0aXZlIHRyYWNr
aW5nCmIwM2M2NmJhYjc5MiBkcm0vaTkxNTogRm9yZ28gbGFzdF9mZW5jZSBhY3RpdmUgcmVxdWVz
dCB0cmFja2luZwo1NWU3OTVjNzYzMzEgZHJtL2k5MTU6IEV4dHJhY3QgaW50ZWxfZnJvbnRidWZm
ZXIgYWN0aXZlIHRyYWNraW5nCjljYTVmMjVhODQ5OCBkcm0vaTkxNTogQ29vcmRpbmF0ZSBpOTE1
X2FjdGl2ZSB3aXRoIGl0cyBvd24gbXV0ZXgKZTdmNmNiNzcxMmEyIGRybS9pOTE1OiBUcmFjayBn
Z3R0IGZlbmNlIHJlc2VydmF0aW9ucyB1bmRlciBpdHMgb3duIG11dGV4CjJlMmYxMWJiZDRkOSBk
cm0vaTkxNTogT25seSB0cmFjayBib3VuZCBlbGVtZW50cyBvZiB0aGUgR1RUCjM1NzZlODg0Mjlj
YSBkcm0vaTkxNTogRXhwbGljaXRseSBjbGVhbnVwIGluaXRpYWxfcGxhbmVfY29uZmlnCmZiMjhh
ZDVhNTAyYyBpbml0aWFsLXBsYW5lLXZtYQotOjg6IFdBUk5JTkc6Q09NTUlUX01FU1NBR0U6IE1p
c3NpbmcgY29tbWl0IGRlc2NyaXB0aW9uIC0gQWRkIGFuIGFwcHJvcHJpYXRlIG9uZQoKLTozODk6
IEVSUk9SOk1JU1NJTkdfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZShzKQoK
dG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMzQ5IGxpbmVzIGNoZWNrZWQK
Y2UwZGEyN2M5MWMyIGRybS9pOTE1OiBNYWtlIGk5MTVfdm1hIHRyYWNrIGl0cyBvd24ga3JlZgot
OjMwODogV0FSTklORzpCUkFDRVM6IGJyYWNlcyB7fSBhcmUgbm90IG5lY2Vzc2FyeSBmb3Igc2lu
Z2xlIHN0YXRlbWVudCBibG9ja3MKIzMwODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmM6NTc2OgorCQlpZiAoIUlTX0VSUih2bWEpKSB7CisJCQlp
OTE1X3ZtYV9wdXQodm1hKTsKKwkJfQoKLToxMzQ2OiBFUlJPUjpNSVNTSU5HX1NJR05fT0ZGOiBN
aXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUocykKCnRvdGFsOiAxIGVycm9ycywgMSB3YXJuaW5n
cywgMCBjaGVja3MsIDExMzYgbGluZXMgY2hlY2tlZAoyNzM0NjVhY2Y4NWMgZHJtL2k5MTU6IFBy
b3BhZ2F0ZSBmZW5jZSBlcnJvcnMKZTczYTQ1ZTBmNWExIGRybS9pOTE1OiBBbGxvdyBwYWdlIHBp
bm5pbmcgdG8gYmUgaW4gdGhlIGJhY2tncm91bmQKOTRjOTdlNWIxM2I3IGRybS9pOTE1OiBBbGxv
dyB2bWEgYmluZGluZyB0byBvY2N1ciBhc3luY2hyb25vdXNseQowNzMxMDkyMWRkZWEgcmV2b2tl
LWZlbmNlCi06ODogV0FSTklORzpDT01NSVRfTUVTU0FHRTogTWlzc2luZyBjb21taXQgZGVzY3Jp
cHRpb24gLSBBZGQgYW4gYXBwcm9wcmlhdGUgb25lCgotOjIzMzogRVJST1I6TUlTU0lOR19TSUdO
X09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lKHMpCgp0b3RhbDogMSBlcnJvcnMsIDEg
d2FybmluZ3MsIDAgY2hlY2tzLCAxODYgbGluZXMgY2hlY2tlZAo5NWYzM2MwOTFlZDcgZHJtL2k5
MTU6IFVzZSB2bS0+bXV0ZXggZm9yIHNlcmlhbGlzaW5nIEdUVCBpbnNlcnRpb24KMTE3NDU0MGY4
M2I4IGRybS9pOTE1OiBQaW4gcGFnZXMgYmVmb3JlIHdhaXRpbmcKY2Y1NzY5OTRlMTZlIGRybS9p
OTE1OiBVc2UgcmVzZXJ2YXRpb25fb2JqZWN0IHRvIGNvb3JkaW5hdGUgdXNlcnB0ciBnZXRfcGFn
ZXMoKQotOjg6IFdBUk5JTkc6Q09NTUlUX01FU1NBR0U6IE1pc3NpbmcgY29tbWl0IGRlc2NyaXB0
aW9uIC0gQWRkIGFuIGFwcHJvcHJpYXRlIG9uZQoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdz
LCAwIGNoZWNrcywgMTEwNCBsaW5lcyBjaGVja2VkCjJjMTgxY2I5NDJiNCBkcm0vaTkxNTogVXNl
IGZvcmNlZCBwcmVlbXB0aW9ucyBpbiBwcmVmZXJlbmNlIG92ZXIgaGFuZ2NoZWNrCjZhMTY3NTIy
ZTc1OCBkcm0vaTkxNTogUmVtb3ZlIGxvZ2ljYWwgSFcgSUQKZTY3NmMwOGIyZWJjIGFjdGl2ZS1y
aW5ncwotOjg6IFdBUk5JTkc6Q09NTUlUX01FU1NBR0U6IE1pc3NpbmcgY29tbWl0IGRlc2NyaXB0
aW9uIC0gQWRkIGFuIGFwcHJvcHJpYXRlIG9uZQoKLTo1MzM6IEVSUk9SOk1JU1NJTkdfU0lHTl9P
RkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZShzKQoKdG90YWw6IDEgZXJyb3JzLCAxIHdh
cm5pbmdzLCAwIGNoZWNrcywgNDQwIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

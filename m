Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A79FB936A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 16:52:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D340C6FD18;
	Fri, 20 Sep 2019 14:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DBE26FD18;
 Fri, 20 Sep 2019 14:52:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 868FEA0020;
 Fri, 20 Sep 2019 14:52:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 20 Sep 2019 14:52:51 -0000
Message-ID: <20190920145251.25912.90010@emeril.freedesktop.org>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/23=5D_drm/i915/dp=3A_Fix_dsc_bpp_?=
 =?utf-8?q?calculations=2C_v2=2E?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzIz
XSBkcm0vaTkxNS9kcDogRml4IGRzYyBicHAgY2FsY3VsYXRpb25zLCB2Mi4KVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2OTk4LwpTdGF0ZSA6IHdhcm5p
bmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNWEwNmEw
MzUwYTgzIGRybS9pOTE1L2RwOiBGaXggZHNjIGJwcCBjYWxjdWxhdGlvbnMsIHYyLgozMDE0MmI3
MjliNWMgSEFYIGRybS9pOTE1OiBEaXNhYmxlIEZFQyBlbnRpcmVseSBmb3Igbm93Ci06MTQ6IFdB
Uk5JTkc6QkFEX1NJR05fT0ZGOiAnTm90LXNpZ25lZC1vZmYtYnk6JyBpcyB0aGUgcHJlZmVycmVk
IHNpZ25hdHVyZSBmb3JtCiMxNDogCk5vdC1TaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3Jz
dCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKLTo0MDogRVJST1I6TUlTU0lO
R19TSUdOX09GRjogTWlzc2luZyBTaWduZWQtb2ZmLWJ5OiBsaW5lKHMpCgp0b3RhbDogMSBlcnJv
cnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCAxOSBsaW5lcyBjaGVja2VkCjJiYjczYjBlYzQ3ZSBk
cm0vaTkxNTogUHJlcGFyZSB0byBzcGxpdCBjcnRjIHN0YXRlIGluIHVhcGkgYW5kIGh3IHN0YXRl
Ci06MTE6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBj
b21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMx
MTogCi0gY3J0YywgKl9jaGFuZ2VkIGZsYWdzLCBldmVudCwgY29tbWl0LCBzdGF0ZSwgbW9kZV9i
bG9iLCAocGxhbmUvY29ubmVjdG9yL2VuY29kZXIpX21hc2suCgotOjIxMTI6IENIRUNLOk1VTFRJ
UExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25tZW50cyBzaG91bGQgYmUgYXZvaWRlZAoj
MjExMjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6
MTEyMDE6CisJY3J0Y19zdGF0ZS0+dWFwaS5hY3RpdmUgPSBjcnRjX3N0YXRlLT51YXBpLmVuYWJs
ZSA9IHRydWU7CgotOjI4MTA6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBh
c3NpZ25tZW50cyBzaG91bGQgYmUgYXZvaWRlZAojMjgxMDogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTY2OTI6CisJCWNydGNfc3RhdGUtPmh3LmFj
dGl2ZSA9IGNydGNfc3RhdGUtPmh3LmVuYWJsZSA9CgotOjM5NjU6IEVSUk9SOkNPREVfSU5ERU5U
OiBjb2RlIGluZGVudCBzaG91bGQgdXNlIHRhYnMgd2hlcmUgcG9zc2libGUKIzM5NjU6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmM6MjExOgorXkleSV5J
XkkgICAgICAgICAgbmV3X2NydGNfc3RhdGUtPnVhcGkuZXZlbnQpOyQKCi06Mzk2NTogQ0hFQ0s6
UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50
aGVzaXMKIzM5NjU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmM6MjExOgorCQlkcm1fY3J0Y19hcm1fdmJsYW5rX2V2ZW50KCZjcnRjLT5iYXNlLAorCQkJ
CSAgICAgICAgICBuZXdfY3J0Y19zdGF0ZS0+dWFwaS5ldmVudCk7Cgp0b3RhbDogMSBlcnJvcnMs
IDEgd2FybmluZ3MsIDMgY2hlY2tzLCA0MzQ4IGxpbmVzIGNoZWNrZWQKOGZhMTE3ZDRhMjc3IGRy
bS9pOTE1OiBIYW5kbGUgYSBmZXcgbW9yZSBjYXNlcyBmb3IgaHcvc3cgc3BsaXQKZmIxMGY5YzRk
YWUxIGRybS9pOTE1OiBDb21wbGV0ZSBzdy9odyBzcGxpdAo4OWJkYmM5NTU5MjcgZHJtL2k5MTU6
IEdldCByaWQgb2YgY3J0Y19zdGF0ZS0+ZmJfY2hhbmdlZAoxOTk3ZGJhYWE1MDcgZHJtL2k5MTU6
IFJlbW92ZSBiZWdpbi9maW5pc2hfY3J0Y19jb21taXQuCjM1ZTBlOTQ1OTI2YSBkcm0vaTkxNTog
UmVuYW1lIHBsYW5hciBsaW5rZWQgcGxhbmUgdmFyaWFibGVzCjExYjA4ODc1Y2IxNCBkcm0vaTkx
NTogRG8gbm90IGFkZCBhbGwgcGxhbmVzIHdoZW4gY2hlY2tpbmcgc2NhbGVycyBvbiBnbGsrCmM1
YWMzNWE4MmFjZCBkcm0vaTkxNS9kcDogQWxsb3cgYmlnIGpvaW5lciBtb2RlcyBpbiBpbnRlbF9k
cF9tb2RlX3ZhbGlkKCkKMDJhZTU0NmJlN2ZmIGRybS9pOTE1OiBUcnkgdG8gbWFrZSBiaWdqb2lu
ZXIgd29yayBpbiBhdG9taWMgY2hlY2suCi06MTQzOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1F
TlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMTQzOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxMTgyNjoKKwkJCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLAorCQkJCQljcnRjX3N0YXRlLT5i
aWdqb2luZXJfbGlua2VkX2NydGMpOwoKLToxOTE6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRT
OiBtdWx0aXBsZSBhc3NpZ25tZW50cyBzaG91bGQgYmUgYXZvaWRlZAojMTkxOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxMjMyNjoKKwljcnRjX3N0
YXRlLT5udjEyX3BsYW5lcyA9IGNydGNfc3RhdGUtPmM4X3BsYW5lcyA9IGNydGNfc3RhdGUtPnVw
ZGF0ZV9wbGFuZXMgPSAwOwoKLToyMTc6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAw
IGNoYXJhY3RlcnMKIzIxNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmM6MTM2MjU6CisJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0
YXRlLCAqbmV3X2NydGNfc3RhdGUsICpzbGF2ZV9jcnRjX3N0YXRlLCAqbWFzdGVyX2NydGNfc3Rh
dGU7CgotOjI4MDogQ0hFQ0s6TVVMVElQTEVfQVNTSUdOTUVOVFM6IG11bHRpcGxlIGFzc2lnbm1l
bnRzIHNob3VsZCBiZSBhdm9pZGVkCiMyODA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jOjEzNjg4OgorCQkJc2xhdmUgPSBuZXdfY3J0Y19zdGF0ZS0+
Ymlnam9pbmVyX2xpbmtlZF9jcnRjID0KCi06MjkwOiBXQVJOSU5HOlVOTkVDRVNTQVJZX0VMU0U6
IGVsc2UgaXMgbm90IGdlbmVyYWxseSB1c2VmdWwgYWZ0ZXIgYSBicmVhayBvciByZXR1cm4KIzI5
MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTM2
OTg6CisJCQkJcmV0dXJuIC1FSU5WQUw7CisJCQl9IGVsc2UgewoKLTozNDg6IEVSUk9SOk9QRU5f
QlJBQ0U6IHRoYXQgb3BlbiBicmFjZSB7IHNob3VsZCBiZSBvbiB0aGUgcHJldmlvdXMgbGluZQoj
MzQ4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzox
MzkzMDoKKwlpZiAobmV3X2NydGNfc3RhdGUtPmJpZ2pvaW5lcikKKwkJey8qIE5vdCBzdXBwb3J0
ZWQgeWV0ICovfQoKdG90YWw6IDEgZXJyb3JzLCAyIHdhcm5pbmdzLCAzIGNoZWNrcywgMzkxIGxp
bmVzIGNoZWNrZWQKZmUxZDM4Y2M2YWM5IGRybS9pOTE1OiBFbmFibGUgYmlnIGpvaW5lciBzdXBw
b3J0IGluIGVuYWJsZSBhbmQgZGlzYWJsZSBzZXF1ZW5jZXMuCi06MTIxOiBXQVJOSU5HOkxPTkdf
TElORV9DT01NRU5UOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzEyMTogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYzo0MDg3OgorCQkgLyogT3VyIG93biB0
cmFuc2NvZGVyIG5lZWRzIHRvIGJlIGRpc2FibGVkIHdoZW4gcmVhZGluZyBpdCBpbiBpbnRlbF9k
ZGlfcmVhZF9mdW5jX2N0bCgpICovCgotOjEyMzogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3Zl
ciAxMDAgY2hhcmFjdGVycwojMTIzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jOjQwODk6CisJCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciA9IChlbnVt
IHRyYW5zY29kZXIpcGlwZV9jb25maWctPmJpZ2pvaW5lcl9saW5rZWRfY3J0Yy0+cGlwZTsKCi06
MjMxOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2gg
b3BlbiBwYXJlbnRoZXNpcwojMjMxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYzo2NTI3OgorCQkJSTkxNV9XUklURShQSVBFX01VTFQoY3B1X3RyYW5z
Y29kZXIpLAorCQkJCSAgcGlwZV9jb25maWctPnBpeGVsX211bHRpcGxpZXIgLSAxKTsKCi06MjM5
OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3Bl
biBwYXJlbnRoZXNpcwojMjM5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYzo2NTMxOgorCQkJaW50ZWxfY3B1X3RyYW5zY29kZXJfc2V0X21fbihwaXBl
X2NvbmZpZywKKwkJCQkJCSAgICAmcGlwZV9jb25maWctPmZkaV9tX24sIE5VTEwpOwoKLTozNDg6
IFdBUk5JTkc6QkxPQ0tfQ09NTUVOVF9TVFlMRTogQmxvY2sgY29tbWVudHMgc2hvdWxkIGFsaWdu
IHRoZSAqIG9uIGVhY2ggbGluZQojMzQ4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYzo4MzUzOgorCQkvKgorCQkgICogdHJhbnNjb2RlciBpcyBwcm9n
cmFtbWVkIHRvIHRoZSBmdWxsIG1vZGUsCgotOjU2NzogV0FSTklORzpTVVNQRUNUX0NPREVfSU5E
RU5UOiBzdXNwZWN0IGNvZGUgaW5kZW50IGZvciBjb25kaXRpb25hbCBzdGF0ZW1lbnRzICg4LCA4
KQojNTY3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YzoxMzA0NDoKKwlpZiAoIVBJUEVfQ09ORl9RVUlSSyhQSVBFX0NPTkZJR19RVUlSS19CSUdKT0lO
RVJfU0xBVkUpKSB7CiAJUElQRV9DT05GX0NIRUNLX1goZHBsbF9od19zdGF0ZS5kcGxsKTsKCi06
Nzc2OiBDSEVDSzpTUEFDSU5HOiBzcGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0ICc8PCcgKGN0
eDpWeFYpCiM3NzY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oOjc4OToKKyNkZWZpbmUgUElQRV9DT05GSUdfUVVJUktfQklHSk9JTkVSX1NM
QVZFCSgxPDwxKSAvKiBiaWdqb2luZXIgc2xhdmUsIHBhcnRpYWwgcmVhZG91dCAqLwogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAJICBeCgp0b3RhbDogMCBlcnJvcnMs
IDQgd2FybmluZ3MsIDMgY2hlY2tzLCA5MzQgbGluZXMgY2hlY2tlZAowMzM0YmQyMzI4MjMgZHJt
L2k5MTU6IE1ha2UgaGFyZHdhcmUgcmVhZG91dCB3b3JrIG9uIGk5MTUuCi06NzM6IFdBUk5JTkc6
TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzczOiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxMDAzODoKKwkJICAgIChJOTE1X1JF
QUQoUExBTkVfU1VSRihiaWdqb2luZXJfcGlwZSwgcGxhbmVfaWQpKSAmIDB4ZmZmZmYwMDApID09
IHBsYW5lX2NvbmZpZy0+YmFzZSkgewoKLTo3NDogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3Zl
ciAxMDAgY2hhcmFjdGVycwojNzQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jOjEwMDM5OgorCQkJdmFsID0gSTkxNV9SRUFEKFBMQU5FX1NJWkUoY3J0
Y19zdGF0ZS0+Ymlnam9pbmVyX2xpbmtlZF9jcnRjLT5waXBlLCBwbGFuZV9pZCkpOwoKLToxMDk6
IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzEwOTogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTcxNzM6CisJCQkJ
V0FSTl9PTihkcm1fYXRvbWljX3NldF9tb2RlX2Zvcl9jcnRjKGNydGMtPmJhc2Uuc3RhdGUsICZj
cnRjLT5iYXNlLm1vZGUpKTsKCi06MTM2OiBXQVJOSU5HOkJMT0NLX0NPTU1FTlRfU1RZTEU6IEJs
b2NrIGNvbW1lbnRzIHNob3VsZCBhbGlnbiB0aGUgKiBvbiBlYWNoIGxpbmUKIzEzNjogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTcyMzg6CisJCQkJ
LyoKKwkJCQkqIEZJWE1FIGRvbid0IGhhdmUgdGhlIGZiIHlldCwgc28gY2FuJ3QKCnRvdGFsOiAw
IGVycm9ycywgNCB3YXJuaW5ncywgMCBjaGVja3MsIDExOSBsaW5lcyBjaGVja2VkCjg3ZjA1M2Rk
OWQ3OCBkcm0vaTkxNTogUHJlcGFyZSB1cGRhdGVfc2xhdmUoKSBmb3IgYmlnam9pbmVyIHBsYW5l
IHVwZGF0ZXMKLToxMzg6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3Rl
cnMKIzEzODogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmM6MTQ4MDY6CisJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShpbnRlbF9zdGF0
ZSwgbmV3X3BsYW5lX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lKTsKCnRvdGFsOiAwIGVycm9y
cywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDMxOCBsaW5lcyBjaGVja2VkCjVjNDhmNzU0NzJiZCBk
cm0vaTkxNTogTGluayBwbGFuZXMgaW4gYSBiaWdqb2luZXIgY29uZmlndXJhdGlvbi4KLToyODog
RVJST1I6T1BFTl9CUkFDRTogb3BlbiBicmFjZSAneycgZm9sbG93aW5nIGZ1bmN0aW9uIGRlZmlu
aXRpb25zIGdvIG9uIHRoZSBuZXh0IGxpbmUKIzI4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jOjE4NToKK3N0cnVjdCBpbnRlbF9jcnRjICoK
K2ludGVsX3BsYW5lX2dldF9jcnRjX2Zyb21fc3RhdGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLAorCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFu
ZV9zdGF0ZSwKKwkJCQkgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVf
c3RhdGUpCisgIHsKCi06MzI6IFdBUk5JTkc6TEVBRElOR19TUEFDRTogcGxlYXNlLCBubyBzcGFj
ZXMgYXQgdGhlIHN0YXJ0IG9mIGEgbGluZQojMzI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmM6MTg5OgorICB7JAoKLToxNTc6IFdBUk5JTkc6
TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzE1NzogRklMRTogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTE4NzI6CisJCWZvcl9lYWNoX29s
ZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsIG9sZF9wbGFuZV9zdGF0ZSwg
bmV3X3BsYW5lX3N0YXRlLCBpKSB7Cgp0b3RhbDogMSBlcnJvcnMsIDIgd2FybmluZ3MsIDAgY2hl
Y2tzLCAyNDIgbGluZXMgY2hlY2tlZApkZmNiNTk3NDNhZDUgZHJtL2k5MTU6IFByb2dyYW0gcGxh
bmVzIGluIGJpZ2pvaW5lciBtb2RlLgotOjQ5OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVy
IDEwMCBjaGFyYWN0ZXJzCiM0OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuYzozOTU6CisJCQkJaW50ZWxfYXRvbWljX2dldF9uZXdfcGxhbmVf
c3RhdGUoc3RhdGUsIG5ld19wbGFuZV9zdGF0ZS0+Ymlnam9pbmVyX3BsYW5lKTsKCnRvdGFsOiAw
IGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDc3IGxpbmVzIGNoZWNrZWQKYTRjNTU1YThj
MTZjIGRybS9pOTE1OiBBZGQgaW50ZWxfdXBkYXRlX2JpZ2pvaW5lciBoYW5kbGluZy4KLTo1MTog
V0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojNTE6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE0MzMxOgorCQlkcm1f
Y2FsY190aW1lc3RhbXBpbmdfY29uc3RhbnRzKCZzbGF2ZS0+YmFzZSwgJm5ld19zbGF2ZV9jcnRj
X3N0YXRlLT5ody50cmFuc2NvZGVyX21vZGUpOwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdz
LCAwIGNoZWNrcywgMjIzIGxpbmVzIGNoZWNrZWQKZmRhNGU2NDVhMDVhIGRybS9pOTE1OiBEaXNh
YmxlIEZCQyBpbiBiaWdqb2luZXIgY29uZmlndXJhdGlvbi4KYjM4MDQ1Yzc0YjMyIGRybS9pOTE1
OiBQcmVwYXJlIGF0b21pYyBwbGFuZSBjaGVjayBmb3IgYmlnam9pbmVyIHBsYW5lcwotOjM1OiBD
SEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBw
YXJlbnRoZXNpcwojMzU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljLmM6MzAxOgorCWlmIChwbGFuZV9zdGF0ZSAmJiAocGxhbmVfc3RhdGUtPmxpbmtlZF9w
bGFuZSB8fAorCSAgICAgKCFwbGFuZV9zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlICYmIHBsYW5lX3N0
YXRlLT5iYXNlLmZiICYmCgotOjgyOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdu
bWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojODI6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmM6MTY0OgorCQkJaW50ZWxfYXRv
bWljX2dldF9vbGRfcGxhbmVfc3RhdGUoc3RhdGUsCisJCQkJCW9sZF9wbGFuZV9zdGF0ZS0+Ymln
am9pbmVyX3BsYW5lKTsKCi06ODc6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25t
ZW50IHNob3VsZCBtYXRjaCBvcGVuIHBhcmVudGhlc2lzCiM4NzogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYzoxNjk6CisJCQlpbnRlbF9hdG9t
aWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwKKwkJCQkJbmV3X3BsYW5lX3N0YXRlLT5iaWdq
b2luZXJfcGxhbmUpOwoKLToxMjQ6IENIRUNLOkxJTkVfU1BBQ0lORzogUGxlYXNlIGRvbid0IHVz
ZSBtdWx0aXBsZSBibGFuayBsaW5lcwojMTI0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jOjQ2MjoKIAorCgotOjM2MDogV0FSTklORzpMT05H
X0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMzYwOiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzozMzk0OgorCQlhdXhfb2Zmc2V0ID0gaW50
ZWxfcGxhbmVfYWRqdXN0X2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwgbWFzdGVyX3BsYW5lX3N0YXRl
LCBwbGFuZV9zdGF0ZSwgMSwKCi06Mzk0OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEw
MCBjaGFyYWN0ZXJzCiMzOTQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jOjM0NTI6CisJCW9mZnNldCA9IGludGVsX3BsYW5lX2FkanVzdF9hbGlnbmVk
X29mZnNldCgmeCwgJnksIG1hc3Rlcl9wbGFuZV9zdGF0ZSwgcGxhbmVfc3RhdGUsIDAsCgotOjQw
MzogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojNDAzOiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzozNDcwOgorCQkJ
b2Zmc2V0ID0gaW50ZWxfcGxhbmVfYWRqdXN0X2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwgbWFzdGVy
X3BsYW5lX3N0YXRlLCBwbGFuZV9zdGF0ZSwgMCwKCi06NDEyOiBXQVJOSU5HOkxPTkdfTElORTog
bGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM0MTI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjM0ODA6CisJCXdoaWxlICghc2tsX2NoZWNrX21haW5f
Y2NzX2Nvb3JkaW5hdGVzKG1hc3Rlcl9wbGFuZV9zdGF0ZSwgcGxhbmVfc3RhdGUsIHgsIHksIG9m
ZnNldCkpIHsKCi06NDE3OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0
ZXJzCiM0MTc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jOjM0ODQ6CisJCQlvZmZzZXQgPSBpbnRlbF9wbGFuZV9hZGp1c3RfYWxpZ25lZF9vZmZzZXQo
JngsICZ5LCBtYXN0ZXJfcGxhbmVfc3RhdGUsIHBsYW5lX3N0YXRlLCAwLAoKdG90YWw6IDAgZXJy
b3JzLCA1IHdhcm5pbmdzLCA0IGNoZWNrcywgOTU1IGxpbmVzIGNoZWNrZWQKMDBiZjc3YWZiZjFj
IGRybS9pOTE1OiBNYWtlIHByZXBhcmVfcGxhbmVfZmIoKSB3b3JrIHdpdGggYmlnam9pbmVyIHBs
YW5lcwotOjEzMzogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwoj
MTMzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzox
NTA1MDoKKwkJCWludGVsX2F0b21pY19nZXRfbmV3X3BsYW5lX3N0YXRlKHN0YXRlLCBuZXdfcGxh
bmVfc3RhdGUtPnBsYW5hcl9saW5rZWRfcGxhbmUpOwoKLToxNDI6IFdBUk5JTkc6TE9OR19MSU5F
OiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzE0MjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6MTUwNjU6CisJCW5ld19tYXN0ZXJfcGxhbmVfc3Rh
dGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwgbmV3X3BsYW5lX3N0
YXRlLT5iaWdqb2luZXJfcGxhbmUpOwoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCAwIGNo
ZWNrcywgMTY3IGxpbmVzIGNoZWNrZWQKMmY0ODFiMjFkMTllIGRybS9pOTE1OiBNYWtlIHN1cmUg
d2F0ZXJtYXJrcyB3b3JrIGNvcnJlY3RseSB3aXRoIGJpZ2pvaW5lciBhcyB3ZWxsLgotOjMyOiBD
SEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBw
YXJlbnRoZXNpcwojMzI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljLmM6MzAxOgorCWlmIChwbGFuZV9zdGF0ZSAmJiAocGxhbmVfc3RhdGUtPnBsYW5hcl9s
aW5rZWRfcGxhbmUgfHwKIAkgICAgICghcGxhbmVfc3RhdGUtPmJpZ2pvaW5lcl9zbGF2ZSAmJiBw
bGFuZV9zdGF0ZS0+YmFzZS5mYiAmJgoKLTo3MzogRVJST1I6Q09NUExFWF9NQUNSTzogTWFjcm9z
IHdpdGggY29tcGxleCB2YWx1ZXMgc2hvdWxkIGJlIGVuY2xvc2VkIGluIHBhcmVudGhlc2VzCiM3
MzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5Lmg6NDQz
OgorI2RlZmluZSBpbnRlbF9hdG9taWNfY3J0Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZSgg
XAorCQkgIHBsYW5lLCBtYXN0ZXJfcGxhbmVfc3RhdGUsIHBsYW5lX3N0YXRlLCBcCisJCSAgY3J0
Y19zdGF0ZSkgXAorCWZvcl9lYWNoX2ludGVsX3BsYW5lX21hc2soKChjcnRjX3N0YXRlKS0+dWFw
aS5zdGF0ZS0+ZGV2KSwgKHBsYW5lKSwgXAorCQkgICgoKGNydGNfc3RhdGUpLT5iaWdqb2luZXJf
c2xhdmUgPyBcCisJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKCBcCisJCQkJdG9f
aW50ZWxfYXRvbWljX3N0YXRlKChjcnRjX3N0YXRlKS0+dWFwaS5zdGF0ZSksIFwKKwkJCQkoY3J0
Y19zdGF0ZSktPmJpZ2pvaW5lcl9saW5rZWRfY3J0YykgOiBcCisJCQkJKGNydGNfc3RhdGUpKS0+
dWFwaS5wbGFuZV9tYXNrKSkgXAorCQlmb3JfZWFjaF9pZiAoKCgobWFzdGVyX3BsYW5lX3N0YXRl
KSA9IFwKKwkJCSAgICAgIHRvX2ludGVsX3BsYW5lX3N0YXRlKF9fZHJtX2F0b21pY19nZXRfY3Vy
cmVudF9wbGFuZV9zdGF0ZSgoY3J0Y19zdGF0ZSktPnVhcGkuc3RhdGUsICZwbGFuZS0+YmFzZSkp
KSwgXAorCQkJICAgICAgKChwbGFuZSkgPSAobWFzdGVyX3BsYW5lX3N0YXRlKS0+Ymlnam9pbmVy
X3NsYXZlID8gXAorCQkJCQkgKG1hc3Rlcl9wbGFuZV9zdGF0ZSktPmJpZ2pvaW5lcl9wbGFuZSA6
IFwKKwkJCQkJIChwbGFuZSkpLCBcCisJCQkgICAgICAoKHBsYW5lX3N0YXRlKSA9IChtYXN0ZXJf
cGxhbmVfc3RhdGUpLT5iaWdqb2luZXJfc2xhdmUgPyBcCisJCQkJdG9faW50ZWxfcGxhbmVfc3Rh
dGUoX19kcm1fYXRvbWljX2dldF9jdXJyZW50X3BsYW5lX3N0YXRlKChjcnRjX3N0YXRlKS0+dWFw
aS5zdGF0ZSwgJnBsYW5lLT5iYXNlKSkgOiBcCisJCQkJICAobWFzdGVyX3BsYW5lX3N0YXRlKSkp
KQoKLTo3MzogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAncGxh
bmUnIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojNzM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oOjQ0MzoKKyNkZWZpbmUgaW50ZWxfYXRvbWljX2Ny
dGNfc3RhdGVfZm9yX2VhY2hfcGxhbmVfc3RhdGUoIFwKKwkJICBwbGFuZSwgbWFzdGVyX3BsYW5l
X3N0YXRlLCBwbGFuZV9zdGF0ZSwgXAorCQkgIGNydGNfc3RhdGUpIFwKKwlmb3JfZWFjaF9pbnRl
bF9wbGFuZV9tYXNrKCgoY3J0Y19zdGF0ZSktPnVhcGkuc3RhdGUtPmRldiksIChwbGFuZSksIFwK
KwkJICAoKChjcnRjX3N0YXRlKS0+Ymlnam9pbmVyX3NsYXZlID8gXAorCQkJaW50ZWxfYXRvbWlj
X2dldF9uZXdfY3J0Y19zdGF0ZSggXAorCQkJCXRvX2ludGVsX2F0b21pY19zdGF0ZSgoY3J0Y19z
dGF0ZSktPnVhcGkuc3RhdGUpLCBcCisJCQkJKGNydGNfc3RhdGUpLT5iaWdqb2luZXJfbGlua2Vk
X2NydGMpIDogXAorCQkJCShjcnRjX3N0YXRlKSktPnVhcGkucGxhbmVfbWFzaykpIFwKKwkJZm9y
X2VhY2hfaWYgKCgoKG1hc3Rlcl9wbGFuZV9zdGF0ZSkgPSBcCisJCQkgICAgICB0b19pbnRlbF9w
bGFuZV9zdGF0ZShfX2RybV9hdG9taWNfZ2V0X2N1cnJlbnRfcGxhbmVfc3RhdGUoKGNydGNfc3Rh
dGUpLT51YXBpLnN0YXRlLCAmcGxhbmUtPmJhc2UpKSksIFwKKwkJCSAgICAgICgocGxhbmUpID0g
KG1hc3Rlcl9wbGFuZV9zdGF0ZSktPmJpZ2pvaW5lcl9zbGF2ZSA/IFwKKwkJCQkJIChtYXN0ZXJf
cGxhbmVfc3RhdGUpLT5iaWdqb2luZXJfcGxhbmUgOiBcCisJCQkJCSAocGxhbmUpKSwgXAorCQkJ
ICAgICAgKChwbGFuZV9zdGF0ZSkgPSAobWFzdGVyX3BsYW5lX3N0YXRlKS0+Ymlnam9pbmVyX3Ns
YXZlID8gXAorCQkJCXRvX2ludGVsX3BsYW5lX3N0YXRlKF9fZHJtX2F0b21pY19nZXRfY3VycmVu
dF9wbGFuZV9zdGF0ZSgoY3J0Y19zdGF0ZSktPnVhcGkuc3RhdGUsICZwbGFuZS0+YmFzZSkpIDog
XAorCQkJCSAgKG1hc3Rlcl9wbGFuZV9zdGF0ZSkpKSkKCi06NzM6IENIRUNLOk1BQ1JPX0FSR19S
RVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ21hc3Rlcl9wbGFuZV9zdGF0ZScgLSBwb3NzaWJs
ZSBzaWRlLWVmZmVjdHM/CiM3MzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5Lmg6NDQzOgorI2RlZmluZSBpbnRlbF9hdG9taWNfY3J0Y19zdGF0ZV9mb3Jf
ZWFjaF9wbGFuZV9zdGF0ZSggXAorCQkgIHBsYW5lLCBtYXN0ZXJfcGxhbmVfc3RhdGUsIHBsYW5l
X3N0YXRlLCBcCisJCSAgY3J0Y19zdGF0ZSkgXAorCWZvcl9lYWNoX2ludGVsX3BsYW5lX21hc2so
KChjcnRjX3N0YXRlKS0+dWFwaS5zdGF0ZS0+ZGV2KSwgKHBsYW5lKSwgXAorCQkgICgoKGNydGNf
c3RhdGUpLT5iaWdqb2luZXJfc2xhdmUgPyBcCisJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRj
X3N0YXRlKCBcCisJCQkJdG9faW50ZWxfYXRvbWljX3N0YXRlKChjcnRjX3N0YXRlKS0+dWFwaS5z
dGF0ZSksIFwKKwkJCQkoY3J0Y19zdGF0ZSktPmJpZ2pvaW5lcl9saW5rZWRfY3J0YykgOiBcCisJ
CQkJKGNydGNfc3RhdGUpKS0+dWFwaS5wbGFuZV9tYXNrKSkgXAorCQlmb3JfZWFjaF9pZiAoKCgo
bWFzdGVyX3BsYW5lX3N0YXRlKSA9IFwKKwkJCSAgICAgIHRvX2ludGVsX3BsYW5lX3N0YXRlKF9f
ZHJtX2F0b21pY19nZXRfY3VycmVudF9wbGFuZV9zdGF0ZSgoY3J0Y19zdGF0ZSktPnVhcGkuc3Rh
dGUsICZwbGFuZS0+YmFzZSkpKSwgXAorCQkJICAgICAgKChwbGFuZSkgPSAobWFzdGVyX3BsYW5l
X3N0YXRlKS0+Ymlnam9pbmVyX3NsYXZlID8gXAorCQkJCQkgKG1hc3Rlcl9wbGFuZV9zdGF0ZSkt
PmJpZ2pvaW5lcl9wbGFuZSA6IFwKKwkJCQkJIChwbGFuZSkpLCBcCisJCQkgICAgICAoKHBsYW5l
X3N0YXRlKSA9IChtYXN0ZXJfcGxhbmVfc3RhdGUpLT5iaWdqb2luZXJfc2xhdmUgPyBcCisJCQkJ
dG9faW50ZWxfcGxhbmVfc3RhdGUoX19kcm1fYXRvbWljX2dldF9jdXJyZW50X3BsYW5lX3N0YXRl
KChjcnRjX3N0YXRlKS0+dWFwaS5zdGF0ZSwgJnBsYW5lLT5iYXNlKSkgOiBcCisJCQkJICAobWFz
dGVyX3BsYW5lX3N0YXRlKSkpKQoKLTo3MzogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBh
cmd1bWVudCByZXVzZSAnY3J0Y19zdGF0ZScgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM3Mzog
RklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5Lmg6NDQzOgor
I2RlZmluZSBpbnRlbF9hdG9taWNfY3J0Y19zdGF0ZV9mb3JfZWFjaF9wbGFuZV9zdGF0ZSggXAor
CQkgIHBsYW5lLCBtYXN0ZXJfcGxhbmVfc3RhdGUsIHBsYW5lX3N0YXRlLCBcCisJCSAgY3J0Y19z
dGF0ZSkgXAorCWZvcl9lYWNoX2ludGVsX3BsYW5lX21hc2soKChjcnRjX3N0YXRlKS0+dWFwaS5z
dGF0ZS0+ZGV2KSwgKHBsYW5lKSwgXAorCQkgICgoKGNydGNfc3RhdGUpLT5iaWdqb2luZXJfc2xh
dmUgPyBcCisJCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKCBcCisJCQkJdG9faW50
ZWxfYXRvbWljX3N0YXRlKChjcnRjX3N0YXRlKS0+dWFwaS5zdGF0ZSksIFwKKwkJCQkoY3J0Y19z
dGF0ZSktPmJpZ2pvaW5lcl9saW5rZWRfY3J0YykgOiBcCisJCQkJKGNydGNfc3RhdGUpKS0+dWFw
aS5wbGFuZV9tYXNrKSkgXAorCQlmb3JfZWFjaF9pZiAoKCgobWFzdGVyX3BsYW5lX3N0YXRlKSA9
IFwKKwkJCSAgICAgIHRvX2ludGVsX3BsYW5lX3N0YXRlKF9fZHJtX2F0b21pY19nZXRfY3VycmVu
dF9wbGFuZV9zdGF0ZSgoY3J0Y19zdGF0ZSktPnVhcGkuc3RhdGUsICZwbGFuZS0+YmFzZSkpKSwg
XAorCQkJICAgICAgKChwbGFuZSkgPSAobWFzdGVyX3BsYW5lX3N0YXRlKS0+Ymlnam9pbmVyX3Ns
YXZlID8gXAorCQkJCQkgKG1hc3Rlcl9wbGFuZV9zdGF0ZSktPmJpZ2pvaW5lcl9wbGFuZSA6IFwK
KwkJCQkJIChwbGFuZSkpLCBcCisJCQkgICAgICAoKHBsYW5lX3N0YXRlKSA9IChtYXN0ZXJfcGxh
bmVfc3RhdGUpLT5iaWdqb2luZXJfc2xhdmUgPyBcCisJCQkJdG9faW50ZWxfcGxhbmVfc3RhdGUo
X19kcm1fYXRvbWljX2dldF9jdXJyZW50X3BsYW5lX3N0YXRlKChjcnRjX3N0YXRlKS0+dWFwaS5z
dGF0ZSwgJnBsYW5lLT5iYXNlKSkgOiBcCisJCQkJICAobWFzdGVyX3BsYW5lX3N0YXRlKSkpKQoK
LTo4MjogV0FSTklORzpTUEFDSU5HOiBzcGFjZSBwcm9oaWJpdGVkIGJldHdlZW4gZnVuY3Rpb24g
bmFtZSBhbmQgb3BlbiBwYXJlbnRoZXNpcyAnKCcKIzgyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaDo0NTI6CisJCWZvcl9lYWNoX2lmICgoKChtYXN0
ZXJfcGxhbmVfc3RhdGUpID0gXAoKLTo4MzogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAx
MDAgY2hhcmFjdGVycwojODM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5oOjQ1MzoKKwkJCSAgICAgIHRvX2ludGVsX3BsYW5lX3N0YXRlKF9fZHJtX2F0
b21pY19nZXRfY3VycmVudF9wbGFuZV9zdGF0ZSgoY3J0Y19zdGF0ZSktPnVhcGkuc3RhdGUsICZw
bGFuZS0+YmFzZSkpKSwgXAoKLTo4ODogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAg
Y2hhcmFjdGVycwojODg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oOjQ1ODoKKwkJCQl0b19pbnRlbF9wbGFuZV9zdGF0ZShfX2RybV9hdG9taWNfZ2V0
X2N1cnJlbnRfcGxhbmVfc3RhdGUoKGNydGNfc3RhdGUpLT51YXBpLnN0YXRlLCAmcGxhbmUtPmJh
c2UpKSA6IFwKCi06MTE2OiBDSEVDSzpDT01QQVJJU09OX1RPX05VTEw6IENvbXBhcmlzb24gdG8g
TlVMTCBjb3VsZCBiZSB3cml0dGVuICJtYXN0ZXJfcGxhbmVfc3RhdGUtPmJhc2UuZmIiCiMxMTY6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmM6ODM1OgorCQlyZXR1cm4gbWFz
dGVyX3BsYW5lX3N0YXRlLT5iYXNlLmZiICE9IE5VTEw7CgotOjQwODogV0FSTklORzpUQUJTVE9Q
OiBTdGF0ZW1lbnRzIHNob3VsZCBzdGFydCBvbiBhIHRhYnN0b3AKIzQwODogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzo0MzMzOgorCQkgIH0KCi06NDY2OiBXQVJOSU5HOkxP
TkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM0NjY6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmM6NDc2MzoKKwkJCQkgICAgIHNrbF9hZGp1c3RlZF9wbGFuZV9w
aXhlbF9yYXRlKGNydGNfc3RhdGUsIG1hc3Rlcl9wbGFuZV9zdGF0ZSwgcGxhbmVfc3RhdGUpLAoK
dG90YWw6IDEgZXJyb3JzLCA1IHdhcm5pbmdzLCA1IGNoZWNrcywgNTIyIGxpbmVzIGNoZWNrZWQK
Njg0MWI4ZTM4MWE3IGRybS9pOTE1OiBBZGQgZGVidWdmcyBkdW1waW5nIGZvciBiaWdqb2luZXIu
Ci06NTI6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzUyOiBG
SUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYzoyNjgyOgorCQlzZXFfcHJp
bnRmKG0sICJcdC0tUGxhbmUgaWQgJWQ6IHR5cGU9JXMsICVzY2xpcHBlZCBjcnRjPSJEUk1fUkVD
VF9GTVQiLCBjbGlwcGVkIHNyYz0iRFJNX1JFQ1RfRlBfRk1UIiwgZm9ybWF0PSVzLCByb3RhdGlv
bj0lc1xuIiwKCi06NTI6IENIRUNLOkNPTkNBVEVOQVRFRF9TVFJJTkc6IENvbmNhdGVuYXRlZCBz
dHJpbmdzIHNob3VsZCB1c2Ugc3BhY2VzIGJldHdlZW4gZWxlbWVudHMKIzUyOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYzoyNjgyOgorCQlzZXFfcHJpbnRmKG0sICJc
dC0tUGxhbmUgaWQgJWQ6IHR5cGU9JXMsICVzY2xpcHBlZCBjcnRjPSJEUk1fUkVDVF9GTVQiLCBj
bGlwcGVkIHNyYz0iRFJNX1JFQ1RfRlBfRk1UIiwgZm9ybWF0PSVzLCByb3RhdGlvbj0lc1xuIiwK
CnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMSBjaGVja3MsIDY1IGxpbmVzIGNoZWNrZWQK
NGZjOGQ2OTE3ZDk2IEhBWCB0byBtYWtlIGl0IHdvcmsgb24gdGhlIGljZWxha2UgdGVzdCBzeXN0
ZW0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

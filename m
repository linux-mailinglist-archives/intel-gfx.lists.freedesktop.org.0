Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B9CB097C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 09:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E63F6EBFF;
	Thu, 12 Sep 2019 07:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 651D889F75;
 Thu, 12 Sep 2019 07:29:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FC35A363B;
 Thu, 12 Sep 2019 07:29:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 12 Sep 2019 07:29:40 -0000
Message-ID: <20190912072940.12408.18652@emeril.freedesktop.org>
References: <20190912011016.8353-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190912011016.8353-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/4=5D_drm/i915/tgl=3A_Add_missing_d?=
 =?utf-8?q?di_clock_select_during_DP_init_sequence?=
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
ZHJtL2k5MTUvdGdsOiBBZGQgbWlzc2luZyBkZGkgY2xvY2sgc2VsZWN0IGR1cmluZyBEUCBpbml0
IHNlcXVlbmNlClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82NjU1Ni8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCjVmZGU0NzFjMTc4NCBkcm0vaTkxNS90Z2w6IEFkZCBtaXNzaW5nIGRk
aSBjbG9jayBzZWxlY3QgZHVyaW5nIERQIGluaXQgc2VxdWVuY2UKODgzNTI5ZTZmZmU5IGRybS9p
OTE1L3RnbDogVEMgaGVscGVyIGZ1bmN0aW9uIHRvIHJldHVybiBwaW4gbWFwcGluZwphZjU2YjU1
N2ZjYjYgZHJtL2k5MTUvdGdsOiBGaW5pc2ggbW9kdWxhciBGSUEgc3VwcG9ydCBvbiByZWdpc3Rl
cnMKLToyNDI6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzI0
MjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDoyMTY4OgorI2RlZmluZSBf
VENfTU9EX1BPUlRfSUQoaGFzX21vZHVsYXJfZmlhLCB0Y19wb3J0KQkoKGhhc19tb2R1bGFyX2Zp
YSkgPyAodGNfcG9ydCkgJSAyIDogKHRjX3BvcnQpKQoKLToyNDI6IENIRUNLOk1BQ1JPX0FSR19S
RVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ3RjX3BvcnQnIC0gcG9zc2libGUgc2lkZS1lZmZl
Y3RzPwojMjQyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjIxNjg6Cisj
ZGVmaW5lIF9UQ19NT0RfUE9SVF9JRChoYXNfbW9kdWxhcl9maWEsIHRjX3BvcnQpCSgoaGFzX21v
ZHVsYXJfZmlhKSA/ICh0Y19wb3J0KSAlIDIgOiAodGNfcG9ydCkpCgotOjI1MjogV0FSTklORzpM
T05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMjUyOiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oOjIxNzE6CisjZGVmaW5lICAgREZMRVhEUE1MRTFfRFBNTEVU
Q19NQVNLKG1vZCwgdGNfcG9ydCkJKDB4ZiA8PCAoNCAqIChfVENfTU9EX1BPUlRfSUQobW9kLCB0
Y19wb3J0KSkpKQoKLToyNTY6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJh
Y3RlcnMKIzI1NjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDoyMTc1Ogor
I2RlZmluZSAgIERGTEVYRFBNTEUxX0RQTUxFVENfTUwzXzIobW9kLCB0Y19wb3J0KQkoMTIgPDwg
KDQgKiAoX1RDX01PRF9QT1JUX0lEKG1vZCwgdGNfcG9ydCkpKSkKCi06MjU3OiBXQVJOSU5HOkxP
TkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMyNTc6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmg6MjE3NjoKKyNkZWZpbmUgICBERkxFWERQTUxFMV9EUE1MRVRD
X01MM18wKG1vZCwgdGNfcG9ydCkJKDE1IDw8ICg0ICogKF9UQ19NT0RfUE9SVF9JRChtb2QsIHRj
X3BvcnQpKSkpCgotOjI3NDogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFj
dGVycwojMjc0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oOjExNjc1Ogor
I2RlZmluZSAgIFRDX0xJVkVfU1RBVEVfVEJUKG1vZCwgdGNfcG9ydCkJCSgxIDw8ICgoX1RDX01P
RF9QT1JUX0lEKG1vZCwgdGNfcG9ydCkpICogOCArIDYpKQoKLToyNzU6IFdBUk5JTkc6TE9OR19M
SU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzI3NTogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaDoxMTY3NjoKKyNkZWZpbmUgICBUQ19MSVZFX1NUQVRFX1RDKG1vZCwg
dGNfcG9ydCkJCSgxIDw8ICgoX1RDX01PRF9QT1JUX0lEKG1vZCwgdGNfcG9ydCkpICogOCArIDUp
KQoKLToyNzc6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzI3
NzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDoxMTY3ODoKKyNkZWZpbmUg
ICBEUF9MQU5FX0FTU0lHTk1FTlRfTUFTSyhtb2QsIHRjX3BvcnQpCQkoMHhmIDw8ICgoX1RDX01P
RF9QT1JUX0lEKG1vZCwgdGNfcG9ydCkpICogOCkpCgotOjI3ODogV0FSTklORzpMT05HX0xJTkU6
IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMjc4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oOjExNjc5OgorI2RlZmluZSAgIERQX0xBTkVfQVNTSUdOTUVOVChtb2QsIHRj
X3BvcnQsIHgpCQkoKHgpIDw8ICgoX1RDX01PRF9QT1JUX0lEKG1vZCwgdGNfcG9ydCkpICogOCkp
Cgp0b3RhbDogMCBlcnJvcnMsIDggd2FybmluZ3MsIDEgY2hlY2tzLCAyNDMgbGluZXMgY2hlY2tl
ZAo4OTFiYmFhYzk0YmMgZHJtL2k5MTUvdGdsOiBGaXggZHJpdmVyIGNyYXNoIHdoZW4gdXBkYXRl
X2FjdGl2ZV9kcGxsIGlzIGNhbGxlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4

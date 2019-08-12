Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3508A066
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 16:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2EB6E532;
	Mon, 12 Aug 2019 14:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EBAE6E52E;
 Mon, 12 Aug 2019 14:11:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85CF2A41FB;
 Mon, 12 Aug 2019 14:11:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 14:11:15 -0000
Message-ID: <20190812141115.20590.68014@emeril.freedesktop.org>
References: <20190812133915.18824-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190812133915.18824-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/18=5D_drm/i915/guc=3A_Use_a_local?=
 =?utf-8?q?_cancel=5Fport=5Frequests?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzE4
XSBkcm0vaTkxNS9ndWM6IFVzZSBhIGxvY2FsIGNhbmNlbF9wb3J0X3JlcXVlc3RzClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTA4OS8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjNk
NmRhNWJhZjczNyBkcm0vaTkxNS9ndWM6IFVzZSBhIGxvY2FsIGNhbmNlbF9wb3J0X3JlcXVlc3Rz
CjFmMDYyMWMxMmEyNSBkcm0vaTkxNTogUHVzaCB0aGUgd2FrZXJlZi0+Y291bnQgZGVmZXJyYWwg
dG8gdGhlIGJhY2tlbmQKNTFlMDhmNjZjYzBmIGRybS9pOTE1L2d0OiBTYXZlL3Jlc3RvcmUgaW50
ZXJydXB0cyBhcm91bmQgYnJlYWRjcnVtYiBkaXNhYmxlCjg4YjBlNmUwMjA0NCBkcm0vaTkxNS9l
eGVjbGlzdHM6IExpZnQgcHJvY2Vzc19jc2IoKSBvdXQgb2YgdGhlIGlycS1vZmYgc3BpbmxvY2sK
YzIxZjNkNjEyZDgwIGRybS9pOTE1L2d0OiBUcmFjayB0aW1lbGluZSBhY3RpdmVuZXNzIGluIGVu
dGVyL2V4aXQKMDVhYTBlNzRhODk5IGRybS9pOTE1L2d0OiBDb252ZXJ0IHRpbWVsaW5lIHRyYWNr
aW5nIHRvIHNwaW5sb2NrCjkzZTgzYmIwNGNiZSBkcm0vaTkxNS9ndDogR3VhcmQgdGltZWxpbmUg
cGlubmluZyB3aXRoIGl0cyBvd24gbXV0ZXgKMGZhNjk2NDUwNTdkIGRybS9pOTE1OiBQcm90ZWN0
IHJlcXVlc3QgcmV0aXJlbWVudCB3aXRoIHRpbWVsaW5lLT5tdXRleAo2YzhkOWIzMTRhMWEgZHJt
L2k5MTUvZ3Q6IE1hcmsgY29udGV4dC0+YWN0aXZlX2NvdW50IGFzIHByb3RlY3RlZCBieSB0aW1l
bGluZS0+bXV0ZXgKYTU1YWU4YzU2MGZiIGRybS9pOTE1OiBGb3JnbyBsYXN0X2ZlbmNlIGFjdGl2
ZSByZXF1ZXN0IHRyYWNraW5nCjExY2RlYjBhYzgzYyBkcm0vaTkxNS9vdmVybGF5OiBTd2l0Y2gg
dG8gdXNpbmcgaTkxNV9hY3RpdmUgdHJhY2tpbmcKNWVmYWRhMzcwYmJiIGRybS9pOTE1OiBFeHRy
YWN0IGludGVsX2Zyb250YnVmZmVyIGFjdGl2ZSB0cmFja2luZwowMWU0NjBhZGNjNDEgZHJtL2k5
MTU6IE1hcmt1cCBleHBlY3RlZCB0aW1lbGluZSBsb2NrcyBmb3IgaTkxNV9hY3RpdmUKLToyOTA6
IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHN0cnVjdCBtdXRleCBkZWZpbml0aW9uIHdp
dGhvdXQgY29tbWVudAojMjkwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2
ZV90eXBlcy5oOjI4OgorCXN0cnVjdCBtdXRleCAqbG9jazsKCnRvdGFsOiAwIGVycm9ycywgMCB3
YXJuaW5ncywgMSBjaGVja3MsIDI0MiBsaW5lcyBjaGVja2VkCjY1ODU4YTY3ZTUzZCBkcm0vaTkx
NTogUmVtb3ZlIGxvZ2ljYWwgSFcgSUQKYzMwYjRiOGJhZjhjIGRybS9pOTE1OiBNb3ZlIGNvbnRl
eHQgbWFuYWdlbWVudCB1bmRlciBHRU0KLTo0MTE6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJ
T046IHN0cnVjdCBtdXRleCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojNDExOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oOjE3Njg6CisJCQlzdHJ1Y3QgbXV0ZXggbXV0
ZXg7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCA1NDcgbGluZXMgY2hl
Y2tlZAowNmJlMWVkMzE3ZTkgZHJtL2k5MTUvcG11OiBVc2UgR1QgcGFya2VkIGZvciBlc3RpbWF0
aW5nIFJDNiB3aGlsZSBhc2xlZXAKNzU1ZjQwMWRmYTMwIGRybS9pOTE1OiBEcm9wIEdFTSBjb250
ZXh0IGFzIGEgZGlyZWN0IGxpbmsgZnJvbSBpOTE1X3JlcXVlc3QKY2Y3MGNkNjA4ZmVmIGRybS9p
OTE1OiBQdXNoIHRoZSB1c2Utc2VtYXBob3JlIG1hcmtlciBvbnRvIHRoZSBpbnRlbF9jb250ZXh0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

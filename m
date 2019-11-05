Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 806DEEFA4F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 11:00:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D0A8921C;
	Tue,  5 Nov 2019 10:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6ADD89180;
 Tue,  5 Nov 2019 10:00:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AF60CA0003;
 Tue,  5 Nov 2019 10:00:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 Nov 2019 10:00:16 -0000
Message-ID: <157294801669.20547.11929910174998750592@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191105092115.11451-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191105092115.11451-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/10=5D_drm/i915=3A_Use_a_ctor_for_?=
 =?utf-8?q?TYPESAFE=5FBY=5FRCU_i915=5Frequest?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEw
XSBkcm0vaTkxNTogVXNlIGEgY3RvciBmb3IgVFlQRVNBRkVfQllfUkNVIGk5MTVfcmVxdWVzdApV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjg5NzUvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJt
LXRpcAo1M2M0MjBkZDUzZmEgZHJtL2k5MTU6IFVzZSBhIGN0b3IgZm9yIFRZUEVTQUZFX0JZX1JD
VSBpOTE1X3JlcXVlc3QKZTNjODBiMzk4MDk5IGRybS9pOTE1L3NlbGZ0ZXN0czogUGVyZm9ybSBz
b21lIGJhc2ljIGN5Y2xlIGNvdW50aW5nIG9mIE1JIG9wcwotOjQ0ODogV0FSTklORzpGSUxFX1BB
VEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJ
TkVSUyBuZWVkIHVwZGF0aW5nPwojNDQ4OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06NDg3OiBF
UlJPUjpCUkFDS0VUX1NQQUNFOiBzcGFjZSBwcm9oaWJpdGVkIGJlZm9yZSBvcGVuIHNxdWFyZSBi
cmFja2V0ICdbJwojNDg3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9zZWxmdGVzdC5jOjg3OgorI2RlZmluZSBzZWxmdGVzdChuLCBmKSBbcGVyZl8jI25dID0geyAu
bmFtZSA9ICNuLCB7IC5saXZlID0gZiB9IH0sCgotOjQ5MTogQ0hFQ0s6TElORV9TUEFDSU5HOiBQ
bGVhc2UgdXNlIGEgYmxhbmsgbGluZSBhZnRlciBmdW5jdGlvbi9zdHJ1Y3QvdW5pb24vZW51bSBk
ZWNsYXJhdGlvbnMKIzQ5MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfc2VsZnRlc3QuYzo5MToKK307CisjdW5kZWYgc2VsZnRlc3QKCi06NTAyOiBXQVJOSU5HOlRS
QUlMSU5HX1NFTUlDT0xPTjogbWFjcm9zIHNob3VsZCBub3QgdXNlIGEgdHJhaWxpbmcgc2VtaWNv
bG9uCiM1MDI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0
ZXN0LmM6MTEwOgorI2RlZmluZSBzZWxmdGVzdF8wKG4sIGZ1bmMsIGlkKSBcCittb2R1bGVfcGFy
YW1fbmFtZWQoaWQsIHBlcmZfc2VsZnRlc3RzW3BlcmZfIyNuXS5lbmFibGVkLCBib29sLCAwNDAw
KTsKCnRvdGFsOiAxIGVycm9ycywgMiB3YXJuaW5ncywgMSBjaGVja3MsIDQ5MiBsaW5lcyBjaGVj
a2VkCjI5ZmU3ZjllZGRmOCBkcm0vaTkxNS9zZWxmdGVzdHM6IE1vY2sgdGhlIGVuZ2luZSBzb3J0
aW5nIGZvciBlYXN5IHZhbGlkYXRpb24KLToyNzogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzog
YWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVw
ZGF0aW5nPwojMjc6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLTozMjogV0FSTklORzpTUERYX0xJ
Q0VOU0VfVEFHOiBNaXNzaW5nIG9yIG1hbGZvcm1lZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0
YWcgaW4gbGluZSAxCiMzMjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
ZW5naW5lX3VzZXIuYzoxOgorLyoKCi06MzM6IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlz
cGxhY2VkIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRhZyAtIHVzZSBsaW5lIDEgaW5zdGVhZAoj
MzM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV91c2VyLmM6
MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCnRvdGFsOiAwIGVycm9ycywgMyB3
YXJuaW5ncywgMCBjaGVja3MsIDEwMiBsaW5lcyBjaGVja2VkCjQ4ZTFjZDAxMjM2NSBkcm0vaTkx
NTogRHJvcCBHRU0gY29udGV4dCBhcyBhIGRpcmVjdCBsaW5rIGZyb20gaTkxNV9yZXF1ZXN0Cjdm
N2U5NzE2MDY0ZCBkcm0vaTkxNTogUHVzaCB0aGUgdXNlLXNlbWFwaG9yZSBtYXJrZXIgb250byB0
aGUgaW50ZWxfY29udGV4dAplNDU1NTY5ZWQ5NmYgZHJtL2k5MTU6IFJlbW92ZSBpOTE1LT5rZXJu
ZWxfY29udGV4dAphYjU0MDNlZGYyZDIgZHJtL2k5MTU6IE1vdmUgaTkxNV9nZW1faW5pdF9jb250
ZXh0cygpIGVhcmxpZXIKNjhjYWY3NDc5ODZhIGRybS9pOTE1L2d0OiBEZWZlciBlbmdpbmUgcmVn
aXN0cmF0aW9uIHVudGlsIGZ1bGx5IGluaXRpYWxpc2VkCmUyOTgwN2M0NmI2ZiBkcm0vaTkxNS9n
dDogUHVsbCBHVCBpbml0aWFsaXNhdGlvbiB1bmRlciBpbnRlbF9ndF9pbml0KCkKMzZlM2ZiZTRk
NTdlIGRybS9pOTE1L2d0OiBNZXJnZSBlbmdpbmUgaW5pdC9zZXR1cCBsb29wcwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E1910EE2F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 18:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E196E27F;
	Mon,  2 Dec 2019 17:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AA686E27F;
 Mon,  2 Dec 2019 17:29:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9177BA00E9;
 Mon,  2 Dec 2019 17:29:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 02 Dec 2019 17:29:25 -0000
Message-ID: <157530776559.1066.692879343383942125@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1575302334.git.jani.nikula@intel.com>
In-Reply-To: <cover.1575302334.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_add_display_uncore_helpers?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IGFkZCBkaXNwbGF5IHVuY29y
ZSBoZWxwZXJzClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy83MDI5OC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCmFhNjIxMzdiMzIwMCBkcm0vaTkxNS9ndnQ6IHVzZSBpbnRlbCB1bmNv
cmUgZnVuY3Rpb25zIGZvciBmb3JjZXdha2UgcmVnaXN0ZXIgYWNjZXNzCi06NjY6IEVSUk9SOkNP
REVfSU5ERU5UOiBjb2RlIGluZGVudCBzaG91bGQgdXNlIHRhYnMgd2hlcmUgcG9zc2libGUKIzY2
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvbW1pb19jb250ZXh0LmM6NDk5OgorXkle
SV5JXkleSV5JXkleSSAgICAgICAgICAgbW1pby0+cmVnKTskCgotOjY2OiBDSEVDSzpQQVJFTlRI
RVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwoj
NjY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9tbWlvX2NvbnRleHQuYzo0OTk6CisJ
CQl2Z3B1X3ZyZWdfdChwcmUsIG1taW8tPnJlZykgPSBpbnRlbF91bmNvcmVfcmVhZF9mdygmZGV2
X3ByaXYtPnVuY29yZSwKKwkJCQkJCQkJICAgICAgICAgICBtbWlvLT5yZWcpOwoKLTo3MzogQ0hF
Q0s6TVVMVElQTEVfQVNTSUdOTUVOVFM6IG11bHRpcGxlIGFzc2lnbm1lbnRzIHNob3VsZCBiZSBh
dm9pZGVkCiM3MzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L21taW9fY29udGV4dC5j
OjUwNToKKwkJCW9sZF92ID0gbW1pby0+dmFsdWUgPSBpbnRlbF91bmNvcmVfcmVhZF9mdygmZGV2
X3ByaXYtPnVuY29yZSwKCnRvdGFsOiAxIGVycm9ycywgMCB3YXJuaW5ncywgMiBjaGVja3MsIDc3
IGxpbmVzIGNoZWNrZWQKNzI2Y2Y4Nzc2YmFkIGRybS9pOTE1L2RlYnVnZnM6IHVzZSBpbnRlbCB1
bmNvcmUgZnVuY3Rpb25zIGZvciBmb3JjZXdha2UgcmVnaXN0ZXIgYWNjZXNzCjMzYzczYzI3MDgw
MiBkcm0vaTkxNS9kbWM6IHVzZSBpbnRlbCB1bmNvcmUgZnVuY3Rpb25zIGZvciBmb3JjZXdha2Ug
cmVnaXN0ZXIgYWNjZXNzCmU2ZDNiZTFiMjIyMSBkcm0vaTkxNTogYWRkIGRpc3BsYXkgZW5naW5l
IHVuY29yZSBoZWxwZXJzCi06MzQ6IFdBUk5JTkc6RklMRV9QQVRIX0NIQU5HRVM6IGFkZGVkLCBt
b3ZlZCBvciBkZWxldGVkIGZpbGUocyksIGRvZXMgTUFJTlRBSU5FUlMgbmVlZCB1cGRhdGluZz8K
IzM0OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywg
MCBjaGVja3MsIDk5IGxpbmVzIGNoZWNrZWQKYmMyNGZmMTA0YzZhIGRybS9pOTE1L2Rpc3BsYXk6
IHVzZSBpbnRlbCBkZSBmdW5jdGlvbnMgZm9yIGZvcmNld2FrZSByZWdpc3RlciBhY2Nlc3MKOWFm
Nzc3NDA0YWNjIGRybS9pOTE1L2lycTogdXNlIGludGVsIGRlIGZ1bmN0aW9ucyBmb3IgZm9yY2V3
YWtlIHJlZ2lzdGVyIGFjY2VzcwotOjc5OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEw
MCBjaGFyYWN0ZXJzCiM3OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYzo4
MjM6CisJCXBvc2l0aW9uID0gKGludGVsX2RlX3JlYWRfZncoZGV2X3ByaXYsIFBJUEVGUkFNRVBJ
WEVMKHBpcGUpKSAmIFBJUEVfUElYRUxfTUFTSykgPj4gUElQRV9QSVhFTF9TSElGVDsKCnRvdGFs
OiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDU5IGxpbmVzIGNoZWNrZWQKMTgwZjNi
ODdmMjE5IGRybS9pOTE1L2dtYnVzOiB1c2UgaW50ZWwgZGUgZnVuY3Rpb25zIGZvciBmb3JjZXdh
a2UgcmVnaXN0ZXIgYWNjZXNzCi06MTI5OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEw
MCBjaGFyYWN0ZXJzCiMxMjk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZ21idXMuYzo0MTQ6CisJCQkgIGdtYnVzMV9pbmRleCB8IEdNQlVTX0NZQ0xFX1dBSVQgfCAo
c2l6ZSA8PCBHTUJVU19CWVRFX0NPVU5UX1NISUZUKSB8IChhZGRyIDw8IEdNQlVTX1NMQVZFX0FE
RFJfU0hJRlQpIHwgR01CVVNfU0xBVkVfUkVBRCB8IEdNQlVTX1NXX1JEWSk7CgotOjE2MzogV0FS
TklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMTYzOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmM6NDkzOgorCQkJICBnbWJ1czFf
aW5kZXggfCBHTUJVU19DWUNMRV9XQUlUIHwgKGNodW5rX3NpemUgPDwgR01CVVNfQllURV9DT1VO
VF9TSElGVCkgfCAoYWRkciA8PCBHTUJVU19TTEFWRV9BRERSX1NISUZUKSB8IEdNQlVTX1NMQVZF
X1dSSVRFIHwgR01CVVNfU1dfUkRZKTsKCnRvdGFsOiAwIGVycm9ycywgMiB3YXJuaW5ncywgMCBj
aGVja3MsIDIwNSBsaW5lcyBjaGVja2VkCmI0ZmJlYzI2YzJiZiBkcm0vaTkxNS9zcHJpdGU6IHVz
ZSBpbnRlbCBkZSBmdW5jdGlvbnMgZm9yIGZvcmNld2FrZSByZWdpc3RlciBhY2Nlc3MKLToxNTI6
IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzE1MjogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYzo2NjY6CisJCQkJICAo
cGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzFdLnkgPDwgMTYpIHwgcGxhbmVfc3RhdGUtPmNvbG9y
X3BsYW5lWzFdLngpOwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNTA5
IGxpbmVzIGNoZWNrZWQKOWRiM2MwM2Q1MDhiIGRybS9pOTE1L3BtOiB1c2UgaW50ZWwgZGUgZnVu
Y3Rpb25zIGZvciBmb3JjZXdha2UgcmVnaXN0ZXIgYWNjZXNzCjBhZmI3MjM5M2U4NiBkcm0vaTkx
NTogcmVtb3ZlIEk5MTVfUkVBRF9GVygpIGFuZCBJOTE1X1dSSVRFX0ZXKCkgbWFjcm9zCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

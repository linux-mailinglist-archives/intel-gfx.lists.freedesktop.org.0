Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D547E91F19
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 10:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B526E0DC;
	Mon, 19 Aug 2019 08:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C5CF6E0DB;
 Mon, 19 Aug 2019 08:39:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06600A0087;
 Mon, 19 Aug 2019 08:39:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 19 Aug 2019 08:39:11 -0000
Message-ID: <20190819083911.21819.92229@emeril.freedesktop.org>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190819075835.20065-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/18=5D_drm/i915=3A_Always_wrap_the?=
 =?utf-8?q?_ring_offset_before_resetting?=
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
XSBkcm0vaTkxNTogQWx3YXlzIHdyYXAgdGhlIHJpbmcgb2Zmc2V0IGJlZm9yZSByZXNldHRpbmcK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1Mzk5LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKY2YyNzJlMjc3YjA2IGRybS9pOTE1OiBBbHdheXMgd3JhcCB0aGUgcmluZyBvZmZzZXQg
YmVmb3JlIHJlc2V0dGluZwotOjk6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3Np
YmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hh
cnMgcGVyIGxpbmUpCiM5OiAKPDM+IFszMTQuODcyMTQ3XSBpbnRlbF9yaW5nX3Jlc2V0OjEyMzcg
R0VNX0JVR19PTighaW50ZWxfcmluZ19vZmZzZXRfdmFsaWQocmluZywgdGFpbCkpCgp0b3RhbDog
MCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA5IGxpbmVzIGNoZWNrZWQKNzc0M2ZkY2Rl
MzNkIGRybS9pOTE1L2d0OiBNYXJrIHVwIHRoZSBuZXN0ZWQgZW5naW5lLXBtIHRpbWVsaW5lIGxv
Y2sgYXMgaXJxc2FmZQo5MGZkNmExOTY0MTkgZHJtL2k5MTU6IFVzZSAwIGZvciB0aGUgdW5vcmRl
cmVkIGNvbnRleHQKYzZkMjRhYTVkZjc2IGRybS9pOTE1OiBPbmx5IGVtaXQgdGhlICdzZW5kIGJ1
ZyByZXBvcnQnIG9uY2UgZm9yIGEgR1BVIGhhbmcKZjE4YzVmYmUxMzUwIGRybS9pOTE1OiBpOTE1
X2FjdGl2ZS5yZXRpcmUoKSBpcyBvcHRpb25hbApmNjY1MDE3ZWFhZTAgZHJtL2k5MTU6IEdlbmVy
YWxpc2UgdGhlIGNsZmx1c2ggZG1hLXdvcmtlcgotOjE4NzogV0FSTklORzpGSUxFX1BBVEhfQ0hB
TkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBu
ZWVkIHVwZGF0aW5nPwojMTg3OiAKbmV3IGZpbGUgbW9kZSAxMDA2NDQKCi06MzEyOiBDSEVDSzpV
TkNPTU1FTlRFRF9ERUZJTklUSU9OOiBzcGlubG9ja190IGRlZmluaXRpb24gd2l0aG91dCBjb21t
ZW50CiMzMTI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2Vfd29yay5o
OjE4OgorCXNwaW5sb2NrX3QgbG9jazsKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMSBj
aGVja3MsIDI5OSBsaW5lcyBjaGVja2VkCjhjMWIxYzJjNzZiNCBkcm0vaTkxNTogUmVwbGFjZSBQ
SU5fTk9ORkFVTFQgd2l0aCBjYWxscyB0byBQSU5fTk9FVklDVAoxMjM5NDYyOTEyMTMgZHJtL2k5
MTU6IFRyYWNrIGdndHQgZmVuY2UgcmVzZXJ2YXRpb25zIHVuZGVyIGl0cyBvd24gbXV0ZXgKZmJk
MDZmMWRlZDg0IGRybS9pOTE1OiBPbmx5IHRyYWNrIGJvdW5kIGVsZW1lbnRzIG9mIHRoZSBHVFQK
MTI2MGQwN2VjNzljIGRybS9pOTE1OiBQdWxsIG9iai0+dXNlcmZhdWx0IHRyYWNraW5nIHVuZGVy
IHRoZSBnZ3R0LT5tdXRleAo5NDA2ZmM0ODY3NzggZHJtL2k5MTU6IFJlcGxhY2UgaTkxNV92bWFf
cHV0X2ZlbmNlKCkKNzllOWI2YmQwNWIwIGRybS9pOTE1OiBNYWtlIHNocmluay91bnNocmluayBi
ZSBhdG9taWMKODk4M2M1NmZlMWNhIGRybS9pOTE1OiBNYWtlIGk5MTVfdm1hLmZsYWdzIGF0b21p
Y190IGZvciBtdXRleCByZWR1Y3Rpb24KLTo3OiBXQVJOSU5HOkNPTU1JVF9NRVNTQUdFOiBNaXNz
aW5nIGNvbW1pdCBkZXNjcmlwdGlvbiAtIEFkZCBhbiBhcHByb3ByaWF0ZSBvbmUKCnRvdGFsOiAw
IGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDMzNyBsaW5lcyBjaGVja2VkCjMxMjBmMDYx
NDNmNCBkcm0vaTkxNTogUHVsbCBpOTE1X3ZtYV9waW4gdW5kZXIgdGhlIHZtLT5tdXRleApiZmJl
OTJlZTNmMGUgZHJtL2k5MTU6IFB1c2ggdGhlIGk5MTVfYWN0aXZlLnJldGlyZSBpbnRvIGEgd29y
a2VyCmUwYmJiZWZlZTM3MSBkcm0vaTkxNTogQ29vcmRpbmF0ZSBpOTE1X2FjdGl2ZSB3aXRoIGl0
cyBvd24gbXV0ZXgKODgwMjU0MWFlNWE5IGRybS9pOTE1OiBNb3ZlIGlkbGUgYmFycmllciBjbGVh
bnVwIGludG8gZW5naW5lLXBtCmIyNzIwYTFkMmU0YiBkcm0vaTkxNTogRHJvcCBzdHJ1Y3RfbXV0
ZXggZnJvbSBhcm91bmQgaTkxNV9yZXRpcmVfcmVxdWVzdHMoKQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

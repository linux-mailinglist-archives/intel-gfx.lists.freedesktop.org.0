Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA55E1BE25
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 21:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFAE089226;
	Mon, 13 May 2019 19:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9E5C89226;
 Mon, 13 May 2019 19:43:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1515A009E;
 Mon, 13 May 2019 19:43:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 13 May 2019 19:43:21 -0000
Message-ID: <20190513194321.3913.63246@emeril.freedesktop.org>
References: <20190509173446.31095-1-imre.deak@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190509173446.31095-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Add_support_for_asynchronous_display_power_disab?=
 =?utf-8?q?ling_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBh
c3luY2hyb25vdXMgZGlzcGxheSBwb3dlciBkaXNhYmxpbmcgKHJldjUpClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDI0Mi8KU3RhdGUgOiB3YXJuaW5n
Cgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjc2Mzg4OTNj
ZmZkMyBkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9yIHRyYWNraW5nIHdha2VyZWZzIHcvbyBwb3dl
ci1vbiBndWFyYW50ZWUKLTo0NTogQ0hFQ0s6TUFDUk9fQVJHX1BSRUNFREVOQ0U6IE1hY3JvIGFy
Z3VtZW50ICdUJyBtYXkgYmUgYmV0dGVyIGFzICcoVCknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNz
dWVzCiM0NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjEwNToKKyNk
ZWZpbmUgc3RydWN0X21lbWJlcihULCBtZW1iZXIpICgoKFQgKikwKS0+bWVtYmVyKQoKLTo0NTog
Q0hFQ0s6TUFDUk9fQVJHX1BSRUNFREVOQ0U6IE1hY3JvIGFyZ3VtZW50ICdtZW1iZXInIG1heSBi
ZSBiZXR0ZXIgYXMgJyhtZW1iZXIpJyB0byBhdm9pZCBwcmVjZWRlbmNlIGlzc3VlcwojNDU6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaDoxMDU6CisjZGVmaW5lIHN0cnVj
dF9tZW1iZXIoVCwgbWVtYmVyKSAoKChUICopMCktPm1lbWJlcikKCnRvdGFsOiAwIGVycm9ycywg
MCB3YXJuaW5ncywgMiBjaGVja3MsIDM0MSBsaW5lcyBjaGVja2VkCjc2NTBlZmMzMzcwNCBkcm0v
aTkxNTogRm9yY2UgcHJpbnRpbmcgd2FrZXJlZiB0YWNraW5nIGR1cmluZyBwbV9jbGVhbnVwCmJj
NTQ5ZmMzNWUyYiBkcm0vaTkxNTogVmVyaWZ5IHBvd2VyIGRvbWFpbnMgc3RhdGUgZHVyaW5nIHN1
c3BlbmQgaW4gYWxsIGNhc2VzCmE1Y2FjOTU5OGIwMiBkcm0vaTkxNTogQWRkIHN1cHBvcnQgZm9y
IGFzeW5jaHJvbm91cyBkaXNwbGF5IHBvd2VyIGRpc2FibGluZwotOjYyNjogQ0hFQ0s6TElORV9T
UEFDSU5HOiBQbGVhc2UgdXNlIGEgYmxhbmsgbGluZSBhZnRlciBmdW5jdGlvbi9zdHJ1Y3QvdW5p
b24vZW51bSBkZWNsYXJhdGlvbnMKIzYyNjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcnVudGltZV9wbS5oOjg1OgorfQorc3RhdGljIGlubGluZSB2b2lkCgp0b3RhbDogMCBlcnJv
cnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCA1MTkgbGluZXMgY2hlY2tlZAo5ZTIyNGU1MzYxODIg
ZHJtL2k5MTU6IERpc2FibGUgcG93ZXIgYXN5bmNocm9ub3VzbHkgZHVyaW5nIERQIEFVWCB0cmFu
c2ZlcnMKMTZjMTZlYTU3MzU2IGRybS9pOTE1OiBXQVJOIGZvciBlRFAgZW5jb2RlcnMgaW4gaW50
ZWxfZHBfZGV0ZWN0X2RwY2QoKQpkMGEzZjZiYTE1MWIgZHJtL2k5MTU6IFJlbW92ZSB0aGUgdW5u
ZWVkZWQgQVVYIHBvd2VyIHJlZiBmcm9tIGludGVsX2RwX2RldGVjdCgpCi06MTc2OiBDSEVDSzpN
QUNST19BUkdfUkVVU0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdpOTE1JyAtIHBvc3NpYmxlIHNp
ZGUtZWZmZWN0cz8KIzE3NjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGlt
ZV9wbS5oOjk0OgorI2RlZmluZSB3aXRoX2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgZG9tYWlu
LCB3ZikgXAorCWZvciAoKHdmKSA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KChpOTE1KSwgKGRv
bWFpbikpOyAod2YpOyBcCisJICAgICBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3luYygoaTkx
NSksIChkb21haW4pLCAod2YpKSwgKHdmKSA9IDApCgotOjE3NjogQ0hFQ0s6TUFDUk9fQVJHX1JF
VVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnZG9tYWluJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0
cz8KIzE3NjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oOjk0
OgorI2RlZmluZSB3aXRoX2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgZG9tYWluLCB3ZikgXAor
CWZvciAoKHdmKSA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KChpOTE1KSwgKGRvbWFpbikpOyAo
d2YpOyBcCisJICAgICBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3luYygoaTkxNSksIChkb21h
aW4pLCAod2YpKSwgKHdmKSA9IDApCgotOjE3NjogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNy
byBhcmd1bWVudCByZXVzZSAnd2YnIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojMTc2OiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmg6OTQ6CisjZGVmaW5lIHdp
dGhfaW50ZWxfZGlzcGxheV9wb3dlcihpOTE1LCBkb21haW4sIHdmKSBcCisJZm9yICgod2YpID0g
aW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoKGk5MTUpLCAoZG9tYWluKSk7ICh3Zik7IFwKKwkgICAg
IGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jKChpOTE1KSwgKGRvbWFpbiksICh3ZikpLCAo
d2YpID0gMCkKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMyBjaGVja3MsIDExOSBsaW5l
cyBjaGVja2VkCjA2N2M1NWNlNTQ1NiBkcm0vaTkxNTogUmVtb3ZlIHRoZSB1bm5lZWRlZCBBVVgg
cG93ZXIgcmVmIGZyb20gaW50ZWxfZHBfaHBkX3B1bHNlKCkKLToxMjogV0FSTklORzpDT01NSVRf
TE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJl
ZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzEyOiAKY29tbWl0IDFjNzY3YjMzOWIz
OSAoImRybS9pOTE1OiB0YWtlIGRpc3BsYXkgcG9ydCBwb3dlciBkb21haW4gaW4gRFAgSFBEIGhh
bmRsZXIiKQoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgNDYgbGluZXMg
Y2hlY2tlZAo5N2U0OWM0NDM5MTkgZHJtL2k5MTU6IFJlcGxhY2UgdXNlIG9mIFBMTFMgcG93ZXIg
ZG9tYWluIHdpdGggRElTUExBWV9DT1JFIGRvbWFpbgozMDUwM2Y3YTcyZTcgZHJtL2k5MTU6IEF2
b2lkIHRha2luZyB0aGUgUFBTIGxvY2sgZm9yIG5vbi1lRFAvVkxWL0NIVgpmYzc2NzgyMGNiNDIg
ZHJtL2k5MTU6IEFzc2VydCB0aGF0IFR5cGVDIHBvcnRzIGFyZSBub3QgdXNlZCBmb3IgZURQCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

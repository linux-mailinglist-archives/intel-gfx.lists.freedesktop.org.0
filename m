Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5E1F7399
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 13:10:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823826E8DA;
	Mon, 11 Nov 2019 12:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C25506E8DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 12:10:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19158896-1500050 
 for multiple; Mon, 11 Nov 2019 12:10:00 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 12:09:57 +0000
Message-Id: <20191111120957.17732-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Try an extra flush on the Haswell
 blitter
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gZ2VuNywgaW5jbHVkaW5nIEhhc3dlbGwsIHRoZSBNSV9GTFVTSF9EVyBjb21tYW5kIGlzIG5v
dCBzeW5jaHJvbm91cwp3aXRoIHRoZSBjb21tYW5kIHN0cmVhbWVyIG5vciBpcyB0aGVyZSBhbiBv
cHRpb24gdG8gbWFrZSBpdCBzby4gVG8gaGlkZQp0aGlzIHdlIGFkZCBhIGxhcmdlIGRlbGF5IG9u
IHRoZSBDUyBzbyB0aGF0IHRoZSBicmVhZGNydW1iIHNob3VsZCBhbHdheXMKYmUgdmlzaWJsZSBi
ZWZvcmUgdGhlIGludGVycnVwdC4gSG93ZXZlciwgdGhhdCBkb2VzIG5vdCBzZWVtIHRvIGJlCmVu
b3VnaCB0byBlbnN1cmUgdGhlIG1lbW9yeSBpcyBhY3R1YWxseSBjb2hlcmVudCB3aXRoIHRoZSBy
ZWFkIG9mIHRoZQpicmVhZGNydW1iLiBUaGUgYnJlYWRjcnVtYiB1cGRhdGUgaXMgYSBwb3N0LXN5
bmMgb3AuLi4gVGhyb3cgaW4gYQpwcmVsaW1pbmFyeSBNSV9GTFVTSF9EVyBiZWZvcmUgdGhlIGJy
ZWFkY3J1bWIgdXBkYXRlIGluIHRoZSBob3BlIHRoYXQKaGVscHMuCgpCdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTQ3ClRlc3RjYXNlOiBp
Z3QvaTkxNV9zZWxmdGVzdC9saXZlX2JsdApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yaW5nX3N1Ym1pc3Npb24uYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jpbmdfc3VibWlzc2lvbi5jCmluZGV4IGE0N2Q1YTdjMzJjOS4uZmMyOWRmNzEyODEwIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nX3N1Ym1pc3Npb24uYwpAQCAt
NDU0LDYgKzQ1NCwxMCBAQCBzdGF0aWMgdTMyICpnZW43X3hjc19lbWl0X2JyZWFkY3J1bWIoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsIHUzMiAqY3MpCiAJR0VNX0JVR19PTihpOTE1X3JlcXVlc3Rf
YWN0aXZlX3RpbWVsaW5lKHJxKS0+aHdzcF9nZ3R0ICE9IHJxLT5lbmdpbmUtPnN0YXR1c19wYWdl
LnZtYSk7CiAJR0VNX0JVR19PTihvZmZzZXRfaW5fcGFnZShpOTE1X3JlcXVlc3RfYWN0aXZlX3Rp
bWVsaW5lKHJxKS0+aHdzcF9vZmZzZXQpICE9IEk5MTVfR0VNX0hXU19TRVFOT19BRERSKTsKIAor
CSpjcysrID0gTUlfRkxVU0hfRFc7CisJKmNzKysgPSAwOworCSpjcysrID0gMDsKKwogCSpjcysr
ID0gTUlfRkxVU0hfRFcgfCBNSV9GTFVTSF9EV19PUF9TVE9SRURXIHwgTUlfRkxVU0hfRFdfU1RP
UkVfSU5ERVg7CiAJKmNzKysgPSBJOTE1X0dFTV9IV1NfU0VRTk9fQUREUiB8IE1JX0ZMVVNIX0RX
X1VTRV9HVFQ7CiAJKmNzKysgPSBycS0+ZmVuY2Uuc2Vxbm87CkBAIC00NjksNyArNDczLDYgQEAg
c3RhdGljIHUzMiAqZ2VuN194Y3NfZW1pdF9icmVhZGNydW1iKHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxLCB1MzIgKmNzKQogCSpjcysrID0gMDsKIAogCSpjcysrID0gTUlfVVNFUl9JTlRFUlJVUFQ7
Ci0JKmNzKysgPSBNSV9OT09QOwogCiAJcnEtPnRhaWwgPSBpbnRlbF9yaW5nX29mZnNldChycSwg
Y3MpOwogCWFzc2VydF9yaW5nX3RhaWxfdmFsaWQocnEtPnJpbmcsIHJxLT50YWlsKTsKLS0gCjIu
MjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

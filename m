Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C41ADD82F
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 12:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0049289991;
	Sat, 19 Oct 2019 10:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F51389991
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2019 10:41:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18893785-1500050 
 for multiple; Sat, 19 Oct 2019 11:41:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 19 Oct 2019 11:41:24 +0100
Message-Id: <20191019104124.6767-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Drop assertion that ce->pin_mutex
 guards state updates
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

VGhlIGFjdHVhbCBjb25kaXRpb25zIGFyZSB0aGF0IHdlIGtub3cgdGhlIEdQVSBpcyBub3QgYWNj
ZXNzaW5nIHRoZQpjb250ZXh0LCBhbmQgd2UgaG9sZCBhIHBpbiBvbiB0aGUgY29udGV4dCBpbWFn
ZSB0byBhbGxvdyBDUFUgYWNjZXNzLiBXZQp1c2VkIGEgZmFrZSBsb2NrIG9uIGNlLT5waW5fbXV0
ZXggc28gdGhhdCB3ZSBjb3VsZCB0cnkgYW5kIHVzZSBsb2NrZGVwCnRvIGFzc2VydCB0aGF0IGFj
Y2VzcyBpcyBzZXJpYWxpc2VkLCBidXQgdGhlIHZhcmlvdXMgZGlmZmVyZW50CmhhcmRpcnEvc29m
dGlycSBjb250ZXh0cyB3aGVyZSB3ZSBuZWVkIHRvICpmYWtlKiBob2xkaW5nIHRoZSBwaW5fbXV0
ZXgKYXJlIGNhdXNpbmcgbW9yZSB0cm91YmxlLgoKU3RpbGwgaXQgd291bGQgYmUgbmljZSBpZiB3
ZSBkaWQgaGF2ZSBhIHdheSB0byByZWFzc3VyZSBvdXJzZWx2ZXMgdGhhdAp0aGUgZGlyZWN0IHVw
ZGF0ZSB0byB0aGUgY29udGV4dCBpbWFnZSBpcyBzZXJpYWxpc2VkIHdpdGggR1BVIGV4ZWN1dGlv
bi4KSW4gdGhlIG1lYW50aW1lLCBzdG9wIGxvY2tkZXAgY29tcGxhaW5pbmcgYWJvdXQgZmFsc2Ug
aXJxIGludmVyc2lvbnMuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExOTIzClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jICAgIHwgMTYgLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3RfbHJjLmMgfCAgNSAtLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMg
ICAgICAgfCAgMSAtCiAzIGZpbGVzIGNoYW5nZWQsIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggZDAwODhkMDIwMjIwLi5mOWYzZTk4NWJiNzkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yMzUsMTYgKzIzNSw2IEBAIHN0YXRp
YyB2b2lkIGV4ZWNsaXN0c19pbml0X3JlZ19zdGF0ZSh1MzIgKnJlZ19zdGF0ZSwKIAkJCQkgICAg
IGNvbnN0IHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nLAogCQkJCSAgICAgYm9vbCBjbG9zZSk7CiAK
LXN0YXRpYyB2b2lkIF9fY29udGV4dF9waW5fYWNxdWlyZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UpCi17Ci0JbXV0ZXhfYWNxdWlyZSgmY2UtPnBpbl9tdXRleC5kZXBfbWFwLCAyLCAwLCBfUkVU
X0lQXyk7Ci19Ci0KLXN0YXRpYyB2b2lkIF9fY29udGV4dF9waW5fcmVsZWFzZShzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqY2UpCi17Ci0JbXV0ZXhfcmVsZWFzZSgmY2UtPnBpbl9tdXRleC5kZXBfbWFw
LCAwLCBfUkVUX0lQXyk7Ci19Ci0KIHN0YXRpYyB2b2lkIG1hcmtfZWlvKHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxKQogewogCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKQEAgLTI3OTIs
OSArMjc4Miw2IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jlc2V0KHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQogCWNlID0gcnEtPmh3X2NvbnRleHQ7CiAJ
R0VNX0JVR19PTighaTkxNV92bWFfaXNfcGlubmVkKGNlLT5zdGF0ZSkpOwogCi0JLyogUHJvY2xh
aW0gd2UgaGF2ZSBleGNsdXNpdmUgYWNjZXNzIHRvIHRoZSBjb250ZXh0IGltYWdlISAqLwotCV9f
Y29udGV4dF9waW5fYWNxdWlyZShjZSk7Ci0KIAlycSA9IGFjdGl2ZV9yZXF1ZXN0KHJxKTsKIAlp
ZiAoIXJxKSB7CiAJCS8qIElkbGUgY29udGV4dDsgdGlkeSB1cCB0aGUgcmluZyBzbyB3ZSBjYW4g
cmVzdGFydCBhZnJlc2ggKi8KQEAgLTI4NjAsNyArMjg0Nyw2IEBAIHN0YXRpYyB2b2lkIF9fZXhl
Y2xpc3RzX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVk
KQogCV9fZXhlY2xpc3RzX3Jlc2V0X3JlZ19zdGF0ZShjZSwgZW5naW5lKTsKIAlfX2V4ZWNsaXN0
c191cGRhdGVfcmVnX3N0YXRlKGNlLCBlbmdpbmUpOwogCWNlLT5scmNfZGVzYyB8PSBDVFhfREVT
Q19GT1JDRV9SRVNUT1JFOyAvKiBwYXJhbm9pZDogR1BVIHdhcyByZXNldCEgKi8KLQlfX2NvbnRl
eHRfcGluX3JlbGVhc2UoY2UpOwogCiB1bndpbmQ6CiAJLyogUHVzaCBiYWNrIGFueSBpbmNvbXBs
ZXRlIHJlcXVlc3RzIGZvciByZXBsYXkgYWZ0ZXIgdGhlIHJlc2V0LiAqLwpAQCAtNDUwMiw3ICs0
NDg4LDYgQEAgdm9pZCBpbnRlbF9scl9jb250ZXh0X3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKIAkJCSAgICBib29sIHNjcnViKQogewogCUdFTV9CVUdfT04oIWludGVsX2Nv
bnRleHRfaXNfcGlubmVkKGNlKSk7Ci0JX19jb250ZXh0X3Bpbl9hY3F1aXJlKGNlKTsKIAogCS8q
CiAJICogV2Ugd2FudCBhIHNpbXBsZSBjb250ZXh0ICsgcmluZyB0byBleGVjdXRlIHRoZSBicmVh
ZGNydW1iIHVwZGF0ZS4KQEAgLTQ1MjgsNyArNDUxMyw2IEBAIHZvaWQgaW50ZWxfbHJfY29udGV4
dF9yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJaW50ZWxfcmluZ191cGRh
dGVfc3BhY2UoY2UtPnJpbmcpOwogCiAJX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjZSwg
ZW5naW5lKTsKLQlfX2NvbnRleHRfcGluX3JlbGVhc2UoY2UpOwogfQogCiAjaWYgSVNfRU5BQkxF
RChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1QpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2xyYy5jCmluZGV4IDVkYzY3OTc4MWEwOC4uNzUxNmQxYzkwOTI1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9scmMuYwpAQCAtMTY4LDEyICsxNjgsNyBAQCBzdGF0aWMgaW50IGxp
dmVfdW5saXRlX3Jlc3RvcmUoc3RydWN0IGludGVsX2d0ICpndCwgaW50IHByaW8pCiAJCX0KIAkJ
R0VNX0JVR19PTighY2VbMV0tPnJpbmctPnNpemUpOwogCQlpbnRlbF9yaW5nX3Jlc2V0KGNlWzFd
LT5yaW5nLCBjZVsxXS0+cmluZy0+c2l6ZSAvIDIpOwotCi0JCWxvY2FsX2lycV9kaXNhYmxlKCk7
IC8qIGFwcGVhc2UgbG9ja2RlcCAqLwotCQlfX2NvbnRleHRfcGluX2FjcXVpcmUoY2VbMV0pOwog
CQlfX2V4ZWNsaXN0c191cGRhdGVfcmVnX3N0YXRlKGNlWzFdLCBlbmdpbmUpOwotCQlfX2NvbnRl
eHRfcGluX3JlbGVhc2UoY2VbMV0pOwotCQlsb2NhbF9pcnFfZW5hYmxlKCk7CiAKIAkJcnFbMF0g
PSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmc3BpbiwgY2VbMF0sIE1JX0FSQl9DSEVDSyk7
CiAJCWlmIChJU19FUlIocnFbMF0pKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDU0
ZWMxYzQxOTBhYy4uODIwM2IxNjE0NTQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAt
MjYxNCw3ICsyNjE0LDYgQEAgdm9pZCBpOTE1X29hX2luaXRfcmVnX3N0YXRlKGNvbnN0IHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSwKIAlzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtOwog
CiAJLyogcGVyZi5leGNsdXNpdmVfc3RyZWFtIHNlcmlhbGlzZWQgYnkgZ2VuOF9jb25maWd1cmVf
YWxsX2NvbnRleHRzKCkgKi8KLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZjZS0+cGluX211dGV4KTsK
IAogCWlmIChlbmdpbmUtPmNsYXNzICE9IFJFTkRFUl9DTEFTUykKIAkJcmV0dXJuOwotLSAKMi4y
NC4wLnJjMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

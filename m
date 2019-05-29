Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8516C2D925
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 11:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83026E084;
	Wed, 29 May 2019 09:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5086E084
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 09:34:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16717225-1500050 
 for multiple; Wed, 29 May 2019 10:34:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 10:34:07 +0100
Message-Id: <20190529093407.31697-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Avoid overflowing the WC stash
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW4gaW50ZXJlc3RpbmcgaXNzdWUgY3JvcHBlZCB3aXRoIG1ha2luZyB0aGUgcGFnZXRhYmxlcyBi
ZSBhbGxvY2F0ZWQgYW5kCmZyZWVkIGNvbmN1cnJlbnRseSAoaS5lLiByZW1vdmluZyB0aGVpciBn
cmFuZGVvdXMgc3RydWN0X211dGV4IGd1YXJkKQp3YXMgdGhhdCB3ZSB3b3VsZCBvdmVyZmxvdyB0
aGUgcGFnZSBzdGFzaC4gVGhpcyBoYXBwZW5zIHdoZW4gd2UgaGF2ZQptdWx0aXBsZSBhbGxvY2F0
b3JzIGdyYWJiaW5nIFdDIHBhZ2VzIHN1Y2ggdGhhdCB3ZSBmaWxsIHRoZSB2bSdzIGxvY2FsCnBh
Z2Ugc3Rhc2ggYW5kIHRoZW4gd2hlbiB3ZSBmcmVlIGFub3RoZXIgcGFnZSwgdGhlIHBhZ2Ugc3Rh
c2ggaXMgYWxyZWFkeQpmdWxsIGFuZCB3ZSBvdmVyZmxvdy4KClRoZSBmaXggaXMgcXVpdGUgc2lt
cGxlIHRvIGNoZWNrIGZvciBhIGZ1bGwgcGFnZSBzdGFzaCBiZWZvcmUgYWRkaW5nCmFub3RoZXIu
IFRoaXMgcmVzdWx0cyBpbiB1cyBrZWVwaW5nIGEgdm0gbG9jYWwgcGFnZSBzdGFzaCBhcm91bmQg
Zm9yCm11Y2ggbG9uZ2VyIHdoaWNoIGlzIGJvdGggYSBibGVzc2luZyBhbmQgYSBjdXJzZS4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIHwgMTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
CmluZGV4IDc0OTZjY2UwZDc5OC4uMmQ3YTk2OGQ0ZmQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYwpAQCAtMzQxLDExICszNDEsMTEgQEAgc3RhdGljIHN0cnVjdCBwYWdlICpzdGFz
aF9wb3BfcGFnZShzdHJ1Y3QgcGFnZXN0YXNoICpzdGFzaCkKIAogc3RhdGljIHZvaWQgc3Rhc2hf
cHVzaF9wYWdldmVjKHN0cnVjdCBwYWdlc3Rhc2ggKnN0YXNoLCBzdHJ1Y3QgcGFnZXZlYyAqcHZl
YykKIHsKLQlpbnQgbnI7CisJdW5zaWduZWQgaW50IG5yOwogCiAJc3Bpbl9sb2NrX25lc3RlZCgm
c3Rhc2gtPmxvY2ssIFNJTkdMRV9ERVBUSF9ORVNUSU5HKTsKIAotCW5yID0gbWluX3QoaW50LCBw
dmVjLT5uciwgcGFnZXZlY19zcGFjZSgmc3Rhc2gtPnB2ZWMpKTsKKwluciA9IG1pbl90KHR5cGVv
ZihuciksIHB2ZWMtPm5yLCBwYWdldmVjX3NwYWNlKCZzdGFzaC0+cHZlYykpOwogCW1lbWNweShz
dGFzaC0+cHZlYy5wYWdlcyArIHN0YXNoLT5wdmVjLm5yLAogCSAgICAgICBwdmVjLT5wYWdlcyAr
IHB2ZWMtPm5yIC0gbnIsCiAJICAgICAgIHNpemVvZihwdmVjLT5wYWdlc1swXSkgKiBucik7CkBA
IC0zOTksNyArMzk5LDggQEAgc3RhdGljIHN0cnVjdCBwYWdlICp2bV9hbGxvY19wYWdlKHN0cnVj
dCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBnZnBfdCBnZnApCiAJCXBhZ2UgPSBzdGFjay5wYWdl
c1stLXN0YWNrLm5yXTsKIAogCQkvKiBNZXJnZSBzcGFyZSBXQyBwYWdlcyB0byB0aGUgZ2xvYmFs
IHN0YXNoICovCi0JCXN0YXNoX3B1c2hfcGFnZXZlYygmdm0tPmk5MTUtPm1tLndjX3N0YXNoLCAm
c3RhY2spOworCQlpZiAoc3RhY2subnIpCisJCQlzdGFzaF9wdXNoX3BhZ2V2ZWMoJnZtLT5pOTE1
LT5tbS53Y19zdGFzaCwgJnN0YWNrKTsKIAogCQkvKiBQdXNoIGFueSBzdXJwbHVzIFdDIHBhZ2Vz
IG9udG8gdGhlIGxvY2FsIFZNIHN0YXNoICovCiAJCWlmIChzdGFjay5ucikKQEAgLTQ2OSw4ICs0
NzAsOSBAQCBzdGF0aWMgdm9pZCB2bV9mcmVlX3BhZ2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0sIHN0cnVjdCBwYWdlICpwYWdlKQogCSAqLwogCW1pZ2h0X3NsZWVwKCk7CiAJc3Bpbl9s
b2NrKCZ2bS0+ZnJlZV9wYWdlcy5sb2NrKTsKLQlpZiAoIXBhZ2V2ZWNfYWRkKCZ2bS0+ZnJlZV9w
YWdlcy5wdmVjLCBwYWdlKSkKKwlpZiAoIXBhZ2V2ZWNfc3BhY2UoJnZtLT5mcmVlX3BhZ2VzLnB2
ZWMpKQogCQl2bV9mcmVlX3BhZ2VzX3JlbGVhc2Uodm0sIGZhbHNlKTsKKwlwYWdldmVjX2FkZCgm
dm0tPmZyZWVfcGFnZXMucHZlYywgcGFnZSk7CiAJc3Bpbl91bmxvY2soJnZtLT5mcmVlX3BhZ2Vz
LmxvY2spOwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF355F429E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 09:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A406F8B7;
	Fri,  8 Nov 2019 08:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237FC6F8B3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 08:56:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19124694-1500050 
 for multiple; Fri, 08 Nov 2019 08:56:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 08:56:23 +0000
Message-Id: <20191108085626.32429-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108085626.32429-1-chris@chris-wilson.co.uk>
References: <20191108085626.32429-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/execlists: Reduce write flush on
 context switch to a wmb()
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

SGF2aW5nIGJlZW4gZm9yY2VkIHRvIHJlZHVjZSBCcmFzd2VsbCBiYWNrIHRvIHVzaW5nIHRoZSBh
bGlhc2luZyBwcGd0dCwKdGhlIGNvaGVyZW5jeSBpc3N1ZSB3ZSBwcmV2aW91c2x5IG9ic2VydmVk
IGNhbm5vdCBpbXBhY3QgdXMuIFJlZHVjZSB0aGUKcGVyZm9ybWFuY2UgcGVuYWx0eSBpbXBvc2Vk
IG9uIGFsbCBwbGF0Zm9ybXMgZnJvbSB1c2luZyB0aGUgbWZlbmNlIHRvIGEKbWVyZSBzZmVuY2Uu
CgpSZWZlcmVuY2VzOiBjZjY2YjhhMGJhMTQgKCJkcm0vaTkxNS9leGVjbGlzdHM6IEFwcGx5IGEg
ZnVsbCBtYiBiZWZvcmUgZXhlY3V0aW9uIGZvciBCcmFzd2VsbCIpClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMgfCA3ICstLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDE5NzVm
ZTQ3NzVkMi4uZTU3MzQ1Nzk1YzA4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpA
QCAtMTIxOCwxMyArMTIxOCw4IEBAIHN0YXRpYyB1NjQgZXhlY2xpc3RzX3VwZGF0ZV9jb250ZXh0
KGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCSAqIG1heSBub3QgYmUgdmlzaWJsZSB0
byB0aGUgSFcgcHJpb3IgdG8gdGhlIGNvbXBsZXRpb24gb2YgdGhlIFVDCiAJICogcmVnaXN0ZXIg
d3JpdGUgYW5kIHRoYXQgd2UgbWF5IGJlZ2luIGV4ZWN1dGlvbiBmcm9tIHRoZSBjb250ZXh0CiAJ
ICogYmVmb3JlIGl0cyBpbWFnZSBpcyBjb21wbGV0ZSBsZWFkaW5nIHRvIGludmFsaWQgUEQgY2hh
c2luZy4KLQkgKgotCSAqIEZ1cnRoZXJtb3JlLCBCcmFzd2VsbCwgYXQgbGVhc3QsIHdhbnRzIGEg
ZnVsbCBtYiB0byBiZSBzdXJlIHRoYXQKLQkgKiB0aGUgd3JpdGVzIGFyZSBjb2hlcmVudCBpbiBt
ZW1vcnkgKHZpc2libGUgdG8gdGhlIEdQVSkgcHJpb3IgdG8KLQkgKiBleGVjdXRpb24sIGFuZCBu
b3QganVzdCB2aXNpYmxlIHRvIG90aGVyIENQVXMgKGFzIGlzIHRoZSByZXN1bHQgb2YKLQkgKiB3
bWIpLgogCSAqLwotCW1iKCk7CisJd21iKCk7CiAKIAlkZXNjID0gY2UtPmxyY19kZXNjOwogCWNl
LT5scmNfZGVzYyAmPSB+Q1RYX0RFU0NfRk9SQ0VfUkVTVE9SRTsKLS0gCjIuMjQuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

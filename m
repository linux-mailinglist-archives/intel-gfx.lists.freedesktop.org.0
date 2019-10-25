Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3EEE471D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 11:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 751776E938;
	Fri, 25 Oct 2019 09:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623466E938
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 09:28:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18959543-1500050 
 for multiple; Fri, 25 Oct 2019 10:27:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 10:27:49 +0100
Message-Id: <20191025092749.13468-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Tweak the default subtest
 runtime
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QkFUIGlzIGdyb3dpbmcgYSBsaXR0bGUgZmF0IGFuZCBDSSBpcyB1bmRlciBwcmVzc3VyZSBhbmQg
bmVlZHMgdG8gdHJpbQpvZmYgc29tZSByZWR1bmRhbnQgcnVudGltZS4gQW4gZWFzeSBvcHRpb24g
dG8gcmVkdWNlIHRoZSBzZWxmdGVzdApydW50aW1lcywgc28gdHJ5IGhhbHZpbmcgb3VyIGRlZmF1
bHQgc3VidGVzdCB0aW1lb3V0LiBXaGlsZSB0aGlzIHJlZHVjZXMKdGhlIG51bWJlciBvZiBpdGVy
YXRpb25zIHVzZWQsIGZvciB0aGUgbWFqb3JpdHkgb2YgdGVzdHMgdGhhdCBhcmUKcGFzc2luZywg
cmVwZWF0IHJ1bnMgKHdpdGggZGlmZmVyZW50IENJX0RSTSkgd2lsbCBtYWtlIHVwIHRoZQpkaWZm
ZXJlbmNlIC0tIGEgbmVnYXRpdmUgY29uc2VxdWVuY2UgdGhvdWdoIGlzIHRoYXQgd2UgbWF5IHJl
ZHVjZSB0aGUKZnJlcXVlbmN5IG9mIHNwb3JhZGljIGZhaWx1cmVzLiBIb3BlZnVsbHksIHdlIGhh
dmUgbm8gdGVzdHMgdGhhdCB3ZXJlCmNydWNpYWxseSBkZXBlbmRlbnQgb24gdGhlIGZpeGVkIDFz
IHRpbWVvdXQuLi4KClN1Z2dlc3RlZC1ieTogVG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2VsZnRlc3QuYyB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9zZWxmdGVzdC5jCmluZGV4IDkyYzkx
OTNjZGM4NS4uYTZjY2E0YWQ5NmY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9zZWxmdGVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X3NlbGZ0ZXN0LmMKQEAgLTMwLDcgKzMwLDcgQEAKICNpbmNsdWRlICJpZ3RfZmx1
c2hfdGVzdC5oIgogCiBzdHJ1Y3QgaTkxNV9zZWxmdGVzdCBpOTE1X3NlbGZ0ZXN0IF9fcmVhZF9t
b3N0bHkgPSB7Ci0JLnRpbWVvdXRfbXMgPSAxMDAwLAorCS50aW1lb3V0X21zID0gNTAwLAogfTsK
IAogaW50IGk5MTVfbW9ja19zYW5pdHljaGVjayh2b2lkKQotLSAKMi4yNC4wLnJjMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

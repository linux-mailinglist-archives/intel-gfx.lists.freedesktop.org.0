Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCE9F4DFA
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 15:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E226F9B4;
	Fri,  8 Nov 2019 14:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2D36F9B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 14:23:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19129668-1500050 
 for multiple; Fri, 08 Nov 2019 14:22:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 14:22:50 +0000
Message-Id: <20191108142250.22709-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108142250.22709-1-chris@chris-wilson.co.uk>
References: <20191108142250.22709-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_exec_fence: Avoid long
 preempt-off sleeps
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

VGhlIGtlcm5lbCBpcyBub3cgZW5mb3JjaW5nIHRoYXQgY2xpZW50cyBhcmUgbm90IGFsbG93ZWQg
dG8gYmxvY2sgaGlnaGVyCnByaW9yaXR5IGNvbnRleHRzIGZyb20gYWNjZXNzaW5nIHRoZSBHUFU7
IG9uZSBpcyBubyBsb25nZXIgYWxsb3dlZCB0bwpzbGVlcCBmb3IgYSBzZWNvbmQgaG9nZ2luZyB0
aGUgR1BVLiBSZWR1Y2UgdGhlIHNsZWVwIGRvd24gdG8gNTBtcywgc2hvcnQKZW5vdWdoIG5vdCB0
byBhbmdlciB0aGUgcHJlZW1wdC1vZmYgY2hlY2tzIHdoaWxlIGxvbmcgZW5vdWdoIGZvciBhbnkK
b3JkaW5hcnkgR1BVIHdvcmsgdG8gY29tcGxldGUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX2Zl
bmNlLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYyBiL3Rlc3RzL2k5
MTUvZ2VtX2V4ZWNfZmVuY2UuYwppbmRleCA0ZThiZGQ3YjMuLjAwMjEyMGJmMyAxMDA2NDQKLS0t
IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19mZW5jZS5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNf
ZmVuY2UuYwpAQCAtMzQ4LDcgKzM0OCw4IEBAIHN0YXRpYyB2b2lkIHRlc3RfZmVuY2VfYXdhaXQo
aW50IGZkLCB1bnNpZ25lZCByaW5nLCB1bnNpZ25lZCBmbGFncykKIAkJaSsrOwogCX0KIAotCXNs
ZWVwKDEpOworCS8qIExvbmcsIGJ1dCBub3QgdG9vIGxvbmcgdG8gYW5nZXIgcHJlZW1wdGlvbiBk
aXNhYmxlIGNoZWNrcyAqLworCXVzbGVlcCg1MCAqIDEwMDApOyAvKiA1MCBtcywgdHlwaWNhbCBw
cmVlbXB0IHJlc2V0IGlzIDE1MCttcyAqLwogCiAJLyogQ2hlY2sgZm9yIGludmFsaWRseSBjb21w
bGV0aW5nIHRoZSB0YXNrIGVhcmx5ICovCiAJaWd0X2Fzc2VydChmZW5jZV9idXN5KHNwaW4tPm91
dF9mZW5jZSkpOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5DA216E1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 12:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27EA3898C4;
	Fri, 17 May 2019 10:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC680898C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 10:22:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16586747-1500050 
 for multiple; Fri, 17 May 2019 11:22:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 11:22:25 +0100
Message-Id: <20190517102225.3069-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517102225.3069-1-chris@chris-wilson.co.uk>
References: <20190517102225.3069-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: Use both bits for
 device_count
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

U21hdGNoIHNwb3R0ZWQ6CmRyaXZlcnMvZ3B1L2RybS9pOTE1Ly9pbnRlbF9oZGNwLmM6MTQwNiBo
ZGNwMl9hdXRoZW50aWNhdGVfcmVwZWF0ZXJfdG9wb2xvZ3koKSB3YXJuOiBzaG91bGQgdGhpcyBi
ZSBhIGJpdHdpc2Ugb3A/CgphbmQgaW5kZWVkIGxvb2tzIHRvIGJlIHN1c3BlY3QgdGhhdCB3ZSBk
byBuZWVkIHRvIHVzZSBhIGJpdHdpc2Ugb3IgdG8KY29tYmluZSB0aGUgdHdvIHJlZ2lzdGVyIGZp
ZWxkcyBpbnRvIG9uZSBjb3VudGVyLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRjcC5jIHwgNCArKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkY3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2hkY3AuYwppbmRleCA1M2RmMmYyMzc2ZTguLmJjM2E5NGQ0OTFjNCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRjcC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2hkY3AuYwpAQCAtMTQwMiw4ICsxNDAyLDggQEAgaW50IGhkY3AyX2F1
dGhlbnRpY2F0ZV9yZXBlYXRlcl90b3BvbG9neShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IpCiAJCXJldHVybiAtRUlOVkFMOwogCX0KIAotCWRldmljZV9jbnQgPSBIRENQXzJfMl9E
RVZfQ09VTlRfSEkocnhfaW5mb1swXSkgPDwgNCB8fAotCQkJSERDUF8yXzJfREVWX0NPVU5UX0xP
KHJ4X2luZm9bMV0pOworCWRldmljZV9jbnQgPSAoSERDUF8yXzJfREVWX0NPVU5UX0hJKHJ4X2lu
Zm9bMF0pIDw8IDQgfAorCQkgICAgICBIRENQXzJfMl9ERVZfQ09VTlRfTE8ocnhfaW5mb1sxXSkp
OwogCWlmIChkcm1faGRjcF9jaGVja19rc3ZzX3Jldm9rZWQoZGV2LCBtc2dzLnJlY3ZpZF9saXN0
LnJlY2VpdmVyX2lkcywKIAkJCQkJZGV2aWNlX2NudCkpIHsKIAkJRFJNX0VSUk9SKCJSZXZva2Vk
IHJlY2VpdmVyIElEKHMpIGlzIGluIGxpc3RcbiIpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

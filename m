Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE211AD7ED
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 13:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97E889948;
	Mon,  9 Sep 2019 11:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E5E89948
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 11:30:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18425448-1500050 
 for multiple; Mon, 09 Sep 2019 12:30:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 12:30:18 +0100
Message-Id: <20190909113018.13300-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ringbuffer: Flush writes before
 RING_TAIL update
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

QmUgcGFyYW5vaWQgYW5kIG1ha2Ugc3VyZSB3ZSBmbHVzaCBhbnkgYW5kIGFsbCB3cml0ZXMgb3V0
IG9mIHRoZSBXQ0IKYmVmb3JlIHBlcmZvcm1pbmcgdGhlIFVDIG1taW8gdG8gdXBkYXRlIHRoZSBS
SU5HX1RBSUwuIChBbiBVQyB3cml0ZQpzaG91bGQgaXRzZWxmIGJlIGVub3VnaCB0byBkbyB0aGUg
Zmx1c2gsIGhlbmNlIHRoZSBwYXJhbm9pYSBoZXJlLikgUXVpdGUKaW5mcmVxdWVudGx5LCB3ZSBz
ZWUgcHJvYmxlbXMgd2hlcmUgdGhlIEdQVSBzZWVtcyB0byBvdmVyc2hvb3QgdGhlClJJTkdfVEFJ
TCBhbmQgc28gZXhlY3V0ZXMgZ2FyYmFnZSBoZW5jZSB0aGUgc3BlY3VsYXRpb24uCgpSZWZlcmVu
Y2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE1OTgK
UmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTExNDE3ClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTAzNApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVy
LmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwppbmRleCBiYmRhODVkY2FhNDIuLjczYzNmZmM4
MDIxOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZl
ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwpAQCAt
OTMwLDYgKzkzMCw3IEBAIHN0YXRpYyB2b2lkIGNhbmNlbF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCiBzdGF0aWMgdm9pZCBpOXh4X3N1Ym1pdF9yZXF1ZXN0KHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiB7CiAJaTkxNV9yZXF1ZXN0X3N1Ym1pdChyZXF1ZXN0
KTsKKwl3bWIoKTsgLyogcGFyYW5vaWQgZmx1c2ggd3JpdGVzIG91dCBvZiB0aGUgV0NCIGJlZm9y
ZSBtbWlvICovCiAKIAlFTkdJTkVfV1JJVEUocmVxdWVzdC0+ZW5naW5lLCBSSU5HX1RBSUwsCiAJ
CSAgICAgaW50ZWxfcmluZ19zZXRfdGFpbChyZXF1ZXN0LT5yaW5nLCByZXF1ZXN0LT50YWlsKSk7
Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==

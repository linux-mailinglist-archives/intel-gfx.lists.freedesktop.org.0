Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F9D91E64
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 09:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F986E0AE;
	Mon, 19 Aug 2019 07:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 370E66E0AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 07:58:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18185093-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 08:58:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 08:58:17 +0100
Message-Id: <20190819075835.20065-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] Lock dropping
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

U28gaGVyZSdzIHRoZSByZWFsIHRlc3Qgb2Ygd2hldGhlciBvciBub3Qgd2UgbWlzc2VkIGFueSBs
b2NrIGNvdmVyYWdlIGluCnRoZSBwcmV2aW91cyBjb252ZXJzaW9ucyAoaGludCwgbWF5YmUgb25l
IG9yIHR3byB1c2UgYWZ0ZXIgZnJlZXMKY3JvcHBpbmcgdXApLCBkcm9wcGluZyBzdHJ1Y3RfbXV0
ZXggZnJvbSBhcm91bmQgdm0gYW5kIHRoZXJlZm9yZQpyZXF1ZXN0cy4KCk9uZSB0YXNrIGxlZnQg
aW5jb21wbGV0ZSBpcyBsaWZ0aW5nIHRoZSB2bWEtPm9wcy0+c2V0X3BhZ2VzKCkgb3V0IG9mIHRo
ZQp2bS0+bXV0ZXguIEkga2VlcCBlbmRpbmcgdXAgd2FudGluZyB0byBtYWtlIHRoZSBwYWdlIHZp
ZXcgaW50byBpdHMgb3duCmNsYXNzLgoKVGhlIGZpcnN0IDEzIHBhdGNoZXMgc2hvdWxkIGJlIGZp
bmUsIGl0J3Mgbm90IHVudGlsIHBhdGNoIDE0IHdlIHJlbW92ZQp0aGUgY3J1dGNoZXMuCi1DaHJp
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

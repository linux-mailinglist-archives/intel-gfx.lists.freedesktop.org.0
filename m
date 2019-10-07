Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA13CDE56
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 11:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D99F9891D5;
	Mon,  7 Oct 2019 09:41:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38470891D5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 09:41:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18748838-1500050 for multiple; Mon, 07 Oct 2019 10:41:39 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191007091920.2176-1-abdiel.janulgue@linux.intel.com>
References: <20191007091920.2176-1-abdiel.janulgue@linux.intel.com>
Message-ID: <157044129776.2661.354268028812010161@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 07 Oct 2019 10:41:37 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915: Allow i915 to manage the
 vma offset nodes instead of drm core
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

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTAtMDcgMTA6MTk6MTYpCj4gQEAgLTMxMiw2
ICszMTMsMTIgQEAgdm1fZmF1bHRfdCBpOTE1X2dlbV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZt
ZikKPiAgICAgICAgICAgICAgICAgbGlzdF9hZGQoJm9iai0+dXNlcmZhdWx0X2xpbmssICZpOTE1
LT5nZ3R0LnVzZXJmYXVsdF9saXN0KTsKPiAgICAgICAgIG11dGV4X3VubG9jaygmaTkxNS0+Z2d0
dC52bS5tdXRleCk7Cj4gIAo+ICsgICAgICAgLyogVHJhY2sgdGhlIG1tbyBhc3NvY2lhdGVkIHdp
dGggdGhlIGZlbmNlZCB2bWEgKi8KPiArICAgICAgIG11dGV4X2xvY2soJnByaXYtPnZtYV9sb2Nr
KTsKPiArICAgICAgIHZtYS0+bW1vID0gcHJpdjsKPiArICAgICAgIGxpc3RfbW92ZSgmdm1hLT5t
bW9fbGluaywgJnByaXYtPnZtYV9saXN0KTsKPiArICAgICAgIG11dGV4X3VubG9jaygmcHJpdi0+
dm1hX2xvY2spOwoKV2h5IGFyZSB3ZSB0cmFja2luZyB0aGUgc2FtZSB0aGluZyB0d2ljZT8KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

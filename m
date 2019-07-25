Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14135759E3
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 23:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574706E7D6;
	Thu, 25 Jul 2019 21:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906B16E7D6;
 Thu, 25 Jul 2019 21:55:49 +0000 (UTC)
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hqliE-0005aT-2m; Thu, 25 Jul 2019 23:55:46 +0200
Date: Thu, 25 Jul 2019 23:55:45 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Josh Poimboeuf <jpoimboe@redhat.com>
In-Reply-To: <51a4155c5bc2ca847a9cbe85c1c11918bb193141.1564086017.git.jpoimboe@redhat.com>
Message-ID: <alpine.DEB.2.21.1907252355150.1791@nanos.tec.linutronix.de>
References: <51a4155c5bc2ca847a9cbe85c1c11918bb193141.1564086017.git.jpoimboe@redhat.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove redundant
 user_access_end() from __copy_from_user() error path
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sedat Dilek <sedat.dilek@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNSBKdWwgMjAxOSwgSm9zaCBQb2ltYm9ldWYgd3JvdGU6Cgo+IE9ianRvb2wgcmVw
b3J0czoKPiAKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVy
Lm86IHdhcm5pbmc6IG9ianRvb2w6IC5hbHRpbnN0cl9yZXBsYWNlbWVudCsweDM2OiByZWR1bmRh
bnQgVUFDQ0VTUyBkaXNhYmxlCj4gCj4gX19jb3B5X2Zyb21fdXNlcigpIGFscmVhZHkgZG9lcyBi
b3RoIFNUQUMgYW5kIENMQUMsIHNvIHRoZQo+IHVzZXJfYWNjZXNzX2VuZCgpIGluIGl0cyBlcnJv
ciBwYXRoIGFkZHMgYW4gZXh0cmEgdW5uZWNlc3NhcnkgQ0xBQy4KPiAKPiBGaXhlczogMGIyYzhm
OGI2YjBjICgiaTkxNTogZml4IG1pc3NpbmcgdXNlcl9hY2Nlc3NfZW5kKCkgaW4gcGFnZSBmYXVs
dCBleGNlcHRpb24gY2FzZSIpCj4gUmVwb3J0ZWQtYnk6IFRob21hcyBHbGVpeG5lciA8dGdseEBs
aW51dHJvbml4LmRlPgo+IFJlcG9ydGVkLWJ5OiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21h
aWwuY29tPgo+IEFja2VkLWJ5OiBQZXRlciBaaWpsc3RyYSAoSW50ZWwpIDxwZXRlcnpAaW5mcmFk
ZWFkLm9yZz4KPiBUZXN0ZWQtYnk6IE5pY2sgRGVzYXVsbmllcnMgPG5kZXNhdWxuaWVyc0Bnb29n
bGUuY29tPgo+IFRlc3RlZC1ieTogU2VkYXQgRGlsZWsgPHNlZGF0LmRpbGVrQGdtYWlsLmNvbT4K
PiBMaW5rOiBodHRwczovL2dpdGh1Yi5jb20vQ2xhbmdCdWlsdExpbnV4L2xpbnV4L2lzc3Vlcy82
MTcKPiBTaWduZWQtb2ZmLWJ5OiBKb3NoIFBvaW1ib2V1ZiA8anBvaW1ib2VAcmVkaGF0LmNvbT4K
ClJldmlld2VkLWJ5OiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

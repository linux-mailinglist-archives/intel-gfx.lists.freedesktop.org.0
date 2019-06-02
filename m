Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8781C3375C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 19:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0921C892F0;
	Mon,  3 Jun 2019 17:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from depni-mx.sinp.msu.ru (depni-mx.sinp.msu.ru [213.131.7.21])
 by gabe.freedesktop.org (Postfix) with ESMTP id 165CA894DC
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Jun 2019 21:31:35 +0000 (UTC)
Received: from spider (unknown [109.63.145.211])
 by depni-mx.sinp.msu.ru (Postfix) with ESMTPSA id B68A01BF404;
 Mon,  3 Jun 2019 00:34:03 +0300 (MSK)
From: Serge Belyshev <belyshev@depni.sinp.msu.ru>
To: Chris Wilson <chris@chris-wilson.co.uk>
References: <20190321161908.8007-1-chris@chris-wilson.co.uk>
 <20190321161908.8007-2-chris@chris-wilson.co.uk>
 <878sv31mqk.fsf@depni.sinp.msu.ru>
Date: Mon, 03 Jun 2019 00:31:33 +0300
In-Reply-To: <878sv31mqk.fsf@depni.sinp.msu.ru> (Serge Belyshev's message of
 "Sun, 19 May 2019 00:22:43 +0300")
Message-ID: <878suj8yiy.fsf@depni.sinp.msu.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 03 Jun 2019 17:59:41 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Skip object locking around a
 no-op set-domain ioctl
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkhCgo+IFRoaXMgcGF0Y2ggY2F1c2VzIGxvY2t1cHMgaW4gZmlyZWZveC4gVGhleSBhcHBlYXIg
bGlrZSBub24tZmF0YWwgaGFuZ3MKPiBvZiB0aGUgd2VicGFnZSBjb250ZW50cywgImZpeGFibGUi
IHdpdGggYWx0LXRhYiBvciBhIGJhY2tncm91bmQgc3lzdGVtCj4gbG9hZC4gIEkgaGF2ZSB2ZXJp
ZmllZCB0aGF0IHJldmVydGluZyB0aGUgY29tbWl0IDc1NGEyNTQ0Mjcgb24gdG9wIG9mCj4gY3Vy
cmVudCBMaW51cyB0cmVlIGZpeGVzIHRoZSBwcm9ibGVtLgoKVGhpcyBpcyBzdGlsbCBicm9rZW4g
aW4gdjUuMi1yYzMuCgpJIGhhdmUgYWxzbyB2ZXJpZmllZCB0aGF0IHRoZSBwYXJ0aWN1bGFyIGNv
bW1pdCwgaWYgYmFja3BvcnRlZCB0byB2NS4xCnJlbGVhc2UsIGJyZWFrcyBmaXJlZm94IHRoZXJl
IHRvbyBpbiB0aGUgc2FtZSB3YXkuCgoKKGZvciByZWZlcmVuY2U6KQoKY29tbWl0IDc1NGEyNTQ0
MjcwNWM0ZjkwZTBkMDVmMWE3YmQzMDNmZmU3MDBjYTkKQXV0aG9yOiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KRGF0ZTogICBUaHUgTWFyIDIxIDE2OjE5OjA4IDIwMTkg
KzAwMDAKCiAgICBkcm0vaTkxNTogU2tpcCBvYmplY3QgbG9ja2luZyBhcm91bmQgYSBuby1vcCBz
ZXQtZG9tYWluIGlvY3RsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==

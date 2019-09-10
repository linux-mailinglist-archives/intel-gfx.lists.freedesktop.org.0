Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D25CAEBBE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 15:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631656E0B9;
	Tue, 10 Sep 2019 13:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D0E6E0B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 13:39:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18439178-1500050 for multiple; Tue, 10 Sep 2019 14:39:36 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190910113547.7656-1-mika.kuoppala@linux.intel.com>
References: <20190910113547.7656-1-mika.kuoppala@linux.intel.com>
Message-ID: <156812277465.30942.10888951540073306234@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 10 Sep 2019 14:39:34 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Keep forcewake always for now
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTEwIDEyOjM1OjQ3KQo+IEZvcmNld2FrZSBo
YW5kbGluZyBpcyBhIHByaW1lIHN1c3BlY3Qgbm93LiBLZWVwIHJlZgo+IGFsd2F5cyBvbiB0Z2wg
dG8gdGVzdCB0aGUgdGhlb3J5IGFuZCByZXZlYWwgdGhlIGNvdmVyYWdlLgo+IAo+IFRlc3RjYXNl
OiBpZ3QvZ2VtX3N5bmMKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gU3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KCkdldHMgdXMgYXMgZmFyIGFzIHJlbG9hZCwgYmVmb3JlIHdlIGhpdCB0aGUgV0FS
TiBmb3IgdGhlIHVuYmFsYW5jZWQKZm9yY2V3YWtlLgoKU2VlbXMgbGlrZSBhIHdvcnRod2hpbGUg
YXBwcm9hY2ggaWYgd2UgY2FuIHJlZmluZSBpdCBzbGlnaHRseS4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

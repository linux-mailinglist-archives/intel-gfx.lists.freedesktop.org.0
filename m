Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2391E0896
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4DE689956;
	Mon, 25 May 2020 08:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5733B89956
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:16:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21284469-1500050 for multiple; Mon, 25 May 2020 09:16:52 +0100
MIME-Version: 1.0
In-Reply-To: <20200525080754.GA32204@intel.com>
References: <20200525080731.2244-1-chris@chris-wilson.co.uk>
 <20200525080754.GA32204@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <159039461424.30979.17871163129232770512@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 25 May 2020 09:16:54 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revert CDCLK changes to unbreak
 geminilake
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaXNvdnNraXksIFN0YW5pc2xhdiAoMjAyMC0wNS0yNSAwOTowNzo1NCkKPiBPbiBN
b24sIE1heSAyNSwgMjAyMCBhdCAwOTowNzozMUFNICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4gPiBUaGlzIHJldmVydHMKPiA+IGNhYzkxZTY3MWFkNSAoImRybS9pOTE1OiBGaXggaW5jbHVk
ZXMgYW5kIGxvY2FsIHZhcnMgb3JkZXIiKQo+ID4gODJlYTE3NGRjNTQyICgiZHJtL2k5MTU6IFJl
bW92ZSB1bm5lZWRlZCBoYWNrIG5vdyBmb3IgQ0RDTEsiKQo+ID4gY2QxOTE1NDYwODYxICgiZHJt
L2k5MTU6IEFkanVzdCBDRENMSyBhY2NvcmRpbmdseSB0byBvdXIgREJ1ZiBidyBuZWVkcyIpCj4g
PiAKPiA+IENjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVs
LmNvbT4KPiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+
ID4gQ2M6ICJWaWxsZSBTeXJqw6Rsw6QiIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
PiAKPiAKPiBJIGd1ZXNzIHdlIHN0aWxsIG5lZWQgdG8gY2hlY2sgbW9yZSBwcmVjaXNlbHkgaWYg
dGhpcyBwYXRjaCBjYXVzZWQKPiB0aGlzIC0gb3IgaGF2ZSB5b3UgYWxyZWFkeSBiaXNlY3RlZCB0
aGF0PwoKVGhpcyB3YXMgZm91bmQgYnkgdW53aW5kaW5nIHRoZSBwYXRjaGVzIG9uIENJLgoKPiBJ
dCBpcyByYXRoZXIgc3RyYW5nZSB0aGF0IGl0IGJyZWFrcyBvbmx5IGEgR0xLIGFuZCBvbmx5IHNp
bmdsZSB0ZXN0LgoKQnVnIGRldGVjdGlvbiBpcyBwdXJlbHkgc2VyZW5kaXBpdG91cy4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 671EFCE3D5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 15:36:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2CB189932;
	Mon,  7 Oct 2019 13:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D5C89932
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 13:36:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18752255-1500050 for multiple; Mon, 07 Oct 2019 14:36:36 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <26383ccc-f9ec-9cdc-a263-41a9a1994560@intel.com>
References: <20191007130325.7340-1-chris@chris-wilson.co.uk>
 <26383ccc-f9ec-9cdc-a263-41a9a1994560@intel.com>
Message-ID: <157045539387.2661.13513283524570997516@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 07 Oct 2019 14:36:33 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Wean ourselves off dev_priv
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0wNyAxNDozMzowMikKPiBPbiAwNy8x
MC8yMDE5IDE2OjAzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBVc2UgdGhlIGxvY2FsIHVuY29y
ZSBhY2Nlc3NvcnMgZm9yIHRoZSBHVCByYXRoZXIgdGhhbiB1c2luZyB0aGUgW25vdC1zb10KPiA+
IG1hZ2ljIGdsb2JhbCBkZXZfcHJpdiBtbWlvIHJvdXRpbmVzLiBJbiB0aGUgcHJvY2Vzcywgd2Ug
YWxzbyB0ZWFjaCB0aGUKPiA+IHBlcmYgc3RyZWFtIHRvIHVzZSBiYWNrcG9pbnRlcnMgdG8gdGhl
IGk5MTVfcGVyZiByYXRoZXIgdGhhbiBkaWdnaW5nIGl0Cj4gPiBvdXQgb2YgZGV2X3ByaXYuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gPiBDYzogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFA
aW50ZWwuY29tPgo+ID4gQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGlu
QGludGVsLmNvbT4KPiAKPiAKPiBMb29rcyBnb29kLCBhcGFydCBmcm9tIHRoZSBmYWN0IHRoYXQg
dGhpcyBoYXMgYmVlbiByZXZpZXdlZCBieSBVbWVzaCA6IAo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL2FyY2hpdmVzL2ludGVsLWdmeC8yMDE5LVNlcHRlbWJlci8yMTIwMDguaHRtbAo+
IAo+IFNob3VsZCBJIGhhdmUgbGFuZGVkIHRoaXMgb3IgZG8gSSBoYXZlIHRvIHdhaXQgZm9yIHNv
bWVvbmUgZWxzZSB0byBhbHNvIAo+IHJldmlldz8KCk1lcmdlIGl0LgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

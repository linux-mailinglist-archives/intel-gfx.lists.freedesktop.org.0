Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94936B8FD4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 14:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024BC6E045;
	Fri, 20 Sep 2019 12:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2351D6E045
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 12:30:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18559024-1500050 for multiple; Fri, 20 Sep 2019 13:30:22 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156898213374.1196.4409741985922996220@skylake-alporthouse-com>
References: <20190920121821.7223-1-chris@chris-wilson.co.uk>
 <156898213374.1196.4409741985922996220@skylake-alporthouse-com>
Message-ID: <156898262040.1196.10325037059820148075@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Sep 2019 13:30:20 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark contents as dirty on a write
 fault
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjAgMTM6MjI6MTMpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDktMjAgMTM6MTg6MjEpCj4gPiBTaW5jZSBkcm9wcGluZyB0aGUgc2V0
LXRvLWd0dC1kb21haW4gaW4gY29tbWl0IGE2NzlmNThkMDUxMCAoImRybS9pOTE1Ogo+ID4gRmx1
c2ggcGFnZXMgb24gYWNxdWlzaXRpb24iKSwgd2Ugbm8gbG9uZ2VyIG1hcmsgdGhlIGNvbnRlbnRz
IGFzIGRpcnR5IG9uCj4gPiBhIHdyaXRlIGZhdWx0LiBUaGlzIGhhcyB0aGUgaXNzdWUgb2YgdXMg
dGhlbiBub3QgbWFya2luZyB0aGUgcGFnZXMgYXMKPiA+IGRpcnR5IG9uIHJlbGVhc2luZyB0aGUg
YnVmZmVyLCB3aGljaCBtZWFucyB0aGUgY29udGVudHMgYXJlIG5vdCB3cml0dGVuCj4gPiBvdXQg
dG8gdGhlIHN3YXAgZGV2aWNlIChzaG91bGQgd2UgZXZlciBwaWNrIHRoYXQgYnVmZmVyIGFzIGEg
dmljdGltKS4KPiA+IE5vdGFibHksIHRoaXMgaXMgdmlzaWJsZSBpbiB0aGUgZHVtYiBidWZmZXIg
aW50ZXJmYWNlIHVzZWQgZm9yIGN1cnNvcnMuCj4gPiBIYXZpbmcgdXBkYXRlZCB0aGUgY3Vyc29y
IGNvbnRlbnRzIHZpYSBtbWFwLCBhbmQgc3dhcHBlZCBhd2F5LCBpZiB0aGUKPiA+IHNocmlua2Vy
IHNob3VsZCBldmljdCB0aGUgb2xkIGN1cnNvciwgdXBvbiBuZXh0IHJldXNlLCB0aGUgY3Vyc29y
IHdvdWxkCj4gPiBiZSBpbnZpc2libGUuCj4gCj4gSG1tLCBJIHRoaW5rIHRoZSBkdW1iIGludGVy
ZmFjZSBtYXkgYmUgbWlzc2luZyBhIGZldyBzdGVwcyBhcm91bmQgdGhlCj4gcGxhY2UgdG8gZW5z
dXJlIHRoZSBjb250ZW50cyBhcmUgZmx1c2hlZC4KCk5vLCBpdCdzIGZpbmUuIFdlIGRvIHRoZSBm
bHVzaCBpbiBwaW5uaW5nIHBhZ2VzLCB0aGUgb25seSB0aGluZyB0aGF0IHdhcwpkcm9wcGVkIHdh
cyB0aGVuIG1hcmtpbmcgdGhlIGNvbnRlbnQgYXMgZGlydHkuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

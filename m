Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3041115DBD
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 18:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19DA26E1F8;
	Sat,  7 Dec 2019 17:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA516E1F8
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 17:19:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19497062-1500050 for multiple; Sat, 07 Dec 2019 17:18:33 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157573905171.2300.12887657932583738116@skylake-alporthouse-com>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
 <20191207170110.2200142-7-chris@chris-wilson.co.uk>
 <157573905171.2300.12887657932583738116@skylake-alporthouse-com>
Message-ID: <157573911138.2300.8007458069340247296@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 07 Dec 2019 17:18:31 +0000
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Asynchronous cmdparser
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTItMDcgMTc6MTc6MzEpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMTItMDcgMTc6MDE6MDkpCj4gPiBFeGVjdXRlIHRoZSBjbWRwYXJzZXIg
YXN5bmNocm9ub3VzbHkgYXMgcGFydCBvZiB0aGUgc3VibWlzc2lvbiBwaXBlbGluZS4KPiA+IFVz
aW5nIG91ciBkbWEtZmVuY2VzLCB3ZSBjYW4gc2NoZWR1bGUgZXhlY3V0aW9uIGFmdGVyIGFuIGFz
eW5jaHJvbm91cwo+ID4gcGllY2Ugb2Ygd29yaywgc28gd2UgbW92ZSB0aGUgY21kcGFyc2VyIG91
dCBmcm9tIHVuZGVyIHRoZSBzdHJ1Y3RfbXV0ZXgKPiA+IGluc2lkZSBleGVjYnVmIGFzIHJ1biBp
dCBhcyBwYXJ0IG9mIHRoZSBzdWJtaXNzaW9uIHBpcGVsaW5lLiBUaGUgc2FtZQo+ID4gc2VjdXJp
dHkgcnVsZXMgYXBwbHksIHdlIGNvcHkgdGhlIHVzZXIgYmF0Y2ggYmVmb3JlIHZhbGlkYXRpb24g
YW5kCj4gPiB1c2Vyc3BhY2UgY2Fubm90IHRvdWNoIHRoZSB2YWxpZGF0aW9uIHNoYWRvdy4gVGhl
IG9ubHkgY2F2ZWF0IGlzIHRoYXQgd2UKPiA+IHdpbGwgZG8gcmVxdWVzdCBjb25zdHJ1Y3Rpb24g
YmVmb3JlIHdlIGNvbXBsZXRlIGNtZHBhcnNpbmcgYW5kIHNvIHdlCj4gPiBjYW5ub3Qga25vdyB0
aGUgb3V0Y29tZSBvZiB0aGUgdmFsaWRhdGlvbiBzdGVwIHVudGlsIGxhdGVyIC0tIHNvIHRoZQo+
ID4gZXhlY2J1ZiBpb2N0bCBkb2VzIG5vdCByZXBvcnQgLUVJTlZBTCBkaXJlY3RseSwgYnV0IHdl
IG11c3QgY2FuY2VsCj4gPiBleGVjdXRpb24gb2YgdGhlIHJlcXVlc3QgYW5kIGZsYWcgdGhlIGVy
cm9yIG9uIHRoZSBvdXQtZmVuY2UuCj4gIAo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNjExCgpBbHNvCkNsb3NlczogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNDEyCgo+ID4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

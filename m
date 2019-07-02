Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084B25CEEC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 13:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A268999A;
	Tue,  2 Jul 2019 11:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA3B89C16
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 11:56:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17098394-1500050 for multiple; Tue, 02 Jul 2019 12:56:07 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190702113149.21200-1-michal.winiarski@intel.com>
References: <20190702113149.21200-1-michal.winiarski@intel.com>
Message-ID: <156206856424.2466.13005612349532861735@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 02 Jul 2019 12:56:04 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915: Introduce private PAT
 management"
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAxOS0wNy0wMiAxMjozMTo0OCkKPiBUaGlzIHJl
dmVydHMgY29tbWl0IDQzOTU4OTBhNDg1NTE5ODI1NDlkMjIyZDE5MjNlMjgzM2RhYzQ3Y2YuCj4g
Cj4gSXQncyBiZWVuIG92ZXIgYSB5ZWFyIHNpbmNlIHRoaXMgd2FzIG1lcmdlZCwgYW5kIHRoZSBh
Y3R1YWwgdXNlcnMgb2YKPiBpbnRlbF9wcGF0X2dldCAvIGludGVsX3BwYXRfcHV0IG5ldmVyIG1h
dGVyaWFsaXplZC4KPiAKPiBUaW1lIHRvIHJlbW92ZSBpdCEKPiAKPiB2MjogVW5icmVhayBzdXNw
ZW5kIChDaHJpcykKPiB2MzogUmViYXNlLCBkcm9wIGZpeGVzIHRhZyB0byBhdm9pZCBjb25mdXNp
b24KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNr
aUBpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+
Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBDYzogWmhpIFdh
bmcgPHpoaS5hLndhbmdAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CgpXaGlsZSBJIHdvdWxkIGFwcHJlY2lhdGUgYW4gYWNrIGZy
b20gWmhpIChiZWluZyB0aGUgb3JpZ2luYWwgYXV0aG9yKSwKc2luY2Ugd2UndmUgYWxyZWFkeSBz
ZW50IHRoaXMgYSBmZXcgdGltZXMsIHRoZXJlJ3Mgbm8gcmVhc29uIHRvIGRlbGF5CndhaXRpbmcg
Zm9yIGEgcmVzcG9uc2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

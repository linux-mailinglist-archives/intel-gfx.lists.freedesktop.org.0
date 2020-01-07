Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5C413286E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 15:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238CF89C51;
	Tue,  7 Jan 2020 14:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA72089BAC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 14:05:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19796537-1500050 for multiple; Tue, 07 Jan 2020 14:05:29 +0000
MIME-Version: 1.0
To: "Souza, Jose" <jose.souza@intel.com>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <04c2960a11f5361288d7d3a8a3bd16301b05c5e5.camel@intel.com>
References: <20200107130322.gdk5b6jurifr26c2@kili.mountain>
 <04c2960a11f5361288d7d3a8a3bd16301b05c5e5.camel@intel.com>
Message-ID: <157840592663.2273.15929240102084093971@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 07 Jan 2020 14:05:26 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix an error code in
 intel_modeset_all_tiles()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTb3V6YSwgSm9zZSAoMjAyMC0wMS0wNyAxNDowMTo0MCkKPiBPbiBUdWUsIDIwMjAt
MDEtMDcgYXQgMTY6MDMgKzAzMDAsIERhbiBDYXJwZW50ZXIgd3JvdGU6Cj4gPiBUaGVyZSBpcyBh
IGN1dCBhbmQgcGFzdGUgYnVnIHNvIHdlIHJldHVybiB0aGUgd3JvbmcgZXJyb3IgY29kZS4KPiA+
IAo+ID4gRml4ZXM6IGE2MDNmNWJkMTY5MSAoImRybS9pOTE1L2RwOiBNYWtlIHN1cmUgYWxsIHRp
bGVkIGNvbm5lY3RvcnMgZ2V0Cj4gPiBhZGRlZCB0byB0aGUgc3RhdGUgd2l0aCBmdWxsIG1vZGVz
ZXQiKQo+IAo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KPiAKPiA+IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJw
ZW50ZXJAb3JhY2xlLmNvbT4KClB1c2hlZC4gVGhhbmtzIGZvciB0aGUgcGF0Y2gsCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

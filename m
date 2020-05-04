Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 367711C4935
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 23:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DF8899DC;
	Mon,  4 May 2020 21:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4A3899DC
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 21:43:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21111941-1500050 for multiple; Mon, 04 May 2020 22:42:51 +0100
MIME-Version: 1.0
In-Reply-To: <20200423142604.30650-1-chris@chris-wilson.co.uk>
References: <20200423142604.30650-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158862856805.19025.15105473279609067462@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 04 May 2020 22:42:48 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Show per-engine default property
 values in sysfs
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDQtMjMgMTU6MjY6MDQpCj4gV2h5PwoKQWN0dWFs
bHkgdGhpcyB3b3VsZCBiZSBxdWl0ZSB1c2VmdWwhCgo+IC9zeXMvY2xhc3MvZHJtL2NhcmQwL2Vu
Z2luZS9yY3MwLwo+IOKUnOKUgOKUgCBjYXBhYmlsaXRpZXMKPiDilJzilIDilIAgY2xhc3MKPiDi
lJzilIDilIAgLmRlZmF1bHRzCj4g4pSCwqDCoCDilJzilIDilIAgaGVhcnRiZWF0X2ludGVydmFs
X21zCj4g4pSCwqDCoCDilJzilIDilIAgbWF4X2J1c3l3YWl0X2R1cmF0aW9uX25zCj4g4pSCwqDC
oCDilJzilIDilIAgcHJlZW1wdF90aW1lb3V0X21zCj4g4pSCwqDCoCDilJzilIDilIAgc3RvcF90
aW1lb3V0X21zCj4g4pSCwqDCoCDilJTilIDilIAgdGltZXNsaWNlX2R1cmF0aW9uX21zCj4g4pSc
4pSA4pSAIGhlYXJ0YmVhdF9pbnRlcnZhbF9tcwo+IOKUnOKUgOKUgCBpbnN0YW5jZQo+IOKUnOKU
gOKUgCBrbm93bl9jYXBhYmlsaXRpZXMKPiDilJzilIDilIAgbWF4X2J1c3l3YWl0X2R1cmF0aW9u
X25zCj4g4pSc4pSA4pSAIG1taW9fYmFzZQo+IOKUnOKUgOKUgCBuYW1lCj4g4pSc4pSA4pSAIHBy
ZWVtcHRfdGltZW91dF9tcwo+IOKUnOKUgOKUgCBzdG9wX3RpbWVvdXRfbXMKPiDilJTilIDilIAg
dGltZXNsaWNlX2R1cmF0aW9uX21zCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==

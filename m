Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2302EFA86
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 22:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 634116E8D5;
	Fri,  8 Jan 2021 21:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44126E8F2
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 21:32:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23543068-1500050 for multiple; Fri, 08 Jan 2021 21:32:02 +0000
MIME-Version: 1.0
In-Reply-To: <3ab4fe46-8a4a-a665-687e-131257271d23@redhat.com>
References: <20210104203905.19248-1-chris@chris-wilson.co.uk>
 <3ab4fe46-8a4a-a665-687e-131257271d23@redhat.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Hans de Goede <hdegoede@redhat.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 08 Jan 2021 21:32:01 +0000
Message-ID: <161014152178.12470.2908662646103563460@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable RPM wakeref assertions
 during driver shutdown
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

UXVvdGluZyBIYW5zIGRlIEdvZWRlICgyMDIxLTAxLTA1IDE1OjI1OjU2KQo+IEhpLAo+IAo+IE9u
IDEvNC8yMSA5OjM5IFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBcyB3aXRoIHRoZSByZWd1
bGFyIHN1c3BlbmQgcGF0aHMsIGFsc28gZGlzYWJsZSB0aGUgd2FrZXJlZiBhc3NlcnRpb25zCj4g
PiBhcyB3ZSBkaXNhYmxlIHRoZSBkcml2ZXIgZHVyaW5nIHNodXRkb3duLgo+ID4gCj4gPiBSZXBv
cnRlZC1ieTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KPiA+IENsb3Nlczog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yODk5Cj4g
PiBGaXhlczogZmUwZjFlM2JmZGZlICgiZHJtL2k5MTU6IFNodXQgZG93biBkaXNwbGF5cyBncmFj
ZWZ1bGx5IG9uIHJlYm9vdCIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRlQHJlZGhh
dC5jb20+Cj4gCj4gVGhhbmtzLCBJIGNhbiBjb25maXJtIHRoYXQgdGhpcyBwYXRjaCBmaXhlcyB0
aGUgd2Fybi9iYWNrdHJhY2Ugb24gc2h1dGRvd24vcmVib290Ogo+IAo+IFRlc3RlZC1ieTogSGFu
cyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KClRoYW5rcyBmb3IgdGhlIHJlcG9ydCwg
YW5kIHRoYW5rcyBWaWxsZSBmb3IgZG91YmxlIGNoZWNraW5nLgpQdXNoZWQsCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

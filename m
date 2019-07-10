Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F32896468B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 14:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21708932D;
	Wed, 10 Jul 2019 12:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48F648932D;
 Wed, 10 Jul 2019 12:55:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 05:55:07 -0700
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="341065021"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 05:55:05 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 10 Jul 2019 14:54:59 +0200
Message-ID: <34737143.LqZMGNDrZD@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <156276282845.11940.4812142560907762693@skylake-alporthouse-com>
References: <20190710123631.26575-1-janusz.krzysztofik@linux.intel.com>
 <156276282845.11940.4812142560907762693@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 0/6] Rename functions to match their
 entry points
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkbmVzZGF5LCBKdWx5IDEwLCAyMDE5IDI6NDc6MDggUE0gQ0VTVCBDaHJpcyBXaWxzb24g
d3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTAgMTM6MzY6MjUp
Cj4gPiBOZWVkIGZvciB0aGlzIHdhcyBpZGVudGlmaWVkIHdoaWxlIHdvcmtpbmcgb24gc3BsaXQg
b2YgZHJpdmVyIHVuYmluZAo+ID4gcGF0aCBpbnRvIF9yZW1vdmUoKSBhbmQgX3JlbGVhc2UoKSBw
YXJ0cy4gIENvbnNpc3RlbmN5IGluIGZ1bmN0aW9uCj4gPiBuYW1pbmcgaGFzIGJlZW4gcmVjb2du
aXplZCBhcyBoZWxwZnVsIHdoZW4gdHJ5aW5nIHRvIHdvcmsgb3V0IHdoaWNoCj4gPiBwaGFzZSB0
aGUgY29kZSBpcyBpbi4KPiA+IAo+ID4gV2hhdCBJJ20gc3RpbGwgbm90IHN1cmUgYWJvdXQgaXMg
ZGVzaXJlZCBkZXB0aCBvZiB0aGF0IG1vZGlmaWNhdGlvbiAtCj4gPiBob3cgZGVlcCBzaG91bGQg
d2UgZ28gZG93biB3aXRoIHJlbmFtaW5nIHRvIG5vdCBvdmVycmlkZSBtZWFuaW5nZnVsbAo+ID4g
ZnVuY3Rpb24gbmFtZXMuICBQbGVhc2UgYWR2aXNlIGlmIHlvdSB0aGluayBzdGlsbCBtb3JlIGRl
ZXAgcmVuYW1pbmcKPiA+IG1ha2VzIHNlbnNlLgo+IAo+IEkgZGlkIGEgZG91YmxlIHRha2Ugb3Zl
ciAiZHJpdmVyX3JlbGVhc2UiIGJ1dCBieSB0aGUgZW5kIEkgd2FzIGluCj4gYWdyZWVtZW50Lgo+
IAo+IFRoZSBlYXJseV9yZWxlYXNlIHRob3VnaCwgdGhhdCBpcyB3b3J0aCBhIGJpdCBvZiBhcnRp
c3RpYyBsaWNlbnNlIHRvIHNheQo+IGVhcmx5X3Byb2JlIHBhaXJzIHdpdGggbGF0ZV9yZWxlYXNl
LgoKT0ssIEknbGwgZml4IGl0LCBhcyB3ZWxsIGFzIG90aGVyIGlzc3VlcyBwb2ludGVkIG91dCBi
eSBkaW0sIGFuZCByZXN1Ym1pdC4KClRoYW5rcywKSmFudXN6Cgo+IC1DaHJpcwo+IAoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

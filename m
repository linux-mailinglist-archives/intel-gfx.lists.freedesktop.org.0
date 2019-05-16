Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFFD1FF76
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 08:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F497891D5;
	Thu, 16 May 2019 06:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DB0891D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 06:20:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 23:20:21 -0700
X-ExtLoop1: 1
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by orsmga002.jf.intel.com with ESMTP; 15 May 2019 23:20:20 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.155]) by
 IRSMSX103.ger.corp.intel.com ([169.254.3.133]) with mapi id 14.03.0415.000;
 Thu, 16 May 2019 07:20:19 +0100
From: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Thread-Topic: Shutdown hooks
Thread-Index: AQHVCy8H0YIHRf/120OzppN3KzrH7qZtN7sA
Date: Thu, 16 May 2019 06:20:19 +0000
Message-ID: <3888466.CaR8c4z4uE@jkrzyszt-desk.ger.corp.intel.com>
References: <20190515150042.8409-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190515150042.8409-1-chris@chris-wilson.co.uk>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.7.139]
Content-ID: <EDCA6B5D32CB1F47A7DD5FE9FB0E80A1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Shutdown hooks
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkbmVzZGF5LCBNYXkgMTUsIDIwMTkgNTowMDo0MCBQTSBDRVNUIENocmlzIFdpbHNvbiB3
cm90ZToKPiBKYW51cywgc29tZSBvbGQgcGF0Y2hlcyB0aGF0IG1heSBiZSBvZiB1c2UgZm9yIHNo
dXRkb3duIHByaW9yIHRvIGtleGVjLgo+IC1DaHJpcwoKSGkgQ2hyaXMsCgpUaGFua3MgZm9yIHNo
YXJpbmcuCgpJJ20gb25seSBub3Qgc3VyZSB3aHkgeW91IG1lbnRpb25lZCBrZXhlYy4gIEkgaGF2
ZSBhbiBpbXByZXNzaW9uIHNvbWVvbmUgZWxzZSAKd2FzIHRhbGtpbmcgYWJvdXQga2V4ZWMgcmVj
ZW50bHkgc28gbWF5YmUgSSB3YXMgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQuICAKQnV0IGFu
eXdheSwgdGhvc2UgcGF0Y2hlcyBsb29rIHRvIG1lIGxpa2UgdGhleSBtYXkgYmUgaGVscGZ1bCBi
eSBob3R1bnBsdWcgc28gCkknbSBnb2luZyB0byBnaXZlIHRoZW0gYSB0cnkgd2l0aCB0aGUgaG90
dW5wbHVnIHRlc3QuCgpUaGFua3MsCkphbnVzegotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKSW50ZWwgVGVjaG5vbG9n
eSBQb2xhbmQgc3AuIHogby5vLgp1bC4gU2xvd2Fja2llZ28gMTczIHwgODAtMjk4IEdkYW5zayB8
IFNhZCBSZWpvbm93eSBHZGFuc2sgUG9sbm9jIHwgVklJIFd5ZHppYWwgR29zcG9kYXJjenkgS3Jh
am93ZWdvIFJlamVzdHJ1IFNhZG93ZWdvIC0gS1JTIDEwMTg4MiB8IE5JUCA5NTctMDctNTItMzE2
IHwgS2FwaXRhbCB6YWtsYWRvd3kgMjAwLjAwMCBQTE4uCgpUYSB3aWFkb21vc2Mgd3JheiB6IHph
bGFjem5pa2FtaSBqZXN0IHByemV6bmFjem9uYSBkbGEgb2tyZXNsb25lZ28gYWRyZXNhdGEgaSBt
b3plIHphd2llcmFjIGluZm9ybWFjamUgcG91Zm5lLiBXIHJhemllIHByenlwYWRrb3dlZ28gb3Ry
enltYW5pYSB0ZWogd2lhZG9tb3NjaSwgcHJvc2lteSBvIHBvd2lhZG9taWVuaWUgbmFkYXdjeSBv
cmF6IHRyd2FsZSBqZWogdXN1bmllY2llOyBqYWtpZWtvbHdpZWsKcHJ6ZWdsYWRhbmllIGx1YiBy
b3pwb3dzemVjaG5pYW5pZSBqZXN0IHphYnJvbmlvbmUuClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0
YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvciB0aGUgc29sZSB1
c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVu
ZGVkIHJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNlbmRlciBhbmQgZGVsZXRlIGFsbCBj
b3BpZXM7IGFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uIGJ5Cm90aGVycyBpcyBzdHJpY3RseSBw
cm9oaWJpdGVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

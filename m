Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D04D49F25
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 13:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 125E26E141;
	Tue, 18 Jun 2019 11:27:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 264206E140;
 Tue, 18 Jun 2019 11:27:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id B5181285330
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
References: <cover.1560434374.git.guillaume.tucker@collabora.com>
 <f60f7f9d238ea721d3dcfcc4983b8a67ebe2cf95.1560434374.git.guillaume.tucker@collabora.com>
 <20190614103356.m7s2gx66pnvthaw7@ahiler-desk1.fi.intel.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <0085aaa7-1c75-524b-c74c-955f862cc931@collabora.com>
Date: Tue, 18 Jun 2019 12:27:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614103356.m7s2gx66pnvthaw7@ahiler-desk1.fi.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] gitlab-ci: add build for MIPS
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTQvMDYvMjAxOSAxMTozMywgQXJrYWRpdXN6IEhpbGVyIHdyb3RlOgo+IE9uIFRodSwgSnVu
IDEzLCAyMDE5IGF0IDAzOjAxOjA2UE0gKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6Cj4+
IEFkZCBEb2NrZXIgaW1hZ2UgYW5kIEdpdGxhYiBDSSBzdGVwcyB0byBydW4gYnVpbGRzIGZvciB0
aGUgTUlQUwo+PiBhcmNoaXRlY3R1cmUgdXNpbmcgRGViaWFuIFN0cmV0Y2ggd2l0aCBiYWNrcG9y
dHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNr
ZXJAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAuZ2l0bGFiLWNpLnltbCAgICAgICAgIHwgMjgg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgRG9ja2VyZmlsZS5kZWJpYW4tbWlwcyB8
IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgbWVzb24tY3Jv
c3MtbWlwcy50eHQgICB8IDEyICsrKysrKysrKysrKwo+PiAgMyBmaWxlcyBjaGFuZ2VkLCA3OSBp
bnNlcnRpb25zKCspCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9ja2VyZmlsZS5kZWJpYW4tbWlw
cwo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1lc29uLWNyb3NzLW1pcHMudHh0Cj4+Cj4+IGRpZmYg
LS1naXQgYS8uZ2l0bGFiLWNpLnltbCBiLy5naXRsYWItY2kueW1sCj4+IGluZGV4IDc3MTE0M2E5
ZWE5NS4uZTM5MGY4ZjQ3MmQ1IDEwMDY0NAo+PiAtLS0gYS8uZ2l0bGFiLWNpLnltbAo+PiArKysg
Yi8uZ2l0bGFiLWNpLnltbAo+PiBAQCAtOTAsNiArOTAsMTcgQEAgYnVpbGQ6dGVzdHMtZGViaWFu
LW1lc29uLWFybTY0Ogo+PiAgICAgIHBhdGhzOgo+PiAgICAgICAgLSBidWlsZAo+PiAgCj4+ICti
dWlsZDp0ZXN0cy1kZWJpYW4tbWVzb24tbWlwczoKPj4gKyAgaW1hZ2U6ICRDSV9SRUdJU1RSWS8k
Q0lfUFJPSkVDVF9QQVRIL2lndC1kZWJpYW4tbWlwczpsYXRlc3QKPj4gKyAgc3RhZ2U6IGJ1aWxk
Cj4+ICsgIHNjcmlwdDoKPj4gKyAgICAtIGV4cG9ydCBQS0dfQ09ORklHX1BBVEg9L3Vzci9saWIv
bWlwcy1saW51eC1nbnUvcGtnY29uZmlnLwo+PiArICAgIC0gbWVzb24gLS1jcm9zcy1maWxlIG1l
c29uLWNyb3NzLW1pcHMudHh0IGJ1aWxkCj4+ICsgICAgLSBuaW5qYSAtQyBidWlsZAo+PiArICBh
cnRpZmFjdHM6Cj4+ICsgICAgcGF0aHM6Cj4+ICsgICAgICAtIGJ1aWxkCj4+ICsKPj4gIGJ1aWxk
OnRlc3RzLWRlYmlhbi1hdXRvdG9vbHM6Cj4+ICAgIGltYWdlOiAkQ0lfUkVHSVNUUlkvJENJX1BS
T0pFQ1RfUEFUSC9pZ3QtZGViaWFuOmxhdGVzdAo+PiAgICBzdGFnZTogYnVpbGQKPj4gQEAgLTIy
MSw2ICsyMzIsMjMgQEAgY29udGFpbmVyczppZ3QtZGViaWFuLWFybTY0Ogo+PiAgICAgIC0gZG9j
a2VyIGJ1aWxkIC10ICRDSV9SRUdJU1RSWS8kQ0lfUFJPSkVDVF9QQVRIL2lndC1kZWJpYW4tYXJt
NjQgLWYgRG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQgLgo+PiAgICAgIC0gZG9ja2VyIHB1c2ggJENJ
X1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0LWRlYmlhbi1hcm02NAo+IAo+IEFueSBwYXJ0
aWN1bGFyIHJlYXNvbiBmb3Igbm90IGhhdmluZyBuaW5qYS10ZXN0IHN0ZXAgZm9yIE1JUFM/CgpT
b3JyeSBJIG92ZXJsb29rZWQgdGhhdCBiaXQsIEknbSBhZGRpbmcgaXQgaW4gYSB2My4gIFRoYXQg
bWFkZSBtZQpyZWFsaXNlIHRoYXQgdGhlIGxpYmF0b21pYzE6bWlwcyBwYWNrYWdlIHdhcyByZXF1
aXJlZCBmb3IKcnVuLXRpbWUgbGlua2luZyBvbiBtdWx0aS1hcmNoIGZpbGUgc3lzdGVtcy4KCj4g
T3RoZXIgdGhhbiB0aGF0IChhbmQgUGV0cmkncyBjb25jZXJuLCBzaW5jZSBJIGRvbid0IHNwZWFr
IERlYmlhbiksCj4gbG9va3MgZ29vZC4KClRoYW5rcywgSSBhbHNvIHJlcGxpZWQgb24gdGhlIG90
aGVyIHRocmVhZCBhYm91dCBhZGRpbmcKbGliYXRvbWljMSBmb3Igc3ViLWFyY2hpdGVjdHVyZXMu
CgpHdWlsbGF1bWUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

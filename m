Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 505F254FAE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA4F6E0F6;
	Tue, 25 Jun 2019 13:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155EF6E0F6;
 Tue, 25 Jun 2019 13:04:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id BFD7B260D5B
To: "Ser, Simon" <simon.ser@intel.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>,
 "Latvala, Petri" <petri.latvala@intel.com>
References: <cover.1561393147.git.guillaume.tucker@collabora.com>
 <7643ddeebd6cba07197b76b9c646436029f0027b.camel@intel.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <0eebda01-fd2a-71c9-8286-a0407e572dd0@collabora.com>
Date: Tue, 25 Jun 2019 14:04:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <7643ddeebd6cba07197b76b9c646436029f0027b.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v4 0/4] Use C11 atomics
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjUvMDYvMjAxOSAxMTo1NCwgU2VyLCBTaW1vbiB3cm90ZToKPiBPbiBNb24sIDIwMTktMDYt
MjQgYXQgMTc6MjIgKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6Cj4+IFRoaXMgc2VyaWVz
IHJlcGxhY2VzIGNhbGxzIHRvIHRoZSBfX3N5bmNfKiBmdW5jdGlvbnMgd2l0aCB0aGUgbW9yZQo+
PiByZWNlbnQgYXRvbWljXyogb25lcyBkZWZpbmVkIGluIHN0ZGF0b21pYy5oIGluIGdlbV9jcmVh
dGUgYW5kCj4+IHN3X3N5bmMuICBJdCBhbHNvIGFkZHMgZGVwZW5kZW5jeSBvbiBsaWJhdG9taWMg
d2hlbiByZXF1aXJlZCwgdGhhdCBpcwo+PiB0byBzYXkgd2hlbiB0aGUgQ1BVIGFyY2hpdGVjdHVy
ZSBkb2Vzbid0IHByb3ZpZGUgbmF0aXZlIHN1cHBvcnQgZm9yCj4+IHNvbWUgYXRvbWljIG9wZXJh
dGlvbnMuICBUaGlzIG1ha2VzIHRoZSB0ZXN0cyBtb3JlIHBvcnRhYmxlLCBpbgo+PiBwYXJ0aWN1
bGFyIGZvciAzMi1iaXQgTUlQUyB3aGljaCBkb2Vzbid0IHN1cHBvcnQgNjQtYml0IGF0b21pY3Mu
Cj4+Cj4gVGhhbmtzIGZvciB0aGlzIHNlcmllcyEgUHVzaGVkOgo+IAo+IFRvIGdpdGxhYi5mcmVl
ZGVza3RvcC5vcmc6ZHJtL2lndC1ncHUtdG9vbHMuZ2l0Cj4gICAgYTZmNWNjODU0ZWZiLi41ZWFm
YTMzZGJkYjEgIG1hc3RlciAtPiBtYXN0ZXIKCkF3ZXNvbWUhCgpUaGUgcGF0Y2ggSSBzZW50IHNl
cGFyYXRlbHkgdG8gZW5hYmxlIE1JUFMgaW4gR2l0bGFiIENJIHNob3VsZApub3cgYmUgcmVhZHkg
dG8gYmUgcHVzaGVkIGFzIHdlbGwsIEknbGwgZm9sbG93IHVwIG9uIHRoZSBvdGhlcgp0aHJlYWQu
CgpHdWlsbGF1bWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FD0217EA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 13:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0F389895;
	Fri, 17 May 2019 11:52:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517AC89893;
 Fri, 17 May 2019 11:52:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 04:52:38 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 04:52:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-16-tvrtko.ursulin@linux.intel.com>
 <155809312278.12244.14543752945247172982@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f55f25ca-55c6-888b-d16c-b811961e5cd4@linux.intel.com>
Date: Fri, 17 May 2019 12:52:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155809312278.12244.14543752945247172982@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 15/25] gem_wsim: Engine map
 load balance command
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA1LzIwMTkgMTI6MzgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTE3IDEyOjI1OjE2KQo+PiBAQCAtMTg0LDMgKzE4NiwxOSBAQCBF
eGFtcGxlOgo+PiAgIE0uMS5WQ1MKPj4gICAKPj4gICBUaGlzIHNldHMgdXAgdGhlIGVuZ2luZSBt
YXAgdG8gYWxsIGF2YWlsYWJsZSBWQ1MgY2xhc3MgZW5naW5lcy4KPj4gKwo+PiArQ29udGV4dCBs
b2FkIGJhbGFuY2luZwo+PiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiArCj4+ICtDb250ZXh0
IGxvYWQgYmFsYW5jaW5nIChha2EgVmlydHVhbCBFbmdpbmUpIGlzIGFuIGk5MTUgZmVhdHVyZSB3
aGVyZSB0aGUgZHJpdmVyCj4+ICt3aWxsIHBpY2sgdGhlIGJlc3QgZW5naW5lIChtb3N0IGlkbGUp
IHRvIHN1Ym1pdCB0byBnaXZlbiBwcmV2aW91c2x5IGNvbmZpZ3VyZWQKPiAKPiAibW9zdCBpZGxl
Ij8gQ3VycmVudGx5IHdlIHVzZSBmaXJzdCBpZGxlLCBha2EgZ3JlZWR5IGJhbGFuY2luZy4KCldo
YXQgYWJvdXQgIm1vc3QgaWRsZSIgLSBpcyBpdCBiYWQgRW5nbGlzaD8gOikKCj4gcy90aGUgYmVz
dCBlbmdpbmUvYW4gZW5naW5lLwoKT2theS4gOikKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

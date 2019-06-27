Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7D958376
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 15:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BEC6E334;
	Thu, 27 Jun 2019 13:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C2416E334;
 Thu, 27 Jun 2019 13:29:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 06:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="173129182"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga002.jf.intel.com with ESMTP; 27 Jun 2019 06:29:32 -0700
Received: from [10.237.72.73] (mperes-desk.fi.intel.com [10.237.72.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 214655806E7;
 Thu, 27 Jun 2019 06:29:30 -0700 (PDT)
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 "Ser, Simon" <simon.ser@intel.com>
References: <20190627073615.15573-1-chris@chris-wilson.co.uk>
 <20db22e0517c227b6fef12d7b523312fbe17c703.camel@intel.com>
 <20190627132635.ylxu4jmeslcxobva@ahiler-desk1.fi.intel.com>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <67c02a5c-6c0d-d6c1-ec67-80f9443f4079@linux.intel.com>
Date: Thu, 27 Jun 2019 16:29:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190627132635.ylxu4jmeslcxobva@ahiler-desk1.fi.intel.com>
Content-Language: en-PH
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_pread/pwrite:
 Rename "basic"
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

T24gMjcvMDYvMjAxOSAxNjoyNiwgQXJrYWRpdXN6IEhpbGVyIHdyb3RlOgo+IE9uIFRodSwgSnVu
IDI3LCAyMDE5IGF0IDA4OjE4OjM2QU0gKzAwMDAsIFNlciwgU2ltb24gd3JvdGU6Cj4+IE9uIFRo
dSwgMjAxOS0wNi0yNyBhdCAwODozNiArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gVGhl
ICJiYXNpYyIgc3VidGVzdHMgcGVyZm9ybSBubyB2ZXJpZmljYXRpb24gdGhhdCB0aGUgcmVhZC93
cml0ZSB3b3JrLAo+Pj4gb25seSBmdW5jdGlvbiBhcyBtZXJlIEFQSSBleGVyY2lzZXJzIGFuZCBs
b29zZSBiZW5jaG1hcmtzLiBSZW5hbWUgdGhlbQo+Pj4gdG8gcmVmbGVjdCB0aGF0IHRoZXkgYXJl
IHBvb3IgYmVuY2htYXJrcyBpbnN0ZWFkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pgo+PiBSZXZpZXdlZC1ieTogU2ltb24g
U2VyIDxzaW1vbi5zZXJAaW50ZWwuY29tPgo+IAo+IHlvdSBmb3Jnb3QgdG8gYWRkIHItYiB3aGls
ZSBwdXNoaW5nCj4gCj4gVGVzdHMgYXJlIG5vdyByZW5hbWVkIGluIHRoZSBjaWJ1Z2xvZywgc28g
YWxsIHRoZSBleGlzdGluZyBmaWx0ZXJzICgxKQo+IHdpbGwgYXBwbHkuIEl0J3MgbmljZSB0byBD
QyBzb21lb25lIGhhbmRsaW5nIGNpYnVnbG9nIHdoZW4gcmVuYW1pbmcsCj4gb3RoZXJ3aXNlIHdl
IHdpbGwgZW5kIHVwIHdpdGggbW9yZSBub2lzZSBhbmQgc3BlbmQgdGltZSBvbiBjcmVhdGluZyBh
bmQKPiBkZWR1cGxpY2F0aW5nIGJ1Z3MgbGF0ZXIgb24uCgpNeSBmYXVsdC4gSSBnYXZlIHRoZSBB
Q0sgYnV0IGhhZCBub3QgZG9uZSB0aGUgcmVuYW1lIHlldC4gU29ycnkgYWJvdXQgdGhhdCEKCk1h
cnRpbgoKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

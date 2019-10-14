Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E13E5D6A7A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 21:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C13A16E30D;
	Mon, 14 Oct 2019 19:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A00AC6E30D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 19:58:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 12:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="189122331"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.251.82.199])
 by orsmga008.jf.intel.com with ESMTP; 14 Oct 2019 12:58:42 -0700
MIME-Version: 1.0
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris.p.wilson@intel.com>
In-Reply-To: <20191014185531.62855-3-umesh.nerlige.ramappa@intel.com>
References: <20191014185531.62855-1-umesh.nerlige.ramappa@intel.com>
 <20191014185531.62855-3-umesh.nerlige.ramappa@intel.com>
Message-ID: <157108312064.22469.13636294705819353027@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 14 Oct 2019 20:58:40 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/perf: enable OAR context
 save/restore of performance counters
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgKDIwMTktMTAtMTQgMTk6NTU6MzEpCj4gQEAg
LTIzMTMsNiArMjM3NywxNyBAQCBzdGF0aWMgaW50IGxyY19jb25maWd1cmVfYWxsX2NvbnRleHRz
KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIGVycjsKPiAgICAgICAgICAgICAgICAgfQo+ICAKPiArICAgICAgICAgICAgICAg
LyoKPiArICAgICAgICAgICAgICAgICogRm9yIEdlbjEyLCBwZXJmb3JtYW5jZSBjb3VudGVycyBh
cmUgY29udGV4dAo+ICsgICAgICAgICAgICAgICAgKiBzYXZlZC9yZXN0b3JlZC4gT25seSBlbmFi
bGUgaXQgZm9yIHRoZSBjb250ZXh0IHRoYXQKPiArICAgICAgICAgICAgICAgICogcmVxdWVzdGVk
IHRoaXMuCj4gKyAgICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICBpZiAoY3R4ID09
IHN0cmVhbS0+Y3R4ICYmIElTX0dFTihpOTE1LCAxMikpIHsKPiArICAgICAgICAgICAgICAgICAg
ICAgICBlcnIgPSBnZW4xMl9jb25maWd1cmVfY29udGV4dF9vYXIoY3R4LCBvYV9jb25maWcgIT0g
TlVMTCk7CgoKcmVnc1tDVFhfQ09OVEVYVF9DT05UUk9MXSB8PSBpbnRlbF9scmNfbWFrZV9jdHhf
Y29udHJvbChlbmdpbmUpOwoKY2FuIGJlIG1vZGlmaWVkIHdpdGggYSBwbGFpbiBMUkkgKGF0IGxl
YXN0IEkgaGF2ZSBzdWNjZXNzZnVsbHkgbW9kaWZpZWQKSU5ISUJJVF9TWU5fQ1RYIGJlZm9yZSku
IEhhdmUgeW91IHRyaWVkIGp1c3QgZW1pdHRpbmcgYW4gTFJJIGluIHRoZSBwaW5uZWQKY29udGV4
dD8KLUNocmlzCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBDb3Jwb3JhdGlvbiAoVUspIExpbWl0ZWQKUmVn
aXN0ZXJlZCBOby4gMTEzNDk0NSAoRW5nbGFuZCkKUmVnaXN0ZXJlZCBPZmZpY2U6IFBpcGVycyBX
YXksIFN3aW5kb24gU04zIDFSSgpWQVQgTm86IDg2MCAyMTczIDQ3CgpUaGlzIGUtbWFpbCBhbmQg
YW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhl
IHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3IgZGlz
dHJpYnV0aW9uCmJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5v
dCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBk
ZWxldGUgYWxsIGNvcGllcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4

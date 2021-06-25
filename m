Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A34743B3E03
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 09:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E3706ECE0;
	Fri, 25 Jun 2021 07:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E02DA6EC35;
 Fri, 25 Jun 2021 07:48:11 +0000 (UTC)
IronPort-SDR: Oo33wuLQus7GgwZYx1XT+W4Wk5d5R6VaEQX1jB4rHvZYw8IaNfQ0ddrOjKrwlvbX80MZwPr1Nw
 iO1Q6o/HbxEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="229222038"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="229222038"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 00:48:10 -0700
IronPort-SDR: b7Pe5NkesrrDkhsN96JJvpf3kl0mzb807k9Rkg6nvK/8CH5Q9wNxzc5WvFZ7JHNYX/3Je3H0WV
 yO++uHf5meLw==
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="453731121"
Received: from ssaranga-mobl2.ger.corp.intel.com (HELO [10.252.39.20])
 ([10.252.39.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 00:48:08 -0700
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
References: <20210624112914.311984-1-thomas.hellstrom@linux.intel.com>
 <CAKMK7uEeV0nvf+4ae2rYQHMBQ2rm2NNKT+n8CvDU=gdaEXHHBw@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <c9c9ab2d-e55c-6426-1d4f-20248040f111@linux.intel.com>
Date: Fri, 25 Jun 2021 09:48:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uEeV0nvf+4ae2rYQHMBQ2rm2NNKT+n8CvDU=gdaEXHHBw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Reinstate the mmap ioctl for
 some platforms
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjQtMDYtMjAyMSBvbSAxNDowNCBzY2hyZWVmIERhbmllbCBWZXR0ZXI6Cj4gT24gVGh1LCBK
dW4gMjQsIDIwMjEgYXQgMToyOSBQTSBUaG9tYXMgSGVsbHN0csO2bQo+IDx0aG9tYXMuaGVsbHN0
cm9tQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+IFJlaW5zdGF0ZSB0aGUgbW1hcCBpb2N0bCBm
b3IgYWxsIGN1cnJlbnQgaW50ZWdyYXRlZCBwbGF0Zm9ybXMuCj4+IFRoZSBpbnRlbnRpb24gd2Fz
IHJlYWxseSB0byBoYXZlIGl0IGRpc2FibGVkIGZvciBkaXNjcmV0ZSBncmFwaGljcwo+PiB3aGVy
ZSB3ZSBlbmZvcmNlIGEgc2luZ2xlIG1tYXAgbW9kZS4KPj4KPj4gRml4ZXM6IDM1Y2JkOTFlYjU0
MSAoImRybS9pOTE1OiBEaXNhYmxlIG1tYXAgaW9jdGwgZm9yIGdlbjEyKyIpCj4+IFNpZ25lZC1v
ZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNv
bT4KPj4gUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4K
PiBBY2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPgo+PiAt
LS0KPj4gdjI6Cj4+IC0gQWRkZWQgYSBSLUIuCj4+IC0gRml4ZWQgdXAgdGhlIGNvZGUgY29tbWVu
dCBhIGJpdC4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1h
bi5jIHwgNyArKysrLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMK
Pj4gaW5kZXggMmZkMTU1NzQyYmQyLi40ZjUwYTUwOGM3YTAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwo+PiBAQCAtNjIsMTAgKzYyLDExIEBAIGk5MTVf
Z2VtX21tYXBfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPj4gICAg
ICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+PiAgICAgICAgIHVuc2lnbmVk
IGxvbmcgYWRkcjsKPj4KPj4gLSAgICAgICAvKiBtbWFwIGlvY3RsIGlzIGRpc2FsbG93ZWQgZm9y
IGFsbCBwbGF0Zm9ybXMgYWZ0ZXIgVEdMLUxQLiAgVGhpcyBhbHNvCj4+IC0gICAgICAgICogY292
ZXJzIGFsbCBwbGF0Zm9ybXMgd2l0aCBsb2NhbCBtZW1vcnkuCj4+ICsgICAgICAgLyoKPj4gKyAg
ICAgICAgKiBtbWFwIGlvY3RsIGlzIGRpc2FsbG93ZWQgZm9yIGFsbCBkaXNjcmV0ZSBwbGF0Zm9y
bXMsCj4+ICsgICAgICAgICogYW5kIGZvciBhbGwgcGxhdGZvcm1zIHdpdGggR1JBUEhJQ1NfVkVS
ID4gMTIuCj4+ICAgICAgICAgICovCj4+IC0gICAgICAgaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA+
PSAxMiAmJiAhSVNfVElHRVJMQUtFKGk5MTUpKQo+PiArICAgICAgIGlmIChJU19ER0ZYKGk5MTUp
IHx8IEdSQVBISUNTX1ZFUihpOTE1KSA+IDEyKQo+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1F
T1BOT1RTVVBQOwo+Pgo+PiAgICAgICAgIGlmIChhcmdzLT5mbGFncyAmIH4oSTkxNV9NTUFQX1dD
KSkKPj4gLS0KPj4gMi4zMS4xCj4+Cj4KV291bGQga2VlcGluZyB0aGlzIGNoYW5nZSB1bmFwcGxp
ZWQgYnJlYWsgYW55IGN1cnJlbnRseSBzaGlwcGluZyBwbGF0Zm9ybXM/IElmIG5vdCwgY291bGQg
d2UgbGVhdmUgaXQgYXMtaXM/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB94D0EC4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 14:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B80A6E997;
	Wed,  9 Oct 2019 12:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161DD6E998
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 12:32:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 05:32:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="184044629"
Received: from pashteka-mobl.ger.corp.intel.com (HELO [10.252.41.207])
 ([10.252.41.207])
 by orsmga007.jf.intel.com with ESMTP; 09 Oct 2019 05:31:59 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-13-maarten.lankhorst@linux.intel.com>
 <20191008174231.GU1208@intel.com>
 <c277dadb-a8be-0426-62a6-58c3ba7d4c2a@linux.intel.com>
 <20191009122305.GY1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4c2b6570-4757-df80-9d5f-904d2e649593@linux.intel.com>
Date: Wed, 9 Oct 2019 14:31:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009122305.GY1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 12/24] drm/i915: Split plane hw and uapi
 state
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDktMTAtMjAxOSBvbSAxNDoyMyBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBXZWQs
IE9jdCAwOSwgMjAxOSBhdCAwMjoxMzo1NVBNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gT3AgMDgtMTAtMjAxOSBvbSAxOTo0MiBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPj4+
IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAxOjM1OjAyUE0gKzAyMDAsIE1hYXJ0ZW4gTGFua2hv
cnN0IHdyb3RlOgo+Pj4+IFNwbGl0dGluZyBwbGFuZSBzdGF0ZSBpcyBlYXNpZXIgdGhhbiBzcGxp
dHRpbmcgY3J0Y19zdGF0ZSwKPj4+PiBiZWZvcmUgcGxhbmUgY2hlY2sgd2UgY29weSB0aGUgZHJt
IHByb3BlcnRpZXMgdG8gaHcgc28gd2UgY2FuCj4+Pj4gZG8gdGhlIHNhbWUgaW4gYmlnam9pbmVy
IGxhdGVyIG9uLgo+Pj4+Cj4+Pj4gV2UgY29weSB0aGUgc3RhdGUgYWZ0ZXIgd2UgZGlkIGFsbCB0
aGUgbW9kZXNldCBoYW5kbGluZywgYnV0IGZvcnR1bmF0ZWx5Cj4+Pj4gaTkxNSBzZWVtcyB0byBi
ZSBzcGxpdCBjb3JyZWN0bHkgYW5kIG5vdGhpbmcgZHVyaW5nIG1vZGVzZXQgbG9va3MKPj4+PiBh
dCBwbGFuZV9zdGF0ZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gIC4uLi9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDM3ICsrKysrKysrKysr
KysrKysrKy0KPj4+PiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFu
ZS5oIHwgIDIgKwo+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyAgfCAgMSArCj4+Pj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaCAgICB8IDIyICsrKysrKysrKy0tCj4+Pj4gIDQgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+Pj4+IGluZGV4IDAxOTM3ODk2ZDY5
Yy4uY2MxNTRjZmEzMzgxIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4+Pj4gQEAgLTkzLDYgKzkzLDkgQEAgaW50
ZWxfcGxhbmVfZHVwbGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lKQo+Pj4+ICAJ
aW50ZWxfc3RhdGUtPnZtYSA9IE5VTEw7Cj4+Pj4gIAlpbnRlbF9zdGF0ZS0+ZmxhZ3MgPSAwOwo+
Pj4+ICAKPj4+PiArCS8qIHdpbGwgYmUgc2V0IGluIGludGVsX3BsYW5lX2F0b21pY19jaGVja193
aXRoX3N0YXRlKCkgKi8KPj4+PiArCW1lbXNldCgmaW50ZWxfc3RhdGUtPmh3LCAwLCBzaXplb2Yo
aW50ZWxfc3RhdGUtPmh3KSk7Cj4+PiBUaGF0IHNlZW1zIHdyb25nIGZvciB0aGUgY2FzZSB3aGVy
ZSB3ZSBhZGQgdGhlIHBsYW5lIGFmdGVyIHRoZQo+Pj4gcGxhbmUgY2hlY2sgaGFzIGFscmVhZHkg
YmVlbiBkb25lLgo+Pj4KPj4+IEkgdGhpbmsgd2Ugc2hvdWxkIG1haW50YWluIHRoZSBjdXJyZW50
IHN0YXRlIHVubGVzcyB0aGUgcGxhbmUgY2hlY2sKPj4+IHdpbGwgb3ZlcndyaXRlIGl0Lgo+PiBI
YXZlIHlvdSBzZWVuCj4+Cj4+IGludGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGVfYWZ0ZXJfY2hl
Y2soKT8KPiBZZXMsIGJ1dCBJIGRvbid0IGxpa2UgaXQuCgpUaGlzIGlzIGhvd2V2ZXIgcmVxdWly
ZWQgYmVjYXVzZSBvZiB0aGUgc3BsaXQuIFdlIHNob3VsZCBub3QgbG9vayBhdCB0aGUgb2xkIHBs
YW5lX3N0YXRlIGNvbnRlbnRzIGJlZm9yZSBhdG9taWNfY2hlY2sgYW5kIHRvIHByZXZlbnQgdGhh
dCBJIHRoaW5rIGl0J3MgYmV0dGVyIHRvIHplcm8gb3V0IHBsYW5lX3N0YXRlLT5odywKCmluIHdo
aWNoIGNhc2UgYnVncyBhcmUgYXQgbGVhc3QgY29uc2lzdGVudC4gOikKCn5NYWFydGVuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

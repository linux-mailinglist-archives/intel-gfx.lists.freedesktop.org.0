Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64614B6242
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 13:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3916EEE8;
	Wed, 18 Sep 2019 11:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D186EEE8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 11:30:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 04:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="194037309"
Received: from swatish2-mobl.gar.corp.intel.com (HELO [10.66.99.86])
 ([10.66.99.86])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Sep 2019 04:30:12 -0700
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <1568724525-19275-1-git-send-email-swati2.sharma@intel.com>
 <1568724525-19275-3-git-send-email-swati2.sharma@intel.com>
 <87y2ylx6s1.fsf@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <3ae3fa32-8050-574d-5942-5e38796cc21d@intel.com>
Date: Wed, 18 Sep 2019 17:00:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87y2ylx6s1.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v2][PATCH 2/3] drm/i915/display: Extract
 icl_read_luts()
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTgtU2VwLTE5IDM6MzEgUE0sIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIFR1ZSwgMTcgU2Vw
IDIwMTksIFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+IHdyb3RlOgo+PiBG
b3IgaWNsKywgaGF2ZSBodyByZWFkIG91dCB0byBjcmVhdGUgaHcgYmxvYiBvZiBnYW1tYQo+PiBs
dXQgdmFsdWVzLiBpY2wrIHBsYXRmb3JtcyBzdXBwb3J0cyBtdWx0aSBzZWdtZW50ZWQgZ2FtbWEK
Pj4gbW9kZSwgYWRkIGh3IGx1dCBjcmVhdGlvbiBmb3IgdGhpcyBtb2RlLgo+Pgo+PiBUaGlzIHdp
bGwgYmUgdXNlZCB0byB2YWxpZGF0ZSBnYW1tYSBwcm9ncmFtbWluZyB1c2luZyBkc2IKPj4gKGRp
c3BsYXkgc3RhdGUgYnVmZmVyKSB3aGljaCBpcyBhIHRnbCBmZWF0dXJlLgo+Pgo+PiB2MjogLXJl
YWRvdXQgY29kZSBmb3IgbXVsdGlzZWdtZW50ZWQgZ2FtbWEgaGFzIHRvIGNvbWUKPj4gICAgICAg
dXAgd2l0aCBzb21lIGludGVybWVkaWF0ZSBlbnRyaWVzIHRoYXQgYXJlbid0IHByZXNlcnZlZAo+
PiAgICAgICBpbiBoYXJkd2FyZSAoSmFuaSBOKQo+PiAgICAgIC1saW5lYXIgaW50ZXJwb2xhdGlv
biAoVmlsbGUpCj4+ICAgICAgLW1vdmVkIGNvbW1vbiBjb2RlIHRvIGNoZWNrIGdhbW1hX2VuYWJs
ZSB0byBzcGVjaWZpYyBmdW5jcywKPj4gICAgICAgc2luY2UgaWNsIGRvZXNuJ3Qgc3VwcG9ydCB0
aGF0Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYyB8IDI0MyArKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+PiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICB8ICAgNyArCj4+ICAgMiBmaWxlcyBjaGFu
Z2VkLCAyMzAgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPj4gaW5kZXggYjFmMGY3ZS4uMDAwODAx
MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+
PiBAQCAtMTM3MCw2ICsxMzcwLDkgQEAgc3RhdGljIGludCBpY2xfY29sb3JfY2hlY2soc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+ICAgCj4+ICAgc3RhdGljIGludCBpOXh4
X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKPj4gICB7Cj4+ICsJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCj4+ICsJCXJldHVy
biAwOyAgICA+PiArCj4gCj4gV2h5IGFyZSB5b3UgbW92aW5nIHRoZXNlIGNoZWNrcyBiYWNrIHRv
IHRoZSBpbmRpdmlkdWFsIGZ1bmN0aW9ucz8KQXMgc3RhdGVkIGluIGNvbW1pdCBtZXNzYWdlLCBt
b3ZlZCBjb21tb24gY29kZSB0byBjaGVjayBnYW1tYV9lbmFibGUgdG8gCnNwZWNpZmljIGZ1bmNz
LCBzaW5jZSBpY2wgZG9lc24ndCBzdXBwb3J0IGdhbW1hX2VuYWJsZSBhbmQgY29kZSB3aWxsIApy
ZXR1cm4gMC4gSWYgaSBuZWVkIHRvIG1ha2UgaXQgZ2VuZXJpYywgaSBuZWVkIHRvIG1ha2UgZ2Ft
bWFfZW5hYmxlIHRydWUgCmluIGljbF9jb2xvcl9jaGVjaygpIGZ1bmMuIElzIGl0IGZpbmU/IElD
TCBlbmFibGVzIGdhbW1hIHRocm91Z2ggCmdhbW1hX21vZGUgdW5saWtlIG90aGVyIHBsYXRmb3Jt
cy4KCgotLSAKflN3YXRpIFNoYXJtYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

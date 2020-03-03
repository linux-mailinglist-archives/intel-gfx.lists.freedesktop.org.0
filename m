Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E124D17699B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 01:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442166E901;
	Tue,  3 Mar 2020 00:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D4E6E901
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 00:54:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 16:54:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,509,1574150400"; d="scan'208";a="286815041"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2020 16:54:41 -0800
To: "Ye, Tony" <tony.ye@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200229012042.27487-1-daniele.ceraolospurio@intel.com>
 <3a771634-fc46-1a2e-02a1-d6c2d8282d67@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <e02abb07-1fbf-f42e-f030-8595caebd082@intel.com>
Date: Mon, 2 Mar 2020 16:54:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <3a771634-fc46-1a2e-02a1-d6c2d8282d67@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/huc: update TGL HuC to v7.0.12
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAzLzIvMjAgNDoyNSBQTSwgWWUsIFRvbnkgd3JvdGU6Cj4gCj4gT24gMi8yOS8yMDIwIDk6
MjAgQU0sIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4+IFVwZGF0ZSB0byB0aGUgbGF0
ZXN0IGF2YWlsYWJsZSBUR0wgSHVDLCB3aGljaCBpbmNsdWRlcyBjaGFuZ2VzIHJlcXVpcmVkCj4+
IGJ5IHRoZSBtZWRpYSB0ZWFtLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+PiBDYzogVG9ueSBZZSA8
dG9ueS55ZUBpbnRlbC5jb20+Cj4+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVj
emtvQGludGVsLmNvbT4KPj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGlu
dGVsLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYyB8IDIgKy0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF91Y19mdy5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
X2Z3LmMKPj4gaW5kZXggNTQzNGMwN2FlZmExLi4xOGM3NTUyMDM2ODggMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+PiBAQCAtNDMsNyArNDMsNyBAQCB2
b2lkIGludGVsX3VjX2Z3X2NoYW5nZV9zdGF0dXMoc3RydWN0IGludGVsX3VjX2Z3IAo+PiAqdWNf
ZncsCj4+IMKgwqAgKiBmZWF0dXJlcy4KPj4gwqDCoCAqLwo+PiDCoCAjZGVmaW5lIElOVEVMX1VD
X0ZJUk1XQVJFX0RFRlMoZndfZGVmLCBndWNfZGVmLCBodWNfZGVmKSBcCj4+IC3CoMKgwqAgZndf
ZGVmKFRJR0VSTEFLRSzCoMKgIDAsIGd1Y19kZWYodGdsLCAzNSwgMiwgMCksIGh1Y19kZWYodGds
LMKgIDcsIAo+PiAwLCAzKSkgXAo+PiArwqDCoMKgIGZ3X2RlZihUSUdFUkxBS0UswqDCoCAwLCBn
dWNfZGVmKHRnbCwgMzUsIDIsIDApLCBodWNfZGVmKHRnbCzCoCA3LCAKPj4gMCwgMTIpKSBcCj4g
Cj4gQWNrZWQtYnk6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgoKVGhhbmtzIGZvciB0aGUg
YWNrIGFuZCByZXZpZXcsIHB1c2hlZC4KCkRhbmllbGUKCj4gCj4+IMKgwqDCoMKgwqAgZndfZGVm
KEVMS0hBUlRMQUtFLCAwLCBndWNfZGVmKGVobCwgMzMsIDAsIDQpLCBodWNfZGVmKGVobCzCoCA5
LCAKPj4gMCwgMCkpIFwKPj4gwqDCoMKgwqDCoCBmd19kZWYoSUNFTEFLRSzCoMKgwqDCoCAwLCBn
dWNfZGVmKGljbCwgMzMsIDAsIDApLCBodWNfZGVmKGljbCzCoCA5LCAKPj4gMCwgMCkpIFwKPj4g
wqDCoMKgwqDCoCBmd19kZWYoQ09GRkVFTEFLRSzCoCA1LCBndWNfZGVmKGNtbCwgMzMsIDAsIDAp
LCBodWNfZGVmKGNtbCzCoCA0LCAKPj4gMCwgMCkpIFwKPj4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

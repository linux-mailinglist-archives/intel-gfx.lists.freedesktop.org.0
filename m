Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10268E1F4D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 17:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0339E6EB0F;
	Wed, 23 Oct 2019 15:27:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40B1D6EB14;
 Wed, 23 Oct 2019 15:27:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 08:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="191864696"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 23 Oct 2019 08:27:45 -0700
Date: Wed, 23 Oct 2019 20:57:56 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Message-ID: <20191023152756.GE22201@intel.com>
References: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
 <20191021194259.17052-1-Bhawanpreet.Lakha@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021194259.17052-1-Bhawanpreet.Lakha@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/kms_content_protection:
 check i915 and generic debugfs name for HDCP caps
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 harry.wentland@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMC0yMSBhdCAxNTo0Mjo1OSAtMDQwMCwgQmhhd2FucHJlZXQgTGFraGEgd3JvdGU6
Cj4gVGhlIGNvbnRlbnQgcHJvdGVjdGlvbiB0ZXN0cyBvbmx5IHN0YXJ0IGlmIHRoaXMgZGVidWdm
cyBlbnRyeSBleGlzdHMuCj4gU2luY2UgdGhlIG5hbWUgaXMgc3BlY2lmaWMgdG8gaW50ZWwgZHJp
dmVyIHRoZXNlIHRlc3RzIGNhbm5vdCBiZSB1c2VkIHdpdGgKPiBvdGhlciBkcml2ZXJzLiBTbyB3
ZSBzaG91bGQgY2hlY2sgZ2VuZXJpYyBkZWJ1Z2ZzIG5hbWUgYWxzbwo+IAo+IHYyOiBDaGVjayBp
OTE1XyogaWYgZGV2aWNlIGlzIGk5MTUsIG90aGVyd2lzZSBjaGVjayB0aGUgZ2VuZXJpYyBuYW1l
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJoYXdhbnByZWV0IExha2hhIDxCaGF3YW5wcmVldC5MYWto
YUBhbWQuY29tPgpMb29rcyBnb29kIHRvIG1lLgoKUmV2aWV3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8
cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiAtLS0KPiAgdGVzdHMva21zX2NvbnRlbnRfcHJvdGVj
dGlvbi5jIHwgMTIgKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9rbXNfY29udGVudF9w
cm90ZWN0aW9uLmMgYi90ZXN0cy9rbXNfY29udGVudF9wcm90ZWN0aW9uLmMKPiBpbmRleCBlNjc2
YjYwYi4uNDJmZGM0NTkgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMva21zX2NvbnRlbnRfcHJvdGVjdGlv
bi5jCj4gKysrIGIvdGVzdHMva21zX2NvbnRlbnRfcHJvdGVjdGlvbi5jCj4gQEAgLTU1NCw3ICs1
NTQsMTEgQEAgc3RhdGljIGJvb2wgc2lua19oZGNwX2NhcGFibGUoaWd0X291dHB1dF90ICpvdXRw
dXQpCj4gIAlpZiAoZmQgPCAwKQo+ICAJCXJldHVybiBmYWxzZTsKPiAgCj4gLQlkZWJ1Z2ZzX3Jl
YWQoZmQsICJpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5IiwgYnVmKTsKPiArCWlmIChpc19pOTE1
X2RldmljZShkYXRhLmRybV9mZCkpCj4gKwkJZGVidWdmc19yZWFkKGZkLCAiaTkxNV9oZGNwX3Np
bmtfY2FwYWJpbGl0eSIsIGJ1Zik7Cj4gKwllbHNlCj4gKwkJZGVidWdmc19yZWFkKGZkLCAiaGRj
cF9zaW5rX2NhcGFiaWxpdHkiLCBidWYpOwo+ICsKPiAgCWNsb3NlKGZkKTsKPiAgCj4gIAlpZ3Rf
ZGVidWcoIlNpbmsgY2FwYWJpbGl0eTogJXNcbiIsIGJ1Zik7Cj4gQEAgLTU3MSw3ICs1NzUsMTEg
QEAgc3RhdGljIGJvb2wgc2lua19oZGNwMl9jYXBhYmxlKGlndF9vdXRwdXRfdCAqb3V0cHV0KQo+
ICAJaWYgKGZkIDwgMCkKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAo+IC0JZGVidWdmc19yZWFkKGZk
LCAiaTkxNV9oZGNwX3NpbmtfY2FwYWJpbGl0eSIsIGJ1Zik7Cj4gKwlpZiAoaXNfaTkxNV9kZXZp
Y2UoZGF0YS5kcm1fZmQpKQo+ICsJCWRlYnVnZnNfcmVhZChmZCwgImk5MTVfaGRjcF9zaW5rX2Nh
cGFiaWxpdHkiLCBidWYpOwo+ICsJZWxzZQo+ICsJCWRlYnVnZnNfcmVhZChmZCwgImhkY3Bfc2lu
a19jYXBhYmlsaXR5IiwgYnVmKTsKPiArCj4gIAljbG9zZShmZCk7Cj4gIAo+ICAJaWd0X2RlYnVn
KCJTaW5rIGNhcGFiaWxpdHk6ICVzXG4iLCBidWYpOwo+IC0tIAo+IDIuMTcuMQo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

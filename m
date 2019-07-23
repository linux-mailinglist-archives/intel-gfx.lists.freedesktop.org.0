Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B946771B15
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 17:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61F696E2DA;
	Tue, 23 Jul 2019 15:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F4D6E2D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 15:09:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 08:08:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="174571594"
Received: from daakre-mobl.amr.corp.intel.com (HELO [10.252.135.83])
 ([10.252.135.83])
 by orsmga006.jf.intel.com with ESMTP; 23 Jul 2019 08:08:49 -0700
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20190723150031.GA16689@mwanda>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f59e006c-1485-302c-b80e-d0d70a4309f0@intel.com>
Date: Tue, 23 Jul 2019 08:08:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723150031.GA16689@mwanda>
Content-Language: en-US
Subject: Re: [Intel-gfx] [bug report] drm/i915/uc: prefer intel_gt over i915
 in GuC/HuC paths
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzIzLzIwMTkgODowMCBBTSwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBIZWxsbyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvLAo+Cj4gVGhlIHBhdGNoIDg0YjFjYTJmMGU2ODogImRybS9pOTE1
L3VjOiBwcmVmZXIgaW50ZWxfZ3Qgb3ZlciBpOTE1IGluCj4gR3VDL0h1QyBwYXRocyIgZnJvbSBK
dWwgMTMsIDIwMTksIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcgc3RhdGljCj4gY2hlY2tlciB3YXJu
aW5nOgo+Cj4gCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jOjE3MyBpbnRl
bF9odWNfY2hlY2tfc3RhdHVzKCkKPiAJd2FybjogbWFza2luZyBhIGJvb2wKPgo+IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jCj4gICAgIDE2MSAgaW50IGludGVsX2h1Y19j
aGVja19zdGF0dXMoc3RydWN0IGludGVsX2h1YyAqaHVjKQo+ICAgICAxNjIgIHsKPiAgICAgMTYz
ICAgICAgICAgIHN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBodWNfdG9fZ3QoaHVjKTsKPiAgICAgMTY0
ICAgICAgICAgIGludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+ICAgICAxNjUgICAgICAgICAgYm9v
bCBzdGF0dXMgPSBmYWxzZTsKPiAgICAgICAgICAgICAgICAgIF5eXl5eXl5eXl5eXl5eXl5eXl4K
PiAgICAgMTY2Cj4gICAgIDE2NyAgICAgICAgICBpZiAoIWludGVsX3VjX2lzX3VzaW5nX2h1Yygm
Z3QtPnVjKSkKPiAgICAgMTY4ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gICAg
IDE2OQo+ICAgICAxNzAgICAgICAgICAgd2l0aF9pbnRlbF9ydW50aW1lX3BtKCZndC0+aTkxNS0+
cnVudGltZV9wbSwgd2FrZXJlZikKPiAgICAgMTcxICAgICAgICAgICAgICAgICAgc3RhdHVzID0g
aW50ZWxfdW5jb3JlX3JlYWQoZ3QtPnVuY29yZSwgaHVjLT5zdGF0dXMucmVnKTsKPiAgICAgMTcy
Cj4gICAgIDE3MyAgICAgICAgICByZXR1cm4gKHN0YXR1cyAmIGh1Yy0+c3RhdHVzLm1hc2spID09
IGh1Yy0+c3RhdHVzLnZhbHVlOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5eXl4KPgo+
IEl0IGRlZmluaXRlbHkgbG9va3MgbGlrZSBzdGF0dXMgc2hvdWxkIGJlIGEgdTMyIG9yIHNvbWV0
aGluZy4KClllcywgZGVmaW5pdGVseSB3cm9uZy4gV2lsbCBzZW5kIGEgZml4IHNvb24uClRoaXMg
aGlnaGxpZ2h0cyBldmVuIG1vcmUgdGhlIGxhY2sgb2YgdGVzdGluZyB3ZSBoYXZlIGFyb3VuZCBI
dUMuCgpEYW5pZWxlCgo+ICAgICAxNzQgIH0KPgo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRlcgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

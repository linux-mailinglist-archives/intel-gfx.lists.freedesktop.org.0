Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AB725F6E0
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Sep 2020 11:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BAE289F92;
	Mon,  7 Sep 2020 09:51:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5849F89F92;
 Mon,  7 Sep 2020 09:50:59 +0000 (UTC)
IronPort-SDR: eEJB0hjdeq+kTE4cCFIVKTnY9T5on9TEt7rAoxOXUtaZV8NcLt1r/ZmdOBU8JgpdROCavjhaAB
 kfIpac1u5tcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9736"; a="157243628"
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="157243628"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 02:50:58 -0700
IronPort-SDR: j/UyqezRAVkLCLdMfGLlNOUvxo5h4ciz2N3Ep5bPW2FSqWZKBhjNPa5dTSIMZMnQg/MBlvVG1x
 dG3ETgz5eyFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,401,1592895600"; d="scan'208";a="333115617"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2020 02:50:57 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kFDUb-0006q7-RX; Mon, 07 Sep 2020 12:31:17 +0300
Date: Mon, 7 Sep 2020 12:31:17 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20200907093117.GX7444@platvala-desk.ger.corp.intel.com>
References: <20200904130607.133724-1-tvrtko.ursulin@linux.intel.com>
 <20200904130607.133724-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200904130607.133724-2-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/1] intel-gpu-top: Support
 for client stats
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMDQsIDIwMjAgYXQgMDI6MDY6MDdQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBBZGRzIHN1cHBvcnQgZm9yIHBlci1jbGllbnQgZW5naW5lIGJ1c3luZXNzIHN0YXRzIGk5
MTUgZXhwb3J0cyBpbiBzeXNmcwo+IGFuZCBwcm9kdWNlcyBvdXRwdXQgbGlrZSB0aGUgYmVsb3c6
Cj4gCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0KPiBpbnRlbC1ncHUtdG9wIC0gIDkzNS8gOTM1IE1Iejsg
ICAgMCUgUkM2OyAxNC43MyBXYXR0czsgICAgIDEwOTcgaXJxcy9zCj4gCj4gICAgICAgSU1DIHJl
YWRzOiAgICAgMTQwMSBNaUIvcwo+ICAgICAgSU1DIHdyaXRlczogICAgICAgIDQgTWlCL3MKPiAK
PiAgICAgICAgICAgRU5HSU5FICAgICAgQlVTWSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIE1JX1NFTUEgTUlfV0FJVAo+ICAgICAgUmVuZGVyLzNELzAgICA2My43MyUgfOKWiOKWiOKW
iOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiCAgICAgICAg
ICAgfCAgICAgIDMlICAgICAgMCUKPiAgICAgICAgQmxpdHRlci8wICAgIDkuNTMlIHzilojiloji
loogICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgNiUgICAgICAwJQo+ICAgICAgICAg
IFZpZGVvLzAgICAzOS4zMiUgfOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiiAg
ICAgICAgICAgICAgICAgIHwgICAgIDE2JSAgICAgIDAlCj4gICAgICAgICAgVmlkZW8vMSAgIDE1
LjYyJSB84paI4paI4paI4paI4paLICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAwJSAg
ICAgIDAlCj4gICBWaWRlb0VuaGFuY2UvMCAgICAwLjAwJSB8ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgICAgIDAlICAgICAgMCUKPiAKPiAgIFBJRCAgICAgICAgICAgIE5BTUUgICAg
IFJDUyAgICAgICAgICBCQ1MgICAgICAgICAgVkNTICAgICAgICAgVkVDUwo+ICA0MDg0ICAgICAg
ICBnZW1fd3NpbSB84paI4paI4paI4paI4paI4paMICAgICB8fOKWiCAgICAgICAgICB8fCAgICAg
ICAgICAgfHwgICAgICAgICAgIHwKPiAgNDA4NiAgICAgICAgZ2VtX3dzaW0gfOKWiOKWjCAgICAg
ICAgIHx8ICAgICAgICAgICB8fOKWiOKWiOKWiCAgICAgICAgfHwgICAgICAgICAgIHwKPiA9PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQo+IAo+IEFwYXJ0IGZyb20gdGhlIGV4aXN0aW5nIHBoeXNpY2FsIGVuZ2lu
ZSB1dGlsaXphdGlvbiBpdCBub3cgYWxzbyBzaG93cwo+IHV0aWxpemF0aW9uIHBlciBjbGllbnQg
YW5kIHBlciBlbmdpbmUgY2xhc3MuCj4gCj4gdjI6Cj4gICogVmVyc2lvbiB0byBtYXRjaCByZW1v
dmFsIG9mIGdsb2JhbCBlbmFibGVfc3RhdHMgdG9nZ2xlLgo+ICAqIFBsdXMgdmFyaW91cyBmaXhl
cy4KPiAKPiB2MzoKPiAgKiBTdXBwb3J0IGJyaWVmIGJhY2t3YXJkIGp1bXBzIGluIGNsaWVudCBz
dGF0cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgo+IC0tLQo+ICB0b29scy9pbnRlbF9ncHVfdG9wLmMgfCA1MzkgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA1Mjgg
aW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2lu
dGVsX2dwdV90b3AuYyBiL3Rvb2xzL2ludGVsX2dwdV90b3AuYwo+IGluZGV4IGNhZTAxYzI1Yjky
MC4uOWVhYzU2OWU3NWRlIDEwMDY0NAo+IC0tLSBhL3Rvb2xzL2ludGVsX2dwdV90b3AuYwo+ICsr
KyBiL3Rvb2xzL2ludGVsX2dwdV90b3AuYwo+IEBAIC02NzksMjMgKzY3OSwzNDcgQEAgc3RhdGlj
IHZvaWQgcG11X3NhbXBsZShzdHJ1Y3QgZW5naW5lcyAqZW5naW5lcykKPiAgCX0KPiAgfQo+ICAK
PiArZW51bSBjbGllbnRfc3RhdHVzIHsKPiArCUZSRUUgPSAwLCAvKiBtYnogKi8KPiArCUFMSVZF
LAo+ICsJUFJPQkUKPiArfTsKPiArCj4gK3N0cnVjdCBjbGllbnRzOwo+ICsKPiArc3RydWN0IGNs
aWVudCB7Cj4gKwlzdHJ1Y3QgY2xpZW50cyAqY2xpZW50czsKPiArCj4gKwllbnVtIGNsaWVudF9z
dGF0dXMgc3RhdHVzOwo+ICsJdW5zaWduZWQgaW50IGlkOwo+ICsJdW5zaWduZWQgaW50IHBpZDsK
PiArCWNoYXIgbmFtZVsxMjhdOwo+ICsJdW5zaWduZWQgaW50IHNhbXBsZXM7Cj4gKwl1bnNpZ25l
ZCBsb25nIHRvdGFsOwo+ICsJc3RydWN0IGVuZ2luZXMgKmVuZ2luZXM7Cj4gKwl1bnNpZ25lZCBs
b25nICp2YWw7Cj4gKwl1aW50NjRfdCAqbGFzdDsKPiArfTsKPiArCj4gK3N0cnVjdCBlbmdpbmVf
Y2xhc3Mgewo+ICsJdW5zaWduZWQgaW50IGNsYXNzOwo+ICsJY29uc3QgY2hhciAqbmFtZTsKPiAr
CXVuc2lnbmVkIGludCBudW1fZW5naW5lczsKPiArfTsKPiArCj4gK3N0cnVjdCBjbGllbnRzIHsK
PiArCXVuc2lnbmVkIGludCBudW1fY2xhc3NlczsKPiArCXN0cnVjdCBlbmdpbmVfY2xhc3MgKmNs
YXNzOwo+ICsKPiArCXVuc2lnbmVkIGludCBudW1fY2xpZW50czsKPiArCXN0cnVjdCBjbGllbnQg
KmNsaWVudDsKPiArfTsKPiArCj4gKyNkZWZpbmUgZm9yX2VhY2hfY2xpZW50KGNsaWVudHMsIGMs
IHRtcCkgXAo+ICsJZm9yICgodG1wKSA9IChjbGllbnRzKS0+bnVtX2NsaWVudHMsIGMgPSAoY2xp
ZW50cyktPmNsaWVudDsgXAo+ICsJICAgICAodG1wID4gMCk7ICh0bXApLS0sIChjKSsrKQo+ICsK
PiArc3RhdGljIHN0cnVjdCBjbGllbnRzICppbml0X2NsaWVudHModm9pZCkKPiArewo+ICsJc3Ry
dWN0IGNsaWVudHMgKmNsaWVudHMgPSBtYWxsb2Moc2l6ZW9mKCpjbGllbnRzKSk7Cj4gKwo+ICsJ
cmV0dXJuIG1lbXNldChjbGllbnRzLCAwLCBzaXplb2YoKmNsaWVudHMpKTsKPiArfQo+ICsKPiAr
I2RlZmluZSBTWVNGU19DTElFTlRTICIvc3lzL2NsYXNzL2RybS9jYXJkMC9jbGllbnRzIgoKTm93
IHRoYXQgaW50ZWxfZ3B1X3RvcCBzdXBwb3J0cyBkZXZpY2Ugc2VsZWN0aW9uLCB0aGlzIHBhdGgg
d29ya3MKZXZlcnkgdGltZSBvbmx5IDYwJSBvZiB0aGUgdGltZSwgcmlnaHQ/CgoKCi0tIApQZXRy
aSBMYXR2YWxhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

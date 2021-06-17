Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA543AB13B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 12:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A2496E8DE;
	Thu, 17 Jun 2021 10:19:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0706E8DC;
 Thu, 17 Jun 2021 10:19:54 +0000 (UTC)
IronPort-SDR: DUF32zd3dma+2vc67wRkP0SzspolRemdtOivvj/i0fLukOtfhhPOzcrGEZGNJujiXdrhIMQit+
 CB1h/4uQo4OA==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="227854481"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="227854481"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 03:19:53 -0700
IronPort-SDR: nOu9QEjAnv9q1wer7TjTcFNXG94xhNGr869RJinY94q6BMUJX9L4X+2UaOJKifqTC02v4NXoyv
 jXTS19YK57dQ==
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="450974212"
Received: from herold-mobl2.ger.corp.intel.com (HELO [10.252.56.169])
 ([10.252.56.169])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 03:19:52 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210615113600.30660-1-thomas.hellstrom@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ee235ed1-a9bc-67ad-0df8-c09242921230@linux.intel.com>
Date: Thu, 17 Jun 2021 12:19:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210615113600.30660-1-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Perform execbuffer object locking
 as a separate step
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTUtMDYtMjAyMSBvbSAxMzozNiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+IFRvIGhl
bHAgYXZvaWQgZXZpY3RpbmcgYWxyZWFkeSByZXNpZGVudCBidWZmZXJzIGZyb20gdGhlIGJhdGNo
IHdlJ3JlCj4gcHJvY2Vzc2luZywgcGVyZm9ybSBsb2NraW5nIGFzIGEgc2VwYXJhdGUgc3RlcC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KPiAtLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jICAgIHwgMjUgKysrKysrKysrKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MjEgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IGluZGV4IDIwMWZlZDE5ZDEyMC4uMzk0
ZWI0MGM5NWI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZXhlY2J1ZmZlci5jCj4gQEAgLTkyMiwyMSArOTIyLDM4IEBAIHN0YXRpYyBpbnQgZWJfbG9va3Vw
X3ZtYXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCj4gIAlyZXR1cm4gZXJyOwo+ICB9Cj4g
IAo+IC1zdGF0aWMgaW50IGViX3ZhbGlkYXRlX3ZtYXMoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAq
ZWIpCj4gK3N0YXRpYyBpbnQgZWJfbG9ja192bWFzKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmVi
KQo+ICB7Cj4gIAl1bnNpZ25lZCBpbnQgaTsKPiAgCWludCBlcnI7Cj4gIAo+IC0JSU5JVF9MSVNU
X0hFQUQoJmViLT51bmJvdW5kKTsKPiAtCj4gIAlmb3IgKGkgPSAwOyBpIDwgZWItPmJ1ZmZlcl9j
b3VudDsgaSsrKSB7Cj4gLQkJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgKmVudHJ5
ID0gJmViLT5leGVjW2ldOwo+ICAJCXN0cnVjdCBlYl92bWEgKmV2ID0gJmViLT52bWFbaV07Cj4g
IAkJc3RydWN0IGk5MTVfdm1hICp2bWEgPSBldi0+dm1hOwo+ICAKPiAgCQllcnIgPSBpOTE1X2dl
bV9vYmplY3RfbG9jayh2bWEtPm9iaiwgJmViLT53dyk7Cj4gIAkJaWYgKGVycikKPiAgCQkJcmV0
dXJuIGVycjsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBl
Yl92YWxpZGF0ZV92bWFzKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+ICt7Cj4gKwl1bnNp
Z25lZCBpbnQgaTsKPiArCWludCBlcnI7Cj4gKwo+ICsJSU5JVF9MSVNUX0hFQUQoJmViLT51bmJv
dW5kKTsKPiArCj4gKwllcnIgPSBlYl9sb2NrX3ZtYXMoZWIpOwo+ICsJaWYgKGVycikKPiArCQly
ZXR1cm4gZXJyOwo+ICsKPiArCWZvciAoaSA9IDA7IGkgPCBlYi0+YnVmZmVyX2NvdW50OyBpKysp
IHsKPiArCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnkgPSAmZWItPmV4
ZWNbaV07Cj4gKwkJc3RydWN0IGViX3ZtYSAqZXYgPSAmZWItPnZtYVtpXTsKPiArCQlzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSA9IGV2LT52bWE7Cj4gIAo+ICAJCWVyciA9IGViX3Bpbl92bWEoZWIsIGVu
dHJ5LCBldik7Cj4gIAkJaWYgKGVyciA9PSAtRURFQURMSykKClJldmlld2VkLWJ5OiBNYWFydGVu
IExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

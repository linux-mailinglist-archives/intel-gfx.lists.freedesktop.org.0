Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E98C28E54C
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 09:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E0C6E8B3;
	Thu, 15 Aug 2019 07:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6B86E8B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 07:14:19 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id x19so1314116eda.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 00:14:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=rjonirMyNKFLmr6pNWt9/0hY9meFYjEaFyv9/3cyMYc=;
 b=szFXxgzy3NXu4TCHo+eHk4qFsU5wthiwPgoHINbKZ2r40U8oK8SVw0O37nD5ZkkW3m
 GtmjDIpiEOoHMg4S+Hi57SQ/P62D3bcNdaF9ZpcpOR3SQMllp62Ha1C+3dfYjknzHq/G
 dc6z1w7jayQrDye7nk0w/3OGa7NVrOnoNsOAESRIUCyHhdVGK5qm1I/HMN8N/6FT+3PY
 NN2M/6tMKBD4o5dE/WBwvnE++BOO0lx9CbN853wEcrHl+VSFD82aYvpJvlsVjNxnnCA/
 cI/FUP3Ppx5fBImY/Q42oAwB+/stjRwgnU/jun9V28Nn0jWJ1fJX0wPP/PDsI4imVGCA
 1jDg==
X-Gm-Message-State: APjAAAU3xuLSoURl7KDU5joP0tXWild63mcOTsGyfLLkx7C5VmRMTO92
 HOxnFC83izTsr0MUUv+i509tOA==
X-Google-Smtp-Source: APXvYqxHFed471aqkz65evmjZ3bTGMMJcAWmhTm+eeuK6Ic5QidqvFlMXSewSwbHwYbGaD4JTt8JMw==
X-Received: by 2002:a17:906:504e:: with SMTP id
 e14mr178194ejk.204.1565853258482; 
 Thu, 15 Aug 2019 00:14:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id br8sm265471ejb.92.2019.08.15.00.14.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 00:14:17 -0700 (PDT)
Date: Thu, 15 Aug 2019 09:14:15 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190815071415.GD7444@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 LKML <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ralph Campbell <rcampbell@nvidia.com>,
 John Hubbard <jhubbard@nvidia.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Matthew Wilcox <willy@infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Balbir Singh <bsingharora@gmail.com>,
 Ira Weiny <ira.weiny@intel.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
 <20190814202027.18735-6-daniel.vetter@ffwll.ch>
 <20190815001137.GE11200@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815001137.GE11200@ziepe.ca>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=rjonirMyNKFLmr6pNWt9/0hY9meFYjEaFyv9/3cyMYc=;
 b=VhXMIl/eHGwrgkMfakF/qwMwhZWtWXKUF49966PDQfDBaReTfTCf/9nggMPlMNxWd0
 5XGY5nleuGWkyUPLKbEn0i0w72q4fQknknNeCXEqoKNJzPn1PhygwPcQnXfTc4lcwPVZ
 nORHA6FNAFB2JO91ROMe5aGnJiwmdIbl2oD7w=
Subject: Re: [Intel-gfx] [PATCH 5/5] mm/hmm: WARN on illegal
 ->sync_cpu_device_pagetables errors
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
Cc: Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, John Hubbard <jhubbard@nvidia.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Balbir Singh <bsingharora@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 Souptick Joarder <jrdr.linux@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDk6MTE6MzdQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIFdlZCwgQXVnIDE0LCAyMDE5IGF0IDEwOjIwOjI3UE0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gPiBTaW1pbGFyIHRvIHRoZSB3YXJuaW5nIGluIHRoZSBtbXUgbm90
aWZlciwgd2FybmluZyBpZiBhbiBobW0gbWlycm9yCj4gPiBjYWxsYmFjayBnZXRzIGl0J3MgYmxv
Y2tpbmcgdnMuIG5vbmJsb2NraW5nIGhhbmRsaW5nIHdyb25nLCBvciBpZiBpdAo+ID4gZmFpbHMg
d2l0aCBhbnl0aGluZyBlbHNlIHRoYW4gLUVBR0FJTi4KPiA+IAo+ID4gQ2M6IEphc29uIEd1bnRo
b3JwZSA8amdnQHppZXBlLmNhPgo+ID4gQ2M6IFJhbHBoIENhbXBiZWxsIDxyY2FtcGJlbGxAbnZp
ZGlhLmNvbT4KPiA+IENjOiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+Cj4gPiBD
YzogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+Cj4gPiBDYzogRGFuIENh
cnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgo+ID4gQ2M6IE1hdHRoZXcgV2lsY294
IDx3aWxseUBpbmZyYWRlYWQub3JnPgo+ID4gQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIu
ZGU+Cj4gPiBDYzogQmFsYmlyIFNpbmdoIDxic2luZ2hhcm9yYUBnbWFpbC5jb20+Cj4gPiBDYzog
SXJhIFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPgo+ID4gQ2M6IFNvdXB0aWNrIEpvYXJkZXIg
PGpyZHIubGludXhAZ21haWwuY29tPgo+ID4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgt
Zm91bmRhdGlvbi5vcmc+Cj4gPiBDYzogIkrDqXLDtG1lIEdsaXNzZSIgPGpnbGlzc2VAcmVkaGF0
LmNvbT4KPiA+IENjOiBsaW51eC1tbUBrdmFjay5vcmcKPiA+IFNpZ25lZC1vZmYtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gIG1tL2htbS5jIHwgMyArKysK
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9tbS9obW0uYyBiL21tL2htbS5jCj4gPiBpbmRleCAxNmI2NzMxYTM0ZGIuLjUyYWM1OTM4NDI2
OCAxMDA2NDQKPiA+ICsrKyBiL21tL2htbS5jCj4gPiBAQCAtMjA1LDYgKzIwNSw5IEBAIHN0YXRp
YyBpbnQgaG1tX2ludmFsaWRhdGVfcmFuZ2Vfc3RhcnQoc3RydWN0IG1tdV9ub3RpZmllciAqbW4s
Cj4gPiAgCQkJcmV0ID0gLUVBR0FJTjsKPiA+ICAJCQlicmVhazsKPiA+ICAJCX0KPiA+ICsJCVdB
Uk4ocmV0LCAiJXBTIGNhbGxiYWNrIGZhaWxlZCB3aXRoICVkIGluICVzYmxvY2thYmxlIGNvbnRl
eHRcbiIsCj4gPiArCQkgICAgIG1pcnJvci0+b3BzLT5zeW5jX2NwdV9kZXZpY2VfcGFnZXRhYmxl
cywgcmV0LAo+ID4gKwkJICAgICB1cGRhdGUuYmxvY2thYmxlID8gIiIgOiAibm9uLSIpOwo+ID4g
IAl9Cj4gPiAgCXVwX3JlYWQoJmhtbS0+bWlycm9yc19zZW0pOwo+IAo+IERpZG4ndCBJIGJlYXQg
eW91IHRvIHRoaXM/CgpWZXJ5IG11Y2ggcG9zc2libGUsIEkgdGhpbmsgSSBkaWRuJ3QgcmViYXNl
IHRoaXMgdG8gbGludXgtbmV4dCBiZWZvcmUKcmVzZW5kaW5nIC4uLiBoYXZlIGFuCgpSZXZpZXdl
ZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCmluIGNhc2UgeW91
IG5lZWQuCgpDaGVlcnMsIERhbmllbAoKPiAKPiAJbGlzdF9mb3JfZWFjaF9lbnRyeShtaXJyb3Is
ICZobW0tPm1pcnJvcnMsIGxpc3QpIHsKPiAJCWludCByYzsKPiAKPiAJCXJjID0gbWlycm9yLT5v
cHMtPnN5bmNfY3B1X2RldmljZV9wYWdldGFibGVzKG1pcnJvciwgJnVwZGF0ZSk7Cj4gCQlpZiAo
cmMpIHsKPiAJCQlpZiAoV0FSTl9PTih1cGRhdGUuYmxvY2thYmxlIHx8IHJjICE9IC1FQUdBSU4p
KQo+IAkJCQljb250aW51ZTsKPiAJCQlyZXQgPSAtRUFHQUlOOwo+IAkJCWJyZWFrOwo+IAkJfQo+
IAl9Cj4gCj4gVGhhbmtzLAo+IEphc29uCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdp
bmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

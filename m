Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B17199BD
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 10:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE0F4898EE;
	Fri, 10 May 2019 08:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBCC898EE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 08:34:22 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id j12so3642869eds.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 01:34:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Qapd8HPk3uAWoAIlU3vQAfFDwWRFQ+VuXZV+LD/b0x4=;
 b=My9Nnp+f7Ny9zbbOsQ/k7gjVIqJvGPjDGQeiQ4mkm4E1nJQ+2aHzNgzjrNf2NtPFBO
 qv6f0pKxxIR21v+hwux6DN4sf3J+eSl0yGRtPqJWlK4ycafUhIjwD6+RhHZF0GXvjaQ2
 YKV/tdNgKTcIz0ycKFkje7I0eFZnf2vHf8GnR1iQOwJkmwZ5G+Z9vHC3Zz1skkCiUTV0
 LnS5WLQZudfd2uUXsKhaVjEGHNwJ5RFVp0eTdBkGLfL8e4wlMthVGLCU3AlbZ0/Rhjlb
 vdXlIFSjobXbM4H5sutJa0ll1vKnIeO3xvk4fR+02efNSSspT/BSX/EbJ5SbBkPTnJxG
 CX8w==
X-Gm-Message-State: APjAAAXYAw4OMnsoMlUwVoY0wkfSlxrfI7kkF2XuQ2PYSxnD2FlLXV2+
 Y8zEpQKKu6cpp5aM8znA/dDi6CQh4Qs=
X-Google-Smtp-Source: APXvYqzlAMBNMEzLzsenC/Cu1XdhgEgSnyyhvkMhIgT2NLQzvxu4NRnf2F1kU+XvcPCNqd19UF+Ewg==
X-Received: by 2002:a50:9016:: with SMTP id b22mr9028277eda.99.1557477261508; 
 Fri, 10 May 2019 01:34:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id m12sm658217ejr.19.2019.05.10.01.34.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 01:34:19 -0700 (PDT)
Date: Fri, 10 May 2019 10:34:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <20190510083417.GG17751@phenom.ffwll.local>
References: <6473ebb1-d44b-1dd7-19c6-cdd93c64fbca@linux.intel.com>
 <2a12e17e-16b4-b48c-ea6b-1a25043ac2fe@linux.intel.com>
 <AADFC41AFE54684AB9EE6CBC0274A5D19CA2004B@SHSMSX104.ccr.corp.intel.com>
 <c425e8fc-d720-9a09-f52b-7a7d140098f7@linux.intel.com>
 <C294FBAE55175941838A8D362DCD8AA225EEA42A@SHSMSX104.ccr.corp.intel.com>
 <237F54289DF84E4997F34151298ABEBC8760DA5D@SHSMSX101.ccr.corp.intel.com>
 <28244102-1f2f-020b-7c67-0f8ca9d15768@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28244102-1f2f-020b-7c67-0f8ca9d15768@linux.intel.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Qapd8HPk3uAWoAIlU3vQAfFDwWRFQ+VuXZV+LD/b0x4=;
 b=LnE96DMMLfgeeCGq4mmc43r//Di0IGa/qLylAwmIGoQxiYTuR4NzLh7GDFuytZHQDv
 rmCfuYFKouunnD5o2eb1libJ+A/r2sW9K/STU7X8semzEf8zR0qkD7b3Bx1QW6HSOQlY
 06kfdAWt6LeV3XRv9NEjT79ZMANz+7kJMO6MM=
Subject: Re: [Intel-gfx] IOMMU RMRR for Intel graphic device
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
Cc: "Liu, Yi L" <yi.l.liu@intel.com>, "Lu, Baolu" <baolu.lu@intel.com>,
 intel-gfx@lists.freedesktop.org, "Yuan, Hang" <hang.yuan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMTAsIDIwMTkgYXQgMDE6MjE6NTlQTSArMDgwMCwgTHUgQmFvbHUgd3JvdGU6
Cj4gRm9yd2FyZCB0byBpOTE1IG1haWxpbmcgbGlzdCBhbmQgcG9zdCB0aGUgcXVlc3Rpb24gYWdh
aW4gc28gcGVvcGxlIGtub3dzCj4gd2hhdCBhcmUgdGhlIGtleSBjb25jZXJucy4KPiAKPiBUaGUg
YmFja2dyb3VuZCBpcyB0aGF0IExpbnV4IGNvbW11bml0eSBpcyBnb2luZyB0byBjb2xsZWN0IGFu
ZCByZXBvcnQKPiB0aGUgcmVzZXJ2ZWQgbWVtb3J5IHJhbmdlcyBvZiBhbiBhc3NpZ25lZCBkZXZp
Y2UgdG8gVkZJTyBkcml2ZXIsIGFuZCBhbnkKPiBtYXBwZWQgYWRkcmVzcyB3aWxsIGJlIGNoZWNr
ZWQgYWdhaW5zdCB0aGUgcmVzZXJ2ZWQgcmFuZ2VzLiBJZiB0aGVyZSdzCj4gYW55IGNvbmZsaWN0
LCB2aWZvIHdpbGwgcmVmdXNlIHRoZSBtYXAgcmVxdWVzdC4KPiAKPiBVbmZvcnR1bmF0ZWx5LCB3
aGVuIGl0IGNvbWVzIEludGVsIGdyYXBoaWMgZGV2aWNlLCB0aGUgY29uZmxpY3QgaGFwcGVucy4K
PiBUaGF0IG1lYW5zIGFkZHJlc3MgcmFuZ2UgbWFwcGVkIHRocm91Z2ggdmZpbyBjb25mbGljdHMg
d2l0aCB0aGUgcm1yciBmb3IKPiBncmFwaGljIGRldmljZS4KPiAKPiBodHRwczovL2xrbWwub3Jn
L2xrbWwvMjAxOC82LzUvNzYwCj4gCj4gVGhlIHF1ZXN0aW9ucyBhcmUgMSkgd2lsbCB0aGUgcm1y
ciBmb3IgZ3JhcGhpYyBkZXZpY2Ugc3RpbGwgbmVlZHMgdG8gYmUKPiByZXNlcnZlZCBmb3IgQklP
UyBvciBmaXJtd2FyZSB1c2UsIHdoZW4gYSBkZXZpY2UgaXMgZ29pbmcgdG8gYmUgYXNzaWduZWQK
PiB0byB1c2VyIGxldmVsPyAyKSBpZiBubywgd2hhdCdzIHRoZSBjaGVjayBwb2ludCwgYWZ0ZXIg
d2hpY2ggdGhlIHJtcnIgaXMKPiB1bm5lY2Vzc2FyeSBhbnltb3JlPwoKVGhlIGdmeCBSTVJSIGlz
bid0IGZvciB0aGUgYmlvcywgaXQncyBmb3IgdGhlIGRyaXZlci4gSXQgY292ZXJzIHN0b2xlbgpt
ZW1vcnksIGFuZCB3ZSBuZWVkIGl0LiBUaGVyZSdzIHZhcmlvdXMgcGlsZXMgb2YgaGFja3MgdG8g
ZGlzYWJsZSB1c2Ugb2YKc3RvbGVuLCBidXQgdGhleSdyZSBhbGwgc29tZXdoYXQgZnJhZ2lsZSwg
YW5kIGFmYWl1aSBmb3IgaHVjL2d1YyB3ZSBuZWVkCml0LCBhbmQgaHVjIGlzIHBhcnQgb2YgdGhl
IHVhcGkgZXhwb3NlZCBieSB0aGUgZHJpdmVyL2RldmljZSBjb21ibyBvbgpnZW45Ky4KClVudGls
IG91ciBodyBmb2xrcyBjb21lIHVwIHdpdGggYSBiZXR0ZXIgZGVzaWduIEkgdGhpbmsgd2UncmUg
anVzdCBzdHVjawpvbiB0aGlzLCBpb3cgeW91IGNhbid0IHBhc3MtdGhydSBtb2Rlcm4gaW50ZWwg
aWdmeCBiZWNhdXNlIG9mIHRoaXMuCi1EYW5pZWwKCj4gCj4gQmVzdCByZWdhcmRzLAo+IEx1IEJh
b2x1Cj4gCj4gT24gNS85LzE5IDU6MTQgUE0sIFpoYW5nLCBUaW5hIHdyb3RlOgo+ID4gSGkgQmFv
bHUsCj4gPiAKPiA+ICtYaW9uZwo+ID4gCj4gPiBJIHRoaW5rIHRoZSByb290IGNhdXNlIGlzIHRo
YXQgZ3Vlc3QgaTkxNSBuZWVkcyB0byBhY2Nlc3MgUk1SUi4gWGlvbmcgY29va2VkIGEgcGF0Y2gg
dG8gZGlzYWJsZSB0aGUgUk1SUiB1c2UgaW4gaTkxNSBndWVzdCwgaG93ZXZlciB0aGF0IHBhdGNo
IGRpZG4ndCBnZXQgbGFuZGVkIGludG8gdGhlIGk5MTUgdXBzdHJlYW0gcmVwbyBkdWUgdG8gc29t
ZSBjb25jZXJucyBmcm9tIGk5MTUgbWFpbnRhaW5lcnMuIFhpb25nIGNhbiBnaXZlIHVzIG1vcmUg
YmFja2dyb3VuZHMuCj4gPiAKPiA+IFNvIGFncmVlZCwgbmVlZCB0byBhc2sgdGhlIGk5MTUgZm9s
ayBmb3IgdGhpcy4KPiA+IAo+ID4gQlIsCj4gPiBUaW5hCj4gPiAKPiA+IAo+ID4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gPiBGcm9tOiBZdWFuLCBIYW5nCj4gPiA+IFNlbnQ6IFRo
dXJzZGF5LCBNYXkgOSwgMjAxOSA0OjA3IFBNCj4gPiA+IFRvOiBMdSBCYW9sdSA8YmFvbHUubHVA
bGludXguaW50ZWwuY29tPjsgVGlhbiwgS2V2aW4gPGtldmluLnRpYW5AaW50ZWwuY29tPjsKPiA+
ID4gWmhlbnl1IFdhbmcgPHpoZW55dXdAbGludXguaW50ZWwuY29tPjsgWmhhbmcsIFRpbmEKPiA+
ID4gPHRpbmEuemhhbmdAaW50ZWwuY29tPjsgTHUsIEJhb2x1IDxiYW9sdS5sdUBpbnRlbC5jb20+
OyBMaXUsIFlpIEwKPiA+ID4gPHlpLmwubGl1QGludGVsLmNvbT4KPiA+ID4gU3ViamVjdDogUkU6
IElPTU1VIFJNUlIgZm9yIEludGVsIGdyYXBoaWMgZGV2aWNlCj4gPiA+IAo+ID4gPiBIaSBCYW9s
dSwgYXMgS2V2aW4gc3VnZ2VzdGVkLCB3b3VsZCB5b3UgbGlrZSB0byBhc2sgaTkxNSBwZW9wbGUg
aW4gdGhlaXIKPiA+ID4gbWFpbGluZyBsaXN0IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmc/Cj4gPiA+IAo+ID4gPiBSZWdhcmRzLAo+ID4gPiBIZW5yeQo+ID4gPiAKPiA+ID4gPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gPiA+IEZyb206IEx1IEJhb2x1IFttYWlsdG86YmFv
bHUubHVAbGludXguaW50ZWwuY29tXQo+ID4gPiA+IFNlbnQ6IFRodXJzZGF5LCBNYXkgOSwgMjAx
OSAyOjQyIFBNCj4gPiA+ID4gVG86IFRpYW4sIEtldmluIDxrZXZpbi50aWFuQGludGVsLmNvbT47
IFpoZW55dSBXYW5nCj4gPiA+ID4gPHpoZW55dXdAbGludXguaW50ZWwuY29tPjsgWmhhbmcsIFRp
bmEgPHRpbmEuemhhbmdAaW50ZWwuY29tPjsgWXVhbiwKPiA+ID4gPiBIYW5nIDxoYW5nLnl1YW5A
aW50ZWwuY29tPjsgTHUsIEJhb2x1IDxiYW9sdS5sdUBpbnRlbC5jb20+OyBMaXUsIFlpIEwKPiA+
ID4gPiA8eWkubC5saXVAaW50ZWwuY29tPgo+ID4gPiA+IENjOiBiYW9sdS5sdUBsaW51eC5pbnRl
bC5jb20KPiA+ID4gPiBTdWJqZWN0OiBSZTogSU9NTVUgUk1SUiBmb3IgSW50ZWwgZ3JhcGhpYyBk
ZXZpY2UKPiA+ID4gPiAKPiA+ID4gPiBIaSwKPiA+ID4gPiAKPiA+ID4gPiArVGluYSBhbmQgSGVu
cnkgYW5kIGNjIG1vcmUgcGVvcGxlCj4gPiA+ID4gCj4gPiA+ID4gVGhlIGJhY2tncm91bmQgaXMg
dGhhdCBMaW51eCBjb21tdW5pdHkgaXMgZ29pbmcgdG8gY29sbGVjdCBhbmQgcmVwb3J0Cj4gPiA+
ID4gdGhlIHJlc2VydmVkIG1lbW9yeSByYW5nZXMgb2YgYW4gYXNzaWduZWQgZGV2aWNlIHRvIFZG
SU8gZHJpdmVyLCBhbmQKPiA+ID4gPiBhbnkgbWFwcGVkIGFkZHJlc3Mgd2lsbCBiZSBjaGVja2Vk
IGFnYWluc3QgdGhlIHJlc2VydmVkIHJhbmdlcy4gSWYKPiA+ID4gPiB0aGVyZSdzIGFueSBjb25m
bGljdCwgdmlmbyB3aWxsIHJlZnVzZSB0aGUgbWFwIHJlcXVlc3QuCj4gPiA+ID4gCj4gPiA+ID4g
VW5mb3J0dW5hdGVseSwgd2hlbiBpdCBjb21lcyBJbnRlbCBncmFwaGljIGRldmljZSwgdGhlIGNv
bmZsaWN0IGhhcHBlbnMuCj4gPiA+ID4gVGhhdCBtZWFucyBhZGRyZXNzIHJhbmdlIG1hcHBlZCB0
aHJvdWdoIHZmaW8gY29uZmxpY3RzIHdpdGggdGhlIHJtcnIKPiA+ID4gPiBmb3IgZ3JhcGhpYyBk
ZXZpY2UuCj4gPiA+ID4gCj4gPiA+ID4gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTgvNi81Lzc2
MAo+ID4gPiA+IAo+ID4gPiA+IFRoZSBxdWVzdGlvbnMgYXJlIDEpIHdpbGwgdGhlIHJtcnIgZm9y
IGdyYXBoaWMgZGV2aWNlIHN0aWxsIG5lZWRzIHRvCj4gPiA+ID4gYmUgcmVzZXJ2ZWQgZm9yIEJJ
T1Mgb3IgZmlybXdhcmUgdXNlLCB3aGVuIGEgZGV2aWNlIGlzIGdvaW5nIHRvIGJlCj4gPiA+ID4g
YXNzaWduZWQgdG8gdXNlciBsZXZlbD8gMikgaWYgbm8sIHdoYXQncyB0aGUgY2hlY2sgcG9pbnQs
IGFmdGVyIHdoaWNoCj4gPiA+ID4gdGhlIHJtcnIgaXMgdW5uZWNlc3NhcnkgYW55bW9yZT8KPiA+
ID4gPiAKPiA+ID4gPiBCZXN0IHJlZ2FyZHMsCj4gPiA+ID4gTHUgQmFvbHUKPiA+ID4gPiAKPiA+
ID4gPiBPbiA1LzYvMTkgMjoxNiBQTSwgVGlhbiwgS2V2aW4gd3JvdGU6Cj4gPiA+ID4gPiB0aGlz
IHNob3VsZCBiZXR0ZXIgYmUgYXNrZWQgdG8gaTkxNSBndXlzLCBzaW5jZSBpdCdzIG5vdAo+ID4g
PiA+ID4gdmlydHVhbGl6YXRpb24gcmVsYXRlZC4gOi0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IE9u
ZSBjYXZlYXQsIGlpcmMsIGk5MTUgZHJpdmVyIHRyaWVzIHRvIHJldXNlIHN0b2xlbiBtZW1vcnkg
KGNvdmVyZWQKPiA+ID4gPiA+IGJ5Cj4gPiA+ID4gPiBSTVJSKSBldmVuIGFmdGVyIGJvb3QgdGlt
ZS4gdGFrZSBpdCBhcyBpZiBhbm90aGVyIHR5cGUgb2YgbWVtb3J5Cj4gPiA+ID4gPiByZXNvdXJj
ZS4gSWYgdHJ1ZSBJJ20gYWZyYWlkIHRoaXMgbWlnaHQgYmUgYSBnYXAgdG8geW91ciBwcm9wb3Nh
bC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gU2luY2Ugbm90aGluZyBjb25maWRlbnRpYWwsIHBvc3Np
Ymx5IHlvdSBjYW4gZGlyZWN0bHkgZGlzY3VzcyBpbgo+ID4gPiBjb21tdW5pdHkuCj4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gRnJvbTogTHUgQmFvbHUgW21haWx0bzpiYW9sdS5sdUBsaW51eC5pbnRl
bC5jb21dCj4gPiA+ID4gPiA+IFNlbnQ6IFRodXJzZGF5LCBNYXkgMiwgMjAxOSAyOjQ1IFBNCj4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBQaW5nLi4uCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBB
bnkgY29tbWVudHM/IFRoaXMgaGFzIGJlZW4gcG9zdHBvbmVkIGluIHRoZSBjb21tdW5pdHkgZm9y
IGEgbG9uZwo+ID4gPiA+IHRpbWUuCj4gPiA+ID4gPiA+IFdlIG5lZWQgdG8gcmVzcG9uc2UgdGhp
cyBhcyBzb29uIGFzIHBvc3NpYmxlLgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gQmVzdCByZWdh
cmRzLAo+ID4gPiA+ID4gPiBMdSBCYW9sdQo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gT24gNC8y
OS8xOSAxOjE5IFBNLCBMdSBCYW9sdSB3cm90ZToKPiA+ID4gPiA+ID4gPiBIaSBaaGVueXUsCj4g
PiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQXMgd2UgZGlzY3Vzc2VkLCBCSU9TIGFsd2F5cyBl
eHBvcnRzIElPTU1VIHJlc2VydmVkIG1lbW9yeQo+ID4gPiByZWdpb25zCj4gPiA+ID4gPiA+ID4g
Zm9yIChhLmsuYS4gUk1SUiBpbiB2dC1kIHNwZWMpIEludGVsIGludGVncmF0ZWQgZ3JhcGhpYyBk
ZXZpY2UuCj4gPiA+ID4gPiA+ID4gVGhpcyBjYXVzZWQgc29tZSBwcm9ibGVtcyB3aGVuIHdlIHBh
c3MtdGhyb3VnaCBzdWNoIGdyYXBoaWMKPiA+ID4gPiA+ID4gPiBkZXZpY2VzIHRvCj4gPiA+ID4g
dXNlciBsZXZlbC4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBJIGFtIGFib3V0IHRvIHBy
b3Bvc2Ugc29tZXRoaW5nIHRvIHRoZSBjb21tdW5pdHkgc28gdGhhdCBhIFJNUlIKPiA+ID4gPiA+
ID4gPiBmb3IgZ3JhcGhpYyBkZXZpY2VzIGNvdWxkIGJlIGV4cGxpY2l0bHkgY2FuY2VsZWQgYXMg
bG9uZyBhcyB0aGUKPiA+ID4gPiA+ID4gPiBkcml2ZXIKPiA+ID4gPiA+ID4gPiAoaTkxNSBvciB2
ZmlvKSBrbm93cyB0aGF0IHRoZSBSTVJSIHdpbGwgbmV2ZXIgYmUgdXNlZCBieSBCSU9TCj4gPiA+
IGFueW1vcmUuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gVGhlIHNhbWUgc3RvcnkgaGFw
cGVucyBmb3IgVVNCIGhvc3QgY29udHJvbGxlciBkZXZpY2VzLiBBbmQgc2luY2UKPiA+ID4gPiA+
ID4gPiB3ZSBrbm93IHRoYXQgQklPUyB3aWxsIHN0b3AgdXNpbmcgdGhhdCBtZW1vcnkgcmVnaW9u
IGFzIHNvb24gYXMKPiA+ID4gPiA+ID4gPiB0aGUgZHJpdmVyIGNsZWFycyB0aGUgU01JIGJpdHMu
Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gU28gdGhlIHF1ZXN0aW9uIGlzLCBjYW4gZ3Jh
cGhpYyBkcml2ZXIga25vdyB3aGVuIHRoZSBSTVJSIGZvcgo+ID4gPiA+ID4gPiA+IGdyYXBoaWMg
Y291bGQgYmUgY2FuY2VsZWQ/Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gQmVzdCByZWdh
cmRzLAo+ID4gPiA+ID4gPiA+IEx1IEJhb2x1Cj4gPiA+ID4gPiA+ID4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBs
aXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKRGFuaWVsIFZldHRl
cgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwu
Y2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

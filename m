Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CAE39BB0A
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 16:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD6F6F603;
	Fri,  4 Jun 2021 14:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 362856E059;
 Fri,  4 Jun 2021 14:06:05 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id g8so14743792ejx.1;
 Fri, 04 Jun 2021 07:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=VqbUuTecDRG6kqVgQCdooQUxGUyC+/oN8ye5pYJxZek=;
 b=YdzuqTTIA45UsQ606iB+FcZ6fkKGMf43Lgb3XWtVWD1uAKXntpETqJivgC1vIqBahb
 Q0VxYnQZhvf0XV1+WGaRCq5eI8uJcIYFVL/ZKnB1UVCFGk5pvMOAPL80PeC+PFel5Bug
 MTwMymapnxzprSt/gnKjGhcLaYjOed4y8QP2bOBjqqDaFgW3PkGpAmXK04Gc9Qr0tGfz
 pdCA+akLeDJMeC8PCA0q862E1WkNKe1EUQJTHSC4FEJEq5itEtgIXiElsV2NRP0cw248
 4T6q5s6QzieVwnS/Nqkhu8o0akBg8xtupSApk/VMHQFbPV7SxbaYT3LaZqiEQqQuYurv
 JisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=VqbUuTecDRG6kqVgQCdooQUxGUyC+/oN8ye5pYJxZek=;
 b=eXuQKmOnnJT6Tz3UyIdj5uWrTC9jPjwlSpG36UAo0wcZkPrMeL7mOSNba1/DPigpQQ
 jv16gR/7cgmA1GTvPJwfs426e/8C3T159Gxv0F8+nUrJTyEwkNIe06p/nYA4k+A0w8Yr
 no+UHlOSm0qENGGuzYC/U9rtKUYlJJziOwZ9YocpJ9OWMKxFgUiSXPzDsyGOtVFlfgzj
 GQyItjifp8mg8VyLv7rfuVPrX0AZBu66snFNzSm+A9tmgieUWz9/EC3PpBkoBMKzDSYQ
 0fSAMF5wXkaZAAgSzVhBBq4rMFO78J1N74I6ESRVxSRWXoiY/AaJ4Bb/NF0Az2PksJCf
 jkMg==
X-Gm-Message-State: AOAM533tWT7gRK4rgkhZ1Gd2RfYcto+w/MEglxC8VS3IAuvEE7310QpF
 yYfwEvfkN27yY6HkKyKO9wA=
X-Google-Smtp-Source: ABdhPJxm9y7oUklYL2H9o2QL8/GqWQwZ80Z7kBOtG3xitGDzwZPIa66pDnRkjQK3eD0iHr9LCnP1Ng==
X-Received: by 2002:a17:906:f6cb:: with SMTP id
 jo11mr4402509ejb.439.1622815563711; 
 Fri, 04 Jun 2021 07:06:03 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:7b4b:873a:17b5:b581?
 ([2a02:908:1252:fb60:7b4b:873a:17b5:b581])
 by smtp.gmail.com with ESMTPSA id v23sm3354805eds.25.2021.06.04.07.06.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Jun 2021 07:06:03 -0700 (PDT)
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dave Airlie <airlied@gmail.com>
References: <a29eaef9-2457-1393-6757-40956811daf8@linux.intel.com>
 <a6965639-acf6-b5f5-482c-2715e7fa69d4@amd.com>
 <b4c18e45-98c9-ce7f-b22c-c00c795844c2@shipmail.org>
 <baf4f828-76c8-6b47-5bba-9b9c8e7b307b@amd.com>
 <YLfQplT8H6PdCCLX@phenom.ffwll.local>
 <c50fa98f-3735-fe04-d3f9-8a7a08a7562e@linux.intel.com>
 <CAKMK7uE+fB_+UG668O=QMXwQ9_Xb--KhzehT77HLfBoWve-zLg@mail.gmail.com>
 <68e6057c-df17-64ce-3116-cd5e79578795@amd.com>
 <a3f789a0-9e75-280a-7602-4728738024eb@linux.intel.com>
 <YLnuj0jmF8q05pta@phenom.ffwll.local>
 <b81637c8-fd97-0927-f356-51fa98604bd1@gmail.com>
 <4e465ada6f8b1a8b76fea782adcf3043630efa5e.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <fd0fa98b-876d-d3e6-0b67-9537d944d33f@gmail.com>
Date: Fri, 4 Jun 2021 16:06:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <4e465ada6f8b1a8b76fea782adcf3043630efa5e.camel@linux.intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Fri, 04 Jun 2021 14:41:56 +0000
Subject: Re: [Intel-gfx] Merging TTM branches through the Intel tree?
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMDQuMDYuMjEgdW0gMTY6MDMgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPiBPbiBGcmks
IDIwMjEtMDYtMDQgYXQgMTU6MzggKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IEFt
IDA0LjA2LjIxIHVtIDExOjEyIHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPj4+IE9uIEZyaSwgSnVu
IDA0LCAyMDIxIGF0IDExOjAxOjQwQU0gKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+
Pj4+IE9uIDYvNC8yMSA5OjUxIEFNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+Pj4+PiBBbSAw
My4wNi4yMSB1bSAwOTozNiBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4+Pj4+PiBPbiBUaHUsIEp1
biAzLCAyMDIxIGF0IDg6NTAgQU0gVGhvbWFzIEhlbGxzdHLDtm0KPj4+Pj4+IDx0aG9tYXMuaGVs
bHN0cm9tQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+Pj4+Pj4gT24gNi8yLzIxIDg6NDAgUE0s
IERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+Pj4+Pj4+IE9uIFdlZCwgSnVuIDAyLCAyMDIxIGF0IDEx
OjQ4OjQxQU0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcKPj4+Pj4+Pj4gd3JvdGU6Cj4+Pj4+Pj4+
PiBBbSAwMi4wNi4yMSB1bSAxMToxNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4+Pj4+Pj4+Pj4gT24gNi8yLzIxIDEwOjMyIEFNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+
Pj4+Pj4+Pj4+PiBVZmYgSSdtIGp1c3Qgd2FpdGluZyBmb3IgZmVlZGJhY2sgZnJvbSBQaGlsaXAg
dG8KPj4+Pj4+Pj4+Pj4gbWVyZ2UgYSBsYXJnZSBwYXRjaAo+Pj4+Pj4+Pj4+PiBzZXQgZm9yIFRU
TSB0aHJvdWdoIGRybS1taXNjLW5leHQuCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IEknbSBwcmV0
dHkgc3VyZSB3ZSB3aWxsIHJ1biBpbnRvIG1lcmdlIGNvbmZsaWN0cyBpZgo+Pj4+Pj4+Pj4+PiB5
b3UgdHJ5IHRvIHB1c2gKPj4+Pj4+Pj4+Pj4geW91ciBjaGFuZ2VzIHRocm91Z2ggdGhlIEludGVs
IHRyZWUuCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IENocmlzdGlhbi4KPj4+Pj4+Pj4+PiBPSywg
c28gd2hhdCB3b3VsZCBiZSB0aGUgYmVzdCBhcHByb2FjaCBoZXJlPywgQWRkaW5nCj4+Pj4+Pj4+
Pj4gdGhlIFRUTSBwYXRjaGVzIHRvCj4+Pj4+Pj4+Pj4gZHJtLW1pc2MtbmV4dCB3aGVuIHlvdXIg
c2V0IGhhcyBsYW5kZWQ/Cj4+Pj4+Pj4+PiBJIHRoaW5rIEkgd2lsbCBzZW5kIG91dCBvdXQgbXkg
c2V0IHRvIE1hdHRoZXcgb25jZSBtb3JlCj4+Pj4+Pj4+PiBmb3IgcmV2aWV3LCB0aGVuCj4+Pj4+
Pj4+PiBwdXNoIHRoZSBjb21tb24gVFRNIHN0dWZmIHRvIGRybS1taXNjLW5leHQgYXMgbXVjaCBh
cwo+Pj4+Pj4+Pj4gcG9zc2libGUuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gVGhlbiB5b3Ugc2hvdWxk
IGJlIGFibGUgdG8gbGFuZCB5b3VyIHN0dWZmIHRvCj4+Pj4+Pj4+PiBkcm0tbWlzYy1uZXh0IGFu
ZCByZWJhc2Ugb24KPj4+Pj4+Pj4+IHRoZSBlbmQgcmVzdWx0Lgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+
IEp1c3QgbmVlZCB0byBub3RlIHRvIERhdmlkIHRoYXQgZHJtLW1pc2MtbmV4dCBzaG91bGQgYmUK
Pj4+Pj4+Pj4+IG1lcmdlZCB0byBkcm0tbmV4dAo+Pj4+Pj4+Pj4gYmVmb3JlIHRoZSBJbnRlbCBw
YXRjaGVzIGRlcGVuZGluZyBvbiB0aGF0IHN0dWZmIGxhbmQKPj4+Pj4+Pj4+IGFzIHdlbGwuCj4+
Pj4+Pj4+IE90aGVyIG9wdGlvbiAoYmVjYXVzZSB0aGUgYmFja21lcmdlcyB0ZW5kIHRvIGJlIHNs
b3cpIGlzCj4+Pj4+Pj4+IGEKPj4+Pj4+Pj4gdG9waWMgYnJhbmNoLAo+Pj4+Pj4+PiBhbmQgd2Ug
anVzdCBlYXQvcmVzb2x2ZSB0aGUgY29uZmxpY3RzIGluIGJvdGggZHJtLW1pc2MtCj4+Pj4+Pj4+
IG5leHQgYW5kCj4+Pj4+Pj4+IGRybS1pbnRlbC1ndC1uZXh0IGluIHRoZSBtZXJnZSBjb21taXQu
IElmIGl0J3Mgbm90IHRvbwo+Pj4+Pj4+PiBiYWQgKEkgaGF2ZW4ndAo+Pj4+Pj4+PiBsb29rZWQg
YXQgd2hhdCBleGFjdGx5IHdlIG5lZWQgZm9yIHRoZSBpOTE1IHNpZGUgZnJvbSB0dG0KPj4+Pj4+
Pj4gaW4gZGV0YWlsKS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gQnV0IGFsc28gb2Z0ZW4gZmlndXJpbmcg
b3V0IHRoZSB0b3BpYyBicmFuY2ggbG9naXN0aWNzCj4+Pj4+Pj4+IHRha2VzCj4+Pj4+Pj4+IGxv
bmdlciB0aGFuCj4+Pj4+Pj4+IGp1c3QgbWVyZ2luZyB0byBkcm0tbWlzYy1uZXh0IGFzIHRoZSBw
YXRjaGVzIGdldCByZWFkeS4KPj4+Pj4+Pj4gLURhbmllbAo+Pj4+Pj4+IERhbmllbDogU28gdGhl
IHRoaW5nIHdlIG5lZWQgdG8gZ2V0IGludG8gVFRNIGlzIHRoZQo+Pj4+Pj4+IGl0ZXJhdG9yLWJh
c2VkCj4+Pj4+Pj4gbW92ZV9tZW1jcHkgd2hpY2ggaXMgbW9yZSBhZGFwdGFibGUgdGhhbiB0aGUg
Y3VycmVudCBvbmUKPj4+Pj4+PiBhbmQgbmVlZGVkIHRvCj4+Pj4+Pj4gc3VwcG9ydCBub24tbGlu
ZWFyIGxtZW0gYnVmZmVycywgc29tZSBidWctZml4ZXMgYW5kIG1pbm9yCj4+Pj4+Pj4gY2hhbmdl
cyB0byBiZQo+Pj4+Pj4+IGFibGUgdG8ga2VlcCBvdXIgc2hvcnQtdGVybS1waW5uaW5nIHdoaWxl
IG9uIHRoZSBMUlUuIEEKPj4+Pj4+PiBuZWNlc3NhcnkgZXZpbC4KPj4+Pj4+Pgo+Pj4+Pj4+IENo
cmlzdGlhbjogaXQgbG9va3MgbGlrZSB5b3UgaGF2ZSBsYW5kZWQgc29tZSBUVE0gY2hhbmdlcwo+
Pj4+Pj4+IGFscmVhZHksIGluCj4+Pj4+Pj4gcGFydGljdWxhciB0aGUgJmJvLT5tZW0gLT4gYm8t
PnJlc291cmNlIGNoYW5nZSB3aGljaCBpcyB0aGUKPj4+Pj4+PiBtYWluCj4+Pj4+Pj4gY29uZmxp
Y3QgSSB0aGluay4KPj4+Pj4gWWVzLCBJIHRob3VnaHQgdGhhdCBwdXNoaW5nIHRoaXMgd2l0aCBN
YXR0aGV3IHJiIHNob3VsZCBzb2x2ZQo+Pj4+PiBhdCBsZWFzdCBhCj4+Pj4+IGJpdCBvZiB0aGUg
Y29uZmxpY3QuCj4+Pj4+Cj4+Pj4+Pj4gSXMgdGhlIDEwIHBhdGNoZXMgc2VsZi1hbGxvY2F0aW9u
IHNlcmllcyB0aGUgbWFpbgo+Pj4+Pj4+IHJlbWFpbmluZyBwYXJ0Pwo+Pj4+PiBZZXMsIGV4YWN0
bHkuIEkgb25seSBuZWVkIE1hdHRoZXcncywgRGFuaWVsJ3Mgb3IgeW91ciBvayBhbmQKPj4+Pj4g
SSdtIGdvb2QgdG8KPj4+Pj4gZ28gYXMgd2VsbAo+Pj4+Pgo+Pj4+Pj4+IFRoYXQgd2lsbCBwcm9i
YWJseSBjYXVzZSBzb21lIGNvbmZsaWN0cyB3aXRoIGFscmVhZHkKPj4+Pj4+PiBwdXNoZWQgaTkx
NSBUVE0gc2V0dXAgY29kZSwgYnV0IG90aGVyd2lzZSB3aWxsIG5vdCBjb25mbGljdAo+Pj4+Pj4+
IHdpdGggdGhlCj4+Pj4+Pj4gcmVzdCBvZiB0aGUgVFRNIGNvZGUgSSB0aGluaywgd2hpY2ggc2hv
dWxkIG1ha2UgaXQgcG9zc2libGUKPj4+Pj4+PiB0byBicmluZyBpbgo+Pj4+Pj4+IG91ciBUVE0g
Y2hhbmdlcyBhZnRlciBjb25mbGljdCByZXNvbHV0aW9uIHdpdGggd2hhdCB5b3UndmUKPj4+Pj4+
PiBhbHJlYWR5Cj4+Pj4+Pj4gcHVzaGVkLiBUaGUgbWVtY3B5IGNvZGUgaXMgcHJldHR5IHNlbGYt
Y29udGFpbmVkLgo+Pj4+Pj4gSSB0aGluayBpbiB0aGF0IGNhc2UgdG9waWMgYnJhbmNoIG9uIHRv
cCBvZiBkcm0tbmV4dCAob25jZQo+Pj4+Pj4gdGhlIHR0bQo+Pj4+Pj4gYml0cyB3ZSBjb25mbGlj
dCB3aXRoIGFyZSB0aGVyZSkgaXMgcHJvYmFibHkgYmVzdCwgYW5kIHRoZW4KPj4+Pj4+IHB1bGwg
dGhhdAo+Pj4+Pj4gaW50byBkcm0tbWlzYy1uZXh0IGFuZCBkcm0taW50ZWwtZ3QtbmV4dC4gTWVy
Z2Ugd2luZG93IGZyZWV6ZQo+Pj4+Pj4gaXMgYWxzbwo+Pj4+Pj4gYXBwcm9hY2gsIHNvIHdpdGhv
dXQgdG9waWMgYnJhbmNoIHdlJ2QgYmUgc3R1Y2sgdW50aWwgbGlrZSAtCj4+Pj4+PiByYzIgd2hl
bgo+Pj4+Pj4gZHJtLW5leHQgcmVvcGVucy4gSSBndWVzcyBNYWFydGVuIGNhbiBkbyB0aGUgdG9w
aWMgYnJhbmNoCj4+Pj4+PiBsb2dpc3RpY3MgaW4KPj4+Pj4+IGRybS1taXNjLmdpdCBmb3IgdGhp
cy4KPj4+Pj4gVGhhdCBhcHByb2FjaCBzb3VuZHMgZ29vZCB0byBtZSBhcyB3ZWxsLgo+Pj4+Pgo+
Pj4+PiBUaGUgYW1kZ3B1IGJyYW5jaCBoYWQgc29tZSBtZXJnZSBjb25mbGljdHMgYXMgd2VsbCwg
YnV0IG5vdGhpbmcKPj4+Pj4gd2UKPj4+Pj4gY291bGRuJ3QgZml4Lgo+Pj4+IE9LLCBzbyB0aGlz
IGlzIGdvaW5nIHRvIGJlIGEgbGl0dGxlIHRyaWNreSwgSSBndWVzcy4KPj4+Pgo+Pj4+ICDCoEZy
b20gd2hhdCBJIGNhbiB0ZWxsLCB0aGUgbWVtY3B5IFRUTSBzdHVmZiBpcyByZXNvbHZlZCBsb2Nh
bGx5Cj4+Pj4gYW5kIGNhbiBiZQo+Pj4+IG1lcmdlZCB0byBkcm0tbWlzYy1uZXh0IGltbWVkaWF0
ZWx5LiBJdCBtaWdodCBoYXZlIGEgdmVyeSBtaW5vcgo+Pj4+IGNvbmZsaWN0Cj4+Pj4gd2l0aCB5
b3VyIDEwIHBhdGNoZXMgSSB0aGluaywgaWYgYW55Lgo+Pj4+Cj4+Pj4gWW91ciAxMCBwYXRjaGVz
IHdpbGwgY29uZmxpY3Qgc2xpZ2h0bHkgd2l0aCBjdXJyZW50IGRybS1pbnRlbC1ndC0KPj4+PiBu
ZXh0IEkKPj4+PiB0aGluay4KPj4+Pgo+Pj4+IFJlbWFpbmluZyBpbnRlbCBwYXRjaGVzIHdpbGwg
Y29uZmxpY3Qgb25seSB3aXRoIGN1cnJlbnQgZHJtLW1pc2MtCj4+Pj4gbmV4dC4KPj4+Pgo+Pj4+
IFNvIFdlIGNvdWxkIGhhdmUgcHVsbCBvcmRlcgo+Pj4+Cj4+Pj4gLSBkcm0tbWlzYy1uZXh0IHVw
IHRvIGJvdCBub3QgaW5jbHVkaW5nIHlvdXIgMTAgcGF0Y2hlcywKPj4+PiAtIGRybS1pbnRlbC1n
dC1uZXh0Cj4+Pj4gLSBkcm0tbWlzYy1uZXh0IGZyb20geW91ciAxMCBwYWNoZXMgYW5kIG9ud2Fy
ZHMsCj4+Pj4gLSBJbnRlbCdzIHR0bSBlbmFibGVtZW50IHRvcGljIGJyYW5jaC4KPj4+IElmIGl0
J3MganVzdCBzbGlnaHQgY29uZmxpY3RzIHRoZW4gSSB3b3VsZG4ndCBib3RoZXIgd2l0aCBjYXJl
ZnVsCj4+PiBtZXJnZQo+Pj4gb3JkZXIuIEJlY2F1c2UgaWYgd2UgZG8gdGhpcyB3ZSBjYW4gZ2V0
IGFyb3VuZCB0byB0aGUgaTkxNSB0dG0KPj4+IHRvcGljCj4+PiBicmFuY2ggb25seSB3aGVuIHdl
J3JlIGJhY2sgdG8gLXJjMi4KPj4gSSd2ZSBqdXN0IHB1c2hlZCB0aGUgcmVtYWluaW5nIDEwIHBh
dGNoZXMgdG8gZHJtLW1pc2MtbmV4dCBhbmQgcmFuCj4+IGludG8KPj4gbWlub3IgbWVyZ2UgY29u
ZmxpY3RzIGluIGRybS10aXAuCj4+Cj4+IEknbSB3b3JraW5nIG9uIHRoaXMsIGJ1dCBJJ20gbm90
IHZlcnkgZmFtaWxpYXIgd2l0aCBkcm0tdGlwIGhhbmRsaW5nLgo+Pgo+PiBDaHJpc3RpYW4uCj4g
TnAsIEknbGwgaG9sZCBvZmYgdW50aWwgTW9uZGF5LgoKT2sgSSd2ZSBmaXhlZCB1cCBkcm0tdGlw
IGZvciBhbWRncHUsIGJ1dCB0aGVyZSBhcmUgYWxzbyBtZXJnZSBjb25mbGljdHMgCmZvciBpOTE1
LgoKQ2FuIHlvdSBoYW5kbGUgdGhvc2U/IERvZXNuJ3QgbG9va3MgdG8gaGFyZCwgYnV0IEkgd291
bGQgcHJlZmVyIG5vdCB0byAKdG91Y2ggY29kZSBJIGNhbid0IHRlc3QuCgpDaHJpc3RpYW4uCgo+
Cj4gL1Rob21hcwo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=

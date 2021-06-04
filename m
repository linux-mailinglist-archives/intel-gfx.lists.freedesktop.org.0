Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5AE39BB09
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 16:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6F36F4C3;
	Fri,  4 Jun 2021 14:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3146E1BA;
 Fri,  4 Jun 2021 14:14:16 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id f5so6323650eds.0;
 Fri, 04 Jun 2021 07:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=qLav8QtVH57dM8C4dKalXjLL+mYwvFEFfkxWmNbOqyA=;
 b=YuS6dFxvSc7ksPTyZ/SnYaLPoBLl/q+F4fGx6D4UfF6Qy6FV1UUZ9PBzWpKSXYogNv
 9b/B6jpM/vXk2QFyvgcDuPnObzNI5FDe6faUbXC6bEOaOINiaQ2kTKWQpw23em+hdf2w
 5Dx0RNDehGjvwyVHcwbHgmhpFZ9Cj+ZYc3yWwYFtkQUNV/GxxdM9zquL1prQR8WYxuPo
 FoX7+VPxBE1bzd/M6ffI23oJC0gBJNIzT11nHWARANn3URnKYIcETcKjlA+Z/4s/alNv
 YPJpsPooRU7LSjru4D1NifJ5ksiMyiqT3gt6PHVqXMlt+47TYOC3SdMKwmyO3xAMgge5
 D5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=qLav8QtVH57dM8C4dKalXjLL+mYwvFEFfkxWmNbOqyA=;
 b=UNltBNWbA7Om4NAKw/vQEaXMMRPikvewsUj8yYmDDpBIGm94SXywpIhXDWjd/nCvt1
 KK0IcO2SzvnjaR1k23E4fASd/u67KDmnjeEqQP5qJ5lME2KKB8f7U5PK7AVQbFXU7pOk
 lKvMrL/70AL4srzWFWDnOKxOjmx9nzqISkUWsNlFLGfbPIWRRpPYqDEM4p4GhxURBA9M
 w7QaCrZhSJMjYKdj7J76eQxStrxZHpa05ET/ow89MGjkaeqcOVkiyMalls399ZRDh7Pf
 /4omkeH3tT0s8WkBGbBgJJ9WFF8MhTRfSurj23sGaeTqGhJaQs1X+E/fZOViYAQmefk4
 +Mrg==
X-Gm-Message-State: AOAM531kx8M95Vw/188uw7+HiClMOCMy/ngoxNRzUFYxd7pv5n1QlsF6
 7XDVJweNWgdatIYwcORgsZg=
X-Google-Smtp-Source: ABdhPJwMfN0eaqVmX0QZ7FO1wHyfiJt/l08prHgchSKE3IWIG4FlmrvP9vXPoUqgX8pLets3cqk5mQ==
X-Received: by 2002:aa7:c7d3:: with SMTP id o19mr4893940eds.142.1622816055280; 
 Fri, 04 Jun 2021 07:14:15 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:7b4b:873a:17b5:b581?
 ([2a02:908:1252:fb60:7b4b:873a:17b5:b581])
 by smtp.gmail.com with ESMTPSA id q16sm2860012ejm.12.2021.06.04.07.14.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Jun 2021 07:14:14 -0700 (PDT)
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
 <fd0fa98b-876d-d3e6-0b67-9537d944d33f@gmail.com>
 <9aef1767b510737556fb573897f77cfbd6a1cc20.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <ecfe24a4-f683-fed2-4a36-bc5e903c973a@gmail.com>
Date: Fri, 4 Jun 2021 16:14:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <9aef1767b510737556fb573897f77cfbd6a1cc20.camel@linux.intel.com>
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

CgpBbSAwNC4wNi4yMSB1bSAxNjoxMSBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtOgo+IE9uIEZy
aSwgMjAyMS0wNi0wNCBhdCAxNjowNiArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4g
QW0gMDQuMDYuMjEgdW0gMTY6MDMgc2NocmllYiBUaG9tYXMgSGVsbHN0csO2bToKPj4+IE9uIEZy
aSwgMjAyMS0wNi0wNCBhdCAxNTozOCArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4+
PiBBbSAwNC4wNi4yMSB1bSAxMToxMiBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4+Pj4+IE9uIEZy
aSwgSnVuIDA0LCAyMDIxIGF0IDExOjAxOjQwQU0gKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtCj4+
Pj4+IHdyb3RlOgo+Pj4+Pj4gT24gNi80LzIxIDk6NTEgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6Cj4+Pj4+Pj4gQW0gMDMuMDYuMjEgdW0gMDk6MzYgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+
Pj4+Pj4+PiBPbiBUaHUsIEp1biAzLCAyMDIxIGF0IDg6NTAgQU0gVGhvbWFzIEhlbGxzdHLDtm0K
Pj4+Pj4+Pj4gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPj4+Pj4+
Pj4+IE9uIDYvMi8yMSA4OjQwIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4+Pj4+Pj4+IE9u
IFdlZCwgSnVuIDAyLCAyMDIxIGF0IDExOjQ4OjQxQU0gKzAyMDAsIENocmlzdGlhbgo+Pj4+Pj4+
Pj4+IEvDtm5pZwo+Pj4+Pj4+Pj4+IHdyb3RlOgo+Pj4+Pj4+Pj4+PiBBbSAwMi4wNi4yMSB1bSAx
MToxNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtCj4+Pj4+Pj4+Pj4+IChJbnRlbCk6Cj4+Pj4+
Pj4+Pj4+PiBPbiA2LzIvMjEgMTA6MzIgQU0sIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+Pj4+
Pj4+Pj4+Pj4gVWZmIEknbSBqdXN0IHdhaXRpbmcgZm9yIGZlZWRiYWNrIGZyb20gUGhpbGlwCj4+
Pj4+Pj4+Pj4+Pj4gdG8KPj4+Pj4+Pj4+Pj4+PiBtZXJnZSBhIGxhcmdlIHBhdGNoCj4+Pj4+Pj4+
Pj4+Pj4gc2V0IGZvciBUVE0gdGhyb3VnaCBkcm0tbWlzYy1uZXh0Lgo+Pj4+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4+Pj4gSSdtIHByZXR0eSBzdXJlIHdlIHdpbGwgcnVuIGludG8gbWVyZ2UKPj4+Pj4+
Pj4+Pj4+PiBjb25mbGljdHMgaWYKPj4+Pj4+Pj4+Pj4+PiB5b3UgdHJ5IHRvIHB1c2gKPj4+Pj4+
Pj4+Pj4+PiB5b3VyIGNoYW5nZXMgdGhyb3VnaCB0aGUgSW50ZWwgdHJlZS4KPj4+Pj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4+Pj4+IENocmlzdGlhbi4KPj4+Pj4+Pj4+Pj4+IE9LLCBzbyB3aGF0IHdvdWxk
IGJlIHRoZSBiZXN0IGFwcHJvYWNoIGhlcmU/LAo+Pj4+Pj4+Pj4+Pj4gQWRkaW5nCj4+Pj4+Pj4+
Pj4+PiB0aGUgVFRNIHBhdGNoZXMgdG8KPj4+Pj4+Pj4+Pj4+IGRybS1taXNjLW5leHQgd2hlbiB5
b3VyIHNldCBoYXMgbGFuZGVkPwo+Pj4+Pj4+Pj4+PiBJIHRoaW5rIEkgd2lsbCBzZW5kIG91dCBv
dXQgbXkgc2V0IHRvIE1hdHRoZXcgb25jZQo+Pj4+Pj4+Pj4+PiBtb3JlCj4+Pj4+Pj4+Pj4+IGZv
ciByZXZpZXcsIHRoZW4KPj4+Pj4+Pj4+Pj4gcHVzaCB0aGUgY29tbW9uIFRUTSBzdHVmZiB0byBk
cm0tbWlzYy1uZXh0IGFzIG11Y2gKPj4+Pj4+Pj4+Pj4gYXMKPj4+Pj4+Pj4+Pj4gcG9zc2libGUu
Cj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IFRoZW4geW91IHNob3VsZCBiZSBhYmxlIHRvIGxhbmQg
eW91ciBzdHVmZiB0bwo+Pj4+Pj4+Pj4+PiBkcm0tbWlzYy1uZXh0IGFuZCByZWJhc2Ugb24KPj4+
Pj4+Pj4+Pj4gdGhlIGVuZCByZXN1bHQuCj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+IEp1c3QgbmVl
ZCB0byBub3RlIHRvIERhdmlkIHRoYXQgZHJtLW1pc2MtbmV4dAo+Pj4+Pj4+Pj4+PiBzaG91bGQg
YmUKPj4+Pj4+Pj4+Pj4gbWVyZ2VkIHRvIGRybS1uZXh0Cj4+Pj4+Pj4+Pj4+IGJlZm9yZSB0aGUg
SW50ZWwgcGF0Y2hlcyBkZXBlbmRpbmcgb24gdGhhdCBzdHVmZgo+Pj4+Pj4+Pj4+PiBsYW5kCj4+
Pj4+Pj4+Pj4+IGFzIHdlbGwuCj4+Pj4+Pj4+Pj4gT3RoZXIgb3B0aW9uIChiZWNhdXNlIHRoZSBi
YWNrbWVyZ2VzIHRlbmQgdG8gYmUgc2xvdykKPj4+Pj4+Pj4+PiBpcwo+Pj4+Pj4+Pj4+IGEKPj4+
Pj4+Pj4+PiB0b3BpYyBicmFuY2gsCj4+Pj4+Pj4+Pj4gYW5kIHdlIGp1c3QgZWF0L3Jlc29sdmUg
dGhlIGNvbmZsaWN0cyBpbiBib3RoIGRybS0KPj4+Pj4+Pj4+PiBtaXNjLQo+Pj4+Pj4+Pj4+IG5l
eHQgYW5kCj4+Pj4+Pj4+Pj4gZHJtLWludGVsLWd0LW5leHQgaW4gdGhlIG1lcmdlIGNvbW1pdC4g
SWYgaXQncyBub3QKPj4+Pj4+Pj4+PiB0b28KPj4+Pj4+Pj4+PiBiYWQgKEkgaGF2ZW4ndAo+Pj4+
Pj4+Pj4+IGxvb2tlZCBhdCB3aGF0IGV4YWN0bHkgd2UgbmVlZCBmb3IgdGhlIGk5MTUgc2lkZSBm
cm9tCj4+Pj4+Pj4+Pj4gdHRtCj4+Pj4+Pj4+Pj4gaW4gZGV0YWlsKS4KPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+IEJ1dCBhbHNvIG9mdGVuIGZpZ3VyaW5nIG91dCB0aGUgdG9waWMgYnJhbmNoCj4+Pj4+
Pj4+Pj4gbG9naXN0aWNzCj4+Pj4+Pj4+Pj4gdGFrZXMKPj4+Pj4+Pj4+PiBsb25nZXIgdGhhbgo+
Pj4+Pj4+Pj4+IGp1c3QgbWVyZ2luZyB0byBkcm0tbWlzYy1uZXh0IGFzIHRoZSBwYXRjaGVzIGdl
dAo+Pj4+Pj4+Pj4+IHJlYWR5Lgo+Pj4+Pj4+Pj4+IC1EYW5pZWwKPj4+Pj4+Pj4+IERhbmllbDog
U28gdGhlIHRoaW5nIHdlIG5lZWQgdG8gZ2V0IGludG8gVFRNIGlzIHRoZQo+Pj4+Pj4+Pj4gaXRl
cmF0b3ItYmFzZWQKPj4+Pj4+Pj4+IG1vdmVfbWVtY3B5IHdoaWNoIGlzIG1vcmUgYWRhcHRhYmxl
IHRoYW4gdGhlIGN1cnJlbnQKPj4+Pj4+Pj4+IG9uZQo+Pj4+Pj4+Pj4gYW5kIG5lZWRlZCB0bwo+
Pj4+Pj4+Pj4gc3VwcG9ydCBub24tbGluZWFyIGxtZW0gYnVmZmVycywgc29tZSBidWctZml4ZXMg
YW5kCj4+Pj4+Pj4+PiBtaW5vcgo+Pj4+Pj4+Pj4gY2hhbmdlcyB0byBiZQo+Pj4+Pj4+Pj4gYWJs
ZSB0byBrZWVwIG91ciBzaG9ydC10ZXJtLXBpbm5pbmcgd2hpbGUgb24gdGhlIExSVS4gQQo+Pj4+
Pj4+Pj4gbmVjZXNzYXJ5IGV2aWwuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQ2hyaXN0aWFuOiBpdCBs
b29rcyBsaWtlIHlvdSBoYXZlIGxhbmRlZCBzb21lIFRUTQo+Pj4+Pj4+Pj4gY2hhbmdlcwo+Pj4+
Pj4+Pj4gYWxyZWFkeSwgaW4KPj4+Pj4+Pj4+IHBhcnRpY3VsYXIgdGhlICZiby0+bWVtIC0+IGJv
LT5yZXNvdXJjZSBjaGFuZ2Ugd2hpY2ggaXMKPj4+Pj4+Pj4+IHRoZQo+Pj4+Pj4+Pj4gbWFpbgo+
Pj4+Pj4+Pj4gY29uZmxpY3QgSSB0aGluay4KPj4+Pj4+PiBZZXMsIEkgdGhvdWdodCB0aGF0IHB1
c2hpbmcgdGhpcyB3aXRoIE1hdHRoZXcgcmIgc2hvdWxkCj4+Pj4+Pj4gc29sdmUKPj4+Pj4+PiBh
dCBsZWFzdCBhCj4+Pj4+Pj4gYml0IG9mIHRoZSBjb25mbGljdC4KPj4+Pj4+Pgo+Pj4+Pj4+Pj4g
SXMgdGhlIDEwIHBhdGNoZXMgc2VsZi1hbGxvY2F0aW9uIHNlcmllcyB0aGUgbWFpbgo+Pj4+Pj4+
Pj4gcmVtYWluaW5nIHBhcnQ/Cj4+Pj4+Pj4gWWVzLCBleGFjdGx5LiBJIG9ubHkgbmVlZCBNYXR0
aGV3J3MsIERhbmllbCdzIG9yIHlvdXIgb2sKPj4+Pj4+PiBhbmQKPj4+Pj4+PiBJJ20gZ29vZCB0
bwo+Pj4+Pj4+IGdvIGFzIHdlbGwKPj4+Pj4+Pgo+Pj4+Pj4+Pj4gVGhhdCB3aWxsIHByb2JhYmx5
IGNhdXNlIHNvbWUgY29uZmxpY3RzIHdpdGggYWxyZWFkeQo+Pj4+Pj4+Pj4gcHVzaGVkIGk5MTUg
VFRNIHNldHVwIGNvZGUsIGJ1dCBvdGhlcndpc2Ugd2lsbCBub3QKPj4+Pj4+Pj4+IGNvbmZsaWN0
Cj4+Pj4+Pj4+PiB3aXRoIHRoZQo+Pj4+Pj4+Pj4gcmVzdCBvZiB0aGUgVFRNIGNvZGUgSSB0aGlu
aywgd2hpY2ggc2hvdWxkIG1ha2UgaXQKPj4+Pj4+Pj4+IHBvc3NpYmxlCj4+Pj4+Pj4+PiB0byBi
cmluZyBpbgo+Pj4+Pj4+Pj4gb3VyIFRUTSBjaGFuZ2VzIGFmdGVyIGNvbmZsaWN0IHJlc29sdXRp
b24gd2l0aCB3aGF0Cj4+Pj4+Pj4+PiB5b3UndmUKPj4+Pj4+Pj4+IGFscmVhZHkKPj4+Pj4+Pj4+
IHB1c2hlZC4gVGhlIG1lbWNweSBjb2RlIGlzIHByZXR0eSBzZWxmLWNvbnRhaW5lZC4KPj4+Pj4+
Pj4gSSB0aGluayBpbiB0aGF0IGNhc2UgdG9waWMgYnJhbmNoIG9uIHRvcCBvZiBkcm0tbmV4dAo+
Pj4+Pj4+PiAob25jZQo+Pj4+Pj4+PiB0aGUgdHRtCj4+Pj4+Pj4+IGJpdHMgd2UgY29uZmxpY3Qg
d2l0aCBhcmUgdGhlcmUpIGlzIHByb2JhYmx5IGJlc3QsIGFuZAo+Pj4+Pj4+PiB0aGVuCj4+Pj4+
Pj4+IHB1bGwgdGhhdAo+Pj4+Pj4+PiBpbnRvIGRybS1taXNjLW5leHQgYW5kIGRybS1pbnRlbC1n
dC1uZXh0LiBNZXJnZSB3aW5kb3cKPj4+Pj4+Pj4gZnJlZXplCj4+Pj4+Pj4+IGlzIGFsc28KPj4+
Pj4+Pj4gYXBwcm9hY2gsIHNvIHdpdGhvdXQgdG9waWMgYnJhbmNoIHdlJ2QgYmUgc3R1Y2sgdW50
aWwKPj4+Pj4+Pj4gbGlrZSAtCj4+Pj4+Pj4+IHJjMiB3aGVuCj4+Pj4+Pj4+IGRybS1uZXh0IHJl
b3BlbnMuIEkgZ3Vlc3MgTWFhcnRlbiBjYW4gZG8gdGhlIHRvcGljIGJyYW5jaAo+Pj4+Pj4+PiBs
b2dpc3RpY3MgaW4KPj4+Pj4+Pj4gZHJtLW1pc2MuZ2l0IGZvciB0aGlzLgo+Pj4+Pj4+IFRoYXQg
YXBwcm9hY2ggc291bmRzIGdvb2QgdG8gbWUgYXMgd2VsbC4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoZSBh
bWRncHUgYnJhbmNoIGhhZCBzb21lIG1lcmdlIGNvbmZsaWN0cyBhcyB3ZWxsLCBidXQKPj4+Pj4+
PiBub3RoaW5nCj4+Pj4+Pj4gd2UKPj4+Pj4+PiBjb3VsZG4ndCBmaXguCj4+Pj4+PiBPSywgc28g
dGhpcyBpcyBnb2luZyB0byBiZSBhIGxpdHRsZSB0cmlja3ksIEkgZ3Vlc3MuCj4+Pj4+Pgo+Pj4+
Pj4gIMKgwqBGcm9tIHdoYXQgSSBjYW4gdGVsbCwgdGhlIG1lbWNweSBUVE0gc3R1ZmYgaXMgcmVz
b2x2ZWQKPj4+Pj4+IGxvY2FsbHkKPj4+Pj4+IGFuZCBjYW4gYmUKPj4+Pj4+IG1lcmdlZCB0byBk
cm0tbWlzYy1uZXh0IGltbWVkaWF0ZWx5LiBJdCBtaWdodCBoYXZlIGEgdmVyeQo+Pj4+Pj4gbWlu
b3IKPj4+Pj4+IGNvbmZsaWN0Cj4+Pj4+PiB3aXRoIHlvdXIgMTAgcGF0Y2hlcyBJIHRoaW5rLCBp
ZiBhbnkuCj4+Pj4+Pgo+Pj4+Pj4gWW91ciAxMCBwYXRjaGVzIHdpbGwgY29uZmxpY3Qgc2xpZ2h0
bHkgd2l0aCBjdXJyZW50IGRybS0KPj4+Pj4+IGludGVsLWd0LQo+Pj4+Pj4gbmV4dCBJCj4+Pj4+
PiB0aGluay4KPj4+Pj4+Cj4+Pj4+PiBSZW1haW5pbmcgaW50ZWwgcGF0Y2hlcyB3aWxsIGNvbmZs
aWN0IG9ubHkgd2l0aCBjdXJyZW50IGRybS0KPj4+Pj4+IG1pc2MtCj4+Pj4+PiBuZXh0Lgo+Pj4+
Pj4KPj4+Pj4+IFNvIFdlIGNvdWxkIGhhdmUgcHVsbCBvcmRlcgo+Pj4+Pj4KPj4+Pj4+IC0gZHJt
LW1pc2MtbmV4dCB1cCB0byBib3Qgbm90IGluY2x1ZGluZyB5b3VyIDEwIHBhdGNoZXMsCj4+Pj4+
PiAtIGRybS1pbnRlbC1ndC1uZXh0Cj4+Pj4+PiAtIGRybS1taXNjLW5leHQgZnJvbSB5b3VyIDEw
IHBhY2hlcyBhbmQgb253YXJkcywKPj4+Pj4+IC0gSW50ZWwncyB0dG0gZW5hYmxlbWVudCB0b3Bp
YyBicmFuY2guCj4+Pj4+IElmIGl0J3MganVzdCBzbGlnaHQgY29uZmxpY3RzIHRoZW4gSSB3b3Vs
ZG4ndCBib3RoZXIgd2l0aAo+Pj4+PiBjYXJlZnVsCj4+Pj4+IG1lcmdlCj4+Pj4+IG9yZGVyLiBC
ZWNhdXNlIGlmIHdlIGRvIHRoaXMgd2UgY2FuIGdldCBhcm91bmQgdG8gdGhlIGk5MTUgdHRtCj4+
Pj4+IHRvcGljCj4+Pj4+IGJyYW5jaCBvbmx5IHdoZW4gd2UncmUgYmFjayB0byAtcmMyLgo+Pj4+
IEkndmUganVzdCBwdXNoZWQgdGhlIHJlbWFpbmluZyAxMCBwYXRjaGVzIHRvIGRybS1taXNjLW5l
eHQgYW5kCj4+Pj4gcmFuCj4+Pj4gaW50bwo+Pj4+IG1pbm9yIG1lcmdlIGNvbmZsaWN0cyBpbiBk
cm0tdGlwLgo+Pj4+Cj4+Pj4gSSdtIHdvcmtpbmcgb24gdGhpcywgYnV0IEknbSBub3QgdmVyeSBm
YW1pbGlhciB3aXRoIGRybS10aXAKPj4+PiBoYW5kbGluZy4KPj4+Pgo+Pj4+IENocmlzdGlhbi4K
Pj4+IE5wLCBJJ2xsIGhvbGQgb2ZmIHVudGlsIE1vbmRheS4KPj4gT2sgSSd2ZSBmaXhlZCB1cCBk
cm0tdGlwIGZvciBhbWRncHUsIGJ1dCB0aGVyZSBhcmUgYWxzbyBtZXJnZQo+PiBjb25mbGljdHMK
Pj4gZm9yIGk5MTUuCj4+Cj4+IENhbiB5b3UgaGFuZGxlIHRob3NlPyBEb2Vzbid0IGxvb2tzIHRv
IGhhcmQsIGJ1dCBJIHdvdWxkIHByZWZlciBub3QKPj4gdG8KPj4gdG91Y2ggY29kZSBJIGNhbid0
IHRlc3QuCj4+Cj4+IENocmlzdGlhbi4KPiBIaSwgQ2hyaXN0aWFuLAo+IFVuZm9ydHVuYXRlbHkg
SSBjYW4ndCAobm90IHVudGlsIG1vbmRheSBhdCBsZWFzdCBhcyBJJ20gb2ZmIGZvciB0aGUKPiB3
ZWVrZW5kKS4gQnV0IEkgZGlkIHdhcm4geW91IHR3aWNlIGFib3V0IHRob3NlLgoKT2sgaW4gdGhp
cyBjYXNlIEkgd2lsbCBqdXN0IGZpeCB0aGVtIHVwIGFzIGJlc3QgYXMgSSBjYW4uCgpUaGFua3Ms
CkNocmlzdGlhbi4KCj4KPiAvVGhvbWFzCj4KPgo+Pj4gL1Rob21hcwo+Pj4KPj4+Cj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

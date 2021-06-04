Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE5939C0A6
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 21:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A04B6F8D2;
	Fri,  4 Jun 2021 19:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 389416E0AC;
 Fri,  4 Jun 2021 19:48:36 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id f5so7429900eds.0;
 Fri, 04 Jun 2021 12:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=r9MzDGzl4kF2IWp90BG+oAizg6TuArVr+J/ssWse920=;
 b=ZSOAqKuqtvpVTXY39G34EKW0p3wnokkUEtOW/jg696kULhhRVpnKJUXZARjNOY9ekf
 amuVP2/zDTjPtLnbzwcztrcWa4up6+9PatHjGObt/nd6SvfupGvcVuIMTjQMhXndv1HS
 u4My48p0HdVVko4x5UzdHj40WSOtaUyIKtuuylWp7bfXQ+xFEfIcwZf21LcuU8kXDtFQ
 s4/AgP9fK+Mrt1PFUSAt2pe1x0nhFRdhiKQYjICzeEwB2PfprUN4mwDt4FtL/wOOBq89
 3feNCkvsBV6CkUR6/zDZZLOifg4UmWcWTRn0flrn1WHq5nC4K7yZLq5n/rrA1JJrznyw
 rEpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=r9MzDGzl4kF2IWp90BG+oAizg6TuArVr+J/ssWse920=;
 b=UXTSU4VIlwIrZCRS/FR+vTTSmb4GGTbjOf4qbLR8QzmOFKQBLLW925sQdJVcmS+Wbb
 YgfDXP3j6NPHhBJ6OnYc1MZqJo73vttrzP7Bezs0GPhXBc6ZQZ2hGgkQNAskTdKUNYgP
 sCFJHSbMS0JPoQYaEgDMrQpEOIvjqgpCFffszkVJcMGGBMKfn1Jj2SbxDCfJvi6zp9An
 9h5sNyBn/blwqjGYuZ3UkjcuFmfBhDcVuiYD7HCX3WmnFvY233sdUitGw5jjmdzy6DnW
 HvohBBSv2wR42DmC1A0fD3l9NSKDVJrcNqhPDS6MdOHTYZFmjXEiaOmslcPm4icAEjMF
 AJTA==
X-Gm-Message-State: AOAM532YPqigSxqp9H+0VknxruI80DYozmBXo0f8Qy99M7PX+oslWycx
 yG3YR4G65ZDgqaJggZ1Kvtxue6jT6moUVtf4dxY=
X-Google-Smtp-Source: ABdhPJwwEZAMuJf8UdMJSEHbC8ig/HVNONdrfrAi5om1xrR/MBjTzQERPnpit5gemlpZily6+VVO7mFdlil5CPvbEio=
X-Received: by 2002:aa7:c545:: with SMTP id s5mr6494600edr.113.1622836114660; 
 Fri, 04 Jun 2021 12:48:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210526233357.9165-1-matthew.brost@intel.com>
 <20210526233357.9165-2-matthew.brost@intel.com>
 <YLplVgu7y8fzaFF0@phenom.ffwll.local>
In-Reply-To: <YLplVgu7y8fzaFF0@phenom.ffwll.local>
From: Dave Airlie <airlied@gmail.com>
Date: Sat, 5 Jun 2021 05:48:23 +1000
Message-ID: <CAPM=9twjUGfXE9bXLap=tyDnKqxP5JXquNR-rO-Zuj05Uv=v9A@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [Mesa-dev] [RFC PATCH 1/2] drm/doc/rfc: i915 GuC
 submission / DRM scheduler
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
 dri-devel <dri-devel@lists.freedesktop.org>, carl.zhang@intel.com,
 Jason Ekstrand <jason.ekstrand@intel.com>,
 mesa-dev <mesa-dev@lists.freedesktop.org>, "Vetter,
 Daniel" <daniel.vetter@intel.com>, "Koenig,
 Christian" <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCA1IEp1biAyMDIxIGF0IDAzOjM5LCBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXkgMjYsIDIwMjEgYXQgMDQ6MzM6NTZQTSAtMDcwMCwg
TWF0dGhldyBCcm9zdCB3cm90ZToKPiA+IEFkZCBlbnRyeSBmb3IgaTkxNSBHdUMgc3VibWlzc2lv
biAvIERSTSBzY2hlZHVsZXIgaW50ZWdyYXRpb24gcGxhbi4KPiA+IEZvbGxvdyB1cCBwYXRjaCB3
aXRoIGRldGFpbHMgb2YgbmV3IHBhcmFsbGVsIHN1Ym1pc3Npb24gdUFQSSB0byBjb21lLgo+ID4K
PiA+IHYyOgo+ID4gIChEYW5pZWwgVmV0dGVyKQo+ID4gICAtIEV4cGFuZCBleHBsYWluYXRpb24g
b2Ygd2h5IGJvbmRpbmcgaXNuJ3Qgc3VwcG9ydGVkIGZvciBHdUMKPiA+ICAgICBzdWJtaXNzaW9u
Cj4gPiAgIC0gQ0Mgc29tZSBvZiB0aGUgRFJNIHNjaGVkdWxlciBtYWludGFpbmVycwo+ID4gICAt
IEFkZCBwcmlvcml0eSBpbmhlcml0YW5jZSAvIGJvb3N0aW5nIHVzZSBjYXNlCj4gPiAgIC0gQWRk
IHJlYXNvbmluZyBmb3IgcmVtb3ZpbmcgaW4gb3JkZXIgYXNzdW1wdGlvbnMKPiA+ICAoRGFuaWVs
IFN0b25lKQo+ID4gICAtIEFkZCBsaW5rcyB0byBwcmlvcml0eSBzcGVjCj4gPgo+ID4gQ2M6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IENjOiBMdWJlbiBU
dWlrb3YgPGx1YmVuLnR1aWtvdkBhbWQuY29tPgo+ID4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFu
ZGVyLmRldWNoZXJAYW1kLmNvbT4KPiA+IENjOiBTdGV2ZW4gUHJpY2UgPHN0ZXZlbi5wcmljZUBh
cm0uY29tPgo+ID4gQ2M6IEpvbiBCbG9vbWZpZWxkIDxqb24uYmxvb21maWVsZEBpbnRlbC5jb20+
Cj4gPiBDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+ID4gQ2M6IERh
dmUgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0
cmFuZC5uZXQ+Cj4gPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gU2ln
bmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+Cj4KPiBZ
b3UgaGF2ZSBhIG9uZS1saW5lIGh1bmsgaW4gdGhlIG5leHQgcGF0Y2ggdGhhdCBwcm9iYWJseSBz
aG91bGQgYmUgaGVyZS4KPiBXaXRoIHRoYXQgbW92ZWQuCj4KPiBSZXZpZXdlZC1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KCkFja2VkLWJ5OiBEYXZlIEFpcmxpZSA8
YWlybGllZEByZWRoYXQuY29tPgoKQW5kIHllcyBoYXZpbmcgdGhlIHRvZG9zIGZvciBHdUMgdHJh
Y2tlZCB3b3VsZCBiZSBnb29kIGV4dGVybmFsbHksIHNvCnByZXNzdXJlIGNhbiBiZSBhcHBsaWVk
IGZvciBuZXcgZncgcmVsZWFzZXMgd2l0aCB0aG9zZSBmZWF0dXJlcy4KCkRhdmUuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

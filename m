Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7CC3CB809
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 15:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7BE6E97E;
	Fri, 16 Jul 2021 13:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com
 [IPv6:2607:f8b0:4864:20::b2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2405A6E97E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 13:46:35 +0000 (UTC)
Received: by mail-yb1-xb2c.google.com with SMTP id g19so14904549ybe.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 06:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NiIsFPTYk8lsZDMHZvx0abLXOLT+nLIoyG/QYfrHdRg=;
 b=EB1jb0zcasugoYMCXkeeIAtpAGgGdehCXCDI3sVjIme/6jB2XotC4HYmRTjqBFMWfx
 GWVS9J3dLwXX26A3sKzs3JkwZN5oV4Q3lujSrRLCcJ87Raqd5p+MB4bUnfHvHSomKMXL
 X7ZbBbBGa5sk9mcckiGoz9WG8NMKbypQYeBo6iPAPqs9bPk3aQBhSkmsghWkbTOFUwgD
 exKWanC5u6+sj8sjiGoVveFikU844GPvzLscbK/WCTAI7gNfv9DQUMixp9waUjb8TAic
 VpWnX1bzc5qbvxdSdRlUE9F8dsZgMq+C9kyPFQTiSXlBG2TL/Rdq47TaDtroK0WcIsEc
 Gb3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NiIsFPTYk8lsZDMHZvx0abLXOLT+nLIoyG/QYfrHdRg=;
 b=tdoajpF3TssPHWueygfLDDF6dGpm6XkC5AICRnZ8YYLFnfBigV7pSWkYZuwxeNVso5
 vShiiN1AKv3OxOgUCUTry6idNQMSYbcNUQ0PIuHJXk4SJW9IabErAcpRWXD8atztQIgP
 c5HxKGgDzY06Js7ix/7Ylw0xBoA01T7hBjFzwTQqJMWl7ejThzZ66R5Qv9I9bbxOm8+G
 NMnxkkhIgrn5UczwqXDFae4mno8MaSBx4cfTWOVe/NC4PyfCqYoHmFFF+z+ifNcTdmIP
 0JoQIIMiH3M+Na9gzTqP35swEy/ObgpUG9CJdKzWwSH79Qffpg8WAhLlDiyJzgng+8YM
 VEOg==
X-Gm-Message-State: AOAM533ql2JzFeiI+5NUDbw41ei/K4FzRGdLp0sHHSv57aY4jCPQR/CF
 OwrIW29LQZZLpDz6SDazgm/JlrHI/xVJ0+/cNjAkXw==
X-Google-Smtp-Source: ABdhPJzNI0YEXkprbkQiMCzCDFtf2MxFyTlu+ghPmq93S4KQwR56XZVSgnGoosKHHDzfC4yN1NynqIvAb7rUJwMre1c=
X-Received: by 2002:a25:d3c1:: with SMTP id
 e184mr13076274ybf.139.1626443194125; 
 Fri, 16 Jul 2021 06:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-5-jason@jlekstrand.net>
 <CAM0jSHN3kwyTuz=j4DAuBr0WxcB5-XyeGiPapDe8XS80jGpJ_g@mail.gmail.com>
In-Reply-To: <CAM0jSHN3kwyTuz=j4DAuBr0WxcB5-XyeGiPapDe8XS80jGpJ_g@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 16 Jul 2021 08:46:23 -0500
Message-ID: <CAOFGe9566FrvwkE3LkY-8RYmheHbcbA2-Yt4KZt928WdJ837Lw@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gem/ttm: Place new BOs in the
 requested region
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTYsIDIwMjEgYXQgODoxOCBBTSBNYXR0aGV3IEF1bGQKPG1hdHRoZXcud2ls
bGlhbS5hdWxkQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIDE1IEp1bCAyMDIxIGF0IDIz
OjM5LCBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+IHdyb3RlOgo+ID4KPiA+
IF9faTkxNV9nZW1fdHRtX29iamVjdF9pbml0KCkgd2FzIGlnbm9yaW5nIHRoZSBwbGFjZW1lbnQg
cmVxdWVzdHMgY29taW5nCj4gPiBmcm9tIHRoZSBjbGllbnQgYW5kIGFsd2F5cyBwbGFjaW5nIGFs
bCBCT3MgaW4gU01FTSB1cG9uIGNyZWF0aW9uLgo+ID4gSW5zdGVhZCwgY29tcHV0ZSB0aGUgcmVx
dWVzdGVkIHBsYWNlbWVudCBzZXQgZnJvbSB0aGUgb2JqZWN0IGFuZCBwYXNzCj4gPiB0aGF0IGlu
dG8gdHRtX2JvX2luaXRfcmVzZXJ2ZWQoKS4KPgo+IEFGQUlLIHRoaXMgaXMgaW50ZW50aW9uYWws
IHdoZXJlIHdlIHVzZSBTWVMgYXMgYSBzYWZlIHBsYWNlaG9sZGVyCj4gc3BlY2lmaWNhbGx5IGZv
ciBvYmplY3QgY3JlYXRpb24sIHNpbmNlIHRoYXQgYXZvaWRzIGFsbG9jYXRpbmcgYW55Cj4gYWN0
dWFsIHBhZ2VzLiBMYXRlciBhdCBnZXRfcGFnZXMoKSB0aW1lIHdlIGRvIHRoZSByZWFsIGFsbG9j
YXRpb24sCj4gd2hlcmUgd2UgbmVlZCB0byBjb25zaWRlciB0aGUgcGxhY2VtZW50cy4KPgo+IElm
IHdlIHNldCB0aGUgcmVhbCBwbGFjZW1lbnRzIGhlcmUsIHRoZSB0dG1fYm9fdmFsaWRhdGUoKSBj
YWxsIGluCj4gaW5pdF9yZXNlcnZlZCgpIG1pZ2h0IGFsbG9jYXRlIHRoZSBiYWNraW5nIHBhZ2Vz
IGhlcmUgZm9yIHRoZQo+IGxtZW0tb25seSBjYXNlLCB3aGljaCBpcyBub3Qgd2hhdCB3ZSB3YW50
IGluIGk5MTUuCgpJJ20gaGFwcHkgdG8gZHJvcCB0aGlzIHBhdGNoLiAgSXQgZG9lc24ndCBhY3R1
YWxseSBmaXggYW55dGhpbmcgQUZBSUsuCkl0IG1ha2VzIHRoZSBiZWhhdmlvciBtb3JlIHdoYXQg
SSBleHBlY3RlZCBidXQgbXkgZXhwZWN0YXRpb25zIGFyZSBub3QKdG8gYmUgdHJ1c3RlZCBoZXJl
LgoKVGhlIG90aGVyIFRUTSBwYXRjaCBkb2VzIGZpeCBhIHJlYWwgYnVnIEFGQUlLLgoKLS1KYXNv
bgoKCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJh
bmQubmV0Pgo+ID4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4
LmludGVsLmNvbT4KPiA+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
Cj4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0u
YyB8IDggKysrKysrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMK
PiA+IGluZGV4IDY1ODk0MTEzOTZkM2YuLmQzMGYyNzRjMzI5YzcgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+ID4gQEAgLTg5OCw2ICs4OTgsOCBAQCBp
bnQgX19pOTE1X2dlbV90dG1fb2JqZWN0X2luaXQoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24g
Km1lbSwKPiA+ICB7Cj4gPiAgICAgICAgIHN0YXRpYyBzdHJ1Y3QgbG9ja19jbGFzc19rZXkgbG9j
a19jbGFzczsKPiA+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBtZW0t
Pmk5MTU7Cj4gPiArICAgICAgIHN0cnVjdCB0dG1fcGxhY2UgcmVxdWVzdGVkLCBidXN5W0k5MTVf
VFRNX01BWF9QTEFDRU1FTlRTXTsKPiA+ICsgICAgICAgc3RydWN0IHR0bV9wbGFjZW1lbnQgcGxh
Y2VtZW50Owo+ID4gICAgICAgICBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggY3R4ID0gewo+ID4g
ICAgICAgICAgICAgICAgIC5pbnRlcnJ1cHRpYmxlID0gdHJ1ZSwKPiA+ICAgICAgICAgICAgICAg
ICAubm9fd2FpdF9ncHUgPSBmYWxzZSwKPiA+IEBAIC05MTksNiArOTIxLDkgQEAgaW50IF9faTkx
NV9nZW1fdHRtX29iamVjdF9pbml0KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCj4g
PiAgICAgICAgIC8qIEZvcmNpbmcgdGhlIHBhZ2Ugc2l6ZSBpcyBrZXJuZWwgaW50ZXJuYWwgb25s
eSAqLwo+ID4gICAgICAgICBHRU1fQlVHX09OKHBhZ2Vfc2l6ZSAmJiBvYmotPm1tLm5fcGxhY2Vt
ZW50cyk7Cj4gPgo+ID4gKyAgICAgICBHRU1fQlVHX09OKG9iai0+bW0ubl9wbGFjZW1lbnRzID4g
STkxNV9UVE1fTUFYX1BMQUNFTUVOVFMpOwo+ID4gKyAgICAgICBpOTE1X3R0bV9wbGFjZW1lbnRf
ZnJvbV9vYmoob2JqLCAmcmVxdWVzdGVkLCBidXN5LCAmcGxhY2VtZW50KTsKPiA+ICsKPiA+ICAg
ICAgICAgLyoKPiA+ICAgICAgICAgICogSWYgdGhpcyBmdW5jdGlvbiBmYWlscywgaXQgd2lsbCBj
YWxsIHRoZSBkZXN0cnVjdG9yLCBidXQKPiA+ICAgICAgICAgICogb3VyIGNhbGxlciBzdGlsbCBv
d25zIHRoZSBvYmplY3QuIFNvIG5vIGZyZWVpbmcgaW4gdGhlCj4gPiBAQCAtOTI3LDggKzkzMiw3
IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3Jl
Z2lvbiAqbWVtLAo+ID4gICAgICAgICAgKiB1bnRpbCBzdWNjZXNzZnVsIGluaXRpYWxpemF0aW9u
Lgo+ID4gICAgICAgICAgKi8KPiA+ICAgICAgICAgcmV0ID0gdHRtX2JvX2luaXRfcmVzZXJ2ZWQo
Jmk5MTUtPmJkZXYsIGk5MTVfZ2VtX3RvX3R0bShvYmopLCBzaXplLAo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBib190eXBlLCAmaTkxNV9zeXNfcGxhY2VtZW50LAo+ID4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwYWdlX3NpemUgPj4gUEFHRV9TSElG
VCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9fdHlwZSwgJnBsYWNl
bWVudCwgcGFnZV9zaXplID4+IFBBR0VfU0hJRlQsCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICZjdHgsIE5VTEwsIE5VTEwsIGk5MTVfdHRtX2JvX2Rlc3Ryb3kpOwo+ID4g
ICAgICAgICBpZiAocmV0KQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiBpOTE1X3R0bV9lcnJf
dG9fZ2VtKHJldCk7Cj4gPiAtLQo+ID4gMi4zMS4xCj4gPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK

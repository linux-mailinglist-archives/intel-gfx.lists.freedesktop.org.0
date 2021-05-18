Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6963874D4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 11:10:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6696EB0D;
	Tue, 18 May 2021 09:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0496EB0A;
 Tue, 18 May 2021 09:10:17 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id eb9so4571039qvb.6;
 Tue, 18 May 2021 02:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IP6wYnRxy963JyWLUpDbRMEX/sDWiBqDJTYFxJF/O5Y=;
 b=Fh8Q7PVhYELAqEAa64A3pKOCcw83yGm+fowdKfw17PptRWlXiEkhQmcFCyQkbCDnGH
 AdUhBb8N/cHkxU9xFSI+RdZECy78tBofxmNUvYEQJ4By5uDs0JS5yCzbxhT729Xoqd58
 iqtCp0vOnsAv1UrS44rVf8vnA/GPpQ9CgPHSj8yUsp3av7wUM59Hm2++FDA3UUQVtmUP
 TkZH6BQez9LPLeM2/pUb0RZVm76em5yGPpxzy7fflVrQuw0MFeAE6Nax+Q9UdLZx3OI4
 V5VKln43EWjsdJMnqEuOc7lvOYxnBfAlRVFzQLqOPdXn/z/62c+hit7NY4PQRWwxwxpE
 vK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IP6wYnRxy963JyWLUpDbRMEX/sDWiBqDJTYFxJF/O5Y=;
 b=PoTtpAzNgHvn2NMbC9EZZ4MV2IocO19UQ9tzsL4xqsqtUAeU8zIEHd2/uFfULepmlv
 dwym+Hg70TkfMKZWysf3OXmOX/0xVVmHHnz+pRDdaAdZcbuYdlUxbjNyO+XPSVBBzI9A
 mo6nNdyli2lLTy8lXikqswdfMn7MGFqWBQIFrSgT/KXxO53RKHjQ32u+H1a1MutGlQ+2
 6whjWtcBdEkBkf38PqDEuPkgIqoswuoYh6m0o5nC2EWWXXyqFn86CwBBqT8XXX7sm5P7
 S8DdUML2ot6Etoi3VCA8vmZjuo66MbwcpNcs02DvMyVXyFuAeEgRpinbRXOWAgpQ11DL
 sjeA==
X-Gm-Message-State: AOAM5302rzbgEu1hkG+X733Db97oLa25P5Fm4Y67FOOeUkWJMvUJEvMj
 kzW5FCEomiDEx+CUfSdqCh/76aACXtz7fkiEqwCQ8B4PwtGGHw==
X-Google-Smtp-Source: ABdhPJyCz0nwBmAUiA1twdhbImd6v0bDTCBSCJRVXW5N/2f0g5Q90VEA39XGM0lN4Il0uxDo0HyU64UJ+Ao51bpnToU=
X-Received: by 2002:a05:6214:18d:: with SMTP id
 q13mr4856751qvr.60.1621329017095; 
 Tue, 18 May 2021 02:10:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-6-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210518082701.997251-6-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 May 2021 10:09:50 +0100
Message-ID: <CAM0jSHNOLTqrp-kv0rAkXZGb02swQ+8-Q7dxMZOHwDEh=QCgpw@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 05/15] drm/i915/ttm Initialize the ttm
 device and memory managers
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
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxOCBNYXkgMjAyMSBhdCAwOToyNywgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IFRlbXBvcmFyaWx5IHJlbW92ZSB0
aGUgYnVkZHkgYWxsb2NhdG9yIGFuZCByZWxhdGVkIHNlbGZ0ZXN0cwo+IGFuZCBob29rIHVwIHRo
ZSBUVE0gcmFuZ2UgbWFuYWdlciBmb3IgaTkxNSByZWdpb25zLgo+Cj4gQWxzbyBtb2RpZnkgdGhl
IG1vY2sgcmVnaW9uIHNlbGZ0ZXN0cyBzb21ld2hhdCB0byBhY2NvdW50IGZvciBhCj4gZnJhZ21l
bnRpbmcgbWFuYWdlci4KPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiB2MjoKPiAtIEZpeCBhbiBlcnJv
ciB1bndpbmQgaW4gbG1lbV9nZXRfcGFnZXMoKSAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKQo+
IC0gQnJlYWsgb3V0IGFuZCBtb2RpZnkgdXNhZ2Ugb2YgaTkxNV9zZ19kbWFfc2l6ZXMoKSAoUmVw
b3J0ZWQgYnkgTWF0dGV3IEF1bGQpCj4gLSBCcmVhayBvdXQgVFRNIGNoYW5nZXMgdG8gYSBzZXBh
cmF0ZSBwYXRjaCAoUmVwb3J0ZWQgYnkgQ2hyaXN0aWFuIEvDtm5pZykKPiAtLS0KCjxzbmlwPgoK
PiArCj4gK3N0YXRpYyBpbnQgbW9ja19yZWdpb25fZ2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmopCj4gK3sKPiArICAgICAgIHVuc2lnbmVkIGludCBmbGFnczsKPiArICAg
ICAgIHN0cnVjdCBzZ190YWJsZSAqcGFnZXM7Cj4gKwo+ICsgICAgICAgZmxhZ3MgPSBJOTE1X0FM
TE9DX01JTl9QQUdFX1NJWkU7Cj4gKyAgICAgICBpZiAob2JqLT5mbGFncyAmIEk5MTVfQk9fQUxM
T0NfQ09OVElHVU9VUykKPiArICAgICAgICAgICAgICAgZmxhZ3MgfD0gSTkxNV9BTExPQ19DT05U
SUdVT1VTOwo+ICsKPiArICAgICAgIG9iai0+bW0uc3RfbW1fbm9kZSA9IGludGVsX3JlZ2lvbl90
dG1fbm9kZV9hbGxvYyhvYmotPm1tLnJlZ2lvbiwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvYmotPmJhc2Uuc2l6ZSwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmbGFncyk7
Cj4gKyAgICAgICBpZiAoSVNfRVJSKG9iai0+bW0uc3RfbW1fbm9kZSkpCj4gKyAgICAgICAgICAg
ICAgIHJldHVybiBQVFJfRVJSKG9iai0+bW0uc3RfbW1fbm9kZSk7Cj4gKwo+ICsgICAgICAgcGFn
ZXMgPSBpbnRlbF9yZWdpb25fdHRtX25vZGVfdG9fc3Qob2JqLT5tbS5yZWdpb24sIG9iai0+bW0u
c3RfbW1fbm9kZSk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKHBhZ2VzKSkKPiArICAgICAgICAgICAg
ICAgcmV0dXJuIFBUUl9FUlIocGFnZXMpOwoKTmVlZHMgc29tZSBvbmlvbj8KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

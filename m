Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7CF3D54F6
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 10:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3703F6E85A;
	Mon, 26 Jul 2021 08:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 443576E85A;
 Mon, 26 Jul 2021 08:12:44 +0000 (UTC)
Received: by mail-qt1-x836.google.com with SMTP id d9so6406867qty.12;
 Mon, 26 Jul 2021 01:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SsA9p+TlYc08mbezt8A+26M/ZO1fyw9OG86zFTtyUXM=;
 b=KkWctV18CVEq2vH59MJaoWOLcyHmRcShy7FEAtkhjgw7A4z2yVlGKhCINM1yShHR+e
 B0/X6KyAUTrAjOUtqfUUyPvM7DMhHd5hwixt9w+I00XU4czUbR5U/aN86o81T2lTe08q
 SEpfgieNDYuCZluwiQzlzWo0hC0jIPBom6K9HC2zVDs3sAlH3XhL7WTADNdFxTAbtBuP
 UgnVPzSZXi05TdQ3cMb2sncV+BLRGa84/tfyWE/BLHnHIiTlSIPQXDxQjZI4ZlLsNgmM
 1ynNporp+1hE9fqSqocxcu/BIZ+H9vCEQpx6k+NfarGpnucI3Kt7oanm4KEdE01e3Lvu
 lMvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SsA9p+TlYc08mbezt8A+26M/ZO1fyw9OG86zFTtyUXM=;
 b=YaTOFwuewqEYw5JOQQ9o4B4cymjSW/43/ceIH7Wqcz6wyTBe8gXZFS7/ns5enHl2Ck
 r2i5MR0pFmrzKGY4bhr9SWExTKwrc4FLVxL1afnZn/7UDBjPxyhWy3wIYcN2dCZ0jvTG
 4JFjBOGPuZ5r9hoDD6JgmoH39p8VjpGmhty3LbmvgV41xCuZt21Spc0Xpc0iHtxqxJ10
 7NShhSYGLKUMBPDr8XDApKQrBzLf1mCO4TZ5INiwYAvFcAmKTmVoqQxF2qez6TdJyVF2
 f49ITrb75Gp+52ldIN7CWrmtXi4JwBVgJB/D6OSGcAZZOktbXGzYxW2FDeMRQIV1i561
 uXVQ==
X-Gm-Message-State: AOAM530il6JkIn9yzAQjuDlCW8MX4xls/Efdah+umrxDLlUa/Tj/jWzs
 vQb1wo8qJNQnXUK30JM7jdjZxixmSadiNBufRoU=
X-Google-Smtp-Source: ABdhPJzEkjcjUfybN+sVjzKRPAJLofqlutHNjkHGm507taDFp9wG0pz4fdU4qNt88wqCjBDUbsL3aQt+mSOygY8i23E=
X-Received: by 2002:ac8:584d:: with SMTP id h13mr14132202qth.341.1627287163454; 
 Mon, 26 Jul 2021 01:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210723172142.3273510-1-jason@jlekstrand.net>
In-Reply-To: <20210723172142.3273510-1-jason@jlekstrand.net>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 26 Jul 2021 09:12:17 +0100
Message-ID: <CAM0jSHOgJQni53DJWP0NWJTAR82PNmb6zgt2Gm-faBd1sDaSHA@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 0/8] drm/i915: Migrate memory to SMEM when
 imported cross-device (v8)
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

T24gRnJpLCAyMyBKdWwgMjAyMSBhdCAxODoyMSwgSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0PiB3cm90ZToKPgo+IFRoaXMgcGF0Y2ggc2VyaWVzIGZpeGVzIGFuIGlzc3VlIHdp
dGggZGlzY3JldGUgZ3JhcGhpY3Mgb24gSW50ZWwgd2hlcmUgd2UKPiBhbGxvd2VkIGRtYS1idWYg
aW1wb3J0IHdoaWxlIGxlYXZpbmcgdGhlIG9iamVjdCBpbiBsb2NhbCBtZW1vcnkuICBUaGlzCj4g
YnJlYWtzIGRvd24gcHJldHR5IGJhZGx5IGlmIHRoZSBpbXBvcnQgaGFwcGVuZWQgb24gYSBkaWZm
ZXJlbnQgcGh5c2ljYWwKPiBkZXZpY2UuCj4KPiB2NzoKPiAgLSBEcm9wICJkcm0vaTkxNS9nZW0v
dHRtOiBQbGFjZSBuZXcgQk9zIGluIHRoZSByZXF1ZXN0ZWQgcmVnaW9uIgo+ICAtIEFkZCBhIG5l
dyAiZHJtL2k5MTUvZ2VtOiBDYWxsIGk5MTVfZ2VtX2ZsdXNoX2ZyZWVfb2JqZWN0cygpIGluIGk5
MTVfZ2VtX2R1bWJfY3JlYXRlKCkiCj4gIC0gTWlzYy4gcmV2aWV3IGZlZWRiYWNrIGZyb20gTWF0
dGhldyBBdWxkCj4gdjg6Cj4gIC0gTWlzYy4gcmV2aWV3IGZlZWRiYWNrIGZyb20gTWF0dGhldyBB
dWxkCj4gdjk6Cj4gIC0gUmVwbGFjZSB0aGUgaTkxNS90dG0gcGF0Y2ggd2l0aCB0d28gdGhhdCBh
cmUgaG9wZWZ1bGx5IG1vcmUgY29ycmVjdAo+Cj4gSmFzb24gRWtzdHJhbmQgKDYpOgo+ICAgZHJt
L2k5MTUvZ2VtOiBDaGVjayBvYmplY3RfY2FuX21pZ3JhdGUgZnJvbSBvYmplY3RfbWlncmF0ZQo+
ICAgZHJtL2k5MTUvZ2VtOiBSZWZhY3RvciBwbGFjZW1lbnQgc2V0dXAgZm9yIGk5MTVfZ2VtX29i
amVjdF9jcmVhdGUqCj4gICAgICh2MikKPiAgIGRybS9pOTE1L2dlbTogQ2FsbCBpOTE1X2dlbV9m
bHVzaF9mcmVlX29iamVjdHMoKSBpbgo+ICAgICBpOTE1X2dlbV9kdW1iX2NyZWF0ZSgpCj4gICBk
cm0vaTkxNS9nZW06IFVuaWZ5IHVzZXIgb2JqZWN0IGNyZWF0aW9uICh2MykKPiAgIGRybS9pOTE1
L2dlbS90dG06IE9ubHkgY2FsbCBfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMgaWYgbmVlZGVk
Cj4gICBkcm0vaTkxNS9nZW06IEFsd2F5cyBjYWxsIG9iai0+b3BzLT5taWdyYXRlIHVubGVzcyBj
YW5fbWlncmF0ZSBmYWlscwo+Cj4gVGhvbWFzIEhlbGxzdHLDtm0gKDIpOgo+ICAgZHJtL2k5MTUv
Z2VtOiBDb3JyZWN0IHRoZSBsb2NraW5nIGFuZCBwaW4gcGF0dGVybiBmb3IgZG1hLWJ1ZiAodjgp
Cj4gICBkcm0vaTkxNS9nZW06IE1pZ3JhdGUgdG8gc3lzdGVtIGF0IGRtYS1idWYgYXR0YWNoIHRp
bWUgKHY3KQoKU2hvdWxkIEkgcHVzaCB0aGUgc2VyaWVzPwoKPgo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY3JlYXRlLmMgICAgfCAxNzcgKysrKysrKystLS0tLS0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgfCAgNTggKysrKy0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICB8ICAyMCAr
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgfCAgIDQg
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgICAgICAgfCAgMTMg
Ky0KPiAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgIHwgMTkw
ICsrKysrKysrKysrKysrKysrLQo+ICAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dl
bV9taWdyYXRlLmMgfCAgMTUgLS0KPiAgNyBmaWxlcyBjaGFuZ2VkLCAzNDEgaW5zZXJ0aW9ucygr
KSwgMTM2IGRlbGV0aW9ucygtKQo+Cj4gLS0KPiAyLjMxLjEKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK

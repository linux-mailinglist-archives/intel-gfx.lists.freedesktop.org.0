Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 537D43CB7CB
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 15:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794DF6E980;
	Fri, 16 Jul 2021 13:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 469CC6E97C;
 Fri, 16 Jul 2021 13:18:26 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id j184so8603719qkd.6;
 Fri, 16 Jul 2021 06:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=do4NYtg1Fekus3VOaWDik8hcul43Gq8pau9ammo2VwI=;
 b=lsjX+8ssi5ZJrj3IlK64gKVoJZbXi9YXuF4oiBCMKZyBFtWSmhUV0gdW60sblYaogF
 pVgiym+cOqDF+H4kNhfPvKj/TSZHjXHeUu//vZQKX/8i08wFWnABb0WUIgsU/+zZ1gLD
 rjBugrKdMLYjpmKaiYsIuOUtD9dVCEZua4aEWl764MFShORmMPrCRQodGa/xR0rNLlcM
 W/aH46lsgvv6Sm7sKC9hF0rXimTfDmVwCMHRmGGrlCzLVS+7scO9qHms8J+v3SwBfygT
 /Fbm39OYaDxPXgRoFlQmlOVRIzmBDq6Lqm/XD5BPTUfZcfV6JI5yRnCYCqsJO1NGFbEX
 HHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=do4NYtg1Fekus3VOaWDik8hcul43Gq8pau9ammo2VwI=;
 b=ALr/64jaX6rHqMsldRJoRJZ68HZD4vzi7btO+NjldzmeLxlZRmTWBwdWbPWmViub29
 dQi36LNnfSIbg8UH/texXZubuHWh/NSG8B2tm0wJPhsLuMvoLiVASw8uwzFiV3hjRmdl
 rNM+1fUljOz2YPw5pwdyvhGBi72cws1l3we1lbmNzcL9SZLamKsIUYL/4ycjCMdcEfMu
 u9w7qExtqb6uYcKkYUpg1p0f4A0Kn3Qv1lQZnP/izXEmSDTgBmixzebrcdHM1ipHxh5u
 H1wroBcq0CreJME0Xp+3XgIKHr/RF+qOsPE4S7s1ojkNR05scn5xSRR8bIpumq1L3RkN
 dlDA==
X-Gm-Message-State: AOAM5303lWdBt4YWpXBa8vTJG6Y6Uy3hD7Jb5v/oCWbx1lY/DYsewCyq
 8jFg77O3EZ7Iut4/nXSMAz24JGCTGF1FCQHkyBgaoOTl5rA=
X-Google-Smtp-Source: ABdhPJxehnbwiBb4xRlo72zAMignJzhH/vxzMZ7mY0PYJ6buyHeSUISZPBzcl+YkTQcvH1imYGqwLjiyqNhtZgmd400=
X-Received: by 2002:a05:620a:1581:: with SMTP id
 d1mr9423595qkk.327.1626441505414; 
 Fri, 16 Jul 2021 06:18:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-5-jason@jlekstrand.net>
In-Reply-To: <20210715223900.1840576-5-jason@jlekstrand.net>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 16 Jul 2021 14:17:56 +0100
Message-ID: <CAM0jSHN3kwyTuz=j4DAuBr0WxcB5-XyeGiPapDe8XS80jGpJ_g@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
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

T24gVGh1LCAxNSBKdWwgMjAyMSBhdCAyMzozOSwgSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0PiB3cm90ZToKPgo+IF9faTkxNV9nZW1fdHRtX29iamVjdF9pbml0KCkgd2FzIGln
bm9yaW5nIHRoZSBwbGFjZW1lbnQgcmVxdWVzdHMgY29taW5nCj4gZnJvbSB0aGUgY2xpZW50IGFu
ZCBhbHdheXMgcGxhY2luZyBhbGwgQk9zIGluIFNNRU0gdXBvbiBjcmVhdGlvbi4KPiBJbnN0ZWFk
LCBjb21wdXRlIHRoZSByZXF1ZXN0ZWQgcGxhY2VtZW50IHNldCBmcm9tIHRoZSBvYmplY3QgYW5k
IHBhc3MKPiB0aGF0IGludG8gdHRtX2JvX2luaXRfcmVzZXJ2ZWQoKS4KCkFGQUlLIHRoaXMgaXMg
aW50ZW50aW9uYWwsIHdoZXJlIHdlIHVzZSBTWVMgYXMgYSBzYWZlIHBsYWNlaG9sZGVyCnNwZWNp
ZmljYWxseSBmb3Igb2JqZWN0IGNyZWF0aW9uLCBzaW5jZSB0aGF0IGF2b2lkcyBhbGxvY2F0aW5n
IGFueQphY3R1YWwgcGFnZXMuIExhdGVyIGF0IGdldF9wYWdlcygpIHRpbWUgd2UgZG8gdGhlIHJl
YWwgYWxsb2NhdGlvbiwKd2hlcmUgd2UgbmVlZCB0byBjb25zaWRlciB0aGUgcGxhY2VtZW50cy4K
CklmIHdlIHNldCB0aGUgcmVhbCBwbGFjZW1lbnRzIGhlcmUsIHRoZSB0dG1fYm9fdmFsaWRhdGUo
KSBjYWxsIGluCmluaXRfcmVzZXJ2ZWQoKSBtaWdodCBhbGxvY2F0ZSB0aGUgYmFja2luZyBwYWdl
cyBoZXJlIGZvciB0aGUKbG1lbS1vbmx5IGNhc2UsIHdoaWNoIGlzIG5vdCB3aGF0IHdlIHdhbnQg
aW4gaTkxNS4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0
cmFuZC5uZXQ+Cj4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4
LmludGVsLmNvbT4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+
IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgfCA4ICsr
KysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gaW5kZXggNjU4OTQx
MTM5NmQzZi4uZDMwZjI3NGMzMjljNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdHRtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtLmMKPiBAQCAtODk4LDYgKzg5OCw4IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmpl
Y3RfaW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAo+ICB7Cj4gICAgICAgICBz
dGF0aWMgc3RydWN0IGxvY2tfY2xhc3Nfa2V5IGxvY2tfY2xhc3M7Cj4gICAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IG1lbS0+aTkxNTsKPiArICAgICAgIHN0cnVjdCB0dG1f
cGxhY2UgcmVxdWVzdGVkLCBidXN5W0k5MTVfVFRNX01BWF9QTEFDRU1FTlRTXTsKPiArICAgICAg
IHN0cnVjdCB0dG1fcGxhY2VtZW50IHBsYWNlbWVudDsKPiAgICAgICAgIHN0cnVjdCB0dG1fb3Bl
cmF0aW9uX2N0eCBjdHggPSB7Cj4gICAgICAgICAgICAgICAgIC5pbnRlcnJ1cHRpYmxlID0gdHJ1
ZSwKPiAgICAgICAgICAgICAgICAgLm5vX3dhaXRfZ3B1ID0gZmFsc2UsCj4gQEAgLTkxOSw2ICs5
MjEsOSBAQCBpbnQgX19pOTE1X2dlbV90dG1fb2JqZWN0X2luaXQoc3RydWN0IGludGVsX21lbW9y
eV9yZWdpb24gKm1lbSwKPiAgICAgICAgIC8qIEZvcmNpbmcgdGhlIHBhZ2Ugc2l6ZSBpcyBrZXJu
ZWwgaW50ZXJuYWwgb25seSAqLwo+ICAgICAgICAgR0VNX0JVR19PTihwYWdlX3NpemUgJiYgb2Jq
LT5tbS5uX3BsYWNlbWVudHMpOwo+Cj4gKyAgICAgICBHRU1fQlVHX09OKG9iai0+bW0ubl9wbGFj
ZW1lbnRzID4gSTkxNV9UVE1fTUFYX1BMQUNFTUVOVFMpOwo+ICsgICAgICAgaTkxNV90dG1fcGxh
Y2VtZW50X2Zyb21fb2JqKG9iaiwgJnJlcXVlc3RlZCwgYnVzeSwgJnBsYWNlbWVudCk7Cj4gKwo+
ICAgICAgICAgLyoKPiAgICAgICAgICAqIElmIHRoaXMgZnVuY3Rpb24gZmFpbHMsIGl0IHdpbGwg
Y2FsbCB0aGUgZGVzdHJ1Y3RvciwgYnV0Cj4gICAgICAgICAgKiBvdXIgY2FsbGVyIHN0aWxsIG93
bnMgdGhlIG9iamVjdC4gU28gbm8gZnJlZWluZyBpbiB0aGUKPiBAQCAtOTI3LDggKzkzMiw3IEBA
IGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lv
biAqbWVtLAo+ICAgICAgICAgICogdW50aWwgc3VjY2Vzc2Z1bCBpbml0aWFsaXphdGlvbi4KPiAg
ICAgICAgICAqLwo+ICAgICAgICAgcmV0ID0gdHRtX2JvX2luaXRfcmVzZXJ2ZWQoJmk5MTUtPmJk
ZXYsIGk5MTVfZ2VtX3RvX3R0bShvYmopLCBzaXplLAo+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYm9fdHlwZSwgJmk5MTVfc3lzX3BsYWNlbWVudCwKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHBhZ2Vfc2l6ZSA+PiBQQUdFX1NISUZULAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgYm9fdHlwZSwgJnBsYWNlbWVudCwgcGFnZV9zaXpl
ID4+IFBBR0VfU0hJRlQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmY3R4
LCBOVUxMLCBOVUxMLCBpOTE1X3R0bV9ib19kZXN0cm95KTsKPiAgICAgICAgIGlmIChyZXQpCj4g
ICAgICAgICAgICAgICAgIHJldHVybiBpOTE1X3R0bV9lcnJfdG9fZ2VtKHJldCk7Cj4gLS0KPiAy
LjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

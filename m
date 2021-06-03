Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B510E399BB0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 09:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2A76F410;
	Thu,  3 Jun 2021 07:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE41D6F410
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 07:37:07 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 w23-20020a9d5a970000b02903d0ef989477so512960oth.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 00:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ExEFQgMl9rp1X5xOtaDvHjwFVhy8KtZGitPAjQyeU+k=;
 b=HV6mkhbyHezmEwjAjCtgPN/dKoASk1HxP4kR7EiuHKw1bYsgsmoT4Mdtb0vQWzrj5q
 rwhJWo6TY/b+3m7fNwQr2O8jrWCCubbNOOw56XwjJSNuC/ZBSMl6OIP00ciufjQP4FnF
 1TlWmX+OHk86YH3PEEsXPdJYmWBbNxtdXhqhs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ExEFQgMl9rp1X5xOtaDvHjwFVhy8KtZGitPAjQyeU+k=;
 b=dkzE1cLrGvgjzhwlGp+M1+81luXF4U2rHkUiu2fCGiTpN8BdQcsKNDK2WNGkBd5Bxj
 PFI6m5jDWmWM1ZkCXI6rK0UVi44KAcjF5oGR9IDtfObsHhQPiQP3iuetzzhUKmfZYwxb
 S84a3l9vZUCtafV9cD5lHRV4ArEPda/MzlgNuWYWhPtRq41ZRtTWxguD2k1lzjl1wp7D
 XPDYSrOD8tAaoOR/Z1gWH/Aw4YNGaiY7OwROtP0Ft8RztA1EFosxXXf8hj1Ycm+8NeDG
 0L3c3Pjthwfgas7H7no3GFpyDXH0a8J7ZqG3rFOxYtSWBUTfmXLOe6gV3apKkl24luug
 HUcQ==
X-Gm-Message-State: AOAM532S9Zf2j/PMu8LIQ0z7z3XkukH7VTe21nXT0OojpN273Xg6aQUh
 rvOKeMZ6ZdFBCBoQ8b/IiOWrBfrA3ts9rx8CrRVf+I0Yy6s=
X-Google-Smtp-Source: ABdhPJzCSS/8X7dQ8j1SXKGE/jsm8QaKzNF+fwhMKQdzDFzXRkrAAUr/P4T2iret6WbC2kyk8TeBTpmd/cNwKjhVAQA=
X-Received: by 2002:a05:6830:1155:: with SMTP id
 x21mr28713270otq.303.1622705826902; 
 Thu, 03 Jun 2021 00:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <a29eaef9-2457-1393-6757-40956811daf8@linux.intel.com>
 <a6965639-acf6-b5f5-482c-2715e7fa69d4@amd.com>
 <b4c18e45-98c9-ce7f-b22c-c00c795844c2@shipmail.org>
 <baf4f828-76c8-6b47-5bba-9b9c8e7b307b@amd.com>
 <YLfQplT8H6PdCCLX@phenom.ffwll.local>
 <c50fa98f-3735-fe04-d3f9-8a7a08a7562e@linux.intel.com>
In-Reply-To: <c50fa98f-3735-fe04-d3f9-8a7a08a7562e@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 3 Jun 2021 09:36:55 +0200
Message-ID: <CAKMK7uE+fB_+UG668O=QMXwQ9_Xb--KhzehT77HLfBoWve-zLg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
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
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMywgMjAyMSBhdCA4OjUwIEFNIFRob21hcyBIZWxsc3Ryw7ZtCjx0aG9tYXMu
aGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPgo+IE9uIDYvMi8yMSA4OjQwIFBN
LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gT24gV2VkLCBKdW4gMDIsIDIwMjEgYXQgMTE6NDg6
NDFBTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+PiBBbSAwMi4wNi4yMSB1bSAx
MToxNiBzY2hyaWViIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6Cj4gPj4+IE9uIDYvMi8yMSAx
MDozMiBBTSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPiA+Pj4+IFVmZiBJJ20ganVzdCB3YWl0
aW5nIGZvciBmZWVkYmFjayBmcm9tIFBoaWxpcCB0byBtZXJnZSBhIGxhcmdlIHBhdGNoCj4gPj4+
PiBzZXQgZm9yIFRUTSB0aHJvdWdoIGRybS1taXNjLW5leHQuCj4gPj4+Pgo+ID4+Pj4gSSdtIHBy
ZXR0eSBzdXJlIHdlIHdpbGwgcnVuIGludG8gbWVyZ2UgY29uZmxpY3RzIGlmIHlvdSB0cnkgdG8g
cHVzaAo+ID4+Pj4geW91ciBjaGFuZ2VzIHRocm91Z2ggdGhlIEludGVsIHRyZWUuCj4gPj4+Pgo+
ID4+Pj4gQ2hyaXN0aWFuLgo+ID4+PiBPSywgc28gd2hhdCB3b3VsZCBiZSB0aGUgYmVzdCBhcHBy
b2FjaCBoZXJlPywgQWRkaW5nIHRoZSBUVE0gcGF0Y2hlcyB0bwo+ID4+PiBkcm0tbWlzYy1uZXh0
IHdoZW4geW91ciBzZXQgaGFzIGxhbmRlZD8KPiA+PiBJIHRoaW5rIEkgd2lsbCBzZW5kIG91dCBv
dXQgbXkgc2V0IHRvIE1hdHRoZXcgb25jZSBtb3JlIGZvciByZXZpZXcsIHRoZW4KPiA+PiBwdXNo
IHRoZSBjb21tb24gVFRNIHN0dWZmIHRvIGRybS1taXNjLW5leHQgYXMgbXVjaCBhcyBwb3NzaWJs
ZS4KPiA+Pgo+ID4+IFRoZW4geW91IHNob3VsZCBiZSBhYmxlIHRvIGxhbmQgeW91ciBzdHVmZiB0
byBkcm0tbWlzYy1uZXh0IGFuZCByZWJhc2Ugb24KPiA+PiB0aGUgZW5kIHJlc3VsdC4KPiA+Pgo+
ID4+IEp1c3QgbmVlZCB0byBub3RlIHRvIERhdmlkIHRoYXQgZHJtLW1pc2MtbmV4dCBzaG91bGQg
YmUgbWVyZ2VkIHRvIGRybS1uZXh0Cj4gPj4gYmVmb3JlIHRoZSBJbnRlbCBwYXRjaGVzIGRlcGVu
ZGluZyBvbiB0aGF0IHN0dWZmIGxhbmQgYXMgd2VsbC4KPiA+IE90aGVyIG9wdGlvbiAoYmVjYXVz
ZSB0aGUgYmFja21lcmdlcyB0ZW5kIHRvIGJlIHNsb3cpIGlzIGEgdG9waWMgYnJhbmNoLAo+ID4g
YW5kIHdlIGp1c3QgZWF0L3Jlc29sdmUgdGhlIGNvbmZsaWN0cyBpbiBib3RoIGRybS1taXNjLW5l
eHQgYW5kCj4gPiBkcm0taW50ZWwtZ3QtbmV4dCBpbiB0aGUgbWVyZ2UgY29tbWl0LiBJZiBpdCdz
IG5vdCB0b28gYmFkIChJIGhhdmVuJ3QKPiA+IGxvb2tlZCBhdCB3aGF0IGV4YWN0bHkgd2UgbmVl
ZCBmb3IgdGhlIGk5MTUgc2lkZSBmcm9tIHR0bSBpbiBkZXRhaWwpLgo+ID4KPiA+IEJ1dCBhbHNv
IG9mdGVuIGZpZ3VyaW5nIG91dCB0aGUgdG9waWMgYnJhbmNoIGxvZ2lzdGljcyB0YWtlcyBsb25n
ZXIgdGhhbgo+ID4ganVzdCBtZXJnaW5nIHRvIGRybS1taXNjLW5leHQgYXMgdGhlIHBhdGNoZXMg
Z2V0IHJlYWR5Lgo+ID4gLURhbmllbAo+Cj4gRGFuaWVsOiBTbyB0aGUgdGhpbmcgd2UgbmVlZCB0
byBnZXQgaW50byBUVE0gaXMgdGhlIGl0ZXJhdG9yLWJhc2VkCj4gbW92ZV9tZW1jcHkgd2hpY2gg
aXMgbW9yZSBhZGFwdGFibGUgdGhhbiB0aGUgY3VycmVudCBvbmUgYW5kIG5lZWRlZCB0bwo+IHN1
cHBvcnQgbm9uLWxpbmVhciBsbWVtIGJ1ZmZlcnMsIHNvbWUgYnVnLWZpeGVzIGFuZCBtaW5vciBj
aGFuZ2VzIHRvIGJlCj4gYWJsZSB0byBrZWVwIG91ciBzaG9ydC10ZXJtLXBpbm5pbmcgd2hpbGUg
b24gdGhlIExSVS4gQSBuZWNlc3NhcnkgZXZpbC4KPgo+IENocmlzdGlhbjogaXQgbG9va3MgbGlr
ZSB5b3UgaGF2ZSBsYW5kZWQgc29tZSBUVE0gY2hhbmdlcyBhbHJlYWR5LCBpbgo+IHBhcnRpY3Vs
YXIgdGhlICZiby0+bWVtIC0+IGJvLT5yZXNvdXJjZSBjaGFuZ2Ugd2hpY2ggaXMgdGhlIG1haW4K
PiBjb25mbGljdCBJIHRoaW5rLiBJcyB0aGUgMTAgcGF0Y2hlcyBzZWxmLWFsbG9jYXRpb24gc2Vy
aWVzIHRoZSBtYWluCj4gcmVtYWluaW5nIHBhcnQ/IFRoYXQgd2lsbCBwcm9iYWJseSBjYXVzZSBz
b21lIGNvbmZsaWN0cyB3aXRoIGFscmVhZHkKPiBwdXNoZWQgaTkxNSBUVE0gc2V0dXAgY29kZSwg
YnV0IG90aGVyd2lzZSB3aWxsIG5vdCBjb25mbGljdCB3aXRoIHRoZQo+IHJlc3Qgb2YgdGhlIFRU
TSBjb2RlIEkgdGhpbmssIHdoaWNoIHNob3VsZCBtYWtlIGl0IHBvc3NpYmxlIHRvIGJyaW5nIGlu
Cj4gb3VyIFRUTSBjaGFuZ2VzIGFmdGVyIGNvbmZsaWN0IHJlc29sdXRpb24gd2l0aCB3aGF0IHlv
dSd2ZSBhbHJlYWR5Cj4gcHVzaGVkLiBUaGUgbWVtY3B5IGNvZGUgaXMgcHJldHR5IHNlbGYtY29u
dGFpbmVkLgoKSSB0aGluayBpbiB0aGF0IGNhc2UgdG9waWMgYnJhbmNoIG9uIHRvcCBvZiBkcm0t
bmV4dCAob25jZSB0aGUgdHRtCmJpdHMgd2UgY29uZmxpY3Qgd2l0aCBhcmUgdGhlcmUpIGlzIHBy
b2JhYmx5IGJlc3QsIGFuZCB0aGVuIHB1bGwgdGhhdAppbnRvIGRybS1taXNjLW5leHQgYW5kIGRy
bS1pbnRlbC1ndC1uZXh0LiBNZXJnZSB3aW5kb3cgZnJlZXplIGlzIGFsc28KYXBwcm9hY2gsIHNv
IHdpdGhvdXQgdG9waWMgYnJhbmNoIHdlJ2QgYmUgc3R1Y2sgdW50aWwgbGlrZSAtcmMyIHdoZW4K
ZHJtLW5leHQgcmVvcGVucy4gSSBndWVzcyBNYWFydGVuIGNhbiBkbyB0aGUgdG9waWMgYnJhbmNo
IGxvZ2lzdGljcyBpbgpkcm0tbWlzYy5naXQgZm9yIHRoaXMuCi1EYW5pZWwKLS0gCkRhbmllbCBW
ZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZm
d2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

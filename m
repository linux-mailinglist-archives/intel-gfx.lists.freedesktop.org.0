Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F14826F98
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196F389ACD;
	Wed, 22 May 2019 19:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A864F89ACD
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:58:13 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id j12so5506000eds.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 12:58:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=If0ZOvT/k1thBNGmr3jlQgbW1ixeZyyqjaIDDbPSxkI=;
 b=JReYhqUJChgqoJziM4cQ/H53z7eCcsuoa6OMOl1F9L7AAgbEUKxNGWRxxQ0YEZ2sBj
 lRvHJIkTle+XFtV0mXGZlpXypes6rCiDisBjiFPsuUeM34Su+4Eb4qaEQSc1ZPQW0H+A
 /n34YdQgDZRnGBMps6PZj2fHwRT5mKtBLnjCieTgydxCLU+N09Nlwwf4IMIxJ67NHt+8
 gi9Q1UFtUPJqSrW1QdF04UuRBraP4JXLRqganSV5CQPBdjpc2hz6AwIiNt/LH5/q9+EU
 jZV1dvokGkodZTrootIFKl1nwVaXa5pUl7dI3qk3dNei4IkwaTf4cmNLDotvXyWGdXU+
 p9jQ==
X-Gm-Message-State: APjAAAUzUE0AI1fNsyYdNjSM+uge82VtU8I/mQ1OTiL2MSb7YGoAfyAs
 117/pDTMrk1K4bBRLWssRHE=
X-Google-Smtp-Source: APXvYqy/oQbj1BD9jBpXK2dfBJ2nZ/8a80Sws6MeUJUbiHxvN9nHSAGZdx4o8lqUL7cXExhyFvrKuA==
X-Received: by 2002:a17:906:c7c5:: with SMTP id
 dc5mr19158206ejb.171.1558555092202; 
 Wed, 22 May 2019 12:58:12 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id v22sm1749715eji.13.2019.05.22.12.58.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 22 May 2019 12:58:11 -0700 (PDT)
Date: Wed, 22 May 2019 12:58:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190522195809.GB94676@archlinux-epyc>
References: <87904259868782c1ad664d852b27a50c1597cfaa.1556540890.git.jani.nikula@intel.com>
 <20190521183850.GA9157@archlinux-epyc> <87v9y27p0l.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9y27p0l.fsf@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=If0ZOvT/k1thBNGmr3jlQgbW1ixeZyyqjaIDDbPSxkI=;
 b=Ka9mcJuMvQEud/13ZW0V924BqpPQCf3qdKM2BVqpFMUWHgJnURB1h8ElSlZQRdi4L/
 +MTcRUJ1mUeLGtnAZuQVK2Gyhig2msTp89xx/Mp/ACm1YCPzmxzhh5gDPQH35VRBeUcu
 R/mxFgPjiGBANE9WR/v/cG6FtpJRh+iyxNlxY/SmTH1AnDZxDi6NY5qIkyxEX3N248Zl
 04ujJN/vsG01toM0QJS1Nqk88Obrstp1EFe3CoRQCgXMNGGWvoZgUnI4e1NPvE87hCaK
 TFHOooDB6MQGUh2HBMt1B+xfFwQLo15+p/7laqpYoP+ao9qKhYgzqY/4/pOAfNm9RVPp
 GVoA==
Subject: Re: [Intel-gfx] [18/21] drm/i915: extract intel_runtime_pm.h from
 intel_drv.h
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMDE6Mzg6MThQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVHVlLCAyMSBNYXkgMjAxOSwgTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2Vs
bG9yQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiBIaSBKYW5pLAo+ID4KPiA+IE9uIE1vbiwgQXByIDI5
LCAyMDE5IGF0IDAzOjI5OjM2UE0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOgo+ID4+IEl0IHVz
ZWQgdG8gYmUgaGFuZHkgdGhhdCB3ZSBvbmx5IGhhZCBhIGNvdXBsZSBvZiBoZWFkZXJzLCBidXQg
b3ZlciB0aW1lCj4gPj4gaW50ZWxfZHJ2LmggaGFzIGJlY29tZSB1bndpZWxkeS4gRXh0cmFjdCBk
ZWNsYXJhdGlvbnMgdG8gYSBzZXBhcmF0ZQo+ID4+IGhlYWRlciBmaWxlIGNvcnJlc3BvbmRpbmcg
dG8gdGhlIGltcGxlbWVudGF0aW9uIG1vZHVsZSwgY2xhcmlmeWluZyB0aGUKPiA+PiBtb2R1bGFy
aXR5IG9mIHRoZSBkcml2ZXIuCj4gPj4gCj4gPj4gRW5zdXJlIHRoZSBuZXcgaGVhZGVyIGlzIHNl
bGYtY29udGFpbmVkLCBhbmQgZG8gc28gd2l0aCBtaW5pbWFsIGZ1cnRoZXIKPiA+PiBpbmNsdWRl
cywgdXNpbmcgZm9yd2FyZCBkZWNsYXJhdGlvbnMgYXMgbmVlZGVkLiBJbmNsdWRlIHRoZSBuZXcg
aGVhZGVyCj4gPj4gb25seSB3aGVyZSBuZWVkZWQsIGFuZCBzb3J0IHRoZSBtb2RpZmllZCBpbmNs
dWRlIGRpcmVjdGl2ZXMgd2hpbGUgYXQgaXQKPiA+PiBhbmQgYXMgbmVlZGVkLgo+ID4+IAo+ID4+
IE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KPiA+PiAKPiA+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4+IC0tLQo+ID4KPiA+IDxzbmlwPgo+ID4K
PiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oCj4gPj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiA+PiBpbmRleCAwMDAwMDAuLjY5MjI3Nwo+ID4+IC0tLSAvZGV2L251bGwK
PiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgKPiA+PiBA
QCAtMCwwICsxLDEwNSBAQAo+ID4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICov
Cj4gPj4gKy8qCj4gPj4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4g
Pj4gKyAqLwo+ID4+ICsKPiA+PiArI2lmbmRlZiBfX0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4gPj4g
KyNkZWZpbmUgX19JTlRFTF9SVU5USU1FX1BNX0hfXwo+ID4+ICsKPiA+PiArI2luY2x1ZGUgPGxp
bnV4L3N0YWNrZGVwb3QuaD4KPiA+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gPj4gKwo+
ID4+ICtzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKPiA+PiArCj4gPj4gK3R5cGVkZWYgZGVwb3Rf
c3RhY2tfaGFuZGxlX3QgaW50ZWxfd2FrZXJlZl90Owo+ID4KPiA+IEp1c3QgYXMgYW4gRllJLCB0
aGlzIHBhcnRpY3VsYXIgY2hhbmdlIGNhdXNlcyBhIHNsZXcgb2YgY2xhbmcgd2FybmluZ3M6Cj4g
PiBodHRwczovL3RyYXZpcy1jaS5jb20vQ2xhbmdCdWlsdExpbnV4L2NvbnRpbnVvdXMtaW50ZWdy
YXRpb24vam9icy8yMDE3NTQ0MjAjTDI0MzUKPiA+Cj4gPiBJIGFtIG5vdCBzdXJlIGhvdyBleGFj
dGx5IHlvdSdkIGxpa2UgdGhpcyByZXNvbHZlZCBzbyBJIGRpZG4ndCB3YW50IHRvCj4gPiBwcm92
aWRlIGEgdXNlbGVzcyBwYXRjaC4gSSBmaWd1cmVkIEkgd291bGQgbGV0IHlvdSBrbm93IGFib3V0
IGl0IGFuZAo+ID4gbGVhdmUgaXQgdXAgdG8geW91Lgo+IAo+IFRoYW5rcyBmb3IgdGhlIHJlcG9y
dCwgZml4IGlzIFsxXS4KClRoYW5rcyBmb3IgdGhlIHF1aWNrIGZpeCEKCj4gCj4gSSB3b25kZXIg
d2h5IGdjYyBhbGxvd3MgZHVwZSBkZWZpbml0aW9ucy4gKnNocnVnKgoKSSB3YXMgYnJpZWZseSBj
dXJpb3VzIHRoZW4gSSByZWFsaXplZCBJJ2QgcHJvYmFibHkgaGF2ZSB0byBsb29rIGF0IHRoZQpH
Q0Mgc291cmNlIHRvIGZpZ3VyZSBvdXQgd2h5Li4uCgpDaGVlcnMsCk5hdGhhbgoKPiAKPiBCUiwK
PiBKYW5pLgo+IAo+IFsxXSBodHRwOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9t
c2dpZC8yMDE5MDUyMjEwMzUwNS4yMDgyLTEtamFuaS5uaWt1bGFAaW50ZWwuY29tCj4gCj4gCj4g
LS0gCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

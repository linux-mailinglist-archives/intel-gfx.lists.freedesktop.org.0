Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8434A168086
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 15:43:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0550D6E2E6;
	Fri, 21 Feb 2020 14:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F796E2E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 14:43:08 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id p125so1755587oif.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 06:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZHMsAfOo1o7x5MRiVUZtkpLZaK6MTsqL/9lr+DEhsvI=;
 b=el2f/KTFxe961EaU2kuYAfcxZYg8Q8Yer6ZUKMeEQ334xEa455bgaG1jBPKU/DaAR4
 DXBGkyOJhWwq6CJPsDCpwCZJu+kd8/+NyooPhFPtPuOLMdRhumTJufjMfkZXXib7tY04
 BV73sF/LO1c3AQAAGc0w4Zwhkkxt/LbOqmnR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZHMsAfOo1o7x5MRiVUZtkpLZaK6MTsqL/9lr+DEhsvI=;
 b=RghI6TCvagtVciWzu7o873WGXdZm03MHWtcLzeheG3vu1NMd5EQFR9u0R6JgGl0ly3
 zEK9bFPA+ZJ76E8n/S5YdFoDO64pPIkB5c9TxpRDYEgLmiF+7GTuZJMLIARcFCtKI9p/
 jTMAF/HMkycidLw1V6i8bQcKnOjw10znyVSgHCFdMYBQXzyLXR1Zraicz6hf9FjSb3cK
 Q0stvLCl6I01Zqjjns61sImlJ4+Q2mWB3cVtNAqAjllDwv1CwOJucmr0uC6yqXOz6njc
 TV+Fn5IWFefegn4UmZ7AoHgUm6FSQ/8O/KMa4jdWE2NCkogzcRI0puzPakcwSrixvP6x
 ZPcA==
X-Gm-Message-State: APjAAAUnKdB12sKd3Ltnz6iP3aC8TP9t+GRbK/Ox2IYONoIB/zYO5waM
 pstMYvp563eWOH75iqF7obSquD0/FmjFiH6tVdY/pg==
X-Google-Smtp-Source: APXvYqymizZi/dUeDqlmrxb0W9cAlTvQs99yiTAoVGBCbSaprG7a4bC37p7cPO5B6hlFV71sQELkzqLrJbCMi2ds08I=
X-Received: by 2002:aca:af09:: with SMTP id y9mr2147634oie.101.1582296187526; 
 Fri, 21 Feb 2020 06:43:07 -0800 (PST)
MIME-Version: 1.0
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
 <CACvgo50pCb4OafEs9tLm7YEPqHc+BtDAvagRnwjXtZeQDNwUwg@mail.gmail.com>
 <20200220142759.GA13686@intel.com> <20200220153426.GC13686@intel.com>
 <871rqoyy42.fsf@intel.com> <20200221114309.GM13686@intel.com>
In-Reply-To: <20200221114309.GM13686@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 21 Feb 2020 15:42:56 +0100
Message-ID: <CAKMK7uGTpEHuBA09FuUA5ihPLtw7s+6=YBfQ2A4i=8Q-4SsRjA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/12] drm: Put drm_display_mode on diet
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

T24gRnJpLCBGZWIgMjEsIDIwMjAgYXQgMTI6NDMgUE0gVmlsbGUgU3lyasOkbMOkCjx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEZlYiAyMSwgMjAyMCBh
dCAwMTozMjoyOVBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+IE9uIFRodSwgMjAgRmVi
IDIwMjAsIFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdy
b3RlOgo+ID4gPiBMb29rcyBsaWtlIGdldHRpbmcgcmlkIG9mIHByaXZhdGVfZmxhZ3MgaXMgZ29p
bmcgdG8gYmUgcHJldHR5Cj4gPiA+IHN0cmFpZ2h0Zm9yd2FyZC4gSSdsbCBwb3N0IHBhdGNoZXMg
Zm9yIHRoYXQgb25jZSB0aGlzIGZpcnN0IHNlcmllcwo+ID4gPiBsYW5kcy4KPiA+Cj4gPiBHb2lu
ZyBhbGwgaW4gb24gY3J0YyBzdGF0ZT8gSSBzdXBwb3NlIG1pZ3JhdGluZyBhd2F5IGZyb20gcHJp
dmF0ZV9mbGFncwo+ID4gY291bGQgZWFzaWx5IHN0YXJ0IGluIGk5MTUgYmVmb3JlIHRoYXQuIFNl
ZW1zIHJhdGhlciBpbmRlcGVuZGVudC4KPiA+Cj4gPiBJIGd1ZXNzIGl0J3MgX19pbnRlbF9nZXRf
Y3J0Y19zY2FubGluZSgpIGFuZDoKPiA+Cj4gPiAgICAgICB2YmxhbmsgPSAmY3J0Yy0+YmFzZS5k
ZXYtPnZibGFua1tkcm1fY3J0Y19pbmRleCgmY3J0Yy0+YmFzZSldOwo+ID4gICAgICAgbW9kZSA9
ICZ2YmxhbmstPmh3bW9kZTsKPiA+Cj4gPiAgICAgICBpZiAobW9kZS0+cHJpdmF0ZV9mbGFncyAm
IEk5MTVfTU9ERV9GTEFHX0dFVF9TQ0FOTElORV9GUk9NX1RJTUVTVEFNUCkKPiA+Cj4gPiB0aGF0
IGdpdmVzIG1lIHRoZSBjcmVlcHMgaW4gcmV2aWV3aW5nIGFsbCB0aGF0Lgo+ID4KPiA+IFRoZXJl
J3MgYWxzbyBbMV0gYWRkaW5nIG5ldyB1c2VzIGZvciBwcml2YXRlX2ZsYWdzOyBJIHRoaW5rIHRo
ZXJlIHdlcmUKPiA+IGlzc3VlcyBpbiBnZXR0aW5nIGF0IHRoZSByaWdodCBjcnRjIHN0YXRlIG9u
IHNvbWUgb2YgdGhvc2UgcGF0aHMsIGJ1dCBJCj4gPiBmb3JnZXQgdGhlIGV4YWN0IGRldGFpbHMu
IElkZWFzPwo+Cj4gSSdtIGp1c3QgZ29pbmcgdG8gbW92ZSB0aGVtIHRvIHRoZSBjcnRjX3N0YXRl
IGFuZCBwdXQgYSBjb3B5IGludG8gdGhlCj4gY3J0YyBpdHNlbGYgZm9yIHRoZSB2YmxhbmsgY29k
ZS4gUHJldHR5IG11Y2ggYSAxOjEgcmVwbGFjZW1lbnQuCj4gU2F2ZXMgbWUgZnJvbSBoYXZpbmcg
dG8gdGhpbmsgOykKCkkndmUgbG9va2VkIHRocm91Z2ggdGhlIHBhdGNoZXMsIGFuZCBkaWRuJ3Qg
c3BvdCBhbnkgcGxhY2Ugd2hlcmUgd2UKY291bGRuJ3QganVzdCBnZXQgYXQgdGhlIGZ1bGwgY3J0
YyBzdGF0ZS4gTWlnaHQgbmVlZCBzb21lIGNydGMtPnN0YXRlCmRlcmVmZXJlbmNpbmcgYW5kIHVw
Y2FzdGluZyBhbmQgbWFraW5nIHN1cmUgc3R1ZmYgaXMgb3JkZXJlZCBjb3JyZWN0bHkKd2l0aCBl
bmFibGUvZGlzYWJsZSBwYXRocyBvZiBjcnRjLCBidXQgbm90aGluZyB0byBqdW1wIG92ZXIuCgpX
YXMgdGhpcyBtYXliZSBwcmVkYXRpbmcgdGhlIHN3aXRjaCBvZiB0aGUgdmJsYW5rIGNhbGxiYWNr
cyBvdmVyIGZyb20KZHJtX2RyaXZlciB0byBkcm1fY3J0Y19mdW5jcywgYW5kIGluIHRoZSBmb3Jt
ZXIgaXQncyBpbmRlZWQgbm90CnN1cGVyLW9idmlvdXMgdGhhdCB5b3UgY2FuIGp1c3QgbG9vayBh
dCB0aGUgY3J0Yz8gQW55d2F5LCBkaWRuJ3QgbG9vawpsaWtlIGl0IG5lZWRzIHByaXZhdGUgZmxh
Z3MgYXQgYWxsIGZyb20gYSBxdWljayBzY2FuLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNv
ZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAt
IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=

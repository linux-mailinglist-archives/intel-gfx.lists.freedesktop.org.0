Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463333878F9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 14:39:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764496E87E;
	Tue, 18 May 2021 12:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa2d.google.com (mail-vk1-xa2d.google.com
 [IPv6:2607:f8b0:4864:20::a2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8715B6E87E;
 Tue, 18 May 2021 12:39:20 +0000 (UTC)
Received: by mail-vk1-xa2d.google.com with SMTP id v188so2014169vkf.5;
 Tue, 18 May 2021 05:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WVtDj08z98F58bN9H9RBk5MhfrHWI4u1IfK1xNaBLvs=;
 b=k0J848oJ5ulFmZ0Cp2JKo4ZivRARPXRY5MAHXjkMKkcDlXA6qqxpSi587bWIeyFtj5
 XJePd3QwkkERgcFDFmxRD+7t1Cu9ZTEJ++m3sD99dDSaS//suEJ3h6b1/u+6LTFmRSPQ
 Ws79NkrtfhdKX5fPAVsxE/Qh64aplpEyDa0GIZiReyfBMG91UokrR+Z98/Vwv8nNkqpv
 9u9yK6ctx8gvqRtIcAA2CO5VLYKOfjPa9e5mIvsweotqabqe77OpQO8/R8IY2bSYonWG
 Q8fpOFNp5hK5J/mFcsG5ASEl/VGtMC+UZuBe94GP5XcoGnYhkEl7SJ5T68AfEkh2v4Wr
 1uJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WVtDj08z98F58bN9H9RBk5MhfrHWI4u1IfK1xNaBLvs=;
 b=NkKZR9svid0pEU3U8T3P1C3O9WRHo+DHdxxRexuo1gObSRipwBK89RPDFjOFuklM/Y
 T8cBfVEaGm4sfDPW1xOG697SJLson117gfGzV49DOYVrcj8RuirlcyG3pjIgJGl0wQkw
 ofTQdE5qzcO+X7gnAkkOgl0giTDSuGBNYjkqqJWRVUbLpDm5beY/4Cgolqv+F2cMUuSb
 pudYvOuHIG7VBw2dr7wSZ+qnzuInM4byesu5oXI47mlAfzOWahZNwO92PizW+ufvfO8R
 E1wwrsfsRbosMYLFqZNU1VPFVEOFPD9PVQZy8raU0xvklHG6aprVghIJ5T+Xz6XCeMwn
 /XuQ==
X-Gm-Message-State: AOAM5316Sfl9wcFTmy2g7OOcVVDK/x2Ft2RktQTdBH6uFhG/N3tJoLQs
 P6DlrK2RPS3vYs3f9N2p84Sgord/YKcl2jvrBbU=
X-Google-Smtp-Source: ABdhPJyWT3yeXXiSMJweGdWvUZSmrKae3bbcQi6GZwmITlwf5te8X8rrUgt6xQkCmz+mw8VH5UHsMAVCOR0Fr6jf01U=
X-Received: by 2002:a1f:b217:: with SMTP id b23mr5669056vkf.16.1621341559630; 
 Tue, 18 May 2021 05:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
 <YKKmsbvTZBwCUiRu@intel.com>
 <CACvgo53H7GAjN_aFsCBOw+xtVbjcbR1q-U3vdgjT1KUPKoMkkg@mail.gmail.com>
 <YKOiN1EFXz7TfYyV@intel.com>
In-Reply-To: <YKOiN1EFXz7TfYyV@intel.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 18 May 2021 13:39:08 +0100
Message-ID: <CACvgo536UEPbePxxOC2Ui7ypWORdFPwtNn_FBug+JcgKSiD_bg@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: only disable default vga device
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
 kernel@collabora.com, ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxOCBNYXkgMjAyMSBhdCAxMjoxNywgVmlsbGUgU3lyasOkbMOkCjx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1heSAxOCwgMjAyMSBhdCAx
MjowOTo1NlBNICswMTAwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6Cj4gPiBIaSBWaWxsZSwKPiA+Cj4g
PiBPbiBNb24sIDE3IE1heSAyMDIxIGF0IDE4OjI0LCBWaWxsZSBTeXJqw6Rsw6QKPiA+IDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFN1biwgTWF5
IDE2LCAyMDIxIGF0IDA2OjE0OjMyUE0gKzAxMDAsIEVtaWwgVmVsaWtvdiB3cm90ZToKPiA+ID4g
PiBGcm9tOiBWaXZlayBEYXMgTW9oYXBhdHJhIDx2aXZla0Bjb2xsYWJvcmEuY29tPgo+ID4gPiA+
Cj4gPiA+ID4gVGhpcyBwYXRjaCBpcyB0byBkbyB3aXRoIHNlYW1sZXNzIGhhbmRvdmVyLCBlZyB3
aGVuIHRoZSBzZXF1ZW5jZSBpcwo+ID4gPiA+IGJvb3Rsb2FkZXIg4oaSIHBseW1vdXRoIOKGkiBk
ZXNrdG9wLgo+ID4gPiA+Cj4gPiA+ID4gSXQgc3dpdGNoZXMgdGhlIHZnYSBhcmJpdGVyIGZyb20g
dGhlICJvdGhlciIgR1BVIHRvIHRoZSBkZWZhdWx0IG9uZQo+ID4gPiA+IChpbnRlbCBpbiB0aGlz
IGNhc2UpLCBzbyB0aGUgZHJpdmVyIGNhbiBpc3N1ZSBzb21lIGlvKCkuCj4gPiA+Cj4gPiA+IEkg
ZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IHRoaXMgY29tbWl0IG1lc3NhZ2UgaXMgdHJ5aW5nIHRvIHNh
eS4KPiA+ID4KPiA+IEJ1bmNoIG9mIGNvbnRleHQgaXMgbG9zdCBkdWUgdG8gdGhlIHBhdGNoIGFn
ZSwgc28gSSdtIG5vdCAxMDAlIHN1cmUgb2YKPiA+IHRoZSBhY3R1YWwgaGFyZHdhcmUgc2V0dXAg
d2hlcmUgdGhpcyBvY2N1cnMuCj4gPiBEb2VzIHRoZSBmb2xsb3dpbmcgbWFrZSBzZW5zZT8KPiA+
Cj4gPiBDdXJyZW50bHkgb24gZHVhbCBHUFUgc3lzdGVtcywgd2UgZG8gbm90IGdldCBzZWFtbGVz
cyBoYW5kb3ZlciBhcyB0aGUKPiA+IG91dHB1dCBmbGlja2VycyBkdXJpbmcgdGhlIHRyYW5zaXRp
b24gYm9vdGxvYWRlciAtPiBwbHltb3V0aCAtPgo+ID4gZGVza3RvcC4KPiA+IFRoaXMgaGFwcGVu
cyBhcyBhIHJlc3VsdCBvZiBzd2l0Y2hpbmcgKHZpYSB0aGUgVkdBIGFyYml0ZXIpIGZyb20gdGhl
Cj4gPiAib3RoZXIiIEdQVSBiYWNrIHRvIHRoZSBkZWZhdWx0IGk5MTUgb25lIGFuZCBpc3N1aW5n
IGlvKCkgY29tbWFuZHMuCj4KPiBIbW0uIERvZXMgdGhpcyB3b3JrPwo+ClRoYW5rcyBJJ2xsIGl0
IGdpdmUgaXQgYSB0cnkuIE1pZ2h0IG5lZWQgYSBmZXcgZGF5cyB0byBmaW5kIHRoZSByaWdodApo
YXJkd2FyZS9zb2Z0d2FyZSBjb21iaW5hdGlvbi4KCi1FbWlsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6A523012
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 11:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E2D8915F;
	Mon, 20 May 2019 09:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D2B58914C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 09:19:52 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id r136so9440793oie.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 02:19:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=26qzizuvow48Xzf0mvcO4dXWRF3h0YYiGVUKw+vGork=;
 b=ARnYG9ORd+wmoIk5o0m/yvCrjROzU9sW1AO6SfrQ+3+EnB1vTcYP2MVuEDI3OOeNgv
 N2wkNnKJjwkkT4uIBavD9dGb3u02/HLWgTNxOB5kheDO2gU+p1yXBPOQn6Sb3uhoxPvd
 O0aEIl4zRIbGdkRyrB//1RtCRq0trJTSk7ssJ+PpqMt6NIdlRLYJg8CZLC8QwHRsqQos
 rRZcWiDPmf6dD5XATCiLAal7BDADop5itNW+JpZTyGgrxiRFNM7QPaRme/96J86ogike
 OpHG6wDO8B7/9orWc/lMiWkw3gKvZasO8AAaUddXcEpiza+a/+zuMqUUnMTJR04YSGdH
 V09Q==
X-Gm-Message-State: APjAAAW9brcTsdtI/+CalyvIsN5OPMRWB/5x83+1qoQz3LAsHFdLKuGe
 9+a8R8EQVDePD09HTVvtfJy0ny+5yXPkcyl5XJXbjg==
X-Google-Smtp-Source: APXvYqx6gV2i8yLCBLSS6Xce0gF4sIDhYOXx+llnio3aigAWnajjawlUTjqRvm8jW3Gl3I5stpM0sAcuIS8Gcue8PJM=
X-Received: by 2002:aca:31cf:: with SMTP id x198mr2881468oix.132.1558343991215; 
 Mon, 20 May 2019 02:19:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
 <20190520082216.26273-21-daniel.vetter@ffwll.ch>
 <CAMuHMdVuu062bkOb4sPv-m-WUF4L=K9Q5-hGPHTb8OhPbQdSEg@mail.gmail.com>
In-Reply-To: <CAMuHMdVuu062bkOb4sPv-m-WUF4L=K9Q5-hGPHTb8OhPbQdSEg@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 20 May 2019 11:19:39 +0200
Message-ID: <CAKMK7uE19LvpDLrZ7Kjk0yrZe1x1q5yyMuy5ScAWzf8u-RbNgA@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=26qzizuvow48Xzf0mvcO4dXWRF3h0YYiGVUKw+vGork=;
 b=XhAgVCfpg+LZqqWAlefw8B8o6jjpLKy77SAcw6yz9yOGQoo6GMWeQXdEEuC6mdzOpL
 JzhAeLd9MeT3gv7/FzSuX3V+WAgIt9F4AP4WlebIP2ILHibj5k0J+t7YNwSdmo3vDK1X
 2bytoUhFRNUaRJVhvusj7XOgXC5DsVMB0h2tw=
Subject: Re: [Intel-gfx] [PATCH 20/33] fbdev/sh_mob: Remove fb notifier
 callback
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Markus Elfring <elfring@users.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMTE6MDYgQU0gR2VlcnQgVXl0dGVyaG9ldmVuCjxnZWVy
dEBsaW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIE1heSAyMCwgMjAxOSBhdCAxMDoy
MiBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+IFRo
aXMgc2VlbXMgdG8gYmUgZW50aXJlbHkgZGVmdW5jdDoKPiA+Cj4gPiAtIFRoZSBGQl9FVkVOX1NV
U1BFTkQvUkVTVU1FIGV2ZW50cyBhcmUgb25seSBzZW50IG91dCBieQo+ID4gICBmYl9zZXRfc3Vz
cGVuZC4gV2hpY2ggaXMgc3VwcG9zZWQgdG8gYmUgY2FsbGVkIGJ5IGRyaXZlcnMgaW4gdGhlaXIK
PiA+ICAgc3VzcGVuZC9yZXN1bWUgaG9va3MsIGFuZCBub3QgaXRzZWxmIGNhbGwgaW50byBkcml2
ZXJzLiBMdWNraWx5Cj4gPiAgIHNoX21vYiBkb2Vzbid0IGNhbGwgZmJfc2V0X3N1c3BlbmQsIHNv
IHRoaXMgc2VlbXMgdG8gZG8gbm90aGluZwo+ID4gICB1c2VmdWwuCj4gPgo+ID4gLSBUaGUgbm90
aWZ5IGhvb2sgY2FsbHMgc2hfbW9iaWxlX2ZiX3JlY29uZmlnKCkgd2hpY2ggaW4gdHVybiBjYW4K
PiA+ICAgY2FsbCBpbnRvIHRoZSBmYiBub3RpZmllci4gT3IgYXR0ZW1wdCB0b28sIHNpbmNlIHRo
YXQgd291bGQKPiA+ICAgZGVhZGxvY2suCj4gPgo+ID4gU28gbG9va3MgbGlrZSBsZWZ0b3ZlciBo
YWNrcyBmcm9tIHdoZW4gdGhpcyB3YXMgb3JpZ2luYWxseSBpbnRyb2R1Y2VkCj4gPiBpbgo+ID4K
PiA+IGNvbW1pdCA2MDExYmRlYWE2MDg5ZDQ5YzAyZGU2OWYwNTk4MGRhN2JhZDMxNGFiCj4gPiBB
dXRob3I6IEd1ZW5uYWRpIExpYWtob3ZldHNraSA8Zy5saWFraG92ZXRza2lAZ214LmRlPgo+ID4g
RGF0ZTogICBXZWQgSnVsIDIxIDEwOjEzOjIxIDIwMTAgKzAwMDAKPiA+Cj4gPiAgICAgZmJkZXY6
IHNoLW1vYmlsZTogSERNSSBzdXBwb3J0IGZvciBTSC1Nb2JpbGUgU29Dcwo+ID4KPiA+IFNvIGxl
dCdzIGp1c3QgcmVtb3ZlIGl0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+Cj4gUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhv
ZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4KPiBEaXNwbGF5IHN0aWxsIHdvcmtzIGZp
bmUgb24gQXJtYWRpbGxvODAwLUVWQSwgYmVmb3JlIGFuZCBhZnRlciBzeXN0ZW0KPiBzdXNwZW5k
L3Jlc3VtZSwgc286Cj4KPiBUZXN0ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVu
ZXNhc0BnbGlkZXIuYmU+CgpJJ20gaW1wcmVzc2VkLCBJIGhvbmVzdGx5IHRoaW5rIEkgZG8gbm90
IGZ1bGx5IHVuZGVyc3RhbmQgd2hhdCB0aGUKc2htb2IgZHJpdmVyIGlzIGRvaW5nIGhlcmUsIHNv
IHRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIGdpdmluZyB0aGlzIGEKc3BpbiEKCkNoZWVycywgRGFu
aWVsCgo+Cj4gR3J7b2V0amUsZWV0aW5nfXMsCj4KPiAgICAgICAgICAgICAgICAgICAgICAgICBH
ZWVydAo+Cj4gLS0KPiBHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4
IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCj4KPiBJbiBwZXJzb25hbCBjb252
ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4g
QnV0Cj4gd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFt
bWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0Lgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLS0gTGludXMgVG9ydmFsZHMKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5n
aW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Js
b2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

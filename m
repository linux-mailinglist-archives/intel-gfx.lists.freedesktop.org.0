Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2424CB9926
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 23:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DBD6E042;
	Fri, 20 Sep 2019 21:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2A76E042
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 21:45:07 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id n14so8163079wrw.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 14:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QvEmADbZgXiH02xmPOARjI8KYhoxjNbKMAnFV3+DAjc=;
 b=UIMzA5qpzo31V0p1gDciTpiWa6tJj9J+Y50KXmwmkHRIjfzvUbaCYbyLt1IQfz2VqA
 N6Px+zgEoyc2mrGYYaLDtBOEYVrw1rL1cgWAZLizQb9irqMgQkML32dlgfB2Kro33MTM
 eZI12Z2Vt+vzODmt1bNJlWIzrycWvEkc0RLta0w+MNOsHe1myv3NkG001JgAO5C7aOz4
 KFVRttvHtOhGqWy2/4hJUbNhZuaiTSIyi4tNyB/G3XlS7irgYydfiicnFrYk27wdHue/
 lCsH5PJXsCUjqcb5Spe7R4RtpVwMg41giJtUIWKJD9UazNxt8V/mXLbS6xyZfkU0XpHu
 WfiA==
X-Gm-Message-State: APjAAAWqlZpVEslQNxMd55aSt2KrT1yIbRgRA2qyDR2qALDzAegW1Che
 XEnUTd3kpEhbqOtW4GFTSY931xG/M6wlZcUNEm4=
X-Google-Smtp-Source: APXvYqzY3KWtPreOejtjLbaXXR+HEvpXuogoZcGo3i+7jEUbM/JVY0Mzm7WItZHjN8kxvVuX4lCUhYakTVwNA/N5+ew=
X-Received: by 2002:a5d:4590:: with SMTP id p16mr12953708wrq.82.1569015906052; 
 Fri, 20 Sep 2019 14:45:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-9-jose.souza@intel.com>
In-Reply-To: <20190919000726.267988-9-jose.souza@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Fri, 20 Sep 2019 14:44:53 -0700
Message-ID: <CAKi4VAKbuuuqj=_qtkFsMZ3VTpc8ctDfQXAZbzz_u5swUh02Wg@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QvEmADbZgXiH02xmPOARjI8KYhoxjNbKMAnFV3+DAjc=;
 b=P9NET2vYadv1WTEg0i/otthJNja+bQfSZr6boemHC/2/jXfRzx3vBToCb3+KIYwM5K
 0fQcCEQP5uweXgej27O38QwaVkXNj56a1FCBA0rfFREK79BafzCL6oP/YqO/gVYSxy9u
 qDZK/Xmzh9i4Zb78YrFIeAebWRa1AhpUN3OZCH3kci/ybS2OGxMLb51b52JwPKp6/s+Z
 652G5piSNyZNC6LlkwwmI2SjLLwVxGtLEKLs8VP/pEYrX+RSEOmr4h2TfZ4Ydz+lJVJH
 VYLRnclxynwAMGYKsXPBFbAf/E+kDMPu9kF4fpCkT7OkWJYs6Pz0FxgN/XhboGDxxzpN
 e1Cw==
Subject: Re: [Intel-gfx] [PATCH v2 08/13] drm/i915/tgl: Add dkl phy
 programming sequences
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgNTowNyBQTSBKb3PDqSBSb2JlcnRvIGRlIFNvdXphCjxq
b3NlLnNvdXphQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBDbGludG9uIEEgVGF5bG9yIDxj
bGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPgo+IEFkZGVkIERLTCBQaHkgc2VxdWVuY2VzIGFu
ZCBoZWxwZXJzIGZ1bmN0aW9ucyB0byBwcm9ncmFtIHZvbHRhZ2UKPiBzd2luZywgY2xvY2sgZ2F0
aW5nIGFuZCBkcCBtb2RlLgo+Cj4gSXQgaXMgbm90IHdyaXR0ZW4gaW4gRFAgZW5hYmxpbmcgc2Vx
dWVuY2UgYnV0ICJQSFkgQ2xvY2tnYXRpbmcKPiBwcm9ncmFtbWluZyIgc3RhdGVzIHRoYXQgY2xv
Y2sgZ2F0aW5nIHNob3VsZCBiZSBlbmFibGVkIGFmdGVyIHRoZQo+IGxpbmsgdHJhaW5pbmcgYnV0
IGRvaW5nIHNvIGNhdXNlcyBhbGwgdGhlIGZvbGxvd2luZyB0cmFpbmluZ3MgdG8gZmFpbAo+IHNv
IG5vdCBlbmFibGluZyBpdCBmb3IuCj4KPiB2MjoKPiBTZXR0aW5nIHRoZSByaWdodCBISVBfSU5E
RVhfUkVHIGJpdHMgKEpvc8OpKQo+Cj4gQlNwZWM6IDQ5MjkyCj4gQlNwZWM6IDQ5MTkwCj4KPiBT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBDbGludG9uIEEgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyB8IDI0NiArKysrKysrKysrKysrKysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjM0IGlu
c2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCj4gaW5kZXggODE3OTJhMDRlMGFhLi5mZDI3MTExOGQxZjUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtNTg2LDYgKzU4
NiwyNSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGljbF9tZ19waHlfZGRpX2J1Zl90cmFucyBpY2xf
bWdfcGh5X2RkaV90cmFuc2xhdGlvbnNbXSA9IHsKPiAgICAgICAgIHsgMHgwLCAweDAwLCAweDAw
IH0sICAgIC8qIDMgICAgICAgICAgICAgIDAgICAqLwo+ICB9Owo+Cj4gK3N0cnVjdCB0Z2xfZGts
X3BoeV9kZGlfYnVmX3RyYW5zIHsKPiArICAgICAgIHUzMiBka2xfdnN3aW5nX2NvbnRyb2w7Cj4g
KyAgICAgICB1MzIgZGtsX3ByZXNob290X2NvbnRyb2w7Cj4gKyAgICAgICB1MzIgZGtsX2RlX2Vt
cGhhc2lzX2NvbnRyb2w7Cj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHRnbF9ka2xf
cGh5X2RkaV9idWZfdHJhbnMgdGdsX2RrbF9waHlfZGRpX3RyYW5zbGF0aW9uc1tdID0gewoKY29t
bWVudCBoZXJlIGxpa2UgaW4gdGhlIGljbCB2ZXJzaW9uIHdpdGggdGhlIG1lYW5pbmcgb2YgdGhl
IGNvbW1lbnRzCndvdWxkIGJlIGdvb2QKCj4gKyAgICAgICB7IDB4NywgMHgwLCAweDAwIH0sICAg
ICAvKiAwICAgICAwICAgNDAwbVYgIDAgZEIgICAqLwo+ICsgICAgICAgeyAweDUsIDB4MCwgMHgw
MyB9LCAgICAgLyogMCAgICAgMSAgIDQwMG1WICAzLjUgZEIgKi8KPiArICAgICAgIHsgMHgyLCAw
eDAsIDB4MGIgfSwgICAgIC8qIDAgICAgIDIgICA0MDBtViAgNiBkQiAgICovCj4gKyAgICAgICB7
IDB4MCwgMHgwLCAweDE5IH0sICAgICAvKiAwICAgICAzICAgNDAwbVYgIDkuNSBkQiAqLwo+ICsg
ICAgICAgeyAweDUsIDB4MCwgMHgwMCB9LCAgICAgLyogMSAgICAgMCAgIDYwMG1WICAwIGRCICAg
Ki8KCnByZS1lbXBoYXNpcyBoZXJlIGlzIDEuIEFuZCB0aGUgb3RoZXJzIGJlbG93IGFyZSB3cm9u
ZywgdG9vLgoKPiArICAgICAgIHsgMHgyLCAweDAsIDB4MDMgfSwgICAgIC8qIDEgICAgIDEgICA2
MDBtViAgMy41IGRCICovCj4gKyAgICAgICB7IDB4MCwgMHgwLCAweDE0IH0sICAgICAvKiAxICAg
ICAyICAgNjAwbVYgIDYgZEIgICAqLwo+ICsgICAgICAgeyAweDIsIDB4MCwgMHgwMCB9LCAgICAg
LyogMiAgICAgMCAgIDgwMG1WICAwIGRCICAgKi8KPiArICAgICAgIHsgMHgwLCAweDAsIDB4MEIg
fSwgICAgIC8qIDIgICAgIDEgICA4MDBtViAgMy41IGRCICovCj4gKyAgICAgICB7IDB4MCwgMHgw
LCAweDAwIH0sICAgICAvKiAzICAgICAwICAxMjAwbVYgIDAgZEIgICAgSERNSSBEZWZhdWx0ICov
Cj4gK307Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRkaV9idWZfdHJhbnMgKgo+ICBiZHdf
Z2V0X2J1Zl90cmFuc19lZHAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQg
Km5fZW50cmllcykKPiAgewo+IEBAIC04NzMsMTEgKzg5MiwxNSBAQCBzdGF0aWMgaW50IGludGVs
X2RkaV9oZG1pX2xldmVsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBw
b3J0IHBvcgo+ICAgICAgICAgbGV2ZWwgPSBkZXZfcHJpdi0+dmJ0LmRkaV9wb3J0X2luZm9bcG9y
dF0uaGRtaV9sZXZlbF9zaGlmdDsKPgo+ICAgICAgICAgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTEpIHsKPiAtICAgICAgICAgICAgICAgaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJp
diwgcGh5KSkKPiArICAgICAgICAgICAgICAgaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJp
diwgcGh5KSkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIGljbF9nZXRfY29tYm9fYnVmX3Ry
YW5zKGRldl9wcml2LCBJTlRFTF9PVVRQVVRfSERNSSwKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAwLCAmbl9lbnRyaWVzKTsKPiAtICAgICAgICAgICAg
ICAgZWxzZQo+IC0gICAgICAgICAgICAgICAgICAgICAgIG5fZW50cmllcyA9IEFSUkFZX1NJWkUo
aWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25zKTsKPiArICAgICAgICAgICAgICAgfSBlbHNlIHsK
PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5fZW50cmllcyA9IEFSUkFZX1NJWkUo
dGdsX2RrbF9waHlfZGRpX3RyYW5zbGF0aW9ucyk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ZWxzZQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbl9lbnRyaWVzID0gQVJSQVlf
U0laRShpY2xfbWdfcGh5X2RkaV90cmFuc2xhdGlvbnMpOwo+ICsgICAgICAgICAgICAgICB9Cj4g
ICAgICAgICAgICAgICAgIGRlZmF1bHRfZW50cnkgPSBuX2VudHJpZXMgLSAxOwoKSSB0aGluayBw
bGFpbiBsYWRkZXIgd291bGQgYmUgYmV0dGVyLiBKdXN0IGFkZCBvbmUgZm9yCklOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIpCgo+ICAgICAgICAgfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9w
cml2KSkgewo+ICAgICAgICAgICAgICAgICBjbmxfZ2V0X2J1Zl90cmFuc19oZG1pKGRldl9wcml2
LCAmbl9lbnRyaWVzKTsKPiBAQCAtMjMwOCwxMSArMjMzMSwxNSBAQCB1OCBpbnRlbF9kZGlfZHBf
dm9sdGFnZV9tYXgoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gICAgICAgICBpbnQg
bl9lbnRyaWVzOwo+Cj4gICAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgewo+
IC0gICAgICAgICAgICAgICBpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKQo+
ICsgICAgICAgICAgICAgICBpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKSB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgaWNsX2dldF9jb21ib19idWZfdHJhbnMoZGV2X3By
aXYsIGVuY29kZXItPnR5cGUsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaW50ZWxfZHAtPmxpbmtfcmF0ZSwgJm5fZW50cmllcyk7Cj4gLSAgICAgICAg
ICAgICAgIGVsc2UKPiAtICAgICAgICAgICAgICAgICAgICAgICBuX2VudHJpZXMgPSBBUlJBWV9T
SVpFKGljbF9tZ19waHlfZGRpX3RyYW5zbGF0aW9ucyk7Cj4gKyAgICAgICAgICAgICAgIH0gZWxz
ZSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTIpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuX2VudHJpZXMgPSBBUlJBWV9T
SVpFKHRnbF9ka2xfcGh5X2RkaV90cmFuc2xhdGlvbnMpOwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGVsc2UKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5fZW50cmllcyA9IEFS
UkFZX1NJWkUoaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25zKTsKPiArICAgICAgICAgICAgICAg
fQoKZGl0dG8KCj4gICAgICAgICB9IGVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKSB7
Cj4gICAgICAgICAgICAgICAgIGlmIChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9FRFAp
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY25sX2dldF9idWZfdHJhbnNfZWRwKGRldl9wcml2
LCAmbl9lbnRyaWVzKTsKPiBAQCAtMjc0OSw2ICsyNzc2LDY2IEBAIHN0YXRpYyB2b2lkIGljbF9k
ZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAgICAg
ICAgICAgICAgICBpY2xfbWdfcGh5X2RkaV92c3dpbmdfc2VxdWVuY2UoZW5jb2RlciwgbGlua19j
bG9jaywgbGV2ZWwpOwo+ICB9Cj4KPiArc3RhdGljIHZvaWQKPiArdGdsX2RrbF9waHlfZGRpX3Zz
d2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50IGxpbmtfY2xv
Y2ssCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgbGV2ZWwpCj4gK3sKPiAr
ICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rl
ci0+YmFzZS5kZXYpOwo+ICsgICAgICAgZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0
X3RvX3RjKGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKPiArICAgICAgIGNvbnN0IHN0cnVjdCB0
Z2xfZGtsX3BoeV9kZGlfYnVmX3RyYW5zICpkZGlfdHJhbnNsYXRpb25zOwo+ICsgICAgICAgdTMy
IG5fZW50cmllcywgdmFsLCBsbjsKPiArCj4gKyAgICAgICBuX2VudHJpZXMgPSBBUlJBWV9TSVpF
KHRnbF9ka2xfcGh5X2RkaV90cmFuc2xhdGlvbnMpOwo+ICsgICAgICAgZGRpX3RyYW5zbGF0aW9u
cyA9IHRnbF9ka2xfcGh5X2RkaV90cmFuc2xhdGlvbnM7Cj4gKwo+ICsgICAgICAgaWYgKGxldmVs
ID4gbl9lbnRyaWVzKQoKPj0gPwoKT3RoZXJ3aXNlIHlvdSB3aWxsIGFjY2VzcyBnYXJiYWdlIGJl
bG93Cgo+ICsgICAgICAgICAgICAgICBsZXZlbCA9IG5fZW50cmllcyAtIDE7Cj4gKwo+ICsgICAg
ICAgLyoKPiArICAgICAgICAqIEFsbCByZWdpc3RlcnMgcHJvZ3JhbW1lZCBoZXJlIHVzZSBISVBf
SU5ERVhfUkVHIDAgb3IgMQo+ICsgICAgICAgICovCj4gKyAgICAgICBmb3IgKGxuID0gMDsgbG4g
PCAyOyBsbisrKSB7Cj4gKyAgICAgICAgICAgICAgIEk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0
Y19wb3J0KSwgSElQX0lOREVYX1ZBTCh0Y19wb3J0LCBsbikpOwo+ICsKPiArICAgICAgICAgICAg
ICAgLyogQWxsIHRoZSByZWdpc3RlcnMgYXJlIFJNVyAqLwo+ICsgICAgICAgICAgICAgICB2YWwg
PSBJOTE1X1JFQUQoREtMX1RYX0RQQ05UTDAodGNfcG9ydCkpOwo+ICsgICAgICAgICAgICAgICB2
YWwgJj0gfihES0xfVFhfUFJFU0hPT1RfQ09FRkZfTUFTSyB8Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgIERLTF9UWF9ERV9FTVBBSFNJU19DT0VGRl9NQVNLIHwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgREtMX1RYX1ZTV0lOR19DT05UUk9MX01BU0spOwo+ICsgICAgICAgICAgICAgICB2
YWwgfD0gREtMX1RYX1ZTV0lOR19DT05UUk9MKGRkaV90cmFuc2xhdGlvbnNbbGV2ZWxdLmRrbF92
c3dpbmdfY29udHJvbCk7Cj4gKyAgICAgICAgICAgICAgIHZhbCB8PSBES0xfVFhfREVfRU1QSEFT
SVNfQ09FRkYoZGRpX3RyYW5zbGF0aW9uc1tsZXZlbF0uZGtsX2RlX2VtcGhhc2lzX2NvbnRyb2wp
Owo+ICsgICAgICAgICAgICAgICB2YWwgfD0gREtMX1RYX1BSRVNIT09UX0NPRUZGKGRkaV90cmFu
c2xhdGlvbnNbbGV2ZWxdLmRrbF9wcmVzaG9vdF9jb250cm9sKTsKCkkgd29uZGVyIGhvdyB1c2Vm
dWwgaXQgaXMgdG8ga2VlcCB0aGVyZSB0aGUgZGtsX3ByZXNob290X2NvbnRyb2wgaWYKaXQncyBh
bHdheXMgMApCdXQgd2UgaGF2ZSB0aGUgc2FtZSBiZWhhdmlvciBpbiBwcmV2aW91cyBwbGF0Zm9y
bXMuLi4uIDotLyBXZSBjYW4KbGVhdmUgaXQgZm9yIGxhdGVyCgo+ICsgICAgICAgICAgICAgICBJ
OTE1X1dSSVRFKERLTF9UWF9EUENOVEwwKHRjX3BvcnQpLCB2YWwpOwo+ICsKPiArICAgICAgICAg
ICAgICAgdmFsID0gSTkxNV9SRUFEKERLTF9UWF9EUENOVEwxKHRjX3BvcnQpKTsKPiArICAgICAg
ICAgICAgICAgdmFsICY9IH4oREtMX1RYX1BSRVNIT09UX0NPRUZGX01BU0sgfAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICBES0xfVFhfREVfRU1QQUhTSVNfQ09FRkZfTUFTSyB8Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgIERLTF9UWF9WU1dJTkdfQ09OVFJPTF9NQVNLKTsKPiArICAgICAg
ICAgICAgICAgdmFsIHw9IERLTF9UWF9WU1dJTkdfQ09OVFJPTChkZGlfdHJhbnNsYXRpb25zW2xl
dmVsXS5ka2xfdnN3aW5nX2NvbnRyb2wpOwo+ICsgICAgICAgICAgICAgICB2YWwgfD0gREtMX1RY
X0RFX0VNUEhBU0lTX0NPRUZGKGRkaV90cmFuc2xhdGlvbnNbbGV2ZWxdLmRrbF9kZV9lbXBoYXNp
c19jb250cm9sKTsKPiArICAgICAgICAgICAgICAgdmFsIHw9IERLTF9UWF9QUkVTSE9PVF9DT0VG
RihkZGlfdHJhbnNsYXRpb25zW2xldmVsXS5ka2xfcHJlc2hvb3RfY29udHJvbCk7Cj4gKyAgICAg
ICAgICAgICAgIEk5MTVfV1JJVEUoREtMX1RYX0RQQ05UTDEodGNfcG9ydCksIHZhbCk7Cj4gKwo+
ICsgICAgICAgICAgICAgICB2YWwgPSBJOTE1X1JFQUQoREtMX1RYX0RQQ05UTDIodGNfcG9ydCkp
Owo+ICsgICAgICAgICAgICAgICB2YWwgJj0gfkRLTF9UWF9EUDIwQklUTU9ERTsKPiArICAgICAg
ICAgICAgICAgSTkxNV9XUklURShES0xfVFhfRFBDTlRMMih0Y19wb3J0KSwgdmFsKTsKPiArICAg
ICAgIH0KPiArfQo+ICsKPiArc3RhdGljIHZvaWQgdGdsX2RkaV92c3dpbmdfc2VxdWVuY2Uoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCgppbnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKCkg
aXMgbm90IGNhbGxpbmcgdGhpcyBmdW5jdGlvbi4KCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaW50IGxpbmtfY2xvY2ssCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdTMyIGxldmVsLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGVudW0gaW50ZWxfb3V0cHV0X3R5cGUgdHlwZSkKPiArewo+ICsgICAgICAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4gKyAg
ICAgICBlbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+
cG9ydCk7Cj4gKwo+ICsgICAgICAgaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5
KSkKPiArICAgICAgICAgICAgICAgaWNsX2NvbWJvX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKGVu
Y29kZXIsIGxldmVsLCB0eXBlKTsKPiArICAgICAgIGVsc2UKPiArICAgICAgICAgICAgICAgdGds
X2RrbF9waHlfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBsaW5rX2Nsb2NrLCBsZXZlbCk7
Cj4gK30KPiArCj4gIHN0YXRpYyB1MzIgdHJhbnNsYXRlX3NpZ25hbF9sZXZlbChpbnQgc2lnbmFs
X2xldmVscykKPiAgewo+ICAgICAgICAgaW50IGk7Cj4gQEAgLTI3ODAsNyArMjg2NywxMCBAQCB1
MzIgYnh0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiAgICAgICAg
IHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmRwb3J0LT5iYXNlOwo+ICAgICAgICAg
aW50IGxldmVsID0gaW50ZWxfZGRpX2RwX2xldmVsKGludGVsX2RwKTsKPgo+IC0gICAgICAgaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gKyAgICAgICBpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikKPiArICAgICAgICAgICAgICAgdGdsX2RkaV92c3dpbmdfc2VxdWVuY2UoZW5j
b2RlciwgaW50ZWxfZHAtPmxpbmtfcmF0ZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgbGV2ZWwsIGVuY29kZXItPnR5cGUpOwo+ICsgICAgICAgZWxzZSBpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiAgICAgICAgICAgICAgICAgaWNsX2RkaV92c3dpbmdf
c2VxdWVuY2UoZW5jb2RlciwgaW50ZWxfZHAtPmxpbmtfcmF0ZSwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgbGV2ZWwsIGVuY29kZXItPnR5cGUpOwo+ICAgICAgICAg
ZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpCj4gQEAgLTMwMjcsNiArMzExNywzNCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfY2xrX2Rpc2FibGUoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIpCj4gICAgICAgICB9Cj4gIH0KPgo+ICtzdGF0aWMgdm9pZAo+ICt0Z2xfcGh5X2Ns
b2NrX2dhdGluZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwgYm9vbCBlbmFi
bGUpCgpzYW1lIGNvbW1lbnQgYXMgb3RoZXIgY29tbWl0Li4uIHRnbF9waHlfc2V0X2Nsb2NrX2dh
dGluZygpID8KCj4gK3sKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+ICsgICAgICAgZW51bSBwb3J0
IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5wb3J0Owo+ICsgICAgICAgZW51bSB0Y19wb3J0IHRjX3Bv
cnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBwb3J0KTsKPiArICAgICAgIHUzMiB2YWws
IHJlZ3M7CgpzL3JlZ3MvYml0cy8KCj4gKyAgICAgICBpbnQgbG47Cj4gKwo+ICsgICAgICAgaWYg
KHRjX3BvcnQgPT0gUE9SVF9UQ19OT05FKQo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKwo+
ICsgICAgICAgcmVncyA9IERLTF9EUF9NT0RFX0NGR19UUjJQV1JfR0FUSU5HIHwgREtMX0RQX01P
REVfQ0ZHX1RSUFdSX0dBVElORyB8Cj4gKyAgICAgICAgICAgICAgREtMX0RQX01PREVfQ0ZHX0NM
TlBXUl9HQVRJTkcgfCBES0xfRFBfTU9ERV9DRkdfRElHUFdSX0dBVElORyB8Cj4gKyAgICAgICAg
ICAgICAgREtMX0RQX01PREVfQ0ZHX0dBT05QV1JfR0FUSU5HOwo+ICsKPiArICAgICAgIGZvciAo
bG4gPSAwOyBsbiA8IDI7IGxuKyspIHsKPiArICAgICAgICAgICAgICAgSTkxNV9XUklURShISVBf
SU5ERVhfUkVHKHRjX3BvcnQpLCBISVBfSU5ERVhfVkFMKHRjX3BvcnQsIGxuKSk7Cj4gKwo+ICsg
ICAgICAgICAgICAgICB2YWwgPSBJOTE1X1JFQUQoREtMX0RQX01PREUodGNfcG9ydCkpOwo+ICsg
ICAgICAgICAgICAgICBpZiAoZW5hYmxlKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHZhbCB8
PSByZWdzOwo+ICsgICAgICAgICAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
dmFsICY9IH5yZWdzOwo+ICsgICAgICAgICAgICAgICBJOTE1X1dSSVRFKERLTF9EUF9NT0RFKHRj
X3BvcnQpLCB2YWwpOwo+ICsgICAgICAgfQo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBpY2xfZW5h
YmxlX3BoeV9jbG9ja19nYXRpbmcoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
Cj4gIHsKPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+IEBAIC0zMTUzLDYgKzMyNzEsOTUgQEAgc3Rh
dGljIHZvaWQgaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICppbnRlbF9kaWdfcG9ydCkKPiAgICAgICAgIEk5MTVfV1JJVEUoTUdfRFBfTU9ERSgxLCBwb3J0
KSwgbG4xKTsKPiAgfQo+Cj4gK3N0YXRpYyB2b2lkIHRnbF9wcm9ncmFtX2RrbF9kcF9tb2RlKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQo+ICt7Cj4gKyAgICAgICBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGludGVsX2RpZ19wb3J0
LT5iYXNlLmJhc2UuZGV2KTsKPiArICAgICAgIGVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3Bv
cnQtPmJhc2UucG9ydDsKPiArICAgICAgIGVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9y
dF90b190YyhkZXZfcHJpdiwgcG9ydCk7Cj4gKyAgICAgICB1MzIgbG4wLCBsbjEsIGxhbmVfbWFz
aywgcGluX21hc2s7Cj4gKyAgICAgICBpbnQgbnVtX2xhbmVzOwo+ICsKPiArICAgICAgIGlmICh0
Y19wb3J0ID09IFBPUlRfVENfTk9ORSB8fAo+ICsgICAgICAgICAgIGludGVsX2RpZ19wb3J0LT50
Y19tb2RlID09IFRDX1BPUlRfVEJUX0FMVCkKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsK
PiArICAgICAgIEk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0Y19wb3J0KSwgSElQX0lOREVYX1ZB
TCh0Y19wb3J0LCAweDApKTsKPiArICAgICAgIGxuMCA9IEk5MTVfUkVBRChES0xfRFBfTU9ERSh0
Y19wb3J0KSk7Cj4gKyAgICAgICBJOTE1X1dSSVRFKEhJUF9JTkRFWF9SRUcodGNfcG9ydCksIEhJ
UF9JTkRFWF9WQUwodGNfcG9ydCwgMHgxKSk7Cj4gKyAgICAgICBsbjEgPSBJOTE1X1JFQUQoREtM
X0RQX01PREUodGNfcG9ydCkpOwo+ICsKPiArICAgICAgIG51bV9sYW5lcyA9IGludGVsX2RpZ19w
b3J0LT5kcC5sYW5lX2NvdW50Owo+ICsKPiArICAgICAgIHN3aXRjaCAoaW50ZWxfZGlnX3BvcnQt
PnRjX21vZGUpIHsKPiArICAgICAgIGNhc2UgVENfUE9SVF9EUF9BTFQ6Cj4gKyAgICAgICAgICAg
ICAgIGxuMCAmPSB+KERLTF9EUF9NT0RFX0NGR19EUF9YMV9NT0RFIHwgREtMX0RQX01PREVfQ0ZH
X0RQX1gxX01PREUpOwo+ICsgICAgICAgICAgICAgICBsbjEgJj0gfihES0xfRFBfTU9ERV9DRkdf
RFBfWDFfTU9ERSB8IERLTF9EUF9NT0RFX0NGR19EUF9YMl9NT0RFKTsKPiArCj4gKyAgICAgICAg
ICAgICAgIGxhbmVfbWFzayA9IGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhpbnRlbF9kaWdf
cG9ydCk7IC8qIERQWDRUWExBVEMgKi8KPiArICAgICAgICAgICAgICAgcGluX21hc2sgPSBpbnRl
bF90Y19wb3J0X2dldF9waW5fYXNzaWdubWVudF9tYXNrKGludGVsX2RpZ19wb3J0KTsgLyogRFBQ
QVRDICovCj4gKwo+ICsgICAgICAgICAgICAgICBzd2l0Y2ggKHBpbl9tYXNrKSB7Cj4gKyAgICAg
ICAgICAgICAgIGNhc2UgMHgwOgo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChudW1fbGFu
ZXMgPT0gMSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG4xIHw9IERLTF9E
UF9NT0RFX0NGR19EUF9YMV9NT0RFOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0gZWxzZSB7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjAgfD0gREtMX0RQX01PREVfQ0ZH
X0RQX1gyX01PREU7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjEgfD0gREtM
X0RQX01PREVfQ0ZHX0RQX1gyX01PREU7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgICAgICAgICBjYXNlIDB4MToK
PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAobnVtX2xhbmVzID09IDQpIHsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGxuMCB8PSBES0xfRFBfTU9ERV9DRkdfRFBfWDJfTU9E
RTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxuMSB8PSBES0xfRFBfTU9ERV9D
RkdfRFBfWDJfTU9ERTsKPiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICAgICAgICAgIGNhc2UgMHgyOgo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGlmIChudW1fbGFuZXMgPT0gMikgewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgbG4wIHw9IERLTF9EUF9NT0RFX0NGR19EUF9YMl9NT0RFOwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgbG4xIHw9IERLTF9EUF9NT0RFX0NGR19EUF9YMl9N
T0RFOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgICAgICAg
ICBicmVhazsKPiArICAgICAgICAgICAgICAgY2FzZSAweDM6Cj4gKyAgICAgICAgICAgICAgIGNh
c2UgMHg1Ogo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChudW1fbGFuZXMgPT0gMSkgewo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG4wIHw9IERLTF9EUF9NT0RFX0NGR19E
UF9YMV9NT0RFOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG4xIHw9IERLTF9E
UF9NT0RFX0NGR19EUF9YMV9NT0RFOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0gZWxzZSB7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjAgfD0gREtMX0RQX01PREVfQ0ZH
X0RQX1gyX01PREU7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjEgfD0gREtM
X0RQX01PREVfQ0ZHX0RQX1gyX01PREU7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgICAgICAgICBjYXNlIDB4NDoK
PiArICAgICAgICAgICAgICAgY2FzZSAweDY6Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYg
KG51bV9sYW5lcyA9PSAxKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsbjAg
fD0gREtMX0RQX01PREVfQ0ZHX0RQX1gxX01PREU7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBsbjEgfD0gREtMX0RQX01PREVfQ0ZHX0RQX1gxX01PREU7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxu
MCB8PSBES0xfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGxuMSB8PSBES0xfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsKPiArICAgICAgICAg
ICAgICAgICAgICAgICB9Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAg
ICAgICAgICAgIGRlZmF1bHQ6Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgTUlTU0lOR19DQVNF
KGxhbmVfbWFzayk7Cj4gKyAgICAgICAgICAgICAgIH0KPiArICAgICAgICAgICAgICAgYnJlYWs7
Cj4gKwo+ICsgICAgICAgY2FzZSBUQ19QT1JUX0xFR0FDWToKPiArICAgICAgICAgICAgICAgbG4w
IHw9IERLTF9EUF9NT0RFX0NGR19EUF9YMV9NT0RFIHwgREtMX0RQX01PREVfQ0ZHX0RQX1gyX01P
REU7Cj4gKyAgICAgICAgICAgICAgIGxuMSB8PSBES0xfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERSB8
IERLTF9EUF9NT0RFX0NGR19EUF9YMl9NT0RFOwo+ICsgICAgICAgICAgICAgICBicmVhazsKPiAr
Cj4gKyAgICAgICBkZWZhdWx0Ogo+ICsgICAgICAgICAgICAgICBNSVNTSU5HX0NBU0UoaW50ZWxf
ZGlnX3BvcnQtPnRjX21vZGUpOwo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9
Cj4gKwo+ICsgICAgICAgSTkxNV9XUklURShISVBfSU5ERVhfUkVHKHRjX3BvcnQpLCBISVBfSU5E
RVhfVkFMKHRjX3BvcnQsIDB4MCkpOwo+ICsgICAgICAgSTkxNV9XUklURShES0xfRFBfTU9ERSh0
Y19wb3J0KSwgbG4wKTsKPiArICAgICAgIEk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0Y19wb3J0
KSwgSElQX0lOREVYX1ZBTCh0Y19wb3J0LCAweDEpKTsKPiArICAgICAgIEk5MTVfV1JJVEUoREtM
X0RQX01PREUodGNfcG9ydCksIGxuMSk7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIGludGVsX2Rw
X3Npbmtfc2V0X2ZlY19yZWFkeShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKPiAgewo+IEBAIC0zMjM5LDcgKzM0NDYsNyBAQCBzdGF0aWMgdm9p
ZCB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRpZ19wb3J0LT5kZGlfaW9f
cG93ZXJfZG9tYWluKTsKPgo+ICAgICAgICAgLyogNi4gKi8KPiAtICAgICAgIGljbF9wcm9ncmFt
X21nX2RwX21vZGUoZGlnX3BvcnQpOwo+ICsgICAgICAgdGdsX3Byb2dyYW1fZGtsX2RwX21vZGUo
ZGlnX3BvcnQpOwo+Cj4gICAgICAgICAvKgo+ICAgICAgICAgICogNy5hIC0gU3RlcHMgaW4gdGhp
cyBmdW5jdGlvbiBzaG91bGQgb25seSBiZSBleGVjdXRlZCBvdmVyIE1TVAo+IEBAIC0zMjUyLDEw
ICszNDU5LDEwIEBAIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgICAgICAgIGludGVsX2RkaV9jb25maWdfdHJhbnNjb2Rl
cl9mdW5jKGNydGNfc3RhdGUpOwo+Cj4gICAgICAgICAvKiA3LmQgKi8KPiAtICAgICAgIGljbF9k
aXNhYmxlX3BoeV9jbG9ja19nYXRpbmcoZGlnX3BvcnQpOwo+ICsgICAgICAgdGdsX3BoeV9jbG9j
a19nYXRpbmcoZGlnX3BvcnQsIGZhbHNlKTsKPgo+ICAgICAgICAgLyogNy5lICovCj4gLSAgICAg
ICBpY2xfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBjcnRjX3N0YXRlLT5wb3J0X2Nsb2Nr
LCBsZXZlbCwKPiArICAgICAgIHRnbF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGNydGNf
c3RhdGUtPnBvcnRfY2xvY2ssIGxldmVsLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZW5jb2Rlci0+dHlwZSk7Cj4KPiAgICAgICAgIC8qIDcuZiAqLwo+IEBAIC0zMjg3LDYgKzM0
OTQsMTUgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAo+ICAgICAgICAgLyogNy5rICovCj4gICAgICAgICBpbnRlbF9kcF9z
dG9wX2xpbmtfdHJhaW4oaW50ZWxfZHApOwo+Cj4gKyAgICAgICAvKgo+ICsgICAgICAgICogVE9E
TzogZW5hYmxlIGNsb2NrIGdhdGluZwo+ICsgICAgICAgICoKPiArICAgICAgICAqIEl0IGlzIG5v
dCB3cml0dGVuIGluIERQIGVuYWJsaW5nIHNlcXVlbmNlIGJ1dCAiUEhZIENsb2NrZ2F0aW5nCgp0
eXBvCgo+ICsgICAgICAgICogcHJvZ3JhbW1pbmciIHN0YXRlcyB0aGF0IGNsb2NrIGdhdGluZyBz
aG91bGQgYmUgZW5hYmxlZCBhZnRlciB0aGUKPiArICAgICAgICAqIGxpbmsgdHJhaW5pbmcgYnV0
IGRvaW5nIHNvIGNhdXNlcyBhbGwgdGhlIGZvbGxvd2luZyB0cmFpbmluZ3MgdG8gZmFpbAoKdHlw
bwoKCkx1Y2FzIERlIE1hcmNoaQoKPiArICAgICAgICAqIHNvIG5vdCBlbmFibGluZyBpdCBmb3Iu
Cj4gKyAgICAgICAgKi8KPiArCj4gICAgICAgICAvKiA3LmwgKi8KPiAgICAgICAgIGludGVsX2Rk
aV9lbmFibGVfZmVjKGVuY29kZXIsIGNydGNfc3RhdGUpOwo+ICAgICAgICAgaW50ZWxfZHNjX2Vu
YWJsZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPiBAQCAtMzM5Miw3ICszNjA4LDEwIEBAIHN0YXRp
YyB2b2lkIGludGVsX2RkaV9wcmVfZW5hYmxlX2hkbWkoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCj4gICAgICAgICBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwgZGlnX3Bv
cnQtPmRkaV9pb19wb3dlcl9kb21haW4pOwo+Cj4gICAgICAgICBpY2xfcHJvZ3JhbV9tZ19kcF9t
b2RlKGRpZ19wb3J0KTsKPiAtICAgICAgIGljbF9kaXNhYmxlX3BoeV9jbG9ja19nYXRpbmcoZGln
X3BvcnQpOwo+ICsgICAgICAgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gKyAgICAg
ICAgICAgICAgIHRnbF9waHlfY2xvY2tfZ2F0aW5nKGRpZ19wb3J0LCBmYWxzZSk7Cj4gKyAgICAg
ICBlbHNlCj4gKyAgICAgICAgICAgICAgIGljbF9kaXNhYmxlX3BoeV9jbG9ja19nYXRpbmcoZGln
X3BvcnQpOwo+Cj4gICAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiAgICAg
ICAgICAgICAgICAgaWNsX2RkaV92c3dpbmdfc2VxdWVuY2UoZW5jb2RlciwgY3J0Y19zdGF0ZS0+
cG9ydF9jbG9jaywKPiBAQCAtMzQwNCw3ICszNjIzLDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2Rk
aV9wcmVfZW5hYmxlX2hkbWkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gICAgICAg
ICBlbHNlCj4gICAgICAgICAgICAgICAgIGludGVsX3ByZXBhcmVfaGRtaV9kZGlfYnVmZmVycyhl
bmNvZGVyLCBsZXZlbCk7Cj4KPiAtICAgICAgIGljbF9lbmFibGVfcGh5X2Nsb2NrX2dhdGluZyhk
aWdfcG9ydCk7Cj4gKyAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiArICAg
ICAgICAgICAgICAgdGdsX3BoeV9jbG9ja19nYXRpbmcoZGlnX3BvcnQsIHRydWUpOwo+ICsgICAg
ICAgZWxzZQo+ICsgICAgICAgICAgICAgICBpY2xfZW5hYmxlX3BoeV9jbG9ja19nYXRpbmcoZGln
X3BvcnQpOwo+Cj4gICAgICAgICBpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikpCj4gICAgICAgICAg
ICAgICAgIHNrbF9kZGlfc2V0X2lib29zdChlbmNvZGVyLCBsZXZlbCwgSU5URUxfT1VUUFVUX0hE
TUkpOwo+IC0tCj4gMi4yMy4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKCgoKLS0gCkx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

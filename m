Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1BFA68B9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 14:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540A089350;
	Tue,  3 Sep 2019 12:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7521489332;
 Tue,  3 Sep 2019 12:42:25 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id r17so8303927vso.1;
 Tue, 03 Sep 2019 05:42:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k9kNeZ2w89HLRBVDRHH28inPgPZ2lARbHj1yoCdhGd4=;
 b=LbRbUa45TL8TIeHltQD3+nqiR33PKeULFv0dcZEg5BG7W30hv3+BVE5zBAzYPjryru
 Ct6yvhqfdLuruxCq5D5F5lJS8R/0IRHPe52L4+VgFyaEfaNFMRoHlPo82BldxUfmjXH/
 FHy+Dt0NpTbhb54xmbGqx8Frrz/kk4Ml5b12u2uYVPkiFts/qDwB/RpoYFYsg9WhA/Sc
 mpMS9w8DF+P3F3ONb0VeIjjQsbgrnkP3T1jQH5kxbY9VfXEPqjjYBZIK/B6vW45CApHW
 9MLmVOKEHGpcy6/e8tK23F1sQPjekOJ0xpTfjhUbKAWSOiMKV9Lwpdbx4DVd5kjp2pkp
 DtCg==
X-Gm-Message-State: APjAAAX0j3TfmOlION8waPZkzy/B56N0m/s1jilLdn6GZkJ8WzA5SZd4
 r5magbxZtZFCSwADw2CsjLarLhKvuaDHEOyG88s=
X-Google-Smtp-Source: APXvYqzKwIdnqfSfr2UnznWdOQWPIH6rL2KoR18mn/QuNTpDrG+kL3KlFv2r26VuYP9vxntB0b5k/eC+zNcoCsPxfQM=
X-Received: by 2002:a67:a60c:: with SMTP id p12mr13323305vse.207.1567514544364; 
 Tue, 03 Sep 2019 05:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190903091235.32304-1-gwan-gyeong.mun@intel.com>
 <20190903091235.32304-4-gwan-gyeong.mun@intel.com>
In-Reply-To: <20190903091235.32304-4-gwan-gyeong.mun@intel.com>
From: Ilia Mirkin <imirkin@alum.mit.edu>
Date: Tue, 3 Sep 2019 08:42:12 -0400
Message-ID: <CAKb7Uvi4aO-im=cBi_xy8QoDhUXsJmuxcL8ewOrMvFbky9Je0g@mail.gmail.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 3/7] drm: Add DisplayPort colorspace
 property
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U28gaG93IHdvdWxkIHRoaXMgd29yayB3aXRoIGEgRFArKyBjb25uZWN0b3I/IFNob3VsZCBpdCBs
aXN0IHRoZSBIRE1JCm9yIERQIHByb3BlcnRpZXM/IE9yIGRvIHdlIG5lZWQgYSBjdXN0b20gcHJv
cGVydHkgY2hlY2tlciB3aGljaCBpcwphd2FyZSBvZiB3aGF0IGlzIGN1cnJlbnRseSBwbHVnZ2Vk
IGluIHRvIHZhbGlkYXRlIHRoZSB2YWx1ZXM/CgpPbiBUdWUsIFNlcCAzLCAyMDE5IGF0IDU6MTIg
QU0gR3dhbi1neWVvbmcgTXVuCjxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPiB3cm90ZToKPgo+
IEluIG9yZGVyIHRvIHVzZSBjb2xvcnNwYWNlIHByb3BlcnR5IHRvIERpc3BsYXkgUG9ydCBjb25u
ZWN0b3JzLCBpdCBleHRlbmRzCj4gRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0IGNvbm5l
Y3Rvcl90eXBlIG9uCj4gZHJtX21vZGVfY3JlYXRlX2NvbG9yc3BhY2VfcHJvcGVydHkgZnVuY3Rp
b24uCj4KPiB2MzogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBmcm9tIFZpbGxlCj4gICAgIC0g
QWRkIG5ldyBjb2xvcmltZXRyeSBvcHRpb25zIGZvciBEUCAxLjRhIHNwZWMuCj4gICAgIC0gU2Vw
YXJhdGUgc2V0IG9mIGNvbG9yaW1ldHJ5IGVudW0gdmFsdWVzIGZvciBEUC4KPiB2NDogQWRkIGFk
ZGl0aW9uYWwgY29tbWVudHMgdG8gc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdC4KPiAgICAgUG9s
aXNoaW5nIGFuIGVudW0gc3RyaW5nIG9mIHN0cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QKPiBTaWdu
ZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Cj4g
UmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgfCA0NiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiAgaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oICAgICB8ICA4ICsr
KysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9j
b25uZWN0b3IuYwo+IGluZGV4IDRjNzY2NjI0YjIwZC4uNTgzNGU2ZDMzMGEwIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX2Nvbm5lY3Rvci5jCj4gQEAgLTg4Miw2ICs4ODIsNDQgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgaGRtaV9jb2xvcnNwYWNlc1tdID0gewo+ICAgICAgICAg
eyBEUk1fTU9ERV9DT0xPUklNRVRSWV9EQ0lfUDNfUkdCX1RIRUFURVIsICJEQ0ktUDNfUkdCX1Ro
ZWF0ZXIiIH0sCj4gIH07Cj4KPiArLyoKPiArICogQXMgcGVyIERQIDEuNGEgc3BlYywgMi4yLjUu
Ny41IFZTQyBTRFAgUGF5bG9hZCBmb3IgUGl4ZWwgRW5jb2RpbmcvQ29sb3JpbWV0cnkKPiArICog
Rm9ybWF0IFRhYmxlIDItMTIwCj4gKyAqLwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9w
X2VudW1fbGlzdCBkcF9jb2xvcnNwYWNlc1tdID0gewo+ICsgICAgICAgLyogRm9yIERlZmF1bHQg
Y2FzZSwgZHJpdmVyIHdpbGwgc2V0IHRoZSBjb2xvcnNwYWNlICovCj4gKyAgICAgICB7IERSTV9N
T0RFX0NPTE9SSU1FVFJZX0RFRkFVTFQsICJEZWZhdWx0IiB9LAo+ICsgICAgICAgLyogQ29sb3Jp
bWV0cnkgYmFzZWQgb24gSUVDIDYxOTY2LTItMSAqLwo+ICsgICAgICAgeyBEUk1fTU9ERV9DT0xP
UklNRVRSWV9TUkdCLCAic1JHQiIgfSwKPiArICAgICAgIHsgRFJNX01PREVfQ09MT1JJTUVUUllf
V0lERV9HQU1VVF9GSVhFRF9QT0lOVF9SR0IsICJ3aWRlX2dhbXV0X2ZpeGVkX3BvaW50X1JHQiIg
fSwKPiArICAgICAgIC8qIENvbG9yaW1ldHJ5IGJhc2VkIG9uIElFQyA2MTk2Ni0yLTIsIHdpZGUg
Z2FtdXQgZmxvYXRpbmcgcG9pbnQgUkdCICovCj4gKyAgICAgICB7IERSTV9NT0RFX0NPTE9SSU1F
VFJZX1NDUkdCLCAic2NSR0IiIH0sCj4gKyAgICAgICB7IERSTV9NT0RFX0NPTE9SSU1FVFJZX0FE
T0JFX1JHQiwgIkFkb2JlX1JHQiIgfSwKPiArICAgICAgIC8qIENvbG9yaW1ldHJ5IGJhc2VkIG9u
IFNNUFRFIFJQIDQzMS0yICovCj4gKyAgICAgICB7IERSTV9NT0RFX0NPTE9SSU1FVFJZX0RDUF9Q
M19SR0IsICJEQ0ktUDNfUkdCIiB9LAo+ICsgICAgICAgLyogQ29sb3JpbWV0cnkgYmFzZWQgb24g
SVRVLVIgQlQuMjAyMCAqLwo+ICsgICAgICAgeyBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIwMjBf
UkdCLCAiQlQyMDIwX1JHQiIgfSwKPiArICAgICAgIHsgRFJNX01PREVfQ09MT1JJTUVUUllfQlQ2
MDFfWUNDLCAiQlQ2MDFfWUNDIiB9LAo+ICsgICAgICAgeyBEUk1fTU9ERV9DT0xPUklNRVRSWV9C
VDcwOV9ZQ0MsICJCVDcwOV9ZQ0MiIH0sCj4gKyAgICAgICAvKiBTdGFuZGFyZCBEZWZpbml0aW9u
IENvbG9yaW1ldHJ5IGJhc2VkIG9uIElFQyA2MTk2Ni0yLTQgKi8KPiArICAgICAgIHsgRFJNX01P
REVfQ09MT1JJTUVUUllfWFZZQ0NfNjAxLCAiWFZZQ0NfNjAxIiB9LAo+ICsgICAgICAgLyogSGln
aCBEZWZpbml0aW9uIENvbG9yaW1ldHJ5IGJhc2VkIG9uIElFQyA2MTk2Ni0yLTQgKi8KPiArICAg
ICAgIHsgRFJNX01PREVfQ09MT1JJTUVUUllfWFZZQ0NfNzA5LCAiWFZZQ0NfNzA5IiB9LAo+ICsg
ICAgICAgLyogQ29sb3JpbWV0cnkgYmFzZWQgb24gSUVDIDYxOTY2LTItMS9BbWVuZG1lbnQgMSAq
Lwo+ICsgICAgICAgeyBEUk1fTU9ERV9DT0xPUklNRVRSWV9TWUNDXzYwMSwgIlNZQ0NfNjAxIiB9
LAo+ICsgICAgICAgLyogQ29sb3JpbWV0cnkgYmFzZWQgb24gSUVDIDYxOTY2LTItNSBbMzNdICov
Cj4gKyAgICAgICB7IERSTV9NT0RFX0NPTE9SSU1FVFJZX09QWUNDXzYwMSwgIm9wWUNDXzYwMSIg
fSwKPiArICAgICAgIC8qIENvbG9yaW1ldHJ5IGJhc2VkIG9uIElUVS1SIEJULjIwMjAgKi8KPiAr
ICAgICAgIHsgRFJNX01PREVfQ09MT1JJTUVUUllfQlQyMDIwX0NZQ0MsICJCVDIwMjBfQ1lDQyIg
fSwKPiArICAgICAgIC8qIENvbG9yaW1ldHJ5IGJhc2VkIG9uIElUVS1SIEJULjIwMjAgKi8KPiAr
ICAgICAgIHsgRFJNX01PREVfQ09MT1JJTUVUUllfQlQyMDIwX1lDQywgIkJUMjAyMF9ZQ0MiIH0s
Cj4gKyAgICAgICAvKgo+ICsgICAgICAgICogQ29sb3J1bWV0cnkgYmFzZWQgb24gRGlnaXRhbCBJ
bWFnaW5nIGFuZCBDb21tdW5pY2F0aW9ucyBpbiBNZWRpY2luZQo+ICsgICAgICAgICogKERJQ09N
KSBQYXJ0IDE0OiBHcmF5c2NhbGUgU3RhbmRhcmQgRGlzcGxheSBGdW5jdGlvbgo+ICsgICAgICAg
ICovCj4gKyAgICAgICB7IERSTV9NT0RFX0NPTE9SSU1FVFJZX0RJQ09NX1BBUlRfMTRfR1JBWVND
QUxFLCAiRElDT01fUGFydF8xNF9HcmF5c2NhbGUiIH0sCj4gK307Cj4gKwo+ICAvKioKPiAgICog
RE9DOiBzdGFuZGFyZCBjb25uZWN0b3IgcHJvcGVydGllcwo+ICAgKgo+IEBAIC0xNzEwLDYgKzE3
NDgsMTQgQEAgaW50IGRybV9tb2RlX2NyZWF0ZV9jb2xvcnNwYWNlX3Byb3BlcnR5KHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgQVJSQVlfU0laRShoZG1pX2NvbG9yc3BhY2VzKSk7Cj4gICAgICAg
ICAgICAgICAgIGlmICghcHJvcCkKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVO
T01FTTsKPiArICAgICAgIH0gZWxzZSBpZiAoY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBE
Uk1fTU9ERV9DT05ORUNUT1JfRGlzcGxheVBvcnQgfHwKPiArICAgICAgICAgICAgICAgICAgY29u
bmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfZURQKSB7Cj4gKyAg
ICAgICAgICAgICAgIHByb3AgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2VudW0oZGV2LCBEUk1fTU9E
RV9QUk9QX0VOVU0sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIkNvbG9yc3BhY2UiLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGRwX2NvbG9yc3BhY2VzLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIEFSUkFZX1NJWkUoZHBfY29sb3JzcGFjZXMpKTsKPiArICAg
ICAgICAgICAgICAgaWYgKCFwcm9wKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAt
RU5PTUVNOwo+ICAgICAgICAgfSBlbHNlIHsKPiAgICAgICAgICAgICAgICAgRFJNX0RFQlVHX0tN
UygiQ29sb3JzcGFjZSBwcm9wZXJ0eSBub3Qgc3VwcG9ydGVkXG4iKTsKPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIDA7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCBi
L2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAo+IGluZGV4IDY4MWNiNTkwZjk1Mi4uODg0OGU1
ZDZiMGM0IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAo+ICsrKyBi
L2luY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaAo+IEBAIC0yODEsNiArMjgxLDE0IEBAIGVudW0g
ZHJtX3BhbmVsX29yaWVudGF0aW9uIHsKPiAgLyogQWRkaXRpb25hbCBDb2xvcmltZXRyeSBleHRl
bnNpb24gYWRkZWQgYXMgcGFydCBvZiBDVEEgODYxLkcgKi8KPiAgI2RlZmluZSBEUk1fTU9ERV9D
T0xPUklNRVRSWV9EQ0lfUDNfUkdCX0Q2NSAgICAgICAgICAgIDExCj4gICNkZWZpbmUgRFJNX01P
REVfQ09MT1JJTUVUUllfRENJX1AzX1JHQl9USEVBVEVSICAgICAgICAgICAgICAgIDEyCj4gKy8q
IEFkZGl0aW9uYWwgQ29sb3JpbWV0cnkgT3B0aW9ucyBhZGRlZCBmb3IgRFAgMS40YSBWU0MgQ29s
b3JpbWV0cnkgRm9ybWF0ICovCj4gKyNkZWZpbmUgRFJNX01PREVfQ09MT1JJTUVUUllfU1JHQiAg
ICAgICAgICAgICAgICAgICAgICAxMwo+ICsjZGVmaW5lIERSTV9NT0RFX0NPTE9SSU1FVFJZX1dJ
REVfR0FNVVRfRklYRURfUE9JTlRfUkdCICAgICAgICAxNAo+ICsjZGVmaW5lIERSTV9NT0RFX0NP
TE9SSU1FVFJZX1NDUkdCICAgICAgICAgICAgICAgICAgICAgMTUKPiArI2RlZmluZSBEUk1fTU9E
RV9DT0xPUklNRVRSWV9BRE9CRV9SR0IgICAgICAgICAgICAgICAgIDE2Cj4gKyNkZWZpbmUgRFJN
X01PREVfQ09MT1JJTUVUUllfRENQX1AzX1JHQiAgICAgICAgICAgICAgICAgICAgICAgIDE3Cj4g
KyNkZWZpbmUgRFJNX01PREVfQ09MT1JJTUVUUllfQlQ2MDFfWUNDICAgICAgICAgICAgICAgICAx
OAo+ICsjZGVmaW5lIERSTV9NT0RFX0NPTE9SSU1FVFJZX0RJQ09NX1BBUlRfMTRfR1JBWVNDQUxF
ICAgMTkKPgo+ICAvKioKPiAgICogZW51bSBkcm1fYnVzX2ZsYWdzIC0gYnVzX2ZsYWdzIGluZm8g
Zm9yICZkcm1fZGlzcGxheV9pbmZvCj4gLS0KPiAyLjIzLjAKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=

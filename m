Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AA599473
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 15:06:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D68E26EB1D;
	Thu, 22 Aug 2019 13:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 774E36EB1F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 13:06:05 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id w5so7834915edl.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 06:06:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=07vqUH4ndZYddnRjBnKV+Ipar3CiBuW+y0ZedLEL+8I=;
 b=gLLBekFyTAGOz04LXwJQAjUiwydL6yajAkhDBaZ1JNFfsnb4AroxLjAkVEGbHgTKZ4
 LAmwJL4w81kJVSTu2HiC2tx+8bN/7afchOvdf8Uf9cSTH09FWh5XUebFZMR4Qae7QZhr
 xTDv3uB3/uCmucADYquUXt3StmbR+bX+G9kQFJC5GJi+SjUXLRa8nY8fzFM7YJdiuxZ5
 Nnw+/jEXqwzsMYRiddn1T1lfo14uiGrrzyq2yiUOQmFMrdMWOUCH7ecIbqauFgsp/lX6
 oxFVVSWn8feLOJmQ06x45FHDHFZtnKYtQ2uQ8gNP6mncDOLgmCvEuc4ugiBTms5OGWxX
 4+ug==
X-Gm-Message-State: APjAAAWpVqrTgOtkQfcBLMMBewEPPTCjG7BGWGItrQF7zlC6C0rDBTQr
 j9yDxiEwVMTcbJZh+zOnCGElhA==
X-Google-Smtp-Source: APXvYqzbtj0kQg62ys2TQmVM0hoEl5TRF+7C3RqUXuK2sff3NnqeXJ7GaE9YK+uIwvUcz9bGwOMEBw==
X-Received: by 2002:aa7:d695:: with SMTP id d21mr18212089edr.243.1566479163990; 
 Thu, 22 Aug 2019 06:06:03 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id f12sm3565649edw.2.2019.08.22.06.06.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 06:06:02 -0700 (PDT)
Date: Thu, 22 Aug 2019 15:06:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Message-ID: <20190822130600.GU11147@phenom.ffwll.local>
References: <20190821215030.31660-1-daniel.vetter@ffwll.ch>
 <20190822064921.1189-1-daniel.vetter@ffwll.ch>
 <f7275d4a-da84-3992-069c-9d2326c0b39f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f7275d4a-da84-3992-069c-9d2326c0b39f@amd.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=07vqUH4ndZYddnRjBnKV+Ipar3CiBuW+y0ZedLEL+8I=;
 b=eymeN2YJ4hW5Vr+Tmfe0zSTpd3OPmF3tBRs2HyMrQ9xBb7eBto3FZ2l/I/xE8xpR43
 6RjJY4pryvPqaT3eCOYr9TY1x4JGXCQ8+b6PjLXbs01j7y81ZscIJ+XdcYZvhkgndItd
 M3EMZSJjTuqeMSLgbpvDlP+aiyr6bI4UizexY=
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: remove ttm_bo_wait_unreserved
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, "Huang,
 Ray" <Ray.Huang@amd.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDc6NTY6NTZBTSArMDAwMCwgS29lbmlnLCBDaHJpc3Rp
YW4gd3JvdGU6Cj4gQW0gMjIuMDguMTkgdW0gMDg6NDkgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+
ID4gV2l0aCBub3V2ZWF1IGZpeGVkIGFsbCB0dG0tdXNpbmcgZHJpdmVzIGhhdmUgdGhlIGNvcnJl
Y3QgbmVzdGluZyBvZgo+ID4gbW1hcF9zZW0gdnMgZG1hX3Jlc3YsIGFuZCB3ZSBjYW4ganVzdCBs
b2NrIHRoZSBidWZmZXIuCj4gPgo+ID4gQXNzdW1pbmcgSSBkaWRuJ3Qgc2NyZXcgdXAgYW55dGhp
bmcgd2l0aCBteSBhdWRpdCBvZiBjb3Vyc2UuCj4gPgo+ID4gdjI6Cj4gPiAtIERvbnQgZm9yZ2V0
IHd1X211dGV4IChDaHJpc3RpYW4gS8O2bmlnKQo+ID4gLSBLZWVwIHRoZSBtbWFwX3NlbS1sZXNz
IHdhaXQgb3B0aW1pemF0aW9uIChUaG9tYXMpCj4gPiAtIFVzZSBfbG9ja19pbnRlcnJ1cHRpYmxl
IHRvIGJlIGdvb2QgY2l0aXplbnMgKFRob21hcykKPiA+Cj4gPiBSZXZpZXdlZC1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgoKYnR3IEkgcmVhbGl6ZWQgSSBk
aWRuJ3QgcmVtb3ZlIHlvdXIgci1iLCBzaW5jZSB2MSB3YXMgYnJva2VuLgoKRm9yIGZvcm1hbGl0
eSwgY2FuIHlvdSBwbHMgcmVhZmZpcm0sIG9yIHN0aWxsIHNvbWV0aGluZyBicm9rZW4/CgpBbHNv
IGZyb20gdGhlIG90aGVyIHRocmVhZDogUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0
aGVsbHN0cm9tQHZtd2FyZS5jb20+CgpUaGFua3MsIERhbmllbAoKPiA+IFNpZ25lZC1vZmYtYnk6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gQ2M6IENocmlzdGlh
biBLb2VuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IENjOiBIdWFuZyBSdWkgPHJh
eS5odWFuZ0BhbWQuY29tPgo+ID4gQ2M6IEdlcmQgSG9mZm1hbm4gPGtyYXhlbEByZWRoYXQuY29t
Pgo+ID4gQ2M6ICJWTXdhcmUgR3JhcGhpY3MiIDxsaW51eC1ncmFwaGljcy1tYWludGFpbmVyQHZt
d2FyZS5jb20+Cj4gPiBDYzogVGhvbWFzIEhlbGxzdHJvbSA8dGhlbGxzdHJvbUB2bXdhcmUuY29t
Pgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgICAgICB8IDM2IC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3R0bS90
dG1fYm9fdXRpbC5jIHwgIDEgLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5j
ICAgfCAxOCArKysrKy0tLS0tLS0tLS0tCj4gPiAgIGluY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBp
LmggICAgICB8ICA0IC0tLS0KPiA+ICAgNCBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDU0IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9iby5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+ID4gaW5kZXggMjBmZjU2
ZjI3YWE0Li5kMWNlNWQzMTVkNWIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9iby5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4gPiBAQCAt
MTYyLDcgKzE2Miw2IEBAIHN0YXRpYyB2b2lkIHR0bV9ib19yZWxlYXNlX2xpc3Qoc3RydWN0IGty
ZWYgKmxpc3Rfa3JlZikKPiA+ICAgCWRtYV9mZW5jZV9wdXQoYm8tPm1vdmluZyk7Cj4gPiAgIAlp
ZiAoIXR0bV9ib191c2VzX2VtYmVkZGVkX2dlbV9vYmplY3QoYm8pKQo+ID4gICAJCWRtYV9yZXN2
X2ZpbmkoJmJvLT5iYXNlLl9yZXN2KTsKPiA+IC0JbXV0ZXhfZGVzdHJveSgmYm8tPnd1X211dGV4
KTsKPiA+ICAgCWJvLT5kZXN0cm95KGJvKTsKPiA+ICAgCXR0bV9tZW1fZ2xvYmFsX2ZyZWUoYmRl
di0+Z2xvYi0+bWVtX2dsb2IsIGFjY19zaXplKTsKPiA+ICAgfQo+ID4gQEAgLTEzMTksNyArMTMx
OCw2IEBAIGludCB0dG1fYm9faW5pdF9yZXNlcnZlZChzdHJ1Y3QgdHRtX2JvX2RldmljZSAqYmRl
diwKPiA+ICAgCUlOSVRfTElTVF9IRUFEKCZiby0+ZGRlc3Ryb3kpOwo+ID4gICAJSU5JVF9MSVNU
X0hFQUQoJmJvLT5zd2FwKTsKPiA+ICAgCUlOSVRfTElTVF9IRUFEKCZiby0+aW9fcmVzZXJ2ZV9s
cnUpOwo+ID4gLQltdXRleF9pbml0KCZiby0+d3VfbXV0ZXgpOwo+ID4gICAJYm8tPmJkZXYgPSBi
ZGV2Owo+ID4gICAJYm8tPnR5cGUgPSB0eXBlOwo+ID4gICAJYm8tPm51bV9wYWdlcyA9IG51bV9w
YWdlczsKPiA+IEBAIC0xOTU0LDM3ICsxOTUyLDMgQEAgdm9pZCB0dG1fYm9fc3dhcG91dF9hbGwo
c3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYpCj4gPiAgIAkJOwo+ID4gICB9Cj4gPiAgIEVYUE9S
VF9TWU1CT0wodHRtX2JvX3N3YXBvdXRfYWxsKTsKPiA+IC0KPiA+IC0vKioKPiA+IC0gKiB0dG1f
Ym9fd2FpdF91bnJlc2VydmVkIC0gaW50ZXJydXB0aWJsZSB3YWl0IGZvciBhIGJ1ZmZlciBvYmpl
Y3QgdG8gYmVjb21lCj4gPiAtICogdW5yZXNlcnZlZAo+ID4gLSAqCj4gPiAtICogQGJvOiBQb2lu
dGVyIHRvIGJ1ZmZlcgo+ID4gLSAqLwo+ID4gLWludCB0dG1fYm9fd2FpdF91bnJlc2VydmVkKHN0
cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pCj4gPiAtewo+ID4gLQlpbnQgcmV0Owo+ID4gLQo+
ID4gLQkvKgo+ID4gLQkgKiBJbiB0aGUgYWJzZW5zZSBvZiBhIHdhaXRfdW5sb2NrZWQgQVBJLAo+
ID4gLQkgKiBVc2UgdGhlIGJvOjp3dV9tdXRleCB0byBhdm9pZCB0cmlnZ2VyaW5nIGxpdmVsb2Nr
cyBkdWUgdG8KPiA+IC0JICogY29uY3VycmVudCB1c2Ugb2YgdGhpcyBmdW5jdGlvbi4gTm90ZSB0
aGF0IHRoaXMgdXNlIG9mCj4gPiAtCSAqIGJvOjp3dV9tdXRleCBjYW4gZ28gYXdheSBpZiB3ZSBj
aGFuZ2UgbG9ja2luZyBvcmRlciB0bwo+ID4gLQkgKiBtbWFwX3NlbSAtPiBibzo6cmVzZXJ2ZS4K
PiA+IC0JICovCj4gPiAtCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmYm8tPnd1X211
dGV4KTsKPiA+IC0JaWYgKHVubGlrZWx5KHJldCAhPSAwKSkKPiA+IC0JCXJldHVybiAtRVJFU1RB
UlRTWVM7Cj4gPiAtCWlmICghZG1hX3Jlc3ZfaXNfbG9ja2VkKGJvLT5iYXNlLnJlc3YpKQo+ID4g
LQkJZ290byBvdXRfdW5sb2NrOwo+ID4gLQlyZXQgPSBkbWFfcmVzdl9sb2NrX2ludGVycnVwdGli
bGUoYm8tPmJhc2UucmVzdiwgTlVMTCk7Cj4gPiAtCWlmIChyZXQgPT0gLUVJTlRSKQo+ID4gLQkJ
cmV0ID0gLUVSRVNUQVJUU1lTOwo+ID4gLQlpZiAodW5saWtlbHkocmV0ICE9IDApKQo+ID4gLQkJ
Z290byBvdXRfdW5sb2NrOwo+ID4gLQlkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVzdik7Cj4g
PiAtCj4gPiAtb3V0X3VubG9jazoKPiA+IC0JbXV0ZXhfdW5sb2NrKCZiby0+d3VfbXV0ZXgpOwo+
ID4gLQlyZXR1cm4gcmV0Owo+ID4gLX0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dHRtL3R0bV9ib191dGlsLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib191dGlsLmMKPiA+
IGluZGV4IGZlODFjNTY1ZTdlZi4uODJlYTI2YTQ5OTU5IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRt
L3R0bV9ib191dGlsLmMKPiA+IEBAIC01MDgsNyArNTA4LDYgQEAgc3RhdGljIGludCB0dG1fYnVm
ZmVyX29iamVjdF90cmFuc2ZlcihzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+ID4gICAJ
SU5JVF9MSVNUX0hFQUQoJmZiby0+YmFzZS5scnUpOwo+ID4gICAJSU5JVF9MSVNUX0hFQUQoJmZi
by0+YmFzZS5zd2FwKTsKPiA+ICAgCUlOSVRfTElTVF9IRUFEKCZmYm8tPmJhc2UuaW9fcmVzZXJ2
ZV9scnUpOwo+ID4gLQltdXRleF9pbml0KCZmYm8tPmJhc2Uud3VfbXV0ZXgpOwo+ID4gICAJZmJv
LT5iYXNlLm1vdmluZyA9IE5VTEw7Cj4gPiAgIAlkcm1fdm1hX25vZGVfcmVzZXQoJmZiby0+YmFz
ZS5iYXNlLnZtYV9ub2RlKTsKPiA+ICAgCWF0b21pY19zZXQoJmZiby0+YmFzZS5jcHVfd3JpdGVy
cywgMCk7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyBi
L2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3ZtLmMKPiA+IGluZGV4IDc2ZWVkYjk2MzY5My4u
YTYxYTM1ZTU3ZDFjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9f
dm0uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYwo+ID4gQEAgLTEy
NSwzMCArMTI1LDIyIEBAIHN0YXRpYyB2bV9mYXVsdF90IHR0bV9ib192bV9mYXVsdChzdHJ1Y3Qg
dm1fZmF1bHQgKnZtZikKPiA+ICAgCQkmYmRldi0+bWFuW2JvLT5tZW0ubWVtX3R5cGVdOwo+ID4g
ICAJc3RydWN0IHZtX2FyZWFfc3RydWN0IGN2bWE7Cj4gPiAgIAo+ID4gLQkvKgo+ID4gLQkgKiBX
b3JrIGFyb3VuZCBsb2NraW5nIG9yZGVyIHJldmVyc2FsIGluIGZhdWx0IC8gbm9wZm4KPiA+IC0J
ICogYmV0d2VlbiBtbWFwX3NlbSBhbmQgYm9fcmVzZXJ2ZTogUGVyZm9ybSBhIHRyeWxvY2sgb3Bl
cmF0aW9uCj4gPiAtCSAqIGZvciByZXNlcnZlLCBhbmQgaWYgaXQgZmFpbHMsIHJldHJ5IHRoZSBm
YXVsdCBhZnRlciB3YWl0aW5nCj4gPiAtCSAqIGZvciB0aGUgYnVmZmVyIHRvIGJlY29tZSB1bnJl
c2VydmVkLgo+ID4gLQkgKi8KPiA+ICAgCWlmICh1bmxpa2VseSghZG1hX3Jlc3ZfdHJ5bG9jayhi
by0+YmFzZS5yZXN2KSkpIHsKPiA+ICAgCQlpZiAodm1mLT5mbGFncyAmIEZBVUxUX0ZMQUdfQUxM
T1dfUkVUUlkpIHsKPiA+ICAgCQkJaWYgKCEodm1mLT5mbGFncyAmIEZBVUxUX0ZMQUdfUkVUUllf
Tk9XQUlUKSkgewo+IAo+IE5vdCBhbiBleHBlcnQgb24gZmF1bHQgaGFuZGxpbmcsIGJ1dCBzaG91
bGRuJ3QgdGhpcyBub3cgYmUgb25lIGlmPwo+IAo+IEUuZy4gaWYgRkFVTFRfRkxBR19SRVRSWV9O
T1dBSVQgaXMgc2V0IHdlIHNob3VsZCByZXR1cm4gVk1fRkFVTFRfTk9QQUdFIAo+IGluc3RlYWQg
b2YgVk1fRkFVTFRfUkVUUlkuCj4gCj4gQnV0IHJlYWxseSB0YWtlIHRoYXQgd2l0aCBhIGdyYWlu
IG9mIHNhbHQsCj4gQ2hyaXN0aWFuLgo+IAo+ID4gICAJCQkJdHRtX2JvX2dldChibyk7Cj4gPiAg
IAkJCQl1cF9yZWFkKCZ2bWYtPnZtYS0+dm1fbW0tPm1tYXBfc2VtKTsKPiA+IC0JCQkJKHZvaWQp
IHR0bV9ib193YWl0X3VucmVzZXJ2ZWQoYm8pOwo+ID4gKwkJCQlpZiAoIWRtYV9yZXN2X2xvY2tf
aW50ZXJydXB0aWJsZShiby0+YmFzZS5yZXN2LAo+ID4gKwkJCQkJCQkJIE5VTEwpKQo+ID4gKwkJ
CQkJZG1hX3Jlc3ZfdW5sb2NrKGJvLT5iYXNlLnJlc3YpOwo+ID4gICAJCQkJdHRtX2JvX3B1dChi
byk7Cj4gPiAgIAkJCX0KPiA+ICAgCj4gPiAgIAkJCXJldHVybiBWTV9GQVVMVF9SRVRSWTsKPiA+
ICAgCQl9Cj4gPiAgIAo+ID4gLQkJLyoKPiA+IC0JCSAqIElmIHdlJ2Qgd2FudCB0byBjaGFuZ2Ug
bG9ja2luZyBvcmRlciB0bwo+ID4gLQkJICogbW1hcF9zZW0gLT4gYm86OnJlc2VydmUsIHdlJ2Qg
dXNlIGEgYmxvY2tpbmcgcmVzZXJ2ZSBoZXJlCj4gPiAtCQkgKiBpbnN0ZWFkIG9mIHJldHJ5aW5n
IHRoZSBmYXVsdC4uLgo+ID4gLQkJICovCj4gPiAtCQlyZXR1cm4gVk1fRkFVTFRfTk9QQUdFOwo+
ID4gKwkJaWYgKGRtYV9yZXN2X2xvY2tfaW50ZXJydXB0aWJsZShiby0+YmFzZS5yZXN2LCBOVUxM
KSkKPiA+ICsJCQlyZXR1cm4gVk1fRkFVTFRfTk9QQUdFOwo+ID4gICAJfQo+ID4gICAKPiA+ICAg
CS8qCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaCBiL2luY2x1
ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmgKPiA+IGluZGV4IDQzYzQ5MjlhMjE3MS4uMjFjN2QwZDI4
NzU3IDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaAo+ID4gKysr
IGIvaW5jbHVkZS9kcm0vdHRtL3R0bV9ib19hcGkuaAo+ID4gQEAgLTE1NSw3ICsxNTUsNiBAQCBz
dHJ1Y3QgdHRtX3R0Owo+ID4gICAgKiBAb2Zmc2V0OiBUaGUgY3VycmVudCBHUFUgb2Zmc2V0LCB3
aGljaCBjYW4gaGF2ZSBkaWZmZXJlbnQgbWVhbmluZ3MKPiA+ICAgICogZGVwZW5kaW5nIG9uIHRo
ZSBtZW1vcnkgdHlwZS4gRm9yIFNZU1RFTSB0eXBlIG1lbW9yeSwgaXQgc2hvdWxkIGJlIDAuCj4g
PiAgICAqIEBjdXJfcGxhY2VtZW50OiBIaW50IG9mIGN1cnJlbnQgcGxhY2VtZW50Lgo+ID4gLSAq
IEB3dV9tdXRleDogV2FpdCB1bnJlc2VydmVkIG11dGV4Lgo+ID4gICAgKgo+ID4gICAgKiBCYXNl
IGNsYXNzIGZvciBUVE0gYnVmZmVyIG9iamVjdCwgdGhhdCBkZWFscyB3aXRoIGRhdGEgcGxhY2Vt
ZW50IGFuZCBDUFUKPiA+ICAgICogbWFwcGluZ3MuIEdQVSBtYXBwaW5ncyBhcmUgcmVhbGx5IHVw
IHRvIHRoZSBkcml2ZXIsIGJ1dCBmb3Igc2ltcGxlciBHUFVzCj4gPiBAQCAtMjI5LDggKzIyOCw2
IEBAIHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCB7Cj4gPiAgIAl1aW50NjRfdCBvZmZzZXQ7IC8q
IEdQVSBhZGRyZXNzIHNwYWNlIGlzIGluZGVwZW5kZW50IG9mIENQVSB3b3JkIHNpemUgKi8KPiA+
ICAgCj4gPiAgIAlzdHJ1Y3Qgc2dfdGFibGUgKnNnOwo+ID4gLQo+ID4gLQlzdHJ1Y3QgbXV0ZXgg
d3VfbXV0ZXg7Cj4gPiAgIH07Cj4gPiAgIAo+ID4gICAvKioKPiA+IEBAIC03NjUsNyArNzYyLDYg
QEAgc3NpemVfdCB0dG1fYm9faW8oc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYsIHN0cnVjdCBm
aWxlICpmaWxwLAo+ID4gICBpbnQgdHRtX2JvX3N3YXBvdXQoc3RydWN0IHR0bV9ib19nbG9iYWwg
Kmdsb2IsCj4gPiAgIAkJCXN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4KTsKPiA+ICAgdm9p
ZCB0dG1fYm9fc3dhcG91dF9hbGwoc3RydWN0IHR0bV9ib19kZXZpY2UgKmJkZXYpOwo+ID4gLWlu
dCB0dG1fYm9fd2FpdF91bnJlc2VydmVkKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pOwo+
ID4gICAKPiA+ICAgLyoqCj4gPiAgICAqIHR0bV9ib191c2VzX2VtYmVkZGVkX2dlbV9vYmplY3Qg
LSBjaGVjayBpZiB0aGUgZ2l2ZW4gYm8gdXNlcyB0aGUKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNv
ZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

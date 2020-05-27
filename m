Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A341E4DEF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 21:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402FF6E398;
	Wed, 27 May 2020 19:12:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com
 [IPv6:2a00:1450:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B99E6E398
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 19:12:25 +0000 (UTC)
Received: by mail-lj1-x244.google.com with SMTP id q2so30285215ljm.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 12:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:in-reply-to:references:from
 :to:subject:date:message-id:user-agent;
 bh=n3OhEM2myqhV3LY432s0z2JEqoOGt4cJTdFAi0z9YVg=;
 b=scKVxp3bb1BICUdRZapXnK631Lccaupf9hy2a3s6KsDbR6ISILXooYzbmNV+mIJF05
 JVmG3JvdDqgbK2RL6XCdglFAs9bQmcj0p/zD39fuxBsR0QKqO5Pnia8IZAa44hkjEhwa
 PHdMuNSLj+eoTkvv48ciB9mZ/HDYcyxD5XnSZUdmnriUrD0LcaCxvHTZpgBGR5LQMtIM
 0ktCu67IhQsjv6M3cDPiLkePqZU/5PjlbSL8g9iPOL272n05Of4PeB1n55p+hRlf91gQ
 ri6pogWDY2YTpwQB/uV8p5nWdD6HstUlU6m2MTFaQzu6rXOQn9I+EiAEBBWqndCM1eCH
 A9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=n3OhEM2myqhV3LY432s0z2JEqoOGt4cJTdFAi0z9YVg=;
 b=ttnExNwlGfVrOas6CZYZ2Agz9NQEb8MxqjXXu8YUzkAGXSsqqYdmqb/D00roGQI3wA
 TktNdKquhltqhq7SYY7U0p+cE74gp/utHM2ienLKQLDLj8RqYVFuw006++xI2UBMlf3j
 rv0Avi/2HKP0zjzXNeXBxrshq4ecITsE9iGDj/QSx8UFk4qtUSQI0iGh0MI9m0hw6+bA
 KEXu+F7UtR2YJ9RMr0bhwXUrypxITZobdQhDLdvk1hxmWft1gKuyKsObYF9zaRR9Gkjq
 P9JhyJvRoJ7DSea5y8+Ivp7viZxwMddZcKoaRL1NvaeY5D0O0gTGFEQk3Wk0D3nfC4cY
 AT5w==
X-Gm-Message-State: AOAM531uKS/BPOMmNdhi2FnARk+NsgYq0mgipHatTfuyKXSRo6c24idU
 7hBqSnlIZuCXbmaOucq6IkEggQ==
X-Google-Smtp-Source: ABdhPJwZPeM/Ia2AsFlb4mkOQ83AXBDL3iMrRGaOuoKB+iGXThHqSc8v7+YAVksPI83YoKW5VrDIJw==
X-Received: by 2002:a2e:9a0a:: with SMTP id o10mr3951907lji.223.1590606743658; 
 Wed, 27 May 2020 12:12:23 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id y28sm864433ljn.4.2020.05.27.12.12.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 12:12:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200518181720.14625-4-janusz.krzysztofik@linux.intel.com>
References: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
 <20200518181720.14625-4-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2020 21:12:22 +0200
Message-ID: <159060674214.4890.7564441892587341741@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [RFC PATCH 3/4] drm/i915: Move GGTT cleanup from
 driver_release to _remove
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDUtMTggMjA6MTc6MTkpCj4gR0dUVCBp
bmNsdWRpbmcgaXRzIHNjcmF0Y2ggcGFnZSBpcyBub3QgY2xlYW5lZCB1cCB1bnRpbCBkcml2ZXIg
cmVsZWFzZS4KPiBTaW5jZSBETUEgbWFwcGluZ3Mgc3RpbGwgZXhpc3QgYmVmb3JlIHNjcmF0Y2gg
cGFnZSBjbGVhbnVwLCB1bm1hcHBpbmcKPiB0aGVtIG9uIGxhc3QgZGV2aWNlIGNsb3NlIGFmdGVy
IHRoZSBkcml2ZXIgaGFzIGJlZW4gYWxyZWFkeSByZW1vdmVkIG1heQo+IGJlIGp1ZGdlZCBieSBp
bnRlbC1pb21tdSBjb2RlIGFzIGEgYnVnIGFuZCByZXN1bHQgaW4ga2VybmVsIHBhbmljLgo+IAo+
IFNpbmNlIHdlIGFib3J0IHJlcXVlc3RzIGFuZCBibG9jayB1c2VyIGFjY2VzcyB0byBoYXJkd2Fy
ZSBvbiBkZXZpY2UKPiByZW1vdmFsLCB0aGVyZSBzZWVtcyBub3QgbXVjaCBzZW5zZSBpbiBzdGls
bCBrZWVwaW5nIEdHVFQuICBDbGVhbiBpdCB1cAo+IG9uIGRyaXZlciByZW1vdmUuICBIb3dldmVy
LCBza2lwIEdHVFQgYWRkcmVzcyBzcGFjZSBjbGVhbnVwIGFzIGl0cwo+IG11dGV4dCBtYXkgc3Rp
bGwgYmUgbmVlZGVkIGlmIHRoZXJlIGFyZSBvYmplY3RzIHRvIGJlIGZyZWVkLiAgVGhhdAo+IGNs
ZWFudXAgaXMgYWx3YXlzIGNhbGxlZCBvbiBhZGRyZXNzIHNwYWNlIHJlbGVhc2UgYWZ0ZXIgYWxs
Lgo+IAo+IFsgICA4MS4yOTAyODRdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0t
LQo+IFsgICA4MS4yOTE2MDJdIGtlcm5lbCBCVUcgYXQgZHJpdmVycy9pb21tdS9pbnRlbC1pb21t
dS5jOjM1OTEhCj4gWyAgIDgxLjI5MzU1OF0gaW52YWxpZCBvcGNvZGU6IDAwMDAgWyMxXSBQUkVF
TVBUIFNNUAo+IFsgICA4MS4yOTQ2OTVdIENQVTogMCBQSUQ6IDIwNyBDb21tOiBjb3JlX2hvdHVu
cGx1ZyBUYWludGVkOiBHICAgICBVICAgICAgICAgICAgNS40LjE3ICMyCj4gWyAgIDgxLjI5NjU3
OV0gSGFyZHdhcmUgbmFtZTogQm9jaHMgQm9jaHMsIEJJT1MgQm9jaHMgMDEvMDEvMjAwNwo+IFsg
ICA4MS4yOTc5NTldIFJJUDogMDAxMDppbnRlbF91bm1hcCsweDIwMC8weDIzMAo+IFsgICA4MS4y
OTkwMTVdIENvZGU6IDAwIGU4IGU0IDQ1IGM1IGZmIDg1IGMwIDc0IDA5IDgwIDNkIDJiIDg0IGMw
IDAwIDAwIDc0IDE5IDY1IGZmIDBkIDc4IDlhIGIyIDdlIDBmIDg1IGZhIGZlIGZmIGZmIGU4IDk1
IDU3IGIxIGZmIGU5IGYwIGZlIGZmIGZmIDwwZj4gMGIgZTggMTkgNGMgYzUgZmYgODUgYzAgNzUg
ZGUgNDggYzcgYzIgNDggZDIgZTEgODEgYmUgNTcgMDAgMDAKPiBbICAgODEuMzAzNDI1XSBSU1A6
IDAwMTg6ZmZmZmM5MDAwMDEzZmRhMCBFRkxBR1M6IDAwMDEwMjQ2Cj4gWyAgIDgxLjMwNDY4M10g
UkFYOiAwMDAwMDAwMDAwMDAwMDAwIFJCWDogZmZmZjg4ODIyMjhkZDBiMCBSQ1g6IDAwMDAwMDAw
MDAwMDAwMDAKPiBbICAgODEuMzA2Mzg0XSBSRFg6IDAwMDAwMDAwMDAwMDEwMDAgUlNJOiAwMDAw
MDAwMGFmODAxMDAwIFJESTogZmZmZjg4ODIyMjhkZDBiMAo+IFsgICA4MS4zMDgwODZdIFJCUDog
MDAwMDAwMDAwMDAwMDAwMCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiAwMDAwMDAwMDAwMDAw
MDAwCj4gWyAgIDgxLjMwOTc4OF0gUjEwOiAwMDAwMDAwMDAwMDAwMDAwIFIxMTogMDAwMDAwMDAw
MDAwMDAwMCBSMTI6IDAwMDAwMDAwYWY4MDEwMDAKPiBbICAgODEuMzExNDg5XSBSMTM6IGZmZmY4
ODgyMjNhMDAwMDAgUjE0OiAwMDAwMDAwMDAwMDAxMDAwIFIxNTogZmZmZjg4ODIyM2EwYTJlOAo+
IFsgICA4MS4zMTMxOTFdIEZTOiAgMDAwMDdmNTQwOGUzYzk0MCgwMDAwKSBHUzpmZmZmODg4MjI4
NjAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKPiBbICAgODEuMzE1MTE2XSBDUzog
IDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4gWyAgIDgxLjMx
NjQ5NV0gQ1IyOiAwMDAwMDAwMDAxZmMwMDQ4IENSMzogMDAwMDAwMDIyNDY0YTAwMCBDUjQ6IDAw
MDAwMDAwMDAwMDA2YjAKPiBbICAgODEuMzE4MTk2XSBDYWxsIFRyYWNlOgo+IFsgICA4MS4zMTg5
NjddICBjbGVhbnVwX3NjcmF0Y2hfcGFnZSsweDQ0LzB4ODAgW2k5MTVdCj4gWyAgIDgxLjMyMDI4
MV0gIGk5MTVfZ2d0dF9kcml2ZXJfcmVsZWFzZSsweDE1Yi8weDIyMCBbaTkxNV0KPiBbICAgODEu
MzIxNzE3XSAgaTkxNV9kcml2ZXJfcmVsZWFzZSsweDMzLzB4OTAgW2k5MTVdCj4gWyAgIDgxLjMy
Mjg1Nl0gIGRybV9yZWxlYXNlKzB4YmMvMHhkMAo+IFsgICA4MS4zMjM2OTFdICBfX2ZwdXQrMHhj
ZC8weDI2MAo+IFsgICA4MS4zMjQ0NDddICB0YXNrX3dvcmtfcnVuKzB4OTAvMHhjMAo+IFsgICA4
MS4zMjUzMjNdICBkb19zeXNjYWxsXzY0KzB4M2RhLzB4NTYwCj4gWyAgIDgxLjMyNjI0MF0gIGVu
dHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ5LzB4YmUKPiBbICAgODEuMzI3NDU3XSBS
SVA6IDAwMzM6MHg3ZjU0MDk2ZWNiYTMKPiBbICAgODEuMzI4MzMyXSBDb2RlOiAwMCAwMCBmNyBk
OCA2NCA4OSAwMiA0OCBjNyBjMCBmZiBmZiBmZiBmZiBlYiBiYiAwZiAxZiA4MCAwMCAwMCAwMCAw
MCA2NCA4YiAwNCAyNSAxOCAwMCAwMCAwMCA4NSBjMCA3NSAxNCBiOCAwMyAwMCAwMCAwMCAwZiAw
NSA8NDg+IDNkIDAwIGYwIGZmIGZmIDc3IDQ1IGMzIDBmIDFmIDQwIDAwIDQ4IDgzIGVjIDE4IDg5
IDdjIDI0IDBjIGU4Cj4gWyAgIDgxLjMzMjc0MV0gUlNQOiAwMDJiOjAwMDA3ZmZjYzUxNjU2OTgg
RUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAwMwo+IFsgICA4MS4zMzQ1
NDZdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiAwMDAw
N2Y1NDA5NmVjYmEzCj4gWyAgIDgxLjMzNjI0N10gUkRYOiAwMDAwMDAwMDAwNWNjNWQwIFJTSTog
MDAwMDAwMDAwMDAwMDAwNSBSREk6IDAwMDAwMDAwMDAwMDAwMDQKPiBbICAgODEuMzM3OTQ5XSBS
QlA6IDAwMDAwMDAwMDAwMDAwMDMgUjA4OiAwMDAwMDAwMDAwNWI4MDE0IFIwOTogMDAwMDAwMDAw
MDAwMDAwNAo+IFsgICA4MS4zMzk2NTBdIFIxMDogMDAwMDAwMDAwMDVjYzY1MCBSMTE6IDAwMDAw
MDAwMDAwMDAyNDYgUjEyOiAwMDAwMDAwMDAwNDAyMmYwCj4gWyAgIDgxLjM0MTM1Ml0gUjEzOiAw
MDAwN2ZmY2M1MTY1ODUwIFIxNDogMDAwMDAwMDAwMDAwMDAwMCBSMTU6IDAwMDAwMDAwMDAwMDAw
MDAKPiBbICAgODEuMzQzMDU5XSBNb2R1bGVzIGxpbmtlZCBpbjogaTkxNSBtZmRfY29yZSBpbnRl
bF9ndHQgcHJpbWVfbnVtYmVycwo+IFsgICA4MS4zNDUwMTVdIC0tLVsgZW5kIHRyYWNlIDAxMGFh
ZTU1ZTU2Zjg5OTggXS0tLQo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8
amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiAKPiBkcm0vaTkxNTogRGVmZXIg
R0dUVCB2bSBhZGRyZXNzIHNwYWNlIGZpbmkgdG8gdm0gcmVsZWFzZQoKSHVtPwoKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYyB8
IDEzICsrKysrKysrKy0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0Lmgg
IHwgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgfCAgMiArKwo+
ICAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYwo+IGluZGV4IDY2MTY1YjEwMjU2ZS4uZmYy
YjRmNzQxNDlhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dn
dHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYwo+IEBAIC03
MDEsNyArNzAxLDYgQEAgc3RhdGljIHZvaWQgZ2d0dF9jbGVhbnVwX2h3KHN0cnVjdCBpOTE1X2dn
dHQgKmdndHQpCj4gICAgICAgICBnZ3R0LT52bS5jbGVhbnVwKCZnZ3R0LT52bSk7Cj4gIAo+ICAg
ICAgICAgbXV0ZXhfdW5sb2NrKCZnZ3R0LT52bS5tdXRleCk7Cj4gLSAgICAgICBpOTE1X2FkZHJl
c3Nfc3BhY2VfZmluaSgmZ2d0dC0+dm0pOwoKT2ssIHNvIHRoaXMgd2FzIGRlZmVyZWQgdG8gcmVs
ZWFzZS4gV2hlcmUgYXJlIHdlIGdvaW5nIHRvIGRyb3AgdGhlIGZpbmFsIHJlZj8KQW5kIGFsc28g
LSBJIGNhbiBzZWUgdGhhdCB3ZSBoYXZlIGE6CgoJR0VNX0JVR19PTihpOTE1X2lzX2dndHQodm0p
KTsKCmluIGk5MTVfdm1fcmVsZWFzZSgpLgpXaGljaCBtZWFucyB0aGF0IHdlIHByb2JhYmx5IGRv
bid0IGRyb3AgdGhlIGZpbmFsIHJlZiBhbmQgZG9uJ3QgZXZlciBjYWxsCmk5MTVfYWRkcmVzc19z
cGFjZV9maW5pIGZvciBnZ3R0LgoKLU1pY2hhxYIKCj4gIAo+ICAgICAgICAgYXJjaF9waHlzX3dj
X2RlbChnZ3R0LT5tdHJyKTsKPiAgCj4gQEAgLTcwOSw2ICs3MDgsMTUgQEAgc3RhdGljIHZvaWQg
Z2d0dF9jbGVhbnVwX2h3KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCj4gICAgICAgICAgICAgICAg
IGlvX21hcHBpbmdfZmluaSgmZ2d0dC0+aW9tYXApOwo+ICB9Cj4gIAo+ICt2b2lkIGk5MTVfZ2d0
dF9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7Cj4gKyAg
ICAgICBzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmk5MTUtPmdndHQ7Cj4gKwo+ICsgICAgICAg
ZmluaV9hbGlhc2luZ19wcGd0dChnZ3R0KTsKPiArCj4gKyAgICAgICBnZ3R0X2NsZWFudXBfaHco
Z2d0dCk7Cj4gK30KPiArCj4gIC8qKgo+ICAgKiBpOTE1X2dndHRfZHJpdmVyX3JlbGVhc2UgLSBD
bGVhbiB1cCBHR1RUIGhhcmR3YXJlIGluaXRpYWxpemF0aW9uCj4gICAqIEBpOTE1OiBpOTE1IGRl
dmljZQo+IEBAIC03MTgsMTAgKzcyNiw3IEBAIHZvaWQgaTkxNV9nZ3R0X2RyaXZlcl9yZWxlYXNl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgICAgICAgc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dCA9ICZpOTE1LT5nZ3R0Owo+ICAgICAgICAgc3RydWN0IHBhZ2V2ZWMgKnB2ZWM7Cj4g
IAo+IC0gICAgICAgZmluaV9hbGlhc2luZ19wcGd0dChnZ3R0KTsKPiAtCj4gICAgICAgICBpbnRl
bF9nZ3R0X2ZpbmlfZmVuY2VzKGdndHQpOwo+IC0gICAgICAgZ2d0dF9jbGVhbnVwX2h3KGdndHQp
Owo+ICAKPiAgICAgICAgIHB2ZWMgPSAmaTkxNS0+bW0ud2Nfc3Rhc2gucHZlYzsKPiAgICAgICAg
IGlmIChwdmVjLT5ucikgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndHQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oCj4gaW5kZXgg
ZDkzZWJkZjNmYTBlLi5mMTQwY2U1YzE3MWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3R0LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndHQuaAo+IEBAIC01MDEsNiArNTAxLDcgQEAgaW50IGk5MTVfZ2d0dF9lbmFibGVfaHcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICB2b2lkIGk5MTVfZ2d0dF9lbmFibGVfZ3Vj
KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpOwo+ICB2b2lkIGk5MTVfZ2d0dF9kaXNhYmxlX2d1Yyhz
dHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KTsKPiAgaW50IGk5MTVfaW5pdF9nZ3R0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KTsKPiArdm9pZCBpOTE1X2dndHRfZHJpdmVyX3JlbW92ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gIHZvaWQgaTkxNV9nZ3R0X2RyaXZlcl9yZWxl
YXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiAgCj4gIHN0YXRpYyBpbmxpbmUg
Ym9vbCBpOTE1X2dndHRfaGFzX2FwZXJ0dXJlKGNvbnN0IHN0cnVjdCBpOTE1X2dndHQgKmdndHQp
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggMzRlZTEyZjNmMDJkLi5lNGQ5ZjBmNmYx
ODMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtNzUyLDYgKzc1Miw3IEBAIHN0
YXRpYyBpbnQgaTkxNV9kcml2ZXJfaHdfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQo+ICBlcnJfbWVtX3JlZ2lvbnM6Cj4gICAgICAgICBpbnRlbF9tZW1vcnlfcmVnaW9u
c19kcml2ZXJfcmVsZWFzZShkZXZfcHJpdik7Cj4gIGVycl9nZ3R0Ogo+ICsgICAgICAgaTkxNV9n
Z3R0X2RyaXZlcl9yZW1vdmUoZGV2X3ByaXYpOwo+ICAgICAgICAgaTkxNV9nZ3R0X2RyaXZlcl9y
ZWxlYXNlKGRldl9wcml2KTsKPiAgZXJyX3BlcmY6Cj4gICAgICAgICBpOTE1X3BlcmZfZmluaShk
ZXZfcHJpdik7Cj4gQEAgLTc2OCw2ICs3NjksNyBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9o
d19yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAKPiAgICAgICAg
IGk5MTVfcGVyZl9maW5pKGRldl9wcml2KTsKPiAgCj4gKyAgICAgICBpOTE1X2dndHRfZHJpdmVy
X3JlbW92ZShkZXZfcHJpdik7Cj4gICAgICAgICBpZiAocGRldi0+bXNpX2VuYWJsZWQpCj4gICAg
ICAgICAgICAgICAgIHBjaV9kaXNhYmxlX21zaShwZGV2KTsKPiAgCj4gLS0gCj4gMi4yMS4xCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

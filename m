Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF6568627
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 11:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B6EF89715;
	Mon, 15 Jul 2019 09:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA2A38967F
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Jul 2019 12:39:24 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id 31so14300938wrm.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Jul 2019 05:39:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=skZ5DNhXcAGTBL6ZVQ/LIQ0vf07/4wEMXPMG9ynRGlI=;
 b=PI45iwF+XVLcznUfgsqA5QB/lTfAig02pIRBymTJ93+HpQbSKyJtYM64xGB8bXyNRt
 +l67K9yRXLEed9gKE47FpIQXa9Yc8pOobno62R4pewtg4nt2DHRLgaJ20jt5Y8CUdZdc
 pBAxODpOu5hfwTvOJ7E4t52y6o9JWJQ4rpxet4vNw2sliogWwhItGA50RHNbSJ1ELA8F
 MEeWAjmstGMdK6yqBGNwDPu/z31tsibUcxd/KYfuN9GCTTGjoWnVpYWWLOXZ+mVMU0t5
 nnLLj940a2sq6QG4oyM2keX62P4Td44So1SVjYoR+66EBmOM9xtZd3r58EY35EYfrfNy
 Wv1Q==
X-Gm-Message-State: APjAAAVjkcNUZIAWTKYaUbj1Kmvk36PaDQBKD9oypCa8pOD2trupB330
 zQIxv3GE5gtjcAPyOxDt7MCZxgEV
X-Google-Smtp-Source: APXvYqxFe0BeuekhiNKolkRvuXTp5JZsZP4368ERKfqLvTeFaViEeDUHqtW9yu5tV1KP54rdbtRRYQ==
X-Received: by 2002:a5d:51c1:: with SMTP id n1mr18992961wrv.254.1563107962986; 
 Sun, 14 Jul 2019 05:39:22 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd6:c00:d02b:6ffb:30c3:f31c?
 (p200300EA8BD60C00D02B6FFB30C3F31C.dip0.t-ipconnect.de.
 [2003:ea:8bd6:c00:d02b:6ffb:30c3:f31c])
 by smtp.googlemail.com with ESMTPSA id g12sm19825547wrv.9.2019.07.14.05.39.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 05:39:22 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <f4d7d506-bed5-c205-8532-0d360f9eee04@gmail.com>
 <09346773-8023-9c32-7650-48daa4ec546c@gmail.com>
 <156310765929.9436.10195271706258664728@skylake-alporthouse-com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <eeae3226-4bdf-3d90-2651-cb75e91e6f14@gmail.com>
Date: Sun, 14 Jul 2019 14:39:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156310765929.9436.10195271706258664728@skylake-alporthouse-com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 15 Jul 2019 09:19:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=skZ5DNhXcAGTBL6ZVQ/LIQ0vf07/4wEMXPMG9ynRGlI=;
 b=BMNc7l0ERS2AMtRGrqyURCzekrbHeGLLRnlMdJ8X6QVDrZdDZYWU/DbN7rLHuToIaq
 WozKJkuuetXExyYaTVfeXa7LUQZsa9P/VEx2bC9bwncB8Th9VhIq3YdE8vRiC1Gd5Dq+
 szEsNKYWLf9LH6j3lpyeIzZkRK5H/Y2vZGrstYaLkm2vLc9EJwBF1F4VNIJoQuFnz++r
 12FKamX6pzwDJscgxtcfSj6u3ECSKcc/6OScj3HCaRqY4hegEZnYqDV1j8pizKXPF+t9
 pHtMn0LmxMgXV0lG3g1rS/Ks97W0q14ifIBu/caMQTulUPTrwkqP0cpP6AOvrOJ8Cmhl
 xutg==
Subject: Re: [Intel-gfx] NPE in i915_gemfs_init
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

T24gMTQuMDcuMjAxOSAxNDozNCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgSGVpbmVy
IEthbGx3ZWl0ICgyMDE5LTA3LTEzIDEyOjEyOjU2KQo+PiBPbiAxMy4wNy4yMDE5IDEyOjM4LCBI
ZWluZXIgS2FsbHdlaXQgd3JvdGU6Cj4+PiBTaW5jZSBmZXcgZGF5cyBJJ20gZ2V0dGluZyB0aGUg
Zm9sbG93aW5nIG9uIGEgTjM0NTAtYmFzZWQgaGVhZGxlc3Mgc3lzdGVtIHdpdGggbGludXgtbmV4
dC4KPj4+IGxpbnV4LW5leHQgZnJvbSBKdWwgNHRoIHdhcyBzdGlsbCBvay4KPj4+IElzIHRoaXMg
YSBrbm93biBpc3N1ZT8KPj4+Cj4+PiBbICAgIDQuODE4MTM5XSBCVUc6IGtlcm5lbCBOVUxMIHBv
aW50ZXIgZGVyZWZlcmVuY2UsIGFkZHJlc3M6IDAwMDAwMDAwMDAwMDAwMDAKPj4+IFsgICAgNC44
MTgxNjVdICNQRjogc3VwZXJ2aXNvciBpbnN0cnVjdGlvbiBmZXRjaCBpbiBrZXJuZWwgbW9kZQo+
Pj4gWyAgICA0LjgxODE3OF0gI1BGOiBlcnJvcl9jb2RlKDB4MDAxMCkgLSBub3QtcHJlc2VudCBw
YWdlCj4+PiBbICAgIDQuODE4MTkyXSBQR0QgMCBQNEQgMAo+Pj4gWyAgICA0LjgxODIwM10gT29w
czogMDAxMCBbIzFdIFNNUAo+Pj4gWyAgICA0LjgxODIxNF0gQ1BVOiAyIFBJRDogMjAwOCBDb21t
OiBzeXN0ZW1kLXVkZXZkIE5vdCB0YWludGVkIDUuMi4wLW5leHQtMjAxOTA3MTIgIzEKPj4+IFsg
ICAgNC44MTgyMzJdIEhhcmR3YXJlIG5hbWU6IE5BIFpCT1gtQ0kzMjdOQU5PLUdTLTAxL1pCT1gt
Q0kzMjdOQU5PLUdTLTAxLCBCSU9TIDUuMTIgMDQvMjYvMjAxOAo+Pj4gWyAgICA0LjgxODI1M10g
UklQOiAwMDEwOjB4MAo+Pj4gWyAgICA0LjgxODI2NV0gQ29kZTogQmFkIFJJUCB2YWx1ZS4KPj4+
IFsgICAgNC44MTgyNzVdIFJTUDogMDAxODpmZmZmYWNkODQwMjNmOTE4IEVGTEFHUzogMDAwMTAy
ODcKPj4+IFsgICAgNC44MTgyODhdIFJBWDogMDAwMDAwMDAwMDAwMDAwMCBSQlg6IGZmZmY4YjEx
ZjdmNjAwMDAgUkNYOiAwMDAwMDAwMDAwMDAwMGFlCj4+PiBbICAgIDQuODE4MzA0XSBSRFg6IGZm
ZmZhY2Q4NDAyM2Y5MmQgUlNJOiBmZmZmYWNkODQwMjNmOTI4IFJESTogZmZmZjhiMTFmODg0YTAw
MAo+Pj4gWyAgICA0LjgxODMyMF0gUkJQOiBmZmZmYWNkODQwMjNmOTUwIFIwODogMDAwMDAwMDAw
MDAwMDAwMSBSMDk6IDAwMDAwMDAwMDAwMDAwMDAKPj4+IFsgICAgNC44MTgzMzZdIFIxMDogMDAw
MDAwMDAwMDAwMDAwMCBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiBmZmZmOGIxMWY4ODJjN2Ew
Cj4+PiBbICAgIDQuODE4MzUyXSBSMTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiBmZmZmOGIxMWY3
ZjYwMDAwIFIxNTogZmZmZmZmZmZjMDZiNzFlMAo+Pj4gWyAgICA0LjgxODM2OV0gRlM6ICAwMDAw
N2ZiNDVjNTQ5ODQwKDAwMDApIEdTOmZmZmY4YjExZmJiMDAwMDAoMDAwMCkga25sR1M6MDAwMDAw
MDAwMDAwMDAwMAo+Pj4gWyAgICA0LjgxODM4N10gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAw
IENSMDogMDAwMDAwMDA4MDA1MDAzMwo+Pj4gWyAgICA0LjgxODQwNF0gQ1IyOiBmZmZmZmZmZmZm
ZmZmZmQ2IENSMzogMDAwMDAwMDE3N2Q0YTAwMCBDUjQ6IDAwMDAwMDAwMDAzNDA2ZTAKPj4+IFsg
ICAgNC44MTg0MTldIENhbGwgVHJhY2U6Cj4+PiBbICAgIDQuODE4NTA4XSAgaTkxNV9nZW1mc19p
bml0KzB4ODAvMHhjMCBbaTkxNV0KPj4+IFsgICAgNC44MTg1ODJdICBpOTE1X2dlbV9pbml0X2Vh
cmx5KzB4MTI2LzB4MTQwIFtpOTE1XQo+Pj4gWyAgICA0LjgxODY0N10gIGk5MTVfZHJpdmVyX2xv
YWQrMHgzNjIvMHgxNzQwIFtpOTE1XQo+Pj4gWyAgICA0LjgxODY2M10gID8gZmluZF9oZWxkX2xv
Y2srMHgzNy8weDkwCj4+PiBbICAgIDQuODE4Njc1XSAgPyBfcmF3X3NwaW5fdW5sb2NrX2lycXJl
c3RvcmUrMHg0NS8weDUwCj4+PiBbICAgIDQuODE4Njg5XSAgPyBfX3BtX3J1bnRpbWVfcmVzdW1l
KzB4NWUvMHg5MAo+Pj4gWyAgICA0LjgxODcwMV0gID8gbG9ja2RlcF9oYXJkaXJxc19vbisweGYy
LzB4MTgwCj4+PiBbICAgIDQuODE4NzEzXSAgPyBfcmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUr
MHg0NS8weDUwCj4+PiBbICAgIDQuODE4Nzc4XSAgaTkxNV9wY2lfcHJvYmUrMHg0NS8weDEyMCBb
aTkxNV0KPj4+IFsgICAgNC44MTg3OTJdICBwY2lfZGV2aWNlX3Byb2JlKzB4YWIvMHgxMjAKPj4+
IFsgICAgNC44MTg4MDRdICByZWFsbHlfcHJvYmUrMHhmNC8weDI5MAo+Pj4gWyAgICA0LjgxODgx
NV0gIGRyaXZlcl9wcm9iZV9kZXZpY2UrMHg1My8weGEwCj4+PiBbICAgIDQuODE4ODI2XSAgZGV2
aWNlX2RyaXZlcl9hdHRhY2grMHg1OS8weDYwCj4+PiBbICAgIDQuODE4ODM4XSAgX19kcml2ZXJf
YXR0YWNoKzB4NTMvMHhjMAo+Pj4gWyAgICA0LjgxODg0OV0gID8gZGV2aWNlX2RyaXZlcl9hdHRh
Y2grMHg2MC8weDYwCj4+PiBbICAgIDQuODE4ODYyXSAgYnVzX2Zvcl9lYWNoX2RldisweDgyLzB4
ZDAKPj4+IFsgICAgNC44MTg4NzNdICBkcml2ZXJfYXR0YWNoKzB4MWYvMHgzMAo+Pj4gWyAgICA0
LjgxODg4M10gIGJ1c19hZGRfZHJpdmVyKzB4MTc0LzB4MWMwCj4+PiBbICAgIDQuODE4ODk1XSAg
ZHJpdmVyX3JlZ2lzdGVyKzB4NzEvMHhjMAo+Pj4gWyAgICA0LjgxODkwNl0gIF9fcGNpX3JlZ2lz
dGVyX2RyaXZlcisweDczLzB4ODAKPj4+IFsgICAgNC44MTg5NzFdICBpOTE1X2luaXQrMHg1Yy8w
eDY3IFtpOTE1XQo+Pj4gWyAgICA0LjgxODk4Ml0gID8gMHhmZmZmZmZmZmMwNmZiMDAwCj4+PiBb
ICAgIDQuODE4OTkzXSAgZG9fb25lX2luaXRjYWxsKzB4NWYvMHgyZTUKPj4+IFsgICAgNC44MTkw
MDVdICA/IGRvX2luaXRfbW9kdWxlKzB4MjMvMHgyMjAKPj4+IFsgICAgNC44MTkwMThdICA/IHJj
dV9yZWFkX2xvY2tfc2NoZWRfaGVsZCsweDc2LzB4ODAKPj4+IFsgICAgNC44MTkwMzJdICA/IGtt
ZW1fY2FjaGVfYWxsb2NfdHJhY2UrMHgyMzQvMHgyNjAKPj4+IFsgICAgNC44MTkwNDVdICBkb19p
bml0X21vZHVsZSsweDVkLzB4MjIwCj4+PiBbICAgIDQuODE5MDU2XSAgbG9hZF9tb2R1bGUrMHgy
MjIwLzB4MjU2MAo+Pj4gWyAgICA0LjgxOTA2OF0gID8ga2VybmVsX3JlYWQrMHg1Mi8weDgwCj4+
PiBbICAgIDQuODE5MDc5XSAgX19kb19zeXNfZmluaXRfbW9kdWxlKzB4ZGEvMHgxMDAKPj4+IFsg
ICAgNC44MTkwOTFdICA/IF9fZG9fc3lzX2Zpbml0X21vZHVsZSsweGRhLzB4MTAwCj4+PiBbICAg
IDQuODE5MTA0XSAgX194NjRfc3lzX2Zpbml0X21vZHVsZSsweDE5LzB4MjAKPj4+IFsgICAgNC44
MTkxMTZdICBkb19zeXNjYWxsXzY0KzB4NTAvMHgxYTAKPj4+IFsgICAgNC44MTkxMjddICBlbnRy
eV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg0OS8weGJlCj4+PiBbICAgIDQuODE5MTQwXSBS
SVA6IDAwMzM6MHg3ZmI0NWRkMmNlM2QKPj4+IFsgICAgNC44MTkxNTJdIENvZGU6IDAwIGMzIDY2
IDJlIDBmIDFmIDg0IDAwIDAwIDAwIDAwIDAwIDkwIGYzIDBmIDFlIGZhIDQ4IDg5IGY4IDQ4IDg5
IGY3IDQ4IDg5IGQ2IDQ4IDg5IGNhIDRkIDg5IGMyIDRkIDg5IGM4IDRjIDhiIDRjIDI0IDA4IDBm
IDA1IDw0OD4gM2QgMDEgZjAgZmYgZmYgNzMgMDEgYzMgNDggOGIgMGQgMjMgNTAgMGMgMDAgZjcg
ZDggNjQgODkgMDEgNDgKPj4+IFsgICAgNC44MTkxOTBdIFJTUDogMDAyYjowMDAwN2ZmZjNiOTBl
ZTQ4IEVGTEFHUzogMDAwMDAyNDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAxMzkKPj4+IFsgICAg
NC44MTkyMDhdIFJBWDogZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA1NTg2ZjI3ZWNjYjAgUkNY
OiAwMDAwN2ZiNDVkZDJjZTNkCj4+PiBbICAgIDQuODE5MjI0XSBSRFg6IDAwMDAwMDAwMDAwMDAw
MDAgUlNJOiAwMDAwN2ZiNDVkOWEyODRkIFJESTogMDAwMDAwMDAwMDAwMDAxNQo+Pj4gWyAgICA0
LjgxOTI0MF0gUkJQOiAwMDAwN2ZiNDVkOWEyODRkIFIwODogMDAwMDAwMDAwMDAwMDAwMCBSMDk6
IDAwMDAwMDAwMDAwMDAwMDEKPj4+IFsgICAgNC44MTkyNTZdIFIxMDogMDAwMDAwMDAwMDAwMDAx
NSBSMTE6IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiAwMDAwMDAwMDAwMDAwMDAwCj4+PiBbICAgIDQu
ODE5MjcyXSBSMTM6IDAwMDA1NTg2ZjI3ZTIzYjAgUjE0OiAwMDAwMDAwMDAwMDIwMDAwIFIxNTog
MDAwMDU1ODZmMjdlY2NiMAo+Pj4gWyAgICA0LjgxOTI4OV0gTW9kdWxlcyBsaW5rZWQgaW46IGFl
c194ODZfNjQoKykgZ2x1ZV9oZWxwZXIgY3J5cHRvX3NpbWQgaTkxNSgrKSBjcnlwdGQgc25kX2hk
YV9pbnRlbCBpbnRlbF9ndHQgaTJjX2FsZ29fYml0IGRybV9rbXNfaGVscGVyIHN5c2NvcHlhcmVh
IHNuZF9oZGFfY29kZWMgc3lzZmlsbHJlY3Qgc3lzaW1nYmx0IHNuZF9oZGFfY29yZSBmYl9zeXNf
Zm9wcyByODE2OSBpMmNfaTgwMSBzbmRfcGNtIHJlYWx0ZWsgc25kX3RpbWVyIGxpYnBoeSBkcm0g
c25kIG1laV9tZSBtZWkgc2NoX2ZxX2NvZGVsIGNyeXB0b191c2VyIGVmaXZhcmZzIGlwdjYgc2Vy
aW9fcmF3IGF0a2JkIGxpYnBzMiBpODA0MiBzZXJpbyB1bXNfcmVhbHRlayBleHQ0IGNyYzMyY19p
bnRlbCBtYmNhY2hlIGpiZDIgYWhjaSBsaWJhaGNpIGxpYmF0YQo+Pj4gWyAgICA0LjgxOTM4N10g
Q1IyOiAwMDAwMDAwMDAwMDAwMDAwCj4+PiBbICAgIDQuODE5Mzk5XSAtLS1bIGVuZCB0cmFjZSA1
MzFjNGQ3M2UyYmY4NTdlIF0tLS0KPj4+IFsgICAgNC44MTk0MTJdIFJJUDogMDAxMDoweDAKPj4+
IFsgICAgNC44MTk0MjRdIENvZGU6IEJhZCBSSVAgdmFsdWUuCj4+PiBbICAgIDQuODE5NDM0XSBS
U1A6IDAwMTg6ZmZmZmFjZDg0MDIzZjkxOCBFRkxBR1M6IDAwMDEwMjg3Cj4+PiBbICAgIDQuODE5
NDQ3XSBSQVg6IDAwMDAwMDAwMDAwMDAwMDAgUkJYOiBmZmZmOGIxMWY3ZjYwMDAwIFJDWDogMDAw
MDAwMDAwMDAwMDBhZQo+Pj4gWyAgICA0LjgxOTQ2M10gUkRYOiBmZmZmYWNkODQwMjNmOTJkIFJT
STogZmZmZmFjZDg0MDIzZjkyOCBSREk6IGZmZmY4YjExZjg4NGEwMDAKPj4+IFsgICAgNC44MTk0
NzldIFJCUDogZmZmZmFjZDg0MDIzZjk1MCBSMDg6IDAwMDAwMDAwMDAwMDAwMDEgUjA5OiAwMDAw
MDAwMDAwMDAwMDAwCj4+PiBbICAgIDQuODE5NDk1XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjEx
OiAwMDAwMDAwMDAwMDAwMDAwIFIxMjogZmZmZjhiMTFmODgyYzdhMAo+Pj4gWyAgICA0LjgxOTUx
MV0gUjEzOiAwMDAwMDAwMDAwMDAwMDAwIFIxNDogZmZmZjhiMTFmN2Y2MDAwMCBSMTU6IGZmZmZm
ZmZmYzA2YjcxZTAKPj4+IFsgICAgNC44MTk1MjddIEZTOiAgMDAwMDdmYjQ1YzU0OTg0MCgwMDAw
KSBHUzpmZmZmOGIxMWZiYjAwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKPj4+IFsg
ICAgNC44MTk1NDVdIENTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAw
NTAwMzMKPj4+IFsgICAgNC44MTk1NTldIENSMjogZmZmZmZmZmZmZmZmZmZkNiBDUjM6IDAwMDAw
MDAxNzdkNGEwMDAgQ1I0OiAwMDAwMDAwMDAwMzQwNmUwCj4+PiBbICAgIDQuODE5NTc2XSBCVUc6
IHNsZWVwaW5nIGZ1bmN0aW9uIGNhbGxlZCBmcm9tIGludmFsaWQgY29udGV4dCBhdCBpbmNsdWRl
L2xpbnV4L3BlcmNwdS1yd3NlbS5oOjM4Cj4+PiBbICAgIDQuODE5NTk2XSBpbl9hdG9taWMoKTog
MCwgaXJxc19kaXNhYmxlZCgpOiAxLCBwaWQ6IDIwMDgsIG5hbWU6IHN5c3RlbWQtdWRldmQKPj4+
IFsgICAgNC44MTk2MTNdIElORk86IGxvY2tkZXAgaXMgdHVybmVkIG9mZi4KPj4+IFsgICAgNC44
MTk2MjNdIGlycSBldmVudCBzdGFtcDogMzE4OTYKPj4+IFsgICAgNC44MTk2MzddIGhhcmRpcnFz
IGxhc3QgIGVuYWJsZWQgYXQgKDMxODk1KTogWzxmZmZmZmZmZjlmNDBlODc1Pl0ga2ZyZWUrMHhj
NS8weDJhMAo+Pj4gWyAgICA0LjgxOTY1Nl0gaGFyZGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoMzE4
OTYpOiBbPGZmZmZmZmZmOWYyMDFjM2Q+XSB0cmFjZV9oYXJkaXJxc19vZmZfdGh1bmsrMHgxYS8w
eDFjCj4+PiBbICAgIDQuODE5Njc5XSBzb2Z0aXJxcyBsYXN0ICBlbmFibGVkIGF0ICgzMTg2Nik6
IFs8ZmZmZmZmZmY5ZmMwMDMyNz5dIF9fZG9fc29mdGlycSsweDMyNy8weDQyNAo+Pj4gWyAgICA0
LjgxOTcwMF0gc29mdGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoMzE4NTkpOiBbPGZmZmZmZmZmOWYy
NmY4YjM+XSBpcnFfZXhpdCsweGIzLzB4YzAKPj4+IFsgICAgNC44MTk3MTldIENQVTogMiBQSUQ6
IDIwMDggQ29tbTogc3lzdGVtZC11ZGV2ZCBUYWludGVkOiBHICAgICAgRCAgICAgICAgICAgNS4y
LjAtbmV4dC0yMDE5MDcxMiAjMQo+Pj4gWyAgICA0LjgxOTczOV0gSGFyZHdhcmUgbmFtZTogTkEg
WkJPWC1DSTMyN05BTk8tR1MtMDEvWkJPWC1DSTMyN05BTk8tR1MtMDEsIEJJT1MgNS4xMiAwNC8y
Ni8yMDE4Cj4+PiBbICAgIDQuODE5NzU4XSBDYWxsIFRyYWNlOgo+Pj4gWyAgICA0LjgxOTc3MF0g
IGR1bXBfc3RhY2srMHg3MC8weGEwCj4+PiBbICAgIDQuODE5NzgyXSAgX19fbWlnaHRfc2xlZXAu
Y29sZCsweDlmLzB4YjAKPj4+IFsgICAgNC44MTk3OTRdICBfX21pZ2h0X3NsZWVwKzB4NDYvMHg4
MAo+Pj4gWyAgICA0LjgxOTgwNV0gIGV4aXRfc2lnbmFscysweDJmLzB4MzMwCj4+PiBbICAgIDQu
ODE5ODE2XSAgZG9fZXhpdCsweGIzLzB4YjYwCj4+PiBbICAgIDQuODE5ODI3XSAgcmV3aW5kX3N0
YWNrX2RvX2V4aXQrMHgxNy8weDIwCj4+PiBbICAgIDQuODE5ODM4XSBSSVA6IDAwMzM6MHg3ZmI0
NWRkMmNlM2QKPj4+IFsgICAgNC44MTk4NDldIENvZGU6IDAwIGMzIDY2IDJlIDBmIDFmIDg0IDAw
IDAwIDAwIDAwIDAwIDkwIGYzIDBmIDFlIGZhIDQ4IDg5IGY4IDQ4IDg5IGY3IDQ4IDg5IGQ2IDQ4
IDg5IGNhIDRkIDg5IGMyIDRkIDg5IGM4IDRjIDhiIDRjIDI0IDA4IDBmIDA1IDw0OD4gM2QgMDEg
ZjAgZmYgZmYgNzMgMDEgYzMgNDggOGIgMGQgMjMgNTAgMGMgMDAgZjcgZDggNjQgODkgMDEgNDgK
Pj4+IFsgICAgNC44MTk4ODddIFJTUDogMDAyYjowMDAwN2ZmZjNiOTBlZTQ4IEVGTEFHUzogMDAw
MDAyNDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAxMzkKPj4+IFsgICAgNC44MTk5MDVdIFJBWDog
ZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA1NTg2ZjI3ZWNjYjAgUkNYOiAwMDAwN2ZiNDVkZDJj
ZTNkCj4+PiBbICAgIDQuODE5OTIxXSBSRFg6IDAwMDAwMDAwMDAwMDAwMDAgUlNJOiAwMDAwN2Zi
NDVkOWEyODRkIFJESTogMDAwMDAwMDAwMDAwMDAxNQo+Pj4gWyAgICA0LjgxOTkzN10gUkJQOiAw
MDAwN2ZiNDVkOWEyODRkIFIwODogMDAwMDAwMDAwMDAwMDAwMCBSMDk6IDAwMDAwMDAwMDAwMDAw
MDEKPj4+IFsgICAgNC44MTk5NTNdIFIxMDogMDAwMDAwMDAwMDAwMDAxNSBSMTE6IDAwMDAwMDAw
MDAwMDAyNDYgUjEyOiAwMDAwMDAwMDAwMDAwMDAwCj4+PiBbICAgIDQuODE5OTY5XSBSMTM6IDAw
MDA1NTg2ZjI3ZTIzYjAgUjE0OiAwMDAwMDAwMDAwMDIwMDAwIFIxNTogMDAwMDU1ODZmMjdlY2Ni
MAo+Pj4KPj4KPj4gSSBkZWJ1Z2dlZCBhIGxpdHRsZSBiaXQgYW5kIHJlbW91bnRfZnMgaXNuJ3Qg
c2V0IGluIHNiLT5zX29wLgo+PiBUaGUgZm9sbG93aW5nIGF0IGxlYXN0IGF2b2lkcyB0aGUgTlBF
LCBub3Qgc3VyZSB3aGV0aGVyIGl0J3MgdGhlIGNvcnJlY3QgZml4Lgo+IAo+IEkgdGFrZSBpdCB5
b3UgZG9uJ3QgaGF2ZSBDT05GSUdfVE1QRlMgc2V0Pwo+IApUaGlzIG9wdGlvbiBpcyBzZXQ6Cgpb
cm9vdEB6b3RhYyBsaW51eC1uZXh0XSMgZ3JlcCBUTVBGUyAuY29uZmlnCkNPTkZJR19ERVZUTVBG
Uz15CkNPTkZJR19ERVZUTVBGU19NT1VOVD15CkNPTkZJR19UTVBGUz15CkNPTkZJR19UTVBGU19Q
T1NJWF9BQ0w9eQpDT05GSUdfVE1QRlNfWEFUVFI9eQoKPiBJbiB3aGljaCBjYXNlIHdlIGNhbid0
IHVzZSB0aGUgcmVtb3VudF9mcyB0cmljayBhbmQgd2UgY2FuJ3QgcGFzcwo+IG9wdGlvbnMgdG8g
a2Vybl9tb3VudCgpLiBXZSBjb3VsZCBob3dldmVyIGp1c3Qgc2V0IHRoZSBvcHRpb24gZGlyZWN0
aW9uCj4gaW4gb3VyIHN1cGVyYmxvY2sgLS0gc2FkbHksIHRoZSBkZWZpbmVzIGFyZSBwcml2YXRl
IHNvIHdlIHdpbGwganVzdCBoYXZlCj4gdG8gaG9wZSB0aGV5IGRvbid0IGNoYW5nZSA6KQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1mcy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtZnMuYwo+IGluZGV4IDA5OWYzMzk3YWFkYS4u
NTkxMDMxNWYyMDY5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbWZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1mcy5jCj4g
QEAgLTcsNiArNyw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9mcy5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvbW91bnQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BhZ2VtYXAuaD4KPiArI2luY2x1ZGUgPGxp
bnV4L3NobWVtX2ZzLmg+Cj4gCj4gICNpbmNsdWRlICJpOTE1X2Rydi5oIgo+ICAjaW5jbHVkZSAi
aTkxNV9nZW1mcy5oIgo+IEBAIC0zMywxNyArMzQsMTAgQEAgaW50IGk5MTVfZ2VtZnNfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgICAgICAgICAqLwo+IAo+ICAgICAgICAg
aWYgKGhhc190cmFuc3BhcmVudF9odWdlcGFnZSgpKSB7Cj4gLSAgICAgICAgICAgICAgIHN0cnVj
dCBzdXBlcl9ibG9jayAqc2IgPSBnZW1mcy0+bW50X3NiOwo+ICsgICAgICAgICAgICAgICBzdHJ1
Y3Qgc2htZW1fc2JfaW5mbyAqc2JfaW5mbyA9IGdlbWZzLT5tbnRfc2ItPnNfZnNfaW5mbzsKPiAr
Cj4gICAgICAgICAgICAgICAgIC8qIEZJWE1FOiBEaXNhYmxlZCB1bnRpbCB3ZSBnZXQgVy9BIGZv
ciByZWFkIEJXIGlzc3VlLiAqLwo+IC0gICAgICAgICAgICAgICBjaGFyIG9wdGlvbnNbXSA9ICJo
dWdlPW5ldmVyIjsKPiAtICAgICAgICAgICAgICAgaW50IGZsYWdzID0gMDsKPiAtICAgICAgICAg
ICAgICAgaW50IGVycjsKPiAtCj4gLSAgICAgICAgICAgICAgIGVyciA9IHNiLT5zX29wLT5yZW1v
dW50X2ZzKHNiLCAmZmxhZ3MsIG9wdGlvbnMpOwo+IC0gICAgICAgICAgICAgICBpZiAoZXJyKSB7
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAga2Vybl91bm1vdW50KGdlbWZzKTsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gZXJyOwo+IC0gICAgICAgICAgICAgICB9Cj4gKyAgICAg
ICAgICAgICAgIHNiX2luZm8tPmh1Z2UgPSAwOyAvKiBTSE1FTV9IVUdFX05FVkVSICovCj4gICAg
ICAgICB9Cj4gCj4gICAgICAgICBpOTE1LT5tbS5nZW1mcyA9IGdlbWZzOwo+IAo+IC1DaHJpcwo+
IApIZWluZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2432A2FDFFD
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 04:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 449286E4CA;
	Thu, 21 Jan 2021 03:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEF06E4CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 03:38:09 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id j13so815359edp.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 19:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SjvaqWWMo4dArGhKfMRrOJ7omqOlY2oAKH/Mex2DuNs=;
 b=JPKw55NbRaz/VMvso7/gCKs5vyjnUl9XM6tp08gTLHFq5AeQ25FDTWLOkpho/6FJOZ
 Icd/7OLOD6NEvn9AoCtm2U26gz0vqy6r7DutwF5Uds+lZVi1nqEdX7VovVeCstyDMY7T
 PDvL75pUSGf8Jcs7sCu0/UY3hhzm3TaB63gI1P8YJIpasX3CCJByHBPIU4kwnpe3V3S5
 QOIRje58paMBFikxrsI2+Geq9FNu7Bm7nXFBKAMnE2NYzsbTcoqtfXoaHY1TCM2M25X2
 Ft9+mPM/r5viOSyu6pcj0ELdj43H7yc+quriKLaoI75q958MizckSXhC+qyKIniMnqKm
 oa6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SjvaqWWMo4dArGhKfMRrOJ7omqOlY2oAKH/Mex2DuNs=;
 b=QwROzjaxo94Viw5yNs8+vS6pgZqU52gQexI5KTQ4AfCRbeSbkWnMMrn+kj7/q2UgMn
 gqUTbleaJoQ9+HYegEXF8rq5lpg6uJjBishBraQLCvqQivhtu3NwRHHdbiCgmwjdUG54
 vw7htCWiRdeN1h8a2a2yI/O1ZMyyjszZTthXm4/7V/gMtbfiMNLbB18cNrEzUyBT3RXg
 WtQxXpzrQ/wTn4KjBFHYElcwsdKrrjmczY0mdCNcZKHtqmsgkXVXd6UZviFWVaSZvD39
 OaCpB7lCNqZQ8gHSKdnxTlmdnmAGya52wx30khAs1qseOpnkOAT7xX+OTfvdryuGB6Jj
 2tCA==
X-Gm-Message-State: AOAM533jbp0S00i4XCPzsv+HfXK5KgBZolkv53uzVdRCz0B5vTbBEWR+
 RdbvjDcfb+lpWwAihd1s6u+1a4U1Ik8XajVJc78=
X-Google-Smtp-Source: ABdhPJzyzqGsk+HB/fGSIn2wVQL0NVyrv8+IOIMG87vi/BS38K6ePHL0IF1O3PANkGriByrOgFTL3ZFQT6EFaoLJO5A=
X-Received: by 2002:aa7:d649:: with SMTP id v9mr9450814edr.383.1611200288278; 
 Wed, 20 Jan 2021 19:38:08 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610622609.git.jani.nikula@intel.com>
 <9b51add03de3ffce8a1e9dd59ede79e4e1134c89.1610622609.git.jani.nikula@intel.com>
 <YABpx599AISB4xD0@intel.com>
In-Reply-To: <YABpx599AISB4xD0@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 21 Jan 2021 13:37:57 +1000
Message-ID: <CAPM=9tyMg8=aHSzgC+sZJtRPrKVWqM2RsVo_C_Wxt8MXfivJjA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915: migrate skl planes code new
 file (v3)
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
Cc: Jani Nikula <jani.nikula@intel.com>, Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNSBKYW4gMjAyMSBhdCAwMTo1NywgVmlsbGUgU3lyasOkbMOkCjx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIEphbiAxNCwgMjAyMSBhdCAw
MToxMzo1MFBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiA+IEZyb206IERhdmUgQWlybGll
IDxhaXJsaWVkQHJlZGhhdC5jb20+Cj4gPgo+ID4gUmV3b3JrIHRoZSBwbGFuZSBpbml0IGNhbGxz
IHRvIGRvIHRoZSBnZW4gdGVzdCBvbmUgbGV2ZWwgaGlnaGVyLgo+ID4KPiA+IFJld29yayBzb21l
IG9mIHRoZSBwbGFuZSBoZWxwZXJzIHNvIHRoZXkgY2FuIGxpdmUgaW4gbmV3IGZpbGUsCj4gPiB0
aGVyZSBpcyBzdGlsbCBzb21lIHNjb3BlIHRvIGNsZWFuIHVwIHRoZSBwbGFuZS9mYiBpbnRlcmFj
dGlvbnMKPiA+IGxhdGVyLgo+ID4KPiA+IHYyOiBkcm9wIGF0b21pYyBjb2RlIGJhY2ssIHJlbmFt
ZSBmaWxlIHRvIFZpbGxlIHN1Z2dlc3Rpb25zLAo+ID4gYWRkIGhlYWRlciBmaWxlLgo+ID4gdjM6
IG1vdmUgc2NhbGVyIGJpdHMgYmFjawo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IERhdmUgQWlybGll
IDxhaXJsaWVkQHJlZGhhdC5jb20+Cj4gPiBbSmFuaTogZml4ZWQgdXAgc3BhcnNlIHdhcm5pbmdz
Ll0KPiA+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Cj4gPiBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gPiBS
ZXBvcnRlZC1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgo+ID4g
LS0tCj4gPHNuaXA+Cj4gPiAtdW5zaWduZWQgaW50Cj4gPiAtaW50ZWxfcGxhbmVfZmVuY2VfeV9v
ZmZzZXQoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiA+IC17
Cj4gPiAtICAgICBpbnQgeCA9IDAsIHkgPSAwOwo+ID4gLQo+ID4gLSAgICAgaW50ZWxfcGxhbmVf
YWRqdXN0X2FsaWduZWRfb2Zmc2V0KCZ4LCAmeSwgcGxhbmVfc3RhdGUsIDAsCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5l
WzBdLm9mZnNldCwgMCk7Cj4gPiAtCj4gPiAtICAgICByZXR1cm4geTsKPiA+IC19Cj4KPiBUaGlz
IGdldHRpbmcgbW92ZWQgYXJvdW5kIGlzIG1lc3NpbmcgdXAgdGhlIGRpZmYuCj4KPiA8c25pcD4K
PiA+IEBAIC00Mzg2LDE1ICszNjMzLDYgQEAgc3RhdGljIGludCBza2xfdXBkYXRlX3NjYWxlcl9w
bGFuZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+ICAgICAgIHJldHVy
biAwOwo+ID4gIH0KPiA+Cj4gPiAtdm9pZCBza2xfc2NhbGVyX2Rpc2FibGUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQo+ID4gLXsKPiA+IC0gICAgIHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjKTsKPiA+IC0gICAgIGludCBpOwo+ID4gLQo+ID4gLSAgICAgZm9yIChpID0gMDsgaSA8IGNy
dGMtPm51bV9zY2FsZXJzOyBpKyspCj4gPiAtICAgICAgICAgICAgIHNrbF9kZXRhY2hfc2NhbGVy
KGNydGMsIGkpOwo+ID4gLX0KPgo+IFNhbWUgaGVyZS4KCldpZXJkIG5vdCBzdXJlIGhvdyB0byBn
ZW5lcmF0ZSBpdCBiZXR0ZXIuCj4KPiA8c25pcD4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ID4gaW5kZXggZjc2ZTJjMmE4M2I4Li44ZTRiNjY0Nzc1
MmYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jCj4gPiBAQCAtMzksNiArMzksNyBAQAo+ID4gICNpbmNsdWRlICJpbnRlbF9kcF9tc3QuaCIK
PiA+ICAjaW5jbHVkZSAiaW50ZWxfZHBpb19waHkuaCIKPiA+ICAjaW5jbHVkZSAiaW50ZWxfaGRj
cC5oIgo+ID4gKyNpbmNsdWRlICJza2xfdW5pdmVyc2FsX3BsYW5lLmgiCj4KPiBXaHkgaXMgdGhp
cyBoZXJlPwoKTm90IHN1cmUsIHByb2JhYmx5IGxlZnQgb3ZlciBmcm9tIG1vdmluZyBzY2FsZXIs
IGRyb3BwZWQgaXQgbm93LgoKPgo+ID4KPiA+ICBzdGF0aWMgaW50IGludGVsX2RwX21zdF9jb21w
dXRlX2xpbmtfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMKPiA+IGluZGV4IGMyNGFlNjk0MjZjZi4uMGQwYjBkM2M1MmExIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gQEAgLTMxLDYgKzMxLDcgQEAK
PiA+ICAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiCj4gPiAgI2luY2x1ZGUgImludGVsX3Nwcml0ZS5o
Igo+ID4gICNpbmNsdWRlICJpbnRlbF9oZG1pLmgiCj4gPiArI2luY2x1ZGUgInNrbF91bml2ZXJz
YWxfcGxhbmUuaCIKPgo+IElzIHRoaXMgZHVlIHRvIHRoZSBwc3IgZGFtYWdlIHN0dWZmPwoKaW50
ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaCBjYWxscyBza2xfY2FsY19tYWluX3N1cmZh
Y2Vfb2Zmc2V0Cj4KPiA8c25pcD4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3Zsdl9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2Rz
aS5jCj4gPiBpbmRleCBmOTQwMjVlYzYwM2EuLmViZjI2NjQ1NzUxOCAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYwo+ID4gQEAgLTM4LDYgKzM4LDcgQEAKPiA+
ICAjaW5jbHVkZSAiaW50ZWxfZmlmb191bmRlcnJ1bi5oIgo+ID4gICNpbmNsdWRlICJpbnRlbF9w
YW5lbC5oIgo+ID4gICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgo+ID4gKyNpbmNsdWRlICJz
a2xfdW5pdmVyc2FsX3BsYW5lLmgiCj4KPiBXaHkgZG8gd2UgbmVlZCB0aGlzIGhlcmU/Cj4KT29w
cyBhcyB3ZWxsLCBkcm9wcGVkIGl0LgoKRGF2ZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==

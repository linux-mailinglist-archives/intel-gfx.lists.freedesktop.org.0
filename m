Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597BD164A29
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 17:23:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D4C6EC51;
	Wed, 19 Feb 2020 16:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6656EC51
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 16:23:54 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id j16so710822otl.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 08:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hmdjKhF3Z/qucnZ2w6GZir5gQNMISo3B/muIUWpS6pM=;
 b=LNmNvYvRIwz8TDcvPuIclY9vQJBrR+aZw9TTeVPAWhwqXzL0LG392l59z5iEoJTke5
 iklALUjLqaCKqM4YEMSEhQIYHiPnaepWiNeaQtLZycSLumpQhKl+MvLe6WhBPohHCvX8
 lqSC0XnkH2hlc4eL2iNYeBnzHXRi3/DHe6aOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hmdjKhF3Z/qucnZ2w6GZir5gQNMISo3B/muIUWpS6pM=;
 b=oZGWCEXEMXMNphG/91VogNwvTVMSgSmBTR3a15f10pJnb172HItg5D7L/dluCdUyrS
 hGIsYsOZP0lZUJ0XotHGG3VERHMhALewayn1XFHenpRgJgZytaMhMjSUhNgkEcmu3aGU
 RTqLPVFdyh5GyO0NiVUquFAjzabme5xvyVzCV9C6Hu9BQNFEw0yiJF1nHG5O5A/WJyCv
 /yRtKTGErAyvUHVVIdKKcnZgDxpZA94J+lBI4kg0EcyuZljIveKTWFAbgT6HUPOncXbG
 c3apdOJoKn3kPmrdaC+GK/NUm68+vFfQvleyUQHZ6Fr/Q8qNUtrDCUobrhEz8PKtb2Bk
 oG9Q==
X-Gm-Message-State: APjAAAW6LA9Ght4P5n6+3AkNSOXYzTt8VsSyt5/CRc4l3YXkktrNonsV
 KBTEE6GtXgaZRsRCvHZ9MQGYMO6uTj91L0kMtBoKWw==
X-Google-Smtp-Source: APXvYqzk+NKMV9L5BCl/uOjvT4Gl5xBFOuKi1NUzWz03wWCWJkt50PlOrB3cBcw9TOK993zUIn95JxhNu+ggDWmtfqA=
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr21489745otq.281.1582129433980; 
 Wed, 19 Feb 2020 08:23:53 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-28-daniel.vetter@ffwll.ch>
 <20200219134956.GG5070@pendragon.ideasonboard.com>
 <CAKMK7uEn6WobnrLf9AeqVgMjbtKExsHt64yvaQ_RtBSpk7h2gw@mail.gmail.com>
 <20200219160756.GZ5070@pendragon.ideasonboard.com>
In-Reply-To: <20200219160756.GZ5070@pendragon.ideasonboard.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 19 Feb 2020 17:23:43 +0100
Message-ID: <CAKMK7uFjHCi=NnejipMM9t0daTa58r6JwvCLfOqpPs=rM8YRWg@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [Intel-gfx] [PATCH 27/52] drm: Manage drm_mode_config_init with
 drmm_
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBGZWIgMTksIDIwMjAgYXQgNTowOCBQTSBMYXVyZW50IFBpbmNoYXJ0CjxsYXVyZW50
LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gSGkgRGFuaWVsLAo+Cj4gT24g
V2VkLCBGZWIgMTksIDIwMjAgYXQgMDQ6NDc6NTVQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3cm90
ZToKPiA+IE9uIFdlZCwgRmViIDE5LCAyMDIwIGF0IDI6NTAgUE0gTGF1cmVudCBQaW5jaGFydCB3
cm90ZToKPiA+ID4gT24gV2VkLCBGZWIgMTksIDIwMjAgYXQgMTE6MjA6NTdBTSArMDEwMCwgRGFu
aWVsIFZldHRlciB3cm90ZToKPiA+ID4gPiBkcm1fbW9kZV9jb25maWdfY2xlYW51cCBpcyBpZGVt
cG90ZW50LCBzbyBubyBoYXJtIGluIGNhbGxpbmcgdGhpcwo+ID4gPiA+IHR3aWNlLiBUaGlzIGFs
bG93cyB1cyB0byBncmFkdWFsbHkgc3dpdGNoIGRyaXZlcnMgb3ZlciBieSByZW1vdmluZwo+ID4g
PiA+IGV4cGxpY2l0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwIGNhbGxzLgo+ID4gPiA+Cj4gPiA+
ID4gV2l0aCB0aGlzIHN0ZXAgaXQncyBub3QgYWxzbyBwb3NzaWJsZSB0aGF0IChhdCBsZWFzdCBm
b3Igc2ltcGxlCj4gPiA+ID4gZHJpdmVycykgYXV0b21hdGljIHJlc291cmNlIGNsZWFudXAgY2Fu
IGJlIGRvbmUgY29ycmVjdGx5IHdpdGhvdXQgYQo+ID4gPiA+IGRybV9kcml2ZXItPnJlbGVhc2Ug
aG9vay4gVGhlcmVmb3JlIGFsbG93IHRoaXMgbm93IGluCj4gPiA+ID4gZGV2bV9kcm1fZGV2X2lu
aXQoKS4KPiA+ID4gPgo+ID4gPiA+IEFsc28gd2l0aCBkcm1tXyBleHBsaWNpdCBkcm1fZHJpdmVy
LT5yZWxlYXNlIGhvb2tzIGFyZSBraW5kYSBub3QgdGhlCj4gPiA+ID4gYmVzdCBvcHRpb24sIHNv
IGRlcHJlY2F0ZSB0aGF0IGhvb2sgdG8gZGlzY291cmFnZSBmdXR1cmUgdXNlcnMuCj4gPiA+ID4K
PiA+ID4gPiB2MjogRml4dXAgdGhlIGV4YW1wbGUgaW4gdGhlIGtlcm5lbGRvYyB0b28uCj4gPiA+
ID4KPiA+ID4gPiBDYzogIk5vcmFsZiBUcsO4bm5lcyIgPG5vcmFsZkB0cm9ubmVzLm9yZz4KPiA+
ID4gPiBDYzogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgo+ID4gPiA+IENjOiBUaG9t
YXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+ID4gPiAtLS0KPiA+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYyAgICAgICAgIHwgMjEgKysrKystLS0tLS0t
LS0tLS0tLS0tCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9jb25maWcuYyB8IDEy
ICsrKysrKysrKysrLQo+ID4gPiA+ICBpbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCAgICAg
fCAgMiArLQo+ID4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDE4IGRl
bGV0aW9ucygtKQo+ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rydi5jCj4gPiA+ID4gaW5kZXggM2NmNDA4
NjRkNGE2Li40MjhjNTY5YWFhZjEgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9kcnYuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHJ2LmMKPiA+ID4g
PiBAQCAtMjY3LDggKzI2Nyw3IEBAIHZvaWQgZHJtX21pbm9yX3JlbGVhc2Uoc3RydWN0IGRybV9t
aW5vciAqbWlub3IpCj4gPiA+ID4gICAqCj4gPiA+ID4gICAqIFRoZSBmb2xsb3dpbmcgZXhhbXBs
ZSBzaG93cyBhIHR5cGljYWwgc3RydWN0dXJlIG9mIGEgRFJNIGRpc3BsYXkgZHJpdmVyLgo+ID4g
PiA+ICAgKiBUaGUgZXhhbXBsZSBmb2N1cyBvbiB0aGUgcHJvYmUoKSBmdW5jdGlvbiBhbmQgdGhl
IG90aGVyIGZ1bmN0aW9ucyB0aGF0IGlzCj4gPiA+ID4gLSAqIGFsbW9zdCBhbHdheXMgcHJlc2Vu
dCBhbmQgc2VydmVzIGFzIGEgZGVtb25zdHJhdGlvbiBvZiBkZXZtX2RybV9kZXZfaW5pdCgpCj4g
PiA+ID4gLSAqIHVzYWdlIHdpdGggaXRzIGFjY29tcGFueWluZyBkcm1fZHJpdmVyLT5yZWxlYXNl
IGNhbGxiYWNrLgo+ID4gPiA+ICsgKiBhbG1vc3QgYWx3YXlzIHByZXNlbnQgYW5kIHNlcnZlcyBh
cyBhIGRlbW9uc3RyYXRpb24gb2YgZGV2bV9kcm1fZGV2X2luaXQoKS4KPiA+ID4gPiAgICoKPiA+
ID4gPiAgICogLi4gY29kZS1ibG9jazo6IGMKPiA+ID4gPiAgICoKPiA+ID4gPiBAQCAtMjc4LDE2
ICsyNzcsOCBAQCB2b2lkIGRybV9taW5vcl9yZWxlYXNlKHN0cnVjdCBkcm1fbWlub3IgKm1pbm9y
KQo+ID4gPiA+ICAgKiAgICAgICAgICAgc3RydWN0IGNsayAqcGNsazsKPiA+ID4gPiAgICogICB9
Owo+ID4gPiA+ICAgKgo+ID4gPiA+IC0gKiAgIHN0YXRpYyB2b2lkIGRyaXZlcl9kcm1fcmVsZWFz
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZHJtKQo+ID4gPiA+IC0gKiAgIHsKPiA+ID4gPiAtICogICAg
ICAgICAgIHN0cnVjdCBkcml2ZXJfZGV2aWNlICpwcml2ID0gY29udGFpbmVyX29mKC4uLik7Cj4g
PiA+ID4gLSAqCj4gPiA+ID4gLSAqICAgICAgICAgICBkcm1fbW9kZV9jb25maWdfY2xlYW51cChk
cm0pOwo+ID4gPiA+IC0gKiAgIH0KPiA+ID4gPiAtICoKPiA+ID4gPiAgICogICBzdGF0aWMgc3Ry
dWN0IGRybV9kcml2ZXIgZHJpdmVyX2RybV9kcml2ZXIgPSB7Cj4gPiA+ID4gICAqICAgICAgICAg
ICBbLi4uXQo+ID4gPiA+IC0gKiAgICAgICAgICAgLnJlbGVhc2UgPSBkcml2ZXJfZHJtX3JlbGVh
c2UsCj4gPiA+ID4gICAqICAgfTsKPiA+ID4gPiAgICoKPiA+ID4gPiAgICogICBzdGF0aWMgaW50
IGRyaXZlcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiA+IEBAIC0z
MTIsNyArMzAzLDkgQEAgdm9pZCBkcm1fbWlub3JfcmVsZWFzZShzdHJ1Y3QgZHJtX21pbm9yICpt
aW5vcikKPiA+ID4gPiAgICogICAgICAgICAgIH0KPiA+ID4gPiAgICogICAgICAgICAgIGRybW1f
YWRkX2ZpbmFsX2tmcmVlKGRybSwgcHJpdik7Cj4gPiA+ID4gICAqCj4gPiA+ID4gLSAqICAgICAg
ICAgICBkcm1fbW9kZV9jb25maWdfaW5pdChkcm0pOwo+ID4gPiA+ICsgKiAgICAgICAgICAgcmV0
ID0gZHJtX21vZGVfY29uZmlnX2luaXQoZHJtKTsKPiA+ID4gPiArICogICAgICAgICAgIGlmIChy
ZXQpCj4gPiA+ID4gKyAqICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gICAq
Cj4gPiA+ID4gICAqICAgICAgICAgICBwcml2LT51c2Vyc3BhY2VfZmFjaW5nID0gZHJtbV9remFs
bG9jKC4uLiwgR0ZQX0tFUk5FTCk7Cj4gPiA+ID4gICAqICAgICAgICAgICBpZiAoIXByaXYtPnVz
ZXJzcGFjZV9mYWNpbmcpCj4gPiA+ID4gQEAgLTcxMCw4ICs3MDMsNyBAQCBzdGF0aWMgdm9pZCBk
ZXZtX2RybV9kZXZfaW5pdF9yZWxlYXNlKHZvaWQgKmRhdGEpCj4gPiA+ID4gICAqIEBkcml2ZXI6
IERSTSBkcml2ZXIKPiA+ID4gPiAgICoKPiA+ID4gPiAgICogTWFuYWdlZCBkcm1fZGV2X2luaXQo
KS4gVGhlIERSTSBkZXZpY2UgaW5pdGlhbGl6ZWQgd2l0aCB0aGlzIGZ1bmN0aW9uIGlzCj4gPiA+
ID4gLSAqIGF1dG9tYXRpY2FsbHkgcHV0IG9uIGRyaXZlciBkZXRhY2ggdXNpbmcgZHJtX2Rldl9w
dXQoKS4gWW91IG11c3Qgc3VwcGx5IGEKPiA+ID4gPiAtICogJmRybV9kcml2ZXIucmVsZWFzZSBj
YWxsYmFjayB0byBjb250cm9sIHRoZSBmaW5hbGl6YXRpb24gZXhwbGljaXRseS4KPiA+ID4gPiAr
ICogYXV0b21hdGljYWxseSBwdXQgb24gZHJpdmVyIGRldGFjaCB1c2luZyBkcm1fZGV2X3B1dCgp
Lgo+ID4gPiA+ICAgKgo+ID4gPiA+ICAgKiBSRVRVUk5TOgo+ID4gPiA+ICAgKiAwIG9uIHN1Y2Nl
c3MsIG9yIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KPiA+ID4gPiBAQCAtNzIyLDkgKzcxNCw2IEBA
IGludCBkZXZtX2RybV9kZXZfaW5pdChzdHJ1Y3QgZGV2aWNlICpwYXJlbnQsCj4gPiA+ID4gIHsK
PiA+ID4gPiAgICAgICBpbnQgcmV0Owo+ID4gPiA+Cj4gPiA+ID4gLSAgICAgaWYgKFdBUk5fT04o
IWRyaXZlci0+cmVsZWFzZSkpCj4gPiA+ID4gLSAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsK
PiA+ID4gPiAtCj4gPiA+ID4gICAgICAgcmV0ID0gZHJtX2Rldl9pbml0KGRldiwgZHJpdmVyLCBw
YXJlbnQpOwo+ID4gPiA+ICAgICAgIGlmIChyZXQpCj4gPiA+ID4gICAgICAgICAgICAgICByZXR1
cm4gcmV0Owo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVfY29u
ZmlnLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVfY29uZmlnLmMKPiA+ID4gPiBpbmRleCAw
OGU2ZWZmNmExNzkuLjk1N2RiMWVkYmEwYyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX21vZGVfY29uZmlnLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X21vZGVfY29uZmlnLmMKPiA+ID4gPiBAQCAtMjUsNiArMjUsNyBAQAo+ID4gPiA+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9kcnYuaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGRybS9kcm1fZW5jb2Rlci5oPgo+
ID4gPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9maWxlLmg+Cj4gPiA+ID4gKyNpbmNsdWRlIDxkcm0v
ZHJtX21hbmFnZWQuaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGRybS9kcm1fbW9kZV9jb25maWcuaD4K
PiA+ID4gPiAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGxp
bnV4L2RtYS1yZXN2Lmg+Cj4gPiA+ID4gQEAgLTM3Myw2ICszNzQsMTEgQEAgc3RhdGljIGludCBk
cm1fbW9kZV9jcmVhdGVfc3RhbmRhcmRfcHJvcGVydGllcyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
KQo+ID4gPiA+ICAgICAgIHJldHVybiAwOwo+ID4gPiA+ICB9Cj4gPiA+ID4KPiA+ID4gPiArc3Rh
dGljIHZvaWQgZHJtX21vZGVfY29uZmlnX2luaXRfcmVsZWFzZShzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkICpwdHIpCj4gPiA+ID4gK3sKPiA+ID4gPiArICAgICBkcm1fbW9kZV9jb25maWdf
Y2xlYW51cChkZXYpOwo+ID4gPiA+ICt9Cj4gPiA+ID4gKwo+ID4gPiA+ICAvKioKPiA+ID4gPiAg
ICogZHJtX21vZGVfY29uZmlnX2luaXQgLSBpbml0aWFsaXplIERSTSBtb2RlX2NvbmZpZ3VyYXRp
b24gc3RydWN0dXJlCj4gPiA+ID4gICAqIEBkZXY6IERSTSBkZXZpY2UKPiA+ID4gPiBAQCAtMzg0
LDggKzM5MCwxMCBAQCBzdGF0aWMgaW50IGRybV9tb2RlX2NyZWF0ZV9zdGFuZGFyZF9wcm9wZXJ0
aWVzKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gPiA+ID4gICAqIHByb2JsZW0sIHNpbmNlIHRo
aXMgc2hvdWxkIGhhcHBlbiBzaW5nbGUgdGhyZWFkZWQgYXQgaW5pdCB0aW1lLiBJdCBpcyB0aGUK
PiA+ID4gPiAgICogZHJpdmVyJ3MgcHJvYmxlbSB0byBlbnN1cmUgdGhpcyBndWFyYW50ZWUuCj4g
PiA+ID4gICAqCj4gPiA+ID4gKyAqIENsZWFudXAgaXMgYXV0b21hdGljYWxseSBoYW5kbGVkIHRo
cm91Z2ggcmVnaXN0ZXJpbmcgZHJtX21vZGVfY29uZmlnX2NsZWFudXAKPiA+ID4gPiArICogd2l0
aCBkcm1tX2FkZF9hY3Rpb24oKS4KPiA+ID4gPiAgICovCj4gPiA+ID4gLXZvaWQgZHJtX21vZGVf
Y29uZmlnX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiA+ID4gPiAraW50IGRybV9tb2Rl
X2NvbmZpZ19pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gPiA+ID4gIHsKPiA+ID4gPiAg
ICAgICBtdXRleF9pbml0KCZkZXYtPm1vZGVfY29uZmlnLm11dGV4KTsKPiA+ID4gPiAgICAgICBk
cm1fbW9kZXNldF9sb2NrX2luaXQoJmRldi0+bW9kZV9jb25maWcuY29ubmVjdGlvbl9tdXRleCk7
Cj4gPiA+ID4gQEAgLTQ0Myw2ICs0NTEsOCBAQCB2b2lkIGRybV9tb2RlX2NvbmZpZ19pbml0KHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gPiA+ID4gICAgICAgICAgICAgICBkcm1fbW9kZXNldF9h
Y3F1aXJlX2ZpbmkoJm1vZGVzZXRfY3R4KTsKPiA+ID4gPiAgICAgICAgICAgICAgIGRtYV9yZXN2
X2ZpbmkoJnJlc3YpOwo+ID4gPiA+ICAgICAgIH0KPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgcmV0
dXJuIGRybW1fYWRkX2FjdGlvbihkZXYsIGRybV9tb2RlX2NvbmZpZ19pbml0X3JlbGVhc2UsIE5V
TEwpOwo+ID4gPgo+ID4gPiBJZiB0aGlzIGZhaWxzLCBzaG91bGRuJ3QgZHJtX21vZGVfY29uZmln
X2NsZWFudXAoKSBiZSBjYWxsZWQgaGVyZSA/Cj4gPgo+ID4gTWF5YmUgZm9yIG9jZCByZWFzb25z
LCBidXQgbm90IGZvciBhY3R1YWxseSBjbGVhbmluZyB1cCBhbnl0aGluZy4gSXQncwo+ID4ganVz
dCBhIGJ1bmNoIG9mIGVtcHR5IGxpc3RzIHRoYXQgZHJtX21vZGVfY29uZmlnX2NsZWFudXAgd2ls
bCB3YWxrIGFuZAo+ID4gZG8gbm90aGluZyBhYm91dC4gTm90IHN1cmUgSSBzaG91bGQgYWRkIHRo
YXQgLi4uCj4KPiBIb3cgYWJvdXQgdGhlIGlkYSBpbml0LCBhbmQgdGhlIG11dGV4X2luaXQoKSB0
aGF0IGlzbid0IGEgbm8tb3Agd2hlbgo+IGxvY2sgZGVidWdnaW5nIGlzIGVuYWJsZWQgPwoKSG0g
cmlnaHQsIEknbGwgZml4IHRoaXMuCgpGdW4gdGhpbmcgaXMgdGhhdCBJJ3ZlIGZvdW5kIGEgcGls
ZSBvZiBtaXNzaW5nIG11dGV4X2Rlc3Ryb3kgYW5kCmlkYV9jbGVhbnVwKCkgd2hpbGUgcmV2aWV3
aW5nIGFsbCB0aGUgY29kZSBJJ3ZlIHJlYWQuIE5vdCBzdXJlIEkndmUKZml4ZWQgdGhlbSBhbGwg
dXAgLi4uCi1EYW5pZWwKCj4KPiA+ID4gPiAgfQo+ID4gPiA+ICBFWFBPUlRfU1lNQk9MKGRybV9t
b2RlX2NvbmZpZ19pbml0KTsKPiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2Ry
bS9kcm1fbW9kZV9jb25maWcuaCBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5oCj4gPiA+
ID4gaW5kZXggM2JjYmUzMDMzOWYwLi4xNjBhM2U0YjUxYzMgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEv
aW5jbHVkZS9kcm0vZHJtX21vZGVfY29uZmlnLmgKPiA+ID4gPiArKysgYi9pbmNsdWRlL2RybS9k
cm1fbW9kZV9jb25maWcuaAo+ID4gPiA+IEBAIC05MjksNyArOTI5LDcgQEAgc3RydWN0IGRybV9t
b2RlX2NvbmZpZyB7Cj4gPiA+ID4gICAgICAgY29uc3Qgc3RydWN0IGRybV9tb2RlX2NvbmZpZ19o
ZWxwZXJfZnVuY3MgKmhlbHBlcl9wcml2YXRlOwo+ID4gPiA+ICB9Owo+ID4gPiA+Cj4gPiA+ID4g
LXZvaWQgZHJtX21vZGVfY29uZmlnX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRldik7Cj4gPiA+
ID4gK2ludCBkcm1fbW9kZV9jb25maWdfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KTsKPiA+
ID4gPiAgdm9pZCBkcm1fbW9kZV9jb25maWdfcmVzZXQoc3RydWN0IGRybV9kZXZpY2UgKmRldik7
Cj4gPiA+ID4gIHZvaWQgZHJtX21vZGVfY29uZmlnX2NsZWFudXAoc3RydWN0IGRybV9kZXZpY2Ug
KmRldik7Cj4gPiA+ID4KPgo+IC0tCj4gUmVnYXJkcywKPgo+IExhdXJlbnQgUGluY2hhcnQKCgoK
LS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0
MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

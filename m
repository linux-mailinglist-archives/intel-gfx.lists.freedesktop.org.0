Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE2AB601E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 11:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50EE06EE82;
	Wed, 18 Sep 2019 09:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F3886EE85
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 09:28:55 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id t3so3766550edw.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 02:28:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=iZW+lhKTcnXLEqPXQ/983ryhulpzj13pABy2plq1O5A=;
 b=CUmaVKr7sbVaUGqpLR4vghnHziyAc8NP4RCXXf2h6haM+2OBEkp1cgx3yU6rZT+RfF
 SuLKBrESphUw0Tf328b1VS9lQ55Vtvz0oPTWQEsFnEyMeRroMjfRHI/WT56edrnk9F/y
 TJm4M4Z2mT8CRF9sDGc7AXikkv4I028nxuJ3+t0vjkpHa6pVPFtPBgLmHrsg/GUcicJ/
 2LOKn8xMJAYIKnu2TcsIoiNprcoU+EF8XcK95ZA3r7ndUNa+iVbfRrDbNzEaJnI/9iYu
 2yUQESkx7BExdbfO7pQ3y6xaQeOF91eG+pqnoKQGaAbCjepPAgjIGezsuIxlh5re9Igv
 VuXg==
X-Gm-Message-State: APjAAAXclGgT2PLxoSy2obk1D+fnrGsI3ZKa3u2B4d1DDLCdZOFS6ouP
 2xheHsRNd38oCJcErxrcoqDiEw==
X-Google-Smtp-Source: APXvYqxElT++3xmuwjI568JhcsVZKeMTwlMXOLqrwphlmOsFEykFjRxr2ZG7B9KyC8ZerC/Zb/RQxA==
X-Received: by 2002:a50:e701:: with SMTP id a1mr9371894edn.108.1568798934038; 
 Wed, 18 Sep 2019 02:28:54 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id z20sm932698edb.3.2019.09.18.02.28.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 02:28:53 -0700 (PDT)
Date: Wed, 18 Sep 2019 11:28:51 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20190918092851.GD3958@phenom.ffwll.local>
References: <20190917120936.7501-1-daniel.vetter@ffwll.ch>
 <20190917120936.7501-2-daniel.vetter@ffwll.ch>
 <c29ad9ca62a8d1d6bf084b0f36a88923b4fc5c50.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c29ad9ca62a8d1d6bf084b0f36a88923b4fc5c50.camel@redhat.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=iZW+lhKTcnXLEqPXQ/983ryhulpzj13pABy2plq1O5A=;
 b=jax4TeoB+NiGrN2HOclrzjOso/hHgZ9vnqnnz+VFZab4mrmgwIA2QYirhkOJuzowZy
 o2qzk52FcDL9ItOrG1/1DB9ZeKaY9P25yeK9b3QyAXBXlqfIP0+ugKJrl9Sh0sfynFjS
 tOEt2i2yWGzSOYOP3WsNDbE8W1SGj3aU13PjA=
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/doc: Improve docs around connector
 (un)registration
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMDM6NDA6MjlQTSAtMDQwMCwgTHl1ZGUgUGF1bCB3cm90
ZToKPiBSZXZpZXdlZC1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KClRoYW5rcyBm
b3IgdGFraW5nIGEgbG9vaywgcHVzaGVkIHRvIGRybS1taXNjLW5leHQuCi1EYW5pZWwKPiAKPiBP
biBUdWUsIDIwMTktMDktMTcgYXQgMTQ6MDkgKzAyMDAsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4g
PiBDdXJyZW50IGNvZGUgaXMgcXVpdGUgYSBtZXNzIHVuZm9ydHVuYXRlbHksIHNvIGFsc28gYWRk
IGEgdG9kby5yc3QKPiA+IGVudHJ5IHRvIG1heWJlIGZpeCBpdCB1cCBldmVudHVhbGx5Lgo+ID4g
Cj4gPiBDYzogTWljaGVsIETDpG56ZXIgPG1pY2hlbEBkYWVuemVyLm5ldD4KPiA+IFNpZ25lZC1v
ZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4g
PiAgRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QgICAgICB8IDEyICsrKysrKysrKysrKwo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMgfCAxMCArKysrKysrKy0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyB8ICA4ICsrKysrKysrCj4gPiAgMyBmaWxlcyBj
aGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QgYi9Eb2N1bWVudGF0aW9uL2dwdS90b2Rv
LnJzdAo+ID4gaW5kZXggMzI3ODdhY2ZmMGE4Li44ZGMxNDdjOTNjOWMgMTAwNjQ0Cj4gPiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2dwdS90b2RvLnJzdAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUv
dG9kby5yc3QKPiA+IEBAIC0yODQsNiArMjg0LDE4IEBAIGRybV9mYl9oZWxwZXIgdGFza3MKPiA+
ICAgIHJlbW92ZWQ6IGRybV9mYl9oZWxwZXJfc2luZ2xlX2FkZF9hbGxfY29ubmVjdG9ycygpLAo+
ID4gICAgZHJtX2ZiX2hlbHBlcl9hZGRfb25lX2Nvbm5lY3RvcigpIGFuZAo+ID4gZHJtX2ZiX2hl
bHBlcl9yZW1vdmVfb25lX2Nvbm5lY3RvcigpLgo+ID4gIAo+ID4gK2Nvbm5lY3RvciByZWdpc3Rl
ci91bnJlZ2lzdGVyIGZpeGVzCj4gPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiA+ICsKPiA+ICstIEZvciBtb3N0IGNvbm5lY3RvcnMgaXQncyBhIG5vLW9wIHRvIGNhbGwK
PiA+IGRybV9jb25uZWN0b3JfcmVnaXN0ZXIvdW5yZWdpc3Rlcgo+ID4gKyAgZGlyZWN0bHkgZnJv
bSBkcml2ZXIgY29kZSwgZHJtX2Rldl9yZWdpc3Rlci91bnJlZ2lzdGVyIHRha2UgY2FyZSBvZiB0
aGlzCj4gPiArICBhbHJlYWR5LiBXZSBjYW4gcmVtb3ZlIGFsbCBvZiB0aGVtLgo+ID4gKwo+ID4g
Ky0gRm9yIGRwIGRyaXZlcnMgaXQncyBhIGJpdCBtb3JlIGEgbWVzcywgc2luY2Ugd2UgbmVlZCB0
aGUgY29ubmVjdG9yIHRvIGJlCj4gPiArICByZWdpc3RlcmVkIHdoZW4gY2FsbGluZyBkcm1fZHBf
YXV4X3JlZ2lzdGVyLiBGaXggdGhpcyBieSBpbnN0ZWFkIGNhbGxpbmcKPiA+ICsgIGRybV9kcF9h
dXhfaW5pdCwgYW5kIG1vdmluZyB0aGUgYWN0dWFsIHJlZ2lzdGVyaW5nIGludG8gYSBsYXRlX3Jl
Z2lzdGVyCj4gPiArICBjYWxsYmFjayBhcyByZWNvbW1lbmRlZCBpbiB0aGUga2VybmVsZG9jLgo+
ID4gKwo+ID4gIENvcmUgcmVmYWN0b3JpbmdzCj4gPiAgPT09PT09PT09PT09PT09PT0KPiA+ICAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKPiA+IGluZGV4IDRjNzY2NjI0YjIwZC4uY2Q1
MDQ4Y2VhYjFkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3Iu
Ywo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwo+ID4gQEAgLTQ4MCw3
ICs0ODAsMTAgQEAgRVhQT1JUX1NZTUJPTChkcm1fY29ubmVjdG9yX2NsZWFudXApOwo+ID4gICAq
IGRybV9jb25uZWN0b3JfcmVnaXN0ZXIgLSByZWdpc3RlciBhIGNvbm5lY3Rvcgo+ID4gICAqIEBj
b25uZWN0b3I6IHRoZSBjb25uZWN0b3IgdG8gcmVnaXN0ZXIKPiA+ICAgKgo+ID4gLSAqIFJlZ2lz
dGVyIHVzZXJzcGFjZSBpbnRlcmZhY2VzIGZvciBhIGNvbm5lY3Rvcgo+ID4gKyAqIFJlZ2lzdGVy
IHVzZXJzcGFjZSBpbnRlcmZhY2VzIGZvciBhIGNvbm5lY3Rvci4gT25seSBjYWxsIHRoaXMgZm9y
Cj4gPiBjb25uZWN0b3JzCj4gPiArICogd2hpY2ggY2FuIGJlIGhvdHBsdWdnZWQgYWZ0ZXIgZHJt
X2Rldl9yZWdpc3RlcigpIGhhcyBiZWVuIGNhbGxlZAo+ID4gYWxyZWFkeSwKPiA+ICsgKiBlLmcu
IERQIE1TVCBjb25uZWN0b3JzLiBBbGwgb3RoZXIgY29ubmVjdG9ycyB3aWxsIGJlIHJlZ2lzdGVy
ZWQKPiA+IGF1dG9tYXRpY2FsbHkKPiA+ICsgKiB3aGVuIGNhbGxpbmcgZHJtX2Rldl9yZWdpc3Rl
cigpLgo+ID4gICAqCj4gPiAgICogUmV0dXJuczoKPiA+ICAgKiBaZXJvIG9uIHN1Y2Nlc3MsIGVy
cm9yIGNvZGUgb24gZmFpbHVyZS4KPiA+IEBAIC01MjYsNyArNTI5LDEwIEBAIEVYUE9SVF9TWU1C
T0woZHJtX2Nvbm5lY3Rvcl9yZWdpc3Rlcik7Cj4gPiAgICogZHJtX2Nvbm5lY3Rvcl91bnJlZ2lz
dGVyIC0gdW5yZWdpc3RlciBhIGNvbm5lY3Rvcgo+ID4gICAqIEBjb25uZWN0b3I6IHRoZSBjb25u
ZWN0b3IgdG8gdW5yZWdpc3Rlcgo+ID4gICAqCj4gPiAtICogVW5yZWdpc3RlciB1c2Vyc3BhY2Ug
aW50ZXJmYWNlcyBmb3IgYSBjb25uZWN0b3IKPiA+ICsgKiBVbnJlZ2lzdGVyIHVzZXJzcGFjZSBp
bnRlcmZhY2VzIGZvciBhIGNvbm5lY3Rvci4gT25seSBjYWxsIHRoaXMgZm9yCj4gPiArICogY29u
bmVjdG9ycyB3aGljaCBoYXZlIHJlZ2lzdGVyZWQgZXhwbGljaXRseSBieSBjYWxsaW5nCj4gPiBk
cm1fZGV2X3JlZ2lzdGVyKCksCj4gPiArICogc2luY2UgY29ubmVjdG9ycyBhcmUgdW5yZWdpc3Rl
cmVkIGF1dG9tYXRpY2FsbHkgd2hlbgo+ID4gZHJtX2Rldl91bnJlZ2lzdGVyKCkgaXMKPiA+ICsg
KiBjYWxsZWQuCj4gPiAgICovCj4gPiAgdm9pZCBkcm1fY29ubmVjdG9yX3VucmVnaXN0ZXIoc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiA+ICB7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rw
X2hlbHBlci5jCj4gPiBpbmRleCBmZmM2OGQzMDVhZmUuLmYzNzM3OThkODJmNiAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfaGVscGVyLmMKPiA+IEBAIC0xMTA5LDYgKzExMDksMTQgQEAgRVhQT1JU
X1NZTUJPTChkcm1fZHBfYXV4X2luaXQpOwo+ID4gICAqIEBhdXg6IERpc3BsYXlQb3J0IEFVWCBj
aGFubmVsCj4gPiAgICoKPiA+ICAgKiBBdXRvbWF0aWNhbGx5IGNhbGxzIGRybV9kcF9hdXhfaW5p
dCgpIGlmIHRoaXMgaGFzbid0IGJlZW4gZG9uZSB5ZXQuCj4gPiArICogVGhpcyBzaG91bGQgb25s
eSBiZSBjYWxsZWQgd2hlbiB0aGUgdW5kZXJseWluZyAmc3RydWN0IGRybV9jb25uZWN0b3IgaXMK
PiA+ICsgKiBpbml0aWFsaWF6ZWQgYWxyZWFkeS4gVGhlcmVmb3JlIHRoZSBiZXN0IHBsYWNlIHRv
IGNhbGwgdGhpcyBpcyBmcm9tCj4gPiArICogJmRybV9jb25uZWN0b3JfZnVuY3MubGF0ZV9yZWdp
c3Rlci4gTm90IHRoYXQgZHJpdmVycyB3aGljaCBkb24ndCBmb2xsb3cKPiA+IHRoaXMKPiA+ICsg
KiB3aWxsIE9vcHMgd2hlbiBDT05GSUdfRFJNX0RQX0FVWF9DSEFSREVWIGlzIGVuYWJsZWQuCj4g
PiArICoKPiA+ICsgKiBEcml2ZXJzIHdoaWNoIG5lZWQgdG8gdXNlIHRoZSBhdXggY2hhbm5lbCBi
ZWZvcmUgdGhhdCBwb2ludCAoZS5nLiBhdAo+ID4gZHJpdmVyCj4gPiArICogbG9hZCB0aW1lLCBi
ZWZvcmUgZHJtX2Rldl9yZWdpc3RlcigpIGhhcyBiZWVuIGNhbGxlZCkgbmVlZCB0byBjYWxsCj4g
PiArICogZHJtX2RwX2F1eF9pbml0KCkuCj4gPiAgICoKPiA+ICAgKiBSZXR1cm5zIDAgb24gc3Vj
Y2VzcyBvciBhIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KPiA+ICAgKi8KPiAtLSAK
PiBDaGVlcnMsCj4gCUx5dWRlIFBhdWwKPiAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3D899459
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 14:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF216EB1B;
	Thu, 22 Aug 2019 12:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2CA6EB19;
 Thu, 22 Aug 2019 12:56:35 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4862F23406;
 Thu, 22 Aug 2019 12:56:35 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id d23so5005902qko.3;
 Thu, 22 Aug 2019 05:56:35 -0700 (PDT)
X-Gm-Message-State: APjAAAUsXBYyaNe0AwUu79juwREb6DONPz6SwWRJi6LZp/RwIwOKHcEU
 wKRZj6YD4py9Lzi7vP7paAl4c0LjzGWldh3fzw==
X-Google-Smtp-Source: APXvYqyBTHkvoyMZExl3HCKmANPoqc/ciOCs/lsUb5n3M/1m6G1LUQdTOeGrc5Ds6jKcXGxRnrj35ab91yqE/9SUWUk=
X-Received: by 2002:a37:4941:: with SMTP id w62mr3562605qka.119.1566478594395; 
 Thu, 22 Aug 2019 05:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190821215030.31660-1-daniel.vetter@ffwll.ch>
 <20190822065457.2830-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20190822065457.2830-1-daniel.vetter@ffwll.ch>
From: Rob Herring <robh@kernel.org>
Date: Thu, 22 Aug 2019 07:56:22 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKhLR_JzOwe21-HCc3YC5Q_N-1Qo5mUxq1bLSt5jbnAYg@mail.gmail.com>
Message-ID: <CAL_JsqKhLR_JzOwe21-HCc3YC5Q_N-1Qo5mUxq1bLSt5jbnAYg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1566478595;
 bh=Ty4Z4IRkVkRIAFkboerAJzCQoch3khsVR6FuxQxeQiI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HSKHI41vgMPRIWVsRIVXYs4j02T0vU7juAzFksJFTm8/v2dU4avFI5rv3Y0lYZmvl
 meFFoKaLkeJK8dLSBE0gHrQsTS4x+hkwJ/gWVrhbepA9qRs4FBWIfbxk7FqSSyHY2u
 w7aZPvsiGWMNPjEcpngA3hMzWjNwkLUg4loClVKI=
Subject: Re: [Intel-gfx] [PATCH] dma_resv: prime lockdep annotations
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
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, Dave Airlie <airlied@redhat.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMTo1NSBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPiB3cm90ZToKPgo+IEZ1bGwgYXVkaXQgb2YgZXZlcnlvbmU6Cj4KPiAtIGk5
MTUsIHJhZGVvbiwgYW1kZ3B1IHNob3VsZCBiZSBjbGVhbiBwZXIgdGhlaXIgbWFpbnRhaW5lcnMu
Cj4KPiAtIHZyYW0gaGVscGVycyBzaG91bGQgYmUgZmluZSwgdGhleSBkb24ndCBkbyBjb21tYW5k
IHN1Ym1pc3Npb24sIHNvCj4gICByZWFsbHkgbm8gYnVzaW5lc3MgaG9sZGluZyBzdHJ1Y3RfbXV0
ZXggd2hpbGUgZG9pbmcgY29weV8qX3VzZXIuIEJ1dAo+ICAgSSBoYXZlbid0IGNoZWNrZWQgdGhl
bSBhbGwuCj4KPiAtIHBhbmZyb3N0IHNlZW1zIHRvIGRtYV9yZXN2X2xvY2sgb25seSBpbiBwYW5m
cm9zdF9qb2JfcHVzaCwgd2hpY2gKPiAgIGxvb2tzIGNsZWFuLgo+Cj4gLSB2M2QgaG9sZHMgZG1h
X3Jlc3YgbG9ja3MgaW4gdGhlIHRhaWwgb2YgaXRzIHYzZF9zdWJtaXRfY2xfaW9jdGwoKSwKPiAg
IGNvcHlpbmcgZnJvbS90byB1c2Vyc3BhY2UgaGFwcGVucyBhbGwgaW4gdjNkX2xvb2t1cF9ib3Mg
d2hpY2ggaXMKPiAgIG91dHNpZGUgb2YgdGhlIGNyaXRpY2FsIHNlY3Rpb24uCj4KPiAtIHZtd2dm
eCBoYXMgYSBidW5jaCBvZiBpb2N0bHMgdGhhdCBkbyB0aGVpciBvd24gY29weV8qX3VzZXI6Cj4g
ICAtIHZtd19leGVjYnVmX3Byb2Nlc3M6IEZpcnN0IHRoaXMgZG9lcyBzb21lIGNvcGllcyBpbgo+
ICAgICB2bXdfZXhlY2J1Zl9jbWRidWYoKSBhbmQgYWxzbyBpbiB0aGUgdm13X2V4ZWNidWZfcHJv
Y2VzcygpIGl0c2VsZi4KPiAgICAgVGhlbiBjb21lcyB0aGUgdXN1YWwgdHRtIHJlc2VydmUvdmFs
aWRhdGUgc2VxdWVuY2UsIHRoZW4gYWN0dWFsCj4gICAgIHN1Ym1pc3Npb24vZmVuY2luZywgdGhl
biB1bnJlc2VydmluZywgYW5kIGZpbmFsbHkgc29tZSBtb3JlCj4gICAgIGNvcHlfdG9fdXNlciBp
biB2bXdfZXhlY2J1Zl9jb3B5X2ZlbmNlX3VzZXIuIEdsb3NzaW5nIG92ZXIgdG9ucyBvZgo+ICAg
ICBkZXRhaWxzLCBidXQgbG9va3MgYWxsIHNhZmUuCj4gICAtIHZtd19mZW5jZV9ldmVudF9pb2N0
bDogTm8gdHRtX3Jlc2VydmUvZG1hX3Jlc3ZfbG9jayBhbnl3aGVyZSB0byBiZQo+ICAgICBzZWVu
LCBzZWVtcyB0byBvbmx5IGNyZWF0ZSBhIGZlbmNlIGFuZCBjb3B5IGl0IG91dC4KPiAgIC0gYSBw
aWxlIG9mIHNtYWxsZXIgaW9jdGwgaW4gdm13Z2Z4X2lvY3RsLmMsIG5vIHJlc2VydmF0aW9ucyB0
byBiZQo+ICAgICBmb3VuZCB0aGVyZS4KPiAgIFN1bW1hcnk6IHZtd2dmeCBzZWVtcyB0byBiZSBm
aW5lIHRvby4KPgo+IC0gdmlydGlvOiBUaGVyZSdzIHZpcnRpb19ncHVfZXhlY2J1ZmZlcl9pb2N0
bCwgd2hpY2ggZG9lcyBhbGwgdGhlCj4gICBjb3B5aW5nIGZyb20gdXNlcnNwYWNlIGJlZm9yZSBl
dmVuIGxvb2tpbmcgdXAgb2JqZWN0cyB0aHJvdWdoIHRoZWlyCj4gICBoYW5kbGVzLCBzbyBzYWZl
LiBQbHVzIHRoZSBnZXRwYXJhbS9nZXRjYXBzIGlvY3RsLCBhbHNvIGJvdGggc2FmZS4KPgo+IC0g
cXhsIG9ubHkgaGFzIHF4bF9leGVjYnVmZmVyX2lvY3RsLCB3aGljaCBjYWxscyBpbnRvCj4gICBx
eGxfcHJvY2Vzc19zaW5nbGVfY29tbWFuZC4gVGhlcmUncyBhIGxvdmVseSBjb21tZW50IGJlZm9y
ZSB0aGUKPiAgIF9fY29weV9mcm9tX3VzZXJfaW5hdG9taWMgdGhhdCB0aGUgc2xvd3BhdGggc2hv
dWxkIGJlIGNvcGllZCBmcm9tCj4gICBpOTE1LCBidXQgSSBndWVzcyB0aGF0IG5ldmVyIGhhcHBl
bmVkLiBUcnkgbm90IHRvIGJlIHVubHVja3kgYW5kIGdldAo+ICAgeW91ciBDUyBkYXRhIGV2aWN0
ZWQgYmV0d2VlbiB3aGVuIGl0J3Mgd3JpdHRlbiBhbmQgdGhlIGtlcm5lbCB0cmllcwo+ICAgdG8g
cmVhZCBpdC4gVGhlIG9ubHkgb3RoZXIgY29weV9mcm9tX3VzZXIgaXMgZm9yIHJlbG9jcywgYnV0
IHRob3NlCj4gICBhcmUgZG9uZSBiZWZvcmUgcXhsX3JlbGVhc2VfcmVzZXJ2ZV9saXN0KCksIHdo
aWNoIHNlZW1zIHRvIGJlIHRoZQo+ICAgb25seSB0aGluZyByZXNlcnZpbmcgYnVmZmVycyAoaW4g
dGhlIHR0bS9kbWFfcmVzdiBzZW5zZSkgaW4gdGhhdAo+ICAgY29kZS4gU28gbG9va3Mgc2FmZS4K
Pgo+IC0gQSBkZWJ1Z2ZzIGZpbGUgaW4gbm91dmVhdV9kZWJ1Z2ZzX3BzdGF0ZV9zZXQoKSBhbmQg
dGhlIHVzaWYgaW9jdGwgaW4KPiAgIHVzaWZfaW9jdGwoKSBsb29rIHNhZmUuIG5vdXZlYXVfZ2Vt
X2lvY3RsX3B1c2hidWYoKSBvdG9oIGJyZWFrcyB0aGlzCj4gICBldmVyeXdoZXJlIGFuZCBuZWVk
cyB0byBiZSBmaXhlZCB1cC4KPgo+IHYyOiBUaG9tYXMgcG9pbnRlZCBhdCB0aGF0IHZtd2dmeCBj
YWxscyBkbWFfcmVzdl9pbml0IHdoaWxlIGl0IGhvbGRzIGEKPiBkbWFfcmVzdiBsb2NrIG9mIGEg
ZGlmZmVyZW50IG9iamVjdCBhbHJlYWR5LiBDaHJpc3RpYW4gbWVudGlvbmVkIHRoYXQKPiB0dG0g
Y29yZSBkb2VzIHRoaXMgdG9vIGZvciBnaG9zdCBvYmplY3RzLiBpbnRlbC1nZngtY2kgaGlnaGxp
Z2h0ZWQKPiB0aGF0IGk5MTUgaGFzIHNpbWlsYXIgaXNzdWVzLgo+Cj4gVW5mb3J0dW5hdGVseSB3
ZSBjYW4ndCBkbyB0aGlzIGluIHRoZSB1c3VhbCBtb2R1bGUgaW5pdCBmdW5jdGlvbnMsCj4gYmVj
YXVzZSBrZXJuZWwgdGhyZWFkcyBkb24ndCBoYXZlIGFuIC0+bW0gLSB3ZSBoYXZlIHRvIHdhaXQg
YXJvdW5kIGZvcgo+IHNvbWUgdXNlciB0aHJlYWQgdG8gZG8gdGhpcy4KPgo+IFNvbHV0aW9uIGlz
IHRvIHNwYXduIGEgd29ya2VyIChidXQgb25seSBvbmNlKS4gSXQncyBob3JyaWJsZSwgYnV0IGl0
Cj4gd29ya3MuCj4KPiB2MzogV2UgY2FuIGFsbG9jYXRlIG1tISAoQ2hyaXMpLiBIb3JyaWJsZSB3
b3JrZXIgaGFjayBvdXQsIGNsZWFuCj4gaW5pdGNhbGwgc29sdXRpb24gaW4uCj4KPiBDYzogQWxl
eCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiBDaHJpc3RpYW4gS8O2
bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5A
c3VzZS5kZT4KPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiBDYzogVG9tZXUg
Vml6b3NvIDx0b21ldS52aXpvc29AY29sbGFib3JhLmNvbT4KPiBDYzogRXJpYyBBbmhvbHQgPGVy
aWNAYW5ob2x0Lm5ldD4KPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiBD
YzogR2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+Cj4gQ2M6IEJlbiBTa2VnZ3MgPGJz
a2VnZ3NAcmVkaGF0LmNvbT4KPiBDYzogIlZNd2FyZSBHcmFwaGljcyIgPGxpbnV4LWdyYXBoaWNz
LW1haW50YWluZXJAdm13YXJlLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHJvbSA8dGhlbGxzdHJv
bUB2bXdhcmUuY29tPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDI0ICsr
KysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygr
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9k
bWEtYnVmL2RtYS1yZXN2LmMKPiBpbmRleCA0MmE4ZjNmMTE2ODEuLmQyMzNlZjRjZjBkNyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jCj4gQEAgLTM0LDYgKzM0LDcgQEAKPgo+ICAjaW5jbHVkZSA8bGludXgv
ZG1hLXJlc3YuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvc2NoZWQvbW0uaD4KPgo+ICAvKioKPiAgICogRE9DOiBSZXNlcnZhdGlvbiBPYmplY3QgT3Zl
cnZpZXcKPiBAQCAtOTUsNiArOTYsMjkgQEAgc3RhdGljIHZvaWQgZG1hX3Jlc3ZfbGlzdF9mcmVl
KHN0cnVjdCBkbWFfcmVzdl9saXN0ICpsaXN0KQo+ICAgICAgICAga2ZyZWVfcmN1KGxpc3QsIHJj
dSk7Cj4gIH0KPgo+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfTE9DS0RFUCkKPiArc3RhdGljIHZv
aWQgZG1hX3Jlc3ZfbG9ja2RlcCh2b2lkKQoKX19pbml0Cgo+ICt7Cj4gKyAgICAgICBzdHJ1Y3Qg
bW1fc3RydWN0ICptbSA9IG1tX2FsbG9jKCk7Cj4gKyAgICAgICBzdHJ1Y3QgZG1hX3Jlc3Ygb2Jq
Owo+ICsKPiArICAgICAgIGlmICghbW0pCj4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiArCj4g
KyAgICAgICBkbWFfcmVzdl9pbml0KCZvYmopOwo+ICsKPiArICAgICAgIGRvd25fcmVhZCgmbW0t
Pm1tYXBfc2VtKTsKPiArICAgICAgIHd3X211dGV4X2xvY2soJm9iai5sb2NrLCBOVUxMKTsKPiAr
ICAgICAgIGZzX3JlY2xhaW1fYWNxdWlyZShHRlBfS0VSTkVMKTsKPiArICAgICAgIGZzX3JlY2xh
aW1fcmVsZWFzZShHRlBfS0VSTkVMKTsKPiArICAgICAgIHd3X211dGV4X3VubG9jaygmb2JqLmxv
Y2spOwo+ICsgICAgICAgdXBfcmVhZCgmbW0tPm1tYXBfc2VtKTsKPiArCj4gKyAgICAgICBtbXB1
dChtbSk7Cj4gK30KPiArc3Vic3lzX2luaXRjYWxsKGRtYV9yZXN2X2xvY2tkZXApOwo+ICsjZW5k
aWYKPiArCj4gIC8qKgo+ICAgKiBkbWFfcmVzdl9pbml0IC0gaW5pdGlhbGl6ZSBhIHJlc2VydmF0
aW9uIG9iamVjdAo+ICAgKiBAb2JqOiB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0Cj4gLS0KPiAyLjIz
LjAucmMxCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

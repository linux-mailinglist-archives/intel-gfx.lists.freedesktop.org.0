Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAF09870B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 00:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFDC26E3B4;
	Wed, 21 Aug 2019 22:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E326E3B4;
 Wed, 21 Aug 2019 22:21:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18219922-1500050 for multiple; Wed, 21 Aug 2019 23:20:53 +0100
MIME-Version: 1.0
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190821215030.31660-1-daniel.vetter@ffwll.ch>
References: <20190821215030.31660-1-daniel.vetter@ffwll.ch>
Message-ID: <156642605147.20466.13019420195083819968@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 23:20:51 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] dma_resv: prime lockdep annotations
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
Cc: Rob Herring <robh@kernel.org>, Thomas Hellstrom <thellstrom@vmware.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, Dave Airlie <airlied@redhat.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA4LTIxIDIyOjUwOjI4KQo+IEZ1bGwgYXVkaXQg
b2YgZXZlcnlvbmU6Cj4gCj4gLSBpOTE1LCByYWRlb24sIGFtZGdwdSBzaG91bGQgYmUgY2xlYW4g
cGVyIHRoZWlyIG1haW50YWluZXJzLgo+IAo+IC0gdnJhbSBoZWxwZXJzIHNob3VsZCBiZSBmaW5l
LCB0aGV5IGRvbid0IGRvIGNvbW1hbmQgc3VibWlzc2lvbiwgc28KPiAgIHJlYWxseSBubyBidXNp
bmVzcyBob2xkaW5nIHN0cnVjdF9tdXRleCB3aGlsZSBkb2luZyBjb3B5XypfdXNlci4gQnV0Cj4g
ICBJIGhhdmVuJ3QgY2hlY2tlZCB0aGVtIGFsbC4KPiAKPiAtIHBhbmZyb3N0IHNlZW1zIHRvIGRt
YV9yZXN2X2xvY2sgb25seSBpbiBwYW5mcm9zdF9qb2JfcHVzaCwgd2hpY2gKPiAgIGxvb2tzIGNs
ZWFuLgo+IAo+IC0gdjNkIGhvbGRzIGRtYV9yZXN2IGxvY2tzIGluIHRoZSB0YWlsIG9mIGl0cyB2
M2Rfc3VibWl0X2NsX2lvY3RsKCksCj4gICBjb3B5aW5nIGZyb20vdG8gdXNlcnNwYWNlIGhhcHBl
bnMgYWxsIGluIHYzZF9sb29rdXBfYm9zIHdoaWNoIGlzCj4gICBvdXRzaWRlIG9mIHRoZSBjcml0
aWNhbCBzZWN0aW9uLgo+IAo+IC0gdm13Z2Z4IGhhcyBhIGJ1bmNoIG9mIGlvY3RscyB0aGF0IGRv
IHRoZWlyIG93biBjb3B5XypfdXNlcjoKPiAgIC0gdm13X2V4ZWNidWZfcHJvY2VzczogRmlyc3Qg
dGhpcyBkb2VzIHNvbWUgY29waWVzIGluCj4gICAgIHZtd19leGVjYnVmX2NtZGJ1ZigpIGFuZCBh
bHNvIGluIHRoZSB2bXdfZXhlY2J1Zl9wcm9jZXNzKCkgaXRzZWxmLgo+ICAgICBUaGVuIGNvbWVz
IHRoZSB1c3VhbCB0dG0gcmVzZXJ2ZS92YWxpZGF0ZSBzZXF1ZW5jZSwgdGhlbiBhY3R1YWwKPiAg
ICAgc3VibWlzc2lvbi9mZW5jaW5nLCB0aGVuIHVucmVzZXJ2aW5nLCBhbmQgZmluYWxseSBzb21l
IG1vcmUKPiAgICAgY29weV90b191c2VyIGluIHZtd19leGVjYnVmX2NvcHlfZmVuY2VfdXNlci4g
R2xvc3Npbmcgb3ZlciB0b25zIG9mCj4gICAgIGRldGFpbHMsIGJ1dCBsb29rcyBhbGwgc2FmZS4K
PiAgIC0gdm13X2ZlbmNlX2V2ZW50X2lvY3RsOiBObyB0dG1fcmVzZXJ2ZS9kbWFfcmVzdl9sb2Nr
IGFueXdoZXJlIHRvIGJlCj4gICAgIHNlZW4sIHNlZW1zIHRvIG9ubHkgY3JlYXRlIGEgZmVuY2Ug
YW5kIGNvcHkgaXQgb3V0Lgo+ICAgLSBhIHBpbGUgb2Ygc21hbGxlciBpb2N0bCBpbiB2bXdnZnhf
aW9jdGwuYywgbm8gcmVzZXJ2YXRpb25zIHRvIGJlCj4gICAgIGZvdW5kIHRoZXJlLgo+ICAgU3Vt
bWFyeTogdm13Z2Z4IHNlZW1zIHRvIGJlIGZpbmUgdG9vLgo+IAo+IC0gdmlydGlvOiBUaGVyZSdz
IHZpcnRpb19ncHVfZXhlY2J1ZmZlcl9pb2N0bCwgd2hpY2ggZG9lcyBhbGwgdGhlCj4gICBjb3B5
aW5nIGZyb20gdXNlcnNwYWNlIGJlZm9yZSBldmVuIGxvb2tpbmcgdXAgb2JqZWN0cyB0aHJvdWdo
IHRoZWlyCj4gICBoYW5kbGVzLCBzbyBzYWZlLiBQbHVzIHRoZSBnZXRwYXJhbS9nZXRjYXBzIGlv
Y3RsLCBhbHNvIGJvdGggc2FmZS4KPiAKPiAtIHF4bCBvbmx5IGhhcyBxeGxfZXhlY2J1ZmZlcl9p
b2N0bCwgd2hpY2ggY2FsbHMgaW50bwo+ICAgcXhsX3Byb2Nlc3Nfc2luZ2xlX2NvbW1hbmQuIFRo
ZXJlJ3MgYSBsb3ZlbHkgY29tbWVudCBiZWZvcmUgdGhlCj4gICBfX2NvcHlfZnJvbV91c2VyX2lu
YXRvbWljIHRoYXQgdGhlIHNsb3dwYXRoIHNob3VsZCBiZSBjb3BpZWQgZnJvbQo+ICAgaTkxNSwg
YnV0IEkgZ3Vlc3MgdGhhdCBuZXZlciBoYXBwZW5lZC4gVHJ5IG5vdCB0byBiZSB1bmx1Y2t5IGFu
ZCBnZXQKPiAgIHlvdXIgQ1MgZGF0YSBldmljdGVkIGJldHdlZW4gd2hlbiBpdCdzIHdyaXR0ZW4g
YW5kIHRoZSBrZXJuZWwgdHJpZXMKPiAgIHRvIHJlYWQgaXQuIFRoZSBvbmx5IG90aGVyIGNvcHlf
ZnJvbV91c2VyIGlzIGZvciByZWxvY3MsIGJ1dCB0aG9zZQo+ICAgYXJlIGRvbmUgYmVmb3JlIHF4
bF9yZWxlYXNlX3Jlc2VydmVfbGlzdCgpLCB3aGljaCBzZWVtcyB0byBiZSB0aGUKPiAgIG9ubHkg
dGhpbmcgcmVzZXJ2aW5nIGJ1ZmZlcnMgKGluIHRoZSB0dG0vZG1hX3Jlc3Ygc2Vuc2UpIGluIHRo
YXQKPiAgIGNvZGUuIFNvIGxvb2tzIHNhZmUuCj4gCj4gLSBBIGRlYnVnZnMgZmlsZSBpbiBub3V2
ZWF1X2RlYnVnZnNfcHN0YXRlX3NldCgpIGFuZCB0aGUgdXNpZiBpb2N0bCBpbgo+ICAgdXNpZl9p
b2N0bCgpIGxvb2sgc2FmZS4gbm91dmVhdV9nZW1faW9jdGxfcHVzaGJ1ZigpIG90b2ggYnJlYWtz
IHRoaXMKPiAgIGV2ZXJ5d2hlcmUgYW5kIG5lZWRzIHRvIGJlIGZpeGVkIHVwLgo+IAo+IHYyOiBU
aG9tYXMgcG9pbnRlZCBhdCB0aGF0IHZtd2dmeCBjYWxscyBkbWFfcmVzdl9pbml0IHdoaWxlIGl0
IGhvbGRzIGEKPiBkbWFfcmVzdiBsb2NrIG9mIGEgZGlmZmVyZW50IG9iamVjdCBhbHJlYWR5LiBD
aHJpc3RpYW4gbWVudGlvbmVkIHRoYXQKPiB0dG0gY29yZSBkb2VzIHRoaXMgdG9vIGZvciBnaG9z
dCBvYmplY3RzLiBpbnRlbC1nZngtY2kgaGlnaGxpZ2h0ZWQKPiB0aGF0IGk5MTUgaGFzIHNpbWls
YXIgaXNzdWVzLgo+IAo+IFVuZm9ydHVuYXRlbHkgd2UgY2FuJ3QgZG8gdGhpcyBpbiB0aGUgdXN1
YWwgbW9kdWxlIGluaXQgZnVuY3Rpb25zLAo+IGJlY2F1c2Uga2VybmVsIHRocmVhZHMgZG9uJ3Qg
aGF2ZSBhbiAtPm1tIC0gd2UgaGF2ZSB0byB3YWl0IGFyb3VuZCBmb3IKPiBzb21lIHVzZXIgdGhy
ZWFkIHRvIGRvIHRoaXMuCj4gCj4gU29sdXRpb24gaXMgdG8gc3Bhd24gYSB3b3JrZXIgKGJ1dCBv
bmx5IG9uY2UpLiBJdCdzIGhvcnJpYmxlLCBidXQgaXQKPiB3b3Jrcy4KPiAKPiBDYzogQWxleCBE
ZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3Vz
ZS5kZT4KPiBDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiBDYzogVG9tZXUgVml6
b3NvIDx0b21ldS52aXpvc29AY29sbGFib3JhLmNvbT4KPiBDYzogRXJpYyBBbmhvbHQgPGVyaWNA
YW5ob2x0Lm5ldD4KPiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiBDYzog
R2VyZCBIb2ZmbWFubiA8a3JheGVsQHJlZGhhdC5jb20+Cj4gQ2M6IEJlbiBTa2VnZ3MgPGJza2Vn
Z3NAcmVkaGF0LmNvbT4KPiBDYzogIlZNd2FyZSBHcmFwaGljcyIgPGxpbnV4LWdyYXBoaWNzLW1h
aW50YWluZXJAdm13YXJlLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHJvbSA8dGhlbGxzdHJvbUB2
bXdhcmUuY29tPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDQyICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKPiBpbmRleCA0MmE4ZjNmMTE2ODEuLjI5OTg4
YjE1NjRjMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwo+ICsrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCj4gQEAgLTM0LDYgKzM0LDcgQEAKPiAgCj4gICNp
bmNsdWRlIDxsaW51eC9kbWEtcmVzdi5oPgo+ICAjaW5jbHVkZSA8bGludXgvZXhwb3J0Lmg+Cj4g
KyNpbmNsdWRlIDxsaW51eC9zY2hlZC9tbS5oPgo+ICAKPiAgLyoqCj4gICAqIERPQzogUmVzZXJ2
YXRpb24gT2JqZWN0IE92ZXJ2aWV3Cj4gQEAgLTk1LDYgKzk2LDI4IEBAIHN0YXRpYyB2b2lkIGRt
YV9yZXN2X2xpc3RfZnJlZShzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqbGlzdCkKPiAgICAgICAgIGtm
cmVlX3JjdShsaXN0LCByY3UpOwo+ICB9Cj4gIAo+ICsjaWYgSVNfRU5BQkxFRChDT05GSUdfTE9D
S0RFUCkKPiArc3RydWN0IGxvY2tkZXBfd29yayB7Cj4gKyAgICAgICBzdHJ1Y3Qgd29ya19zdHJ1
Y3Qgd29yazsKPiArICAgICAgIHN0cnVjdCBkbWFfcmVzdiBvYmo7Cj4gKyAgICAgICBzdHJ1Y3Qg
bW1fc3RydWN0ICptbTsKPiArfSBsb2NrZGVwX3dvcms7Cj4gKwo+ICt2b2lkIGxvY2tkZXBfd29y
a19mbihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gK3sKPiArICAgICAgIGRtYV9yZXN2X2lu
aXQoJmxvY2tkZXBfd29yay5vYmopOwo+ICsKPiArICAgICAgIGRvd25fcmVhZCgmbG9ja2RlcF93
b3JrLm1tLT5tbWFwX3NlbSk7Cj4gKyAgICAgICB3d19tdXRleF9sb2NrKCZsb2NrZGVwX3dvcmsu
b2JqLmxvY2ssIE5VTEwpOwo+ICsgICAgICAgZnNfcmVjbGFpbV9hY3F1aXJlKEdGUF9LRVJORUwp
Owo+ICsgICAgICAgZnNfcmVjbGFpbV9yZWxlYXNlKEdGUF9LRVJORUwpOwo+ICsgICAgICAgd3df
bXV0ZXhfdW5sb2NrKCZsb2NrZGVwX3dvcmsub2JqLmxvY2spOwo+ICsgICAgICAgdXBfcmVhZCgm
bG9ja2RlcF93b3JrLm1tLT5tbWFwX3NlbSk7Cj4gKyAgICAgICAKPiArICAgICAgIG1tcHV0KGxv
Y2tkZXBfd29yay5tbSk7Cj4gK30KPiArI2VuZGlmCgojaWYgSVNfRU5BQkxFRChDT05GSUdfTE9D
S0RFUCkKc3RhdGljIHZvaWQgZG1hX3Jlc3ZfbG9ja21hcCh2b2lkKQp7CglzdHJ1Y3QgbW1fc3Ry
dWN0ICptbSA9IGFsbG9jX21tKCk7CglzdHJ1Y3QgZG1hX3Jlc3Ygb2JqOwoKCWRtYV9yZXN2X2lu
aXQoJm9iaik7CgoJZG93bl9yZWFkKCZtbS0+bW1hcF9zZW0pOwoJd3dfbXV0ZXhfbG9jaygmb2Jq
LmxvY2ssIE5VTEwpOwoJZnNfcmVjbGFpbV9hY3F1aXJlKEdGUF9LRVJORUwpOwoJZnNfcmVjbGFp
bV9yZWxlYXNlKEdGUF9LRVJORUwpOwoJd3dfbXV0ZXhfdW5sb2NrKCZvYmoubG9jayk7Cgl1cF9y
ZWFkKCZtbS0+bW1hcF9zZW0pOwoKCW1tcHV0KG1tKTsKfQpjb3JlX2luaXRjYWxsKGRtYV9yZXN2
X2xvY2ttYXApOwojZW5kaWYKCmFzIGEgdGhvdWdodC4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

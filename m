Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED47FEC42
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 13:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83BF89F75;
	Sat, 16 Nov 2019 12:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 400 seconds by postgrey-1.36 at gabe;
 Sat, 16 Nov 2019 12:19:32 UTC
Received: from mail.blih.net (mail.blih.net [212.83.177.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C38489F38;
 Sat, 16 Nov 2019 12:19:32 +0000 (UTC)
Received: from mail.blih.net (mail.blih.net [212.83.177.182])
 by mail.blih.net (OpenSMTPD) with ESMTP id f69dc179;
 Sat, 16 Nov 2019 13:12:50 +0100 (CET)
Received: from sonic.home.blih.net (ip-9.net-89-3-105.rev.numericable.fr
 [89.3.105.9]) by mail.blih.net (OpenSMTPD) with ESMTPSA id f93171df
 TLS version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO;
 Sat, 16 Nov 2019 13:12:50 +0100 (CET)
Date: Sat, 16 Nov 2019 13:12:50 +0100
From: Emmanuel Vadot <manu@bidouilliste.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-Id: <20191116131250.babc76e47c8aacc0f9e1cdbd@bidouilliste.com>
In-Reply-To: <CAKMK7uH-8+tbKsAoiChsxELEc_77RVVxP2wapHWhqB+0Viifog@mail.gmail.com>
References: <CAKMK7uH-8+tbKsAoiChsxELEc_77RVVxP2wapHWhqB+0Viifog@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; amd64-portbld-freebsd13.0)
Mime-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; d=bidouilliste.com;
 h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; q=dns; s=
 mail; b=pN74cu9Sdi3Oql+yniHEnVV5H5K7a6KCC4v8YbFynsm5ZIoJo1UedP29
 2iO9UOC2cN5gdqht1WkwlIWYoHLs+vaxB++1/PJQN1xWB0eWY8CBXNAtS8QHh1Nv
 cW7CA3r5p/XKd81aad7g8Qko/yAITBFLrx0B0zhITLEYnP5a+N8=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed;
 d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; s=mail;
 bh=CpGGW3RwJ63/Xu7WD+OFDIiudi8=; b=KR9KfF/feDM/CtR9CT5BQnv+rUCv
 MfzzJwaXwy28A+Ij5UYY8IxiQLwZMEM57HFUigLZcxorGVpyngkwkCkXJCOTt7HT
 czSvxV6zhPUgKfpoo/tNDZMMl1Pe3UcVGVBASZ6FnY/CUBVcXU+aICpeJUjnla44
 oICpt+oC63Q2vDo=
Subject: Re: [Intel-gfx] drm core/helpers and MIT license
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
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexdeucher@gmail.com>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CiBIaSBEYW5pZWwsCgpPbiBUdWUsIDEyIE5vdiAyMDE5IDE2OjAzOjMzICswMTAwCkRhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgoKPiBIaSBhbGwsCj4gCj4gRGF2
ZSBhbmQgbWUgY2hhdHRlZCBhYm91dCB0aGlzIGxhc3Qgd2VlayBvbiBpcmMuIEVzc2VudGlhbGx5
IHdlIGhhdmU6Cj4gCj4gJCBnaXQgZ3JlcCBTUERYLipHUEwgLS0gJzooZ2xvYilkcml2ZXJzL2dw
dS9kcm0vKmMnCj4gZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnQuYzovLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMAo+IGRyaXZlcnMvZ3B1L2RybS9kcm1fZGFtYWdlX2hlbHBlci5j
Oi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wIE9SIE1JVAo+IGRyaXZlcnMvZ3B1
L2RybS9kcm1fZHBfY2VjLmM6Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiBk
cml2ZXJzL2dwdS9kcm0vZHJtX2VkaWRfbG9hZC5jOi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wLW9yLWxhdGVyCj4gZHJpdmVycy9ncHUvZHJtL2RybV9mYl9jbWFfaGVscGVyLmM6
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKPiBkcml2ZXJzL2dw
dS9kcm0vZHJtX2Zvcm1hdF9oZWxwZXIuYzovKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMCAqLwo+IGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX2NtYV9oZWxwZXIuYzovLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjoKPiBHUEwtMi4wLW9yLWxhdGVyCj4gZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW1fZnJhbWVidWZmZXJfaGVscGVyLmM6Ly8KPiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
R1BMLTIuMC1vci1sYXRlcgo+IGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5j
Oi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gZHJpdmVycy9ncHUvZHJtL2Ry
bV9nZW1fdHRtX2hlbHBlci5jOi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOgo+IEdQTC0yLjAt
b3ItbGF0ZXIKPiBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbV92cmFtX2hlbHBlci5jOi8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOgo+IEdQTC0yLjAtb3ItbGF0ZXIKPiBkcml2ZXJzL2dwdS9kcm0v
ZHJtX2hkY3AuYzovLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+IGRyaXZlcnMv
Z3B1L2RybS9kcm1fbGVhc2UuYzovLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1v
ci1sYXRlcgo+IGRyaXZlcnMvZ3B1L2RybS9kcm1fbWlwaV9kYmkuYzovLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlcgo+IGRyaXZlcnMvZ3B1L2RybS9kcm1fb2YuYzov
LyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gZHJpdmVycy9ncHUvZHJt
L2RybV9zaW1wbGVfa21zX2hlbHBlci5jOi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOgo+IEdQ
TC0yLjAtb3ItbGF0ZXIKPiBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5c2ZzLmM6Ly8gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+IGRyaXZlcnMvZ3B1L2RybS9kcm1fdm1hX21h
bmFnZXIuYzovLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCBPUiBNSVQKPiBkcml2
ZXJzL2dwdS9kcm0vZHJtX3ZyYW1faGVscGVyX2NvbW1vbi5jOi8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOgo+IEdQTC0yLjAtb3ItbGF0ZXIKPiBkcml2ZXJzL2dwdS9kcm0vZHJtX3dyaXRlYmFj
ay5jOi8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gCj4gT25lIGlzIEdQTCtN
SVQsIHNvIG9rLCBhbmQgb25lIGlzIGEgZGVmYXVsdCBHUEwtb25seSBoZWFkZXIgZnJvbQo+IEdy
ZWcncyBpbmZhbW91cyBwYXRjaCAoc28gY291bGQgcHJvYmFibHkgYmUgY2hhbmdlZCB0byBNSVQg
bGljZW5zZQo+IGhlYWRlcikuIEkgb25seSBsb29rZWQgYXQgLmMgc291cmNlcywgc2luY2UgaGVh
ZGVycyBhcmUgd29yc2Ugd3J0Cj4gaGF2aW5nIHF1ZXN0aW9uYWJsZSBkZWZhdWx0IGhlYWRlcnMu
IFNvIGFib3V0IDE4IGZpbGVzIHdpdGggY2xlYXIgR1BMCj4gbGljZW5zZXMgdGh1cyBmYXIgaW4g
ZHJtIGNvcmUvaGVscGVycy4KPiAKPiBMb29raW5nIGF0IHdoZXJlIHRoYXQgY29kZSBjYW1lIGZy
b20sIGl0IGlzIG1vc3RseSBmcm9tIEdQTC1vbmx5Cj4gZHJpdmVycyAod2UgaGF2ZSBhIGxvdCBv
ZiB0aG9zZSBub3dhZGF5cyksIHNvIHNlZW1zIGxlZ2l0IG5vbi1NSVQKPiBsaWNlbnNlZC4gUXVl
c3Rpb24gaXMgbm93IHdoYXQgZG8gd2UgZG86Cj4gCj4gLSBOb3RoaW5nLCB3aGljaCBtZWFucyBH
UEwgd2lsbCBzbG93bHkgZW5jcm9hY2ggb24gZHJtIGNvcmUvaGVscGVycywKPiB3aGljaCBpcyBy
b3VnaGx5IHRoZSBzYW1lIGFzIC4uLgo+IAo+IC0gVGhyb3cgaW4gdGhlIHRvd2VsIG9uIE1JVCBk
cm0gY29yZSBvZmZpY2lhbGx5LiBTYW1lIGFzIGFib3ZlLCBleGNlcHQKPiBsZXRzIGp1c3QgbWFr
ZSBpdCBvZmZpY2lhbC4KPiAKPiAtIFRyeSB0byBjb3VudGVyIHRoaXMsIHdoaWNoIG1lYW5zIGF0
IGxlYXN0IGEpIHJlbGljZW5zaW5nIGEgYnVuY2ggb2YKPiBzdHVmZiBiKSByZXdyaXRpbmcgYSBi
dW5jaCBvZiBzdHVmZiBjKSBtYWtpbmcgc3VyZSB0aGF0J3Mgb2sgd2l0aAo+IGV2ZXJ5b25lLCB0
aGVyZSdzIGEgbG90IG9mIEdQTC1ieS1kZWZhdWx0IGZvciB0aGUga2VybmVsICh0aGF0J3MgaG93
Cj4gd2UgZ290IG1vc3Qgb2YgdGhlIGFib3ZlIGNvZGUgdGhyb3VnaCBtZXJnZWQgZHJpdmVycyBJ
IHRoaW5rKS4gSQo+IHN1c3BlY3QgdGhhdCB3aG9tZXZlciBjYXJlcyB3aWxsIG5lZWQgdG8gcHV0
IGluIHRoZSB3b3JrIHRvIG1ha2UgdGhpcwo+IGhhcHBlbiAoc2luY2UgaXQgd2lsbCBuZWVkIGEg
cGlsZSBvZiBhY3RpdmUgcmVzaXN0YW5jZSBhdCBsZWFzdCkuCj4gCj4gQ2MgbWFpbnRhaW5lcnMv
ZHJpdmVyIHRlYW1zIHdobyBtaWdodCBjYXJlIG1vc3QgYWJvdXQgdGhpcy4KPiAKPiBBbHNvIGlm
IHBlb3BsZSBjb3VsZCBjYyAqYnNkLCB0aGV5IHByb2JhYmx5IGNhcmUgYW5kIEkgZG9uJ3Qga25v
dyBiZXN0Cj4gY29udGFjdHMgZm9yIGdyYXBoaWNzIHN0dWZmIChvciBhbnl0aGluZyBlbHNlIHJl
YWxseSBhdCBhbGwpLgo+IAo+IENoZWVycywgRGFuaWVsCgogRmlyc3Qgb2YgYWxsIHRoYW5rcyBm
b3Igc2VuZGluZyB0aGlzIG1haWwuCgogSSdtIG9mIGNvdXJzZSBub3Qgc3BlYWtpbmcgZm9yIHRo
ZSB3aG9sZSBGcmVlQlNEIHByb2plY3QgYnV0IGJlaW5nCm9uZSBvZiB0aGUgcGVyc29ucyB0aGF0
IGlzIGN1cnJlbnRseSB0cnlpbmcgdG8gZmluaXNoIGEgY2xlYW4gdXBkYXRlIG9mCkRSTSBmb3Ig
aXQgdG8gZmluYWxseSBoYXZlIERSTSBkcml2ZXJzIGZvciBhcm0vYXJtNjQgaGVyZSBpcyBteSB2
aWV3IDoKCiBJIHdvdWxkIGxvdmUgdG8gaGF2ZSBhbGwgdGhlIGhlbHBlciBNSVQgb3IgZHVhbCBs
aWNlbmNlIHNvIEkgZG9uJ3QKbmVlZCB0byBjb21tZW50IHBhcnQgb2YgRFJNIGNvZGUgKHdoaWNo
IGlzIG9rIG9uIHNvbWUgcGFydCBidXQgd3Jvbmcgb24KbW9zdCkgb3IgcmUtaW1wbGVtZW50IHRo
ZW0uIFRoZXJlIGlzIGFscmVhZHkgdG9vIG11Y2ggY29kZSB0aGF0IHJlYWxseQpuZWVkIGEgcmV3
cml0ZSBmb3IgRnJlZUJTRCAoZG1hLWJ1ZnMsIHN5bmNvYmpzIGFuZCBhIGxvdCBvZiBvdGhlcnMg
bGludXgKa2VybmVsIHN1YnN5c3RlbXMpIHRoYXQgYWRkaW5nIGRybSBoZWxwZXJzIHRvIHRoZSBs
aXN0IG1ha2VzIGl0IHJlYWxseQpoYXJkIGZvciBtZS4KIEZyb20gdGhlIGxpc3QgeW91J3ZlIHNl
bmQgaGVyZSBhcmUgdGhlIG1vc3QgcHJvYmxlbWF0aWMgZmlsZXMgZm9yIG1lLApmb3Igbm93IEkn
dmUgc2ltcGx5IG5vdCBpbXBvcnQgdGhlbSBhbmQgaGFjayBhcm91bmQgdGhlIGNvZGUgdGhhdCBj
YWxscwpmdW5jdGlvbnMgZnJvbSB0aGVtIDoKZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnQuYyBJ
dCdzIG5vdyByZWFsbHkgdGllZCBpbnRvIHRoZSBkcm0Kc3Vic3lzdGVtIHNvIGl0J3MgaGFyZCB0
byBpZ25vcmUgaXQsIGZvciBub3cgbm90IG1lcmdpbmcgdGhlIGxhdGVzdApwYXRjaGVzIGZyb20g
NS40IG1ha2VzIGl0IG9rLWlzaCB0byBpZ25vcmUgaXQuCmRyaXZlcnMvZ3B1L2RybS9kcm1fbGVh
c2UuYyBJIGNhbiBoYWNrIGFyb3VuZCBpdCBidXQgSSB3b3VsZCBwcmVmZXIgdG8KaW5jbHVkZSBp
dCBhbmQgc3RvcCBteSBoYWNrcy4KZHJpdmVycy9ncHUvZHJtL2RybV9mb3JtYXRfaGVscGVyLmMg
YSBsb3Qgb2YgaGVscGVycyBhcmUgaGVyZSBhbmQKbmVlZGVkLCBmb3Igbm93IEknbSB1c2luZyB0
aGUgb2xkIGZ1bmN0aW9ucyB0aGF0IHdlcmUgTUlUIGxpY2VuY2VkIGJ1dAppdCdzIGtpbmRhIHdy
b25nIHRvIGRvIGl0IHRoaXMgd2F5LgoKIEZvciB0aGUgZ2VtX2NtYS9nZW1fZnJhbWVidWZmZXIv
Z2VtX2V0YyAuLi4gd2UgaGF2ZSBvdXIgb3duCmltcGxlbWVudGF0aW9uIHdoZW4gd2UgbmVlZCBv
bmUsIHRob3NlIGZpbGUgYXJlIHRvbyBjbG9zZSB0byB0aGUgdm0Kc3Vic3lzdGVtIHRvIGJlIHBv
cnRhYmxlIGFueXdheSBzbyBJIGRvbid0IHJlYWxseSBjYXJlIGlmIHRoZXkgc3RheQpHUExlZC4K
IEZvciB0aGUgcmVzdCBvZiB0aGUgZmlsZXMgZWl0aGVyIEkgZG9uJ3Qgd2FudCB0aGVtIChfc3lz
ZnMgYW5kIF9vZiBmb3IKZXhhbXBsZSkgYmVjYXVzZSBpdCBkb24ndCBtYWtlIHNlbnNlIGZvciB1
cyB0byBoYXZlIHRoZW0gKHN5c2ZzKSBvciB0aGUKc3Vic3lzdGVtIGlzIHRvbyBkaWZmZXJlbnQg
YmV0d2VlbiBGcmVlQlNELUxpbnV4IChvZikgb3IgSSB0aGUgY3VycmVudApkcml2ZXJzIHRoYXQg
d2UgaGF2ZSBkb24ndCBuZWVkIHRoZW0gZm9yIG5vdyAod3JpdGViYWNrLCBoZGNwIGV0YyAuLi4p
CgogVG8gZmluaXNoIHRoaXMgbWFpbCwgSSdkIGxpa2UgdG8gc2F5IHRoYXQgSSB3b3VsZCBsb3Zl
IHRvIGNvbnRyaWJ1dGUKdG8gRFJNIGFuZCBzb21lIGRyaXZlcnMgKGxpbWEvcGFuZnJvc3QgbW9z
dGx5KSBidXQgZm9yIG5vdyBJIG5lZWQgdG8Ka2VlcCBpbiBzeW5jIHdpdGggTGludXggYW5kIGZp
bmlzaCBteSB3b3JrIHNvIEkgY2FuIGNvbW1pdCBpdCBpbnRvIHRoZQpGcmVlQlNEIGtlcm5lbC4g
S25vd2luZyB0aGF0IGZ1dHVyZSB1cGRhdGVzIHdpbGwgYmUgZWFzaWVyIGZvciBtZQpiZWNhdXNl
IG9mIGEgbGljZW5jZSBpc3N1ZSB3b3VsZCBiZSBncmVhdCB0byBrbm93IG90aGVyd2lzZSBJIHRo
aW5rCnRoYXQgYWxsIHRoZSBhdmFpbGFibGUgdGltZSB0aGF0IEkgaGF2ZSBmb3IgRFJNIG9uIEZy
ZWVCU0Qgd2lsbCBiZSAxMDAlCnJld3JpdHRpbmcgY29tcGF0aWJpbGl0eSBsYXllcnMuCgogQ2hl
ZXJzLAoKLS0gCkVtbWFudWVsIFZhZG90IDxtYW51QGJpZG91aWxsaXN0ZS5jb20+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

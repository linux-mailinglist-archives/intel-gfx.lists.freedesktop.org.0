Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 281F021F888
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 19:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87DFC89FED;
	Tue, 14 Jul 2020 17:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F52A89FED
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 17:52:12 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id f18so23681129wrs.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 10:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NB5nytNOxsJJioGL1Jixv5ej+NnEMHWRKbTcnkeqcug=;
 b=bSqLibnaW/T58mL9feuhhYVqPsWXPihE0fwbIoqc39uqy6e+2BiUPZkGhVblD9R7Au
 akO6EH8cfrhK7Yf9kbjdwsNm/6+fhjEZ3TpbUP5BDyMVe2hVLNAK+Py5VsTtpjhiRqXo
 ghR+N/exkc4TPT4gAJesMOByGNpGxPZIDqXuQtW22DePJpZrEUFaDJWQNwfKaTT1ZgpI
 kyFzzeT1Vdif9Pe+iniC0KvvcPEJ8tLHRT3UovOz0N1Lfoe1dkguuagsdB3lgAtjM0cO
 SOxzOeMDOR+S7GSg8nxtewQSGNLBtatjVg9+jrdz2gjSMDz1GJxtFthbxYF5QEAXZJJS
 fZ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NB5nytNOxsJJioGL1Jixv5ej+NnEMHWRKbTcnkeqcug=;
 b=Hq2edajG/6uriehAVcZBpDpyWu7bZg56yEvsgO0ZhejmmFeXj76gjjiLcI6y6CQrlX
 Zmh7Znio3PMuRkj9WlrfsB3ilMDgUbsnm1+EI1jwJ5Pn+zJHIugcez18E9lEHBB7SN3d
 gO0IcACpeSCANpzz7ejPw/97recH6X4QboUyWENfWl/ED/IGYfJd7ioKzYPgbEcCVDuq
 uakDWEsunKpEBCP7wUuyA4fMegOsQTueaaIp5t59RJJ9opQcvyKOdCWo+55Jag8t4isf
 xZ25vcHq4xN14jhlu8kExMJ+JUn4l171zXxkTYlO5s4d3dCgAC0iY+apjlYHHHPiZ/AC
 pJ8Q==
X-Gm-Message-State: AOAM531Rvaln1Ug3aUcvllnpwfLNHn5pXQtd1X2VKR72erIFYSWOBAc/
 xQXDCrG5UzvIwQICesNLgso6uz1R0wZ9Rs28igvDW5PM
X-Google-Smtp-Source: ABdhPJx0c4bCwqzJhlZQg26rtFZ2ogbu3hjGv1Go+aM7VrNiOmfc9AqYjZOFezTtwnrBkWcWaFJT4975ZoMq1Diy5+w=
X-Received: by 2002:a17:906:26c3:: with SMTP id
 u3mr5380567ejc.483.1594748808337; 
 Tue, 14 Jul 2020 10:46:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200709123339.547390-1-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 14 Jul 2020 12:46:37 -0500
Message-ID: <CAOFGe95aevRvreikoUPksZ83GskdOzuzVMkyKmbQPNiHzbjjhg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 1/2] dma-buf.rst: Document why indefinite
 fences are a bad idea
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
 Daniel Stone <daniels@collabora.com>, linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org,
 Steve Pronovost <spronovo@microsoft.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Jesse Natalie <jenatali@microsoft.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBtYXRjaGVzIG15IHVuZGVyc3RhbmRpbmcgZm9yIHdoYXQgaXQncyB3b3J0aC4gIEluIG15
IGxpdHRsZSBiaXQKb2Ygc3luY2hyb25pemF0aW9uIHdvcmsgaW4gZHJtLCBJJ3ZlIGdvbmUgb3V0
IG9mIG15IHdheSB0byBlbnN1cmUgd2UKY2FuIG1haW50YWluIHRoaXMgY29uc3RyYWludC4KCkFj
a2VkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CgpPbiBUaHUsIEp1
bCA5LCAyMDIwIGF0IDc6MzMgQU0gRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4gd3JvdGU6Cj4KPiBDb21lcyB1cCBldmVyeSBmZXcgeWVhcnMsIGdldHMgc29tZXdoYXQgdGVk
aW91cyB0byBkaXNjdXNzLCBsZXQncwo+IHdyaXRlIHRoaXMgZG93biBvbmNlIGFuZCBmb3IgYWxs
Lgo+Cj4gV2hhdCBJJ20gbm90IHN1cmUgYWJvdXQgaXMgd2hldGhlciB0aGUgdGV4dCBzaG91bGQg
YmUgbW9yZSBleHBsaWNpdCBpbgo+IGZsYXQgb3V0IG1hbmRhdGluZyB0aGUgYW1ka2ZkIGV2aWN0
aW9uIGZlbmNlcyBmb3IgbG9uZyBydW5uaW5nIGNvbXB1dGUKPiB3b3JrbG9hZHMgb3Igd29ya2xv
YWRzIHdoZXJlIHVzZXJzcGFjZSBmZW5jaW5nIGlzIGFsbG93ZWQuCj4KPiB2MjogTm93IHdpdGgg
ZG90IGdyYXBoIQo+Cj4gdjM6IFR5cG8gKERhdmUgQWlybGllKQo+Cj4gQWNrZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBBY2tlZC1ieTogRGFuaWVs
IFN0b25lIDxkYW5pZWxzQGNvbGxhYm9yYS5jb20+Cj4gQ2M6IEplc3NlIE5hdGFsaWUgPGplbmF0
YWxpQG1pY3Jvc29mdC5jb20+Cj4gQ2M6IFN0ZXZlIFByb25vdm9zdCA8c3Byb25vdm9AbWljcm9z
b2Z0LmNvbT4KPiBDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+IENj
OiBGZWxpeCBLdWVobGluZyA8RmVsaXguS3VlaGxpbmdAYW1kLmNvbT4KPiBDYzogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBpbnRlbC5jb20+Cj4gQ2M6IFRob21hcyBIZWxsc3Ryb20gPHRo
b21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gQ2M6IGxpbnV4LXJkbWFA
dmdlci5rZXJuZWwub3JnCj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlh
bi5rb2VuaWdAYW1kLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGludGVsLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1i
dWYucnN0IHwgNzAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgNzAgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVy
LWFwaS9kbWEtYnVmLnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAo+
IGluZGV4IGY4ZjZkZWNkZTM1OS4uMTAwYmZkMjI3MjY1IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50
YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZHJpdmVy
LWFwaS9kbWEtYnVmLnJzdAo+IEBAIC0xNzgsMyArMTc4LDczIEBAIERNQSBGZW5jZSB1QUJJL1N5
bmMgRmlsZQo+ICAuLiBrZXJuZWwtZG9jOjogaW5jbHVkZS9saW51eC9zeW5jX2ZpbGUuaAo+ICAg
ICA6aW50ZXJuYWw6Cj4KPiArSW5kZWZpbml0ZSBETUEgRmVuY2VzCj4gK35+fn5+fn5+fn5+fn5+
fn5+fn5+Cj4gKwo+ICtBdCB2YXJpb3VzIHRpbWVzICZkbWFfZmVuY2Ugd2l0aCBhbiBpbmRlZmlu
aXRlIHRpbWUgdW50aWwgZG1hX2ZlbmNlX3dhaXQoKQo+ICtmaW5pc2hlcyBoYXZlIGJlZW4gcHJv
cG9zZWQuIEV4YW1wbGVzIGluY2x1ZGU6Cj4gKwo+ICsqIEZ1dHVyZSBmZW5jZXMsIHVzZWQgaW4g
SFdDMSB0byBzaWduYWwgd2hlbiBhIGJ1ZmZlciBpc24ndCB1c2VkIGJ5IHRoZSBkaXNwbGF5Cj4g
KyAgYW55IGxvbmdlciwgYW5kIGNyZWF0ZWQgd2l0aCB0aGUgc2NyZWVuIHVwZGF0ZSB0aGF0IG1h
a2VzIHRoZSBidWZmZXIgdmlzaWJsZS4KPiArICBUaGUgdGltZSB0aGlzIGZlbmNlIGNvbXBsZXRl
cyBpcyBlbnRpcmVseSB1bmRlciB1c2Vyc3BhY2UncyBjb250cm9sLgo+ICsKPiArKiBQcm94eSBm
ZW5jZXMsIHByb3Bvc2VkIHRvIGhhbmRsZSAmZHJtX3N5bmNvYmogZm9yIHdoaWNoIHRoZSBmZW5j
ZSBoYXMgbm90IHlldAo+ICsgIGJlZW4gc2V0LiBVc2VkIHRvIGFzeW5jaHJvbm91c2x5IGRlbGF5
IGNvbW1hbmQgc3VibWlzc2lvbi4KPiArCj4gKyogVXNlcnNwYWNlIGZlbmNlcyBvciBncHUgZnV0
ZXhlcywgZmluZS1ncmFpbmVkIGxvY2tpbmcgd2l0aGluIGEgY29tbWFuZCBidWZmZXIKPiArICB0
aGF0IHVzZXJzcGFjZSB1c2VzIGZvciBzeW5jaHJvbml6YXRpb24gYWNyb3NzIGVuZ2luZXMgb3Ig
d2l0aCB0aGUgQ1BVLCB3aGljaAo+ICsgIGFyZSB0aGVuIGltcG9ydGVkIGFzIGEgRE1BIGZlbmNl
IGZvciBpbnRlZ3JhdGlvbiBpbnRvIGV4aXN0aW5nIHdpbnN5cwo+ICsgIHByb3RvY29scy4KPiAr
Cj4gKyogTG9uZy1ydW5uaW5nIGNvbXB1dGUgY29tbWFuZCBidWZmZXJzLCB3aGlsZSBzdGlsbCB1
c2luZyB0cmFkaXRpb25hbCBlbmQgb2YKPiArICBiYXRjaCBETUEgZmVuY2VzIGZvciBtZW1vcnkg
bWFuYWdlbWVudCBpbnN0ZWFkIG9mIGNvbnRleHQgcHJlZW1wdGlvbiBETUEKPiArICBmZW5jZXMg
d2hpY2ggZ2V0IHJlYXR0YWNoZWQgd2hlbiB0aGUgY29tcHV0ZSBqb2IgaXMgcmVzY2hlZHVsZWQu
Cj4gKwo+ICtDb21tb24gdG8gYWxsIHRoZXNlIHNjaGVtZXMgaXMgdGhhdCB1c2Vyc3BhY2UgY29u
dHJvbHMgdGhlIGRlcGVuZGVuY2llcyBvZiB0aGVzZQo+ICtmZW5jZXMgYW5kIGNvbnRyb2xzIHdo
ZW4gdGhleSBmaXJlLiBNaXhpbmcgaW5kZWZpbml0ZSBmZW5jZXMgd2l0aCBub3JtYWwKPiAraW4t
a2VybmVsIERNQSBmZW5jZXMgZG9lcyBub3Qgd29yaywgZXZlbiB3aGVuIGEgZmFsbGJhY2sgdGlt
ZW91dCBpcyBpbmNsdWRlZCB0bwo+ICtwcm90ZWN0IGFnYWluc3QgbWFsaWNpb3VzIHVzZXJzcGFj
ZToKPiArCj4gKyogT25seSB0aGUga2VybmVsIGtub3dzIGFib3V0IGFsbCBETUEgZmVuY2UgZGVw
ZW5kZW5jaWVzLCB1c2Vyc3BhY2UgaXMgbm90IGF3YXJlCj4gKyAgb2YgZGVwZW5kZW5jaWVzIGlu
amVjdGVkIGR1ZSB0byBtZW1vcnkgbWFuYWdlbWVudCBvciBzY2hlZHVsZXIgZGVjaXNpb25zLgo+
ICsKPiArKiBPbmx5IHVzZXJzcGFjZSBrbm93cyBhYm91dCBhbGwgZGVwZW5kZW5jaWVzIGluIGlu
ZGVmaW5pdGUgZmVuY2VzIGFuZCB3aGVuCj4gKyAgZXhhY3RseSB0aGV5IHdpbGwgY29tcGxldGUs
IHRoZSBrZXJuZWwgaGFzIG5vIHZpc2liaWxpdHkuCj4gKwo+ICtGdXJ0aGVybW9yZSB0aGUga2Vy
bmVsIGhhcyB0byBiZSBhYmxlIHRvIGhvbGQgdXAgdXNlcnNwYWNlIGNvbW1hbmQgc3VibWlzc2lv
bgo+ICtmb3IgbWVtb3J5IG1hbmFnZW1lbnQgbmVlZHMsIHdoaWNoIG1lYW5zIHdlIG11c3Qgc3Vw
cG9ydCBpbmRlZmluaXRlIGZlbmNlcyBiZWluZwo+ICtkZXBlbmRlbnQgdXBvbiBETUEgZmVuY2Vz
LiBJZiB0aGUga2VybmVsIGFsc28gc3VwcG9ydCBpbmRlZmluaXRlIGZlbmNlcyBpbiB0aGUKPiAr
a2VybmVsIGxpa2UgYSBETUEgZmVuY2UsIGxpa2UgYW55IG9mIHRoZSBhYm92ZSBwcm9wb3NhbCB3
b3VsZCwgdGhlcmUgaXMgdGhlCj4gK3BvdGVudGlhbCBmb3IgZGVhZGxvY2tzLgo+ICsKPiArLi4g
a2VybmVsLXJlbmRlcjo6IERPVAo+ICsgICA6YWx0OiBJbmRlZmluaXRlIEZlbmNpbmcgRGVwZW5k
ZW5jeSBDeWNsZQo+ICsgICA6Y2FwdGlvbjogSW5kZWZpbml0ZSBGZW5jaW5nIERlcGVuZGVuY3kg
Q3ljbGUKPiArCj4gKyAgIGRpZ3JhcGggIkZlbmNpbmcgQ3ljbGUiIHsKPiArICAgICAgbm9kZSBb
c2hhcGU9Ym94IGJnY29sb3I9Z3JleSBzdHlsZT1maWxsZWRdCj4gKyAgICAgIGtlcm5lbCBbbGFi
ZWw9Iktlcm5lbCBETUEgRmVuY2VzIl0KPiArICAgICAgdXNlcnNwYWNlIFtsYWJlbD0idXNlcnNw
YWNlIGNvbnRyb2xsZWQgZmVuY2VzIl0KPiArICAgICAga2VybmVsIC0+IHVzZXJzcGFjZSBbbGFi
ZWw9Im1lbW9yeSBtYW5hZ2VtZW50Il0KPiArICAgICAgdXNlcnNwYWNlIC0+IGtlcm5lbCBbbGFi
ZWw9IkZ1dHVyZSBmZW5jZSwgZmVuY2UgcHJveHksIC4uLiJdCj4gKwo+ICsgICAgICB7IHJhbms9
c2FtZTsga2VybmVsIHVzZXJzcGFjZSB9Cj4gKyAgIH0KPiArCj4gK1RoaXMgbWVhbnMgdGhhdCB0
aGUga2VybmVsIG1pZ2h0IGFjY2lkZW50YWxseSBjcmVhdGUgZGVhZGxvY2tzCj4gK3Rocm91Z2gg
bWVtb3J5IG1hbmFnZW1lbnQgZGVwZW5kZW5jaWVzIHdoaWNoIHVzZXJzcGFjZSBpcyB1bmF3YXJl
IG9mLCB3aGljaAo+ICtyYW5kb21seSBoYW5ncyB3b3JrbG9hZHMgdW50aWwgdGhlIHRpbWVvdXQg
a2lja3MgaW4uIFdvcmtsb2Fkcywgd2hpY2ggZnJvbQo+ICt1c2Vyc3BhY2UncyBwZXJzcGVjdGl2
ZSwgZG8gbm90IGNvbnRhaW4gYSBkZWFkbG9jay4gIEluIHN1Y2ggYSBtaXhlZCBmZW5jaW5nCj4g
K2FyY2hpdGVjdHVyZSB0aGVyZSBpcyBubyBzaW5nbGUgZW50aXR5IHdpdGgga25vd2xlZGdlIG9m
IGFsbCBkZXBlbmRlbmNpZXMuCj4gK1RoZWZvcmUgcHJldmVudGluZyBzdWNoIGRlYWRsb2NrcyBm
cm9tIHdpdGhpbiB0aGUga2VybmVsIGlzIG5vdCBwb3NzaWJsZS4KPiArCj4gK1RoZSBvbmx5IHNv
bHV0aW9uIHRvIGF2b2lkIGRlcGVuZGVuY2llcyBsb29wcyBpcyBieSBub3QgYWxsb3dpbmcgaW5k
ZWZpbml0ZQo+ICtmZW5jZXMgaW4gdGhlIGtlcm5lbC4gVGhpcyBtZWFuczoKPiArCj4gKyogTm8g
ZnV0dXJlIGZlbmNlcywgcHJveHkgZmVuY2VzIG9yIHVzZXJzcGFjZSBmZW5jZXMgaW1wb3J0ZWQg
YXMgRE1BIGZlbmNlcywKPiArICB3aXRoIG9yIHdpdGhvdXQgYSB0aW1lb3V0Lgo+ICsKPiArKiBO
byBETUEgZmVuY2VzIHRoYXQgc2lnbmFsIGVuZCBvZiBiYXRjaGJ1ZmZlciBmb3IgY29tbWFuZCBz
dWJtaXNzaW9uIHdoZXJlCj4gKyAgdXNlcnNwYWNlIGlzIGFsbG93ZWQgdG8gdXNlIHVzZXJzcGFj
ZSBmZW5jaW5nIG9yIGxvbmcgcnVubmluZyBjb21wdXRlCj4gKyAgd29ya2xvYWRzLiBUaGlzIGFs
c28gbWVhbnMgbm8gaW1wbGljaXQgZmVuY2luZyBmb3Igc2hhcmVkIGJ1ZmZlcnMgaW4gdGhlc2UK
PiArICBjYXNlcy4KPiAtLQo+IDIuMjcuMAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=

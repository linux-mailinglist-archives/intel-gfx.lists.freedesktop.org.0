Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9504D28CE30
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 14:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8566E8DB;
	Tue, 13 Oct 2020 12:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56D4F6E8DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 12:18:26 +0000 (UTC)
Received: from mail-pl1-f198.google.com ([209.85.214.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kSJG4-0002vP-RP
 for intel-gfx@lists.freedesktop.org; Tue, 13 Oct 2020 12:18:25 +0000
Received: by mail-pl1-f198.google.com with SMTP id 97so9029583plb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 05:18:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=okr1g1udzMhVmzLPFwoaISrpLUAO/y2uw3WN8KxB7gk=;
 b=tDaQNL5rS7shHWnNLHuWMV2Xc7r6nEVjIHqQ2hOCJ5+M23YkumXTzjPRL0coCGXb+R
 ZhXpNUJ+Jl66t/S9gZTP4Ft8tM0Q9H7lAmg6LMeMwhFJe7eE5ukH0SuhbS4IgBCGWFte
 fCmg7wx9Af1Wszn+pZ/irH6uWeG5xZaBXBaoyWU9WuSWSY4HmyJTujeQRdFIFWedWB46
 wuGo57BERAylQ/TnZ+eQCZLzlGBKygM+zuyb/cpBTPmXnzs92sPprieSyST0RGMkyVpS
 pmH63eoYL3zJ4fRUj0vVaG+kDDCa7aRqbIsRvs0QPh+iyCoDvb0waMDvT35b3qTsd4vN
 wkcQ==
X-Gm-Message-State: AOAM530iOV3/QGfKzynjExqe2lOWeEYK3J/7OFN0JBhhoaeTYyPk6MXv
 Qv+yruJF/V6Ww8S3D+F18kRgV/fZ7yhQACHAUFitLAofcJw2yh5bKiHbxIgZ1br1kivjj56/gNU
 PXM7HreCboWwAb/Dasgucj7FWRqqXAe7fBd8/kwdNiA0ObA==
X-Received: by 2002:a17:902:b58a:b029:d4:d44a:f56d with SMTP id
 a10-20020a170902b58ab02900d4d44af56dmr12129752pls.7.1602591502895; 
 Tue, 13 Oct 2020 05:18:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwFVJJdek6OeOZFXnB7fRz9nTpT8V5wUREOMSdEZCMDcR/rofc/MmxPI+bSCQxZOO6ML1UYSg==
X-Received: by 2002:a17:902:b58a:b029:d4:d44a:f56d with SMTP id
 a10-20020a170902b58ab02900d4d44af56dmr12129732pls.7.1602591502476; 
 Tue, 13 Oct 2020 05:18:22 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id n4sm24342978pjo.49.2020.10.13.05.18.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 13 Oct 2020 05:18:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <34051428b30c46a9b04858124fe3932c@intel.com>
Date: Tue, 13 Oct 2020 20:18:17 +0800
Message-Id: <C85BF955-D06F-4870-B79A-F4F8ECA54C32@canonical.com>
References: <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
 <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
 <BYAPR11MB3190EA6507BFF7C7D8294C02B25E0@BYAPR11MB3190.namprd11.prod.outlook.com>
 <30685BA7-1D02-48A0-9B7A-4933ED2B8F0D@canonical.com>
 <20200824180438.GI6112@intel.com>
 <BYAPR11MB31903D08E7BF1B2084309E80B2560@BYAPR11MB3190.namprd11.prod.outlook.com>
 <010FB10D-B1EF-4C2E-A8AD-B7409E771BD0@canonical.com>
 <20200826130511.GN6112@intel.com>
 <432E1B70-7F52-4DF7-8887-0769F17DAD30@canonical.com>
 <E1DE5E53-2C0B-4D5A-8D86-736639426A9D@canonical.com>
 <20201013111532.GY6112@intel.com>
 <34051428b30c46a9b04858124fe3932c@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [Intel-gfx] [Regression] "drm/i915: Implement display w/a
 #1143" breaks HDMI on ASUS GL552VW
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, "Runyan,
 Arthur J" <arthur.j.runyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IE9uIE9jdCAxMywgMjAyMCwgYXQgMTk6NTAsIFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJp
bmVuQGludGVsLmNvbT4gd3JvdGU6Cj4gCj4gSGksIAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQo+PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlCj4+IFN5cmrDpGzDpAo+PiBTZW50OiB0aWlzdGFp
IDEzLiBsb2tha3V1dGEgMjAyMCAxNC4xNgo+PiBUbzogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcu
ZmVuZ0BjYW5vbmljYWwuY29tPgo+PiBDYzogaW50ZWwtZ2Z4IDxpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnPjsgUnVueWFuLCBBcnRodXIgSgo+PiA8YXJ0aHVyLmoucnVueWFuQGludGVs
LmNvbT4KPj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtSZWdyZXNzaW9uXSAiZHJtL2k5MTU6
IEltcGxlbWVudCBkaXNwbGF5IHcvYSAjMTE0MyIKPj4gYnJlYWtzIEhETUkgb24gQVNVUyBHTDU1
MlZXCj4+IAo+PiBPbiBUdWUsIE9jdCAxMywgMjAyMCBhdCAwMToyMDozNVBNICswODAwLCBLYWkt
SGVuZyBGZW5nIHdyb3RlOgo+Pj4gCj4+PiAKPj4+PiBPbiBTZXAgMywgMjAyMCwgYXQgMTQ6MjYs
IEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KPj4gd3JvdGU6Cj4+
Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4+IE9uIEF1ZyAyNiwgMjAyMCwgYXQgMjE6MDUsIFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IHdyb3RlOgo+Pj4+PiAK
Pj4+Pj4gT24gV2VkLCBBdWcgMjYsIDIwMjAgYXQgMTI6NDA6MTVQTSArMDgwMCwgS2FpLUhlbmcg
RmVuZyB3cm90ZToKPj4+Pj4+IEhpLAo+Pj4+Pj4gCj4+Pj4+Pj4gT24gQXVnIDI1LCAyMDIwLCBh
dCAwMjo0NiwgUnVueWFuLCBBcnRodXIgSgo+PiA8YXJ0aHVyLmoucnVueWFuQGludGVsLmNvbT4g
d3JvdGU6Cj4+Pj4+Pj4gCj4+Pj4+Pj4gSSByZW1lbWJlciBzb21lIHN0cmFuZ2VuZXNzIGFib3V0
IHRoZSBibG5jbGVnZGlzYmwuICBJJ2xsIHNlZSBpZiBJIGNhbiBkaWcKPj4gdXAgc29tZSBtb3Jl
Lgo+Pj4+Pj4gCj4+Pj4+PiAKPj4+Pj4+IFRoZSByZWdpc3RlciByZWFkIGNhbiBiZSBmb3VuZCBh
dCBbMV0gYW5kIFsyXS4KPj4+Pj4+IAo+Pj4+Pj4gWzFdCj4+Pj4+PiAKPj4gaHR0cHM6Ly9idWdz
LmxhdW5jaHBhZC5uZXQvdWJ1bnR1Lytzb3VyY2UvbGludXgvK2J1Zy8xODcxNzIxL2NvbW1lCj4+
Pj4+PiBudHMvMTE5IFsyXQo+Pj4+Pj4gCj4+IGh0dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L3Vi
dW50dS8rc291cmNlL2xpbnV4LytidWcvMTg3MTcyMS9jb21tZQo+Pj4+Pj4gbnRzLzEyMAo+Pj4+
PiAKPj4+Pj4gTG9va3MgbGlrZSBpdCdzIHVzaW5nIHRoZSA0MDBtVi8wZEIgc2V0dGluZy4gQ2Fu
IHdlIGdldCB0aGUgc2FtZQo+Pj4+PiBkdW1wcyB3aXRoIHRoZSBkcml2ZXIgbG9hZGVkIGp1c3Qg
dG8gY29uZmlybSB3aGV0aGVyIHdlJ3JlIHVzaW5nCj4+Pj4+IGRpZmZlcmVudCBzZXR0aW5ncz8K
Pj4+Pj4gCj4+Pj4+IEFsc28gYSBkdW1wIG9mIC9zeXMva2VybmVsL2RlYnVnL2RyaS8wL2k5MTVf
dmJ0IHdvdWxkIGJlIGdvb2QgdG8KPj4+Pj4gaGF2ZS4KPj4+PiAKPj4+PiAKPj4gaHR0cHM6Ly9i
dWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1Lytzb3VyY2UvbGludXgvK2J1Zy8xODcxNzIxL2NvbW1l
bnQKPj4+PiBzLzEyNAo+Pj4+IAo+PiBodHRwczovL2J1Z3MubGF1bmNocGFkLm5ldC91YnVudHUv
K3NvdXJjZS9saW51eC8rYnVnLzE4NzE3MjEvY29tbWVudAo+Pj4+IHMvMTI1Cj4+Pj4gCj4+IGh0
dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L3VidW50dS8rc291cmNlL2xpbnV4LytidWcvMTg3MTcy
MS9jb21tZW50Cj4+Pj4gcy8xMjYKPj4+IAo+Pj4gQSBnZW50bGUgcGluZy4uLgo+PiAKPj4gSSBj
b29rZWQgdXAgc29tZSBoYWNrcyBmb3IgeW91IHRvIHRyeToKPj4gZ2l0Oi8vZ2l0aHViLmNvbS92
c3lyamFsYS9saW51eC5naXQgc2tsX3Zzd2luZ193YV9oYWNrcwo+PiAKPj4gQW4gdXBzdHJlYW0g
YnVnIHJlcG9ydCB3b3VsZCBwcm9iYWJseSBiZSBhIGdvb2QgaWRlYSBzbyB0aGF0IHRoZQo+PiBj
b21tdW5pY2F0aW9uIGRvZXNuJ3QgaGF2ZSB0byBnbyB0aHJvdWdoIGEgbWlkZGxlIG1hbiBvdmVy
IGVtYWlsLi4uCj4gQWdyZWUsIHBsZWFzZSBtYWtlIGdpdGxhYiBpc3N1ZSBvbiB0aGlzLiAKCkl0
IHdhcyBmaWxlZCB0d28gbW9udGhzIGFnbzoKaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pbnRlbC8tL2lzc3Vlcy8yMTgxCgoKPiAKPj4gCj4+PiAKPj4+PiAKPj4+PiBLYWktSGVu
Zwo+Pj4+IAo+Pj4+PiAKPj4+Pj4+IAo+Pj4+Pj4gS2FpLUhlbmcKPj4+Pj4+IAo+Pj4+Pj4+IAo+
Pj4+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+Pj4+Pj4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+Pj4+PiBTZW50OiBNb25k
YXksIEF1Z3VzdCAyNCwgMjAyMCAxMTowNSBBTQo+Pj4+Pj4+IFRvOiBLYWktSGVuZyBGZW5nIDxr
YWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+Cj4+Pj4+Pj4gQ2M6IFJ1bnlhbiwgQXJ0aHVyIEog
PGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+OyBWaXZpLCBSb2RyaWdvCj4+Pj4+Pj4gPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+OyBpbnRlbC1nZngKPj4+Pj4+PiA8aW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZz4KPj4+Pj4+PiBTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb25dICJkcm0vaTkx
NTogSW1wbGVtZW50IGRpc3BsYXkgdy9hICMxMTQzIgo+Pj4+Pj4+IGJyZWFrcyBIRE1JIG9uIEFT
VVMgR0w1NTJWVwo+Pj4+Pj4+IAo+Pj4+Pj4+IE9uIE1vbiwgQXVnIDE3LCAyMDIwIGF0IDAyOjE3
OjQ5UE0gKzA4MDAsIEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4+Pj4+Pj4+IAo+Pj4+Pj4+PiAKPj4+
Pj4+Pj4+IE9uIEF1ZyAxNywgMjAyMCwgYXQgMDA6MjIsIFJ1bnlhbiwgQXJ0aHVyIEoKPj4gPGFy
dGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+IHdyb3RlOgo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBZb3Un
bGwgbmVlZCB0byByZWFkIG91dCB0aGUgRERJX0JVRl9UUkFOU18qIGFuZAo+PiBESVNQSU9fQ1Jf
VFhfQk1VX0NSMCByZWdpc3RlcnMgYXQgYm9vdCBiZWZvcmUgaTkxNSBwcm9ncmFtcyB0aGVtIGFu
ZAo+PiBjb21wYXJlIHdpdGggd2hhdCBkcml2ZXIgcHJvZ3JhbXMuCj4+Pj4+Pj4+PiBSb2RyaWdv
IGNhbiBwcm9iYWJseSBzaG93IHlvdSBob3cuCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiBSaWdodCwgSSds
bCB3YWl0IGZvciBhIHBhdGNoIHRoZW4gOikKPj4+Pj4+PiAKPj4+Pj4+PiBUbyBncmFiIHRoZSBC
SU9TIHJlZyB2YWx1ZXMgd2UganVzdCBoYXZlIHRvIG1ha2Ugc3VyZSB0aGUgZHJpdmVyIGRvZXNu
J3QKPj4gbG9hZC4gRWcuIHBhc3Mgc29tZXRoaW5nIGxpa2UgIm1vZHByb2JlLmJsYWNrbGlzdD1p
OTE1LHNuZF9oZGFfaW50ZWwgMyIgdG8gdGhlCj4+IGtlcm5lbCBjbWRsaW5lICgrIHdoYXRldmVy
IG90aGVyIG1hZ2ljIHVidW50dSBtaWdodCByZXF1aXJlKS4gQ29uZmlybSB3aXRoCj4+IHNvbWV0
aGluZyBsaWtlICJsc21vZCB8IGdyZXAgaTkxNSIgdG8gbWFrZSBzdXJlIHRoZSBkcml2ZXIgZGlk
bid0IHNuZWFrIGluCj4+IGRlc3BpdGUgb3VyIGJlc3QgZWZmb3J0cy4KPj4+Pj4+PiAKPj4+Pj4+
PiBUaGVuIHdlIGNhbiBkdW1wIHRoZSByZWdpc3RlcnMgd2l0aCBpbnRlbF9yZWcgZnJvbSBpZ3Qt
Z3B1LXRvb2xzOgo+Pj4+Pj4+IGludGVsX3JlZyByZWFkIC0tY291bnQgMjAgMHg2NEUwMCAweDY0
RTYwIDB4NjRFQzAgMHg2NEYyMCAweDY0RjgwCj4+Pj4+Pj4gaW50ZWxfcmVnIHJlYWQgMHg2NDAw
MCAweDY0MTAwIDB4NjQyMDAgMHg2NDMwMCAweDY0NDAwIDB4NkMwMEMKPj4+Pj4+PiAKPj4+Pj4+
PiBUaGUgb25seSBzb21ld2hhdCBzdXNwaWNpb3VzIHRoaW5nIEkgbm90aWNlZCBpcyB0aGF0IHdl
IHRyZWF0Cj4+IERJU1BJT19DUl9UWF9CTVVfQ1IwOnR4X2JsbmNsZWdkaXNibCBhcyBhIGJpdG1h
c2sgKGJpdCAyMyAtPiBEREkgQSwgYml0IDI0IC0+Cj4+IERESSBCLCBldGMuKSB3aGVyZWFzIHRo
ZSBzcGVjIHNlZW1zIHRvIGJlIHNheWluZyB0aGF0IHdlIHNob3VsZCBqdXN0IHplcm8gb3V0IGFs
bAo+PiB0aGUgYml0cyBvZiB0eF9ibG5jbGVnZGlzYmwgd2hlbiBhbnkgRERJIG5lZWRzIGlib29z
dC4gQXJ0LCBpcyBvdXIgaW50ZXJwcmV0YXRpb24KPj4gb2YgdGhlIGJpdHMgY29ycmVjdCBvciBq
dXN0IGEgZmFpcnkgdGFsZT8KPj4+Pj4+PiAKPj4+Pj4+Pj4gCj4+Pj4+Pj4+IEthaS1IZW5nCj4+
Pj4+Pj4+IAo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
Pj4+Pj4+Pj4gRnJvbTogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29t
Pgo+Pj4+Pj4+Pj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAxMywgMjAyMCAxMDoxNCBQTQo+Pj4+
Pj4+Pj4gVG86IFJ1bnlhbiwgQXJ0aHVyIEogPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+Cj4+
Pj4+Pj4+PiBDYzogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47IFZpbGxl
IFN5cmrDpGzDpAo+Pj4+Pj4+Pj4gPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4Cj4+Pj4+Pj4+PiA8aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4KPj4+Pj4+
Pj4+IFN1YmplY3Q6IFJlOiBbUmVncmVzc2lvbl0gImRybS9pOTE1OiBJbXBsZW1lbnQgZGlzcGxh
eSB3L2EgIzExNDMiCj4+Pj4+Pj4+PiBicmVha3MgSERNSSBvbiBBU1VTIEdMNTUyVlcKPj4+Pj4+
Pj4+IAo+Pj4+Pj4+Pj4gSGksCj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+PiBPbiBBdWcgMTQsIDIwMjAs
IGF0IDAxOjU2LCBSdW55YW4sIEFydGh1ciBKCj4+IDxhcnRodXIuai5ydW55YW5AaW50ZWwuY29t
PiB3cm90ZToKPj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+PiBUaGUgd29ya2Fyb3VuZCBpcyBmcmVlaW5n
IHVwIHN0dWNrIHZzd2luZyB2YWx1ZXMgdG8gbGV0IG5ldyB2c3dpbmcKPj4gcHJvZ3JhbW1pbmcg
a2ljayBpbi4gIE1heWJlIHRoZSBuZXcgdnN3aW5nIHZhbHVlcyBhcmUgd3JvbmcuCj4+Pj4+Pj4+
Pj4gVHJ5IGNoZWNraW5nIHRoZSB2c3dpbmcgdGhhdCBkcml2ZXIgcHJvZ3JhbXMgYWdhaW5zdCB3
aGF0Cj4+IEJJT1MvR09QIHByb2dyYW1zLgo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBEbyB5b3UgbWVh
biB0byBwcmludCBvdXQgdmFsdWUgb2YgSTkxNV9SRUFEKCk/Cj4+Pj4+Pj4+PiB2YWwgPSBJOTE1
X1JFQUQoQ0hJQ0tFTl9UUkFOUyh0cmFuc2NvZGVyKSk7Cj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+IEth
aS1IZW5nCj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+Pj4+Pj4+Pj4+IEZyb206IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+Cj4+Pj4+Pj4+Pj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAxMywgMjAyMCA5OjUw
IEFNCj4+Pj4+Pj4+Pj4gVG86IEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2Fs
LmNvbT47IFJ1bnlhbiwKPj4+Pj4+Pj4+PiBBcnRodXIgSiA8YXJ0aHVyLmoucnVueWFuQGludGVs
LmNvbT4KPj4+Pj4+Pj4+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT47IGludGVsLWdmeAo+Pj4+Pj4+Pj4+IDxpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnPgo+Pj4+Pj4+Pj4+IFN1YmplY3Q6IFJlOiBbUmVncmVzc2lvbl0gImRybS9pOTE1
OiBJbXBsZW1lbnQgZGlzcGxheSB3L2EgIzExNDMiCj4+Pj4+Pj4+Pj4gYnJlYWtzIEhETUkgb24g
QVNVUyBHTDU1MlZXCj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4gQXJ0LCBhbnkgY29tbWVudCBoZXJl
Pwo+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+IEkganVzdCBjaGVja2VkIGFuZCB0aGUgIFcvYSAxMTQz
IGlzIGltcGxlbWVudGVkIGFzIGRlc2NyaWJlZCwgYnV0IGl0Cj4+IGlzIGZhaWxpbmcgSERNSSBv
biB0aGlzIGh5YnJpZCBzeXN0ZW0uCj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IE9uIEF1ZyAxMiwg
MjAyMCwgYXQgOTowNyBQTSwgS2FpLUhlbmcgRmVuZwo+PiA8a2FpLmhlbmcuZmVuZ0BjYW5vbmlj
YWwuY29tPiB3cm90ZToKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IEhpLAo+Pj4+Pj4+Pj4+PiAK
Pj4+Pj4+Pj4+Pj4gVGhlcmUncyBhIHJlZ3Jlc3Npb24gcmVwb3J0ZWQgdGhhdCBIRE1JIG91dHB1
dCBzdG9wcyB3b3JraW5nCj4+IGFmdGVyIG9zIHVwZ3JhZGU6Cj4+Pj4+Pj4+Pj4+IGh0dHBzOi8v
YnVncy5sYXVuY2hwYWQubmV0L2J1Z3MvMTg3MTcyMQo+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4g
SGVyZSdzIHRoZSBiaXNlY3QgcmVzdWx0Ogo+Pj4+Pj4+Pj4+PiAwNTE5YzEwMmY1Mjg1NDc2ZDc4
NjhhMzg3YmRiNmM1ODM4NWU0MDc0IGlzIHRoZSBmaXJzdCBiYWQKPj4+Pj4+Pj4+Pj4gY29tbWl0
IGNvbW1pdCAwNTE5YzEwMmY1Mjg1NDc2ZDc4NjhhMzg3YmRiNmM1ODM4NWU0MDc0Cj4+Pj4+Pj4+
Pj4+IEF1dGhvcjogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPj4+Pj4+Pj4+Pj4gRGF0ZTogICBNb24gSmFuIDIyIDE5OjQxOjMxIDIwMTggKzAyMDAKPj4+
Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IGRybS9pOTE1OiBJbXBsZW1lbnQgZGlzcGxheSB3L2EgIzEx
NDMKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IEFwcGFyZW50bHkgU0tML0tCTC9DRkwgbmVlZCBz
b21lIG1hbnVhbCBoZWxwIHRvIGdldCB0aGUKPj4+Pj4+Pj4+Pj4gcHJvZ3JhbW1lZCBIRE1JIHZz
d2luZyB0byBzdGljay4gSW1wbGVtZW50IHRoZSByZWxldmFudAo+Pj4+Pj4+Pj4+PiB3b3JrYXJv
dW5kIChkaXNwbGF5IHcvYSAjMTE0MykuCj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+PiBOb3RlIHRo
YXQgdGhlIHJlbGV2YW50IGNoaWNrZW4gYml0cyBsaXZlIGluIGEgdHJhbnNjb2Rlcgo+Pj4+Pj4+
Pj4+PiByZWdpc3RlciBldmVuIHRob3VnaCB0aGUgYml0cyBhZmZlY3QgYSBzcGVjaWZpYyBEREkg
cG9ydAo+Pj4+Pj4+Pj4+PiByYXRoZXIgdGhhbiBhIHNwZWNpZmljIHRyYW5zY29kZXIuIEhlbmNl
IHdlIG11c3QgcGljayB0aGUKPj4+Pj4+Pj4+Pj4gY29ycmVjdCB0cmFuc2NvZGVyIHJlZ2lzdGVy
IGluc3RhbmNlIGJhc2VkIG9uIHRoZSBwb3J0IHJhdGhlcgo+Pj4+Pj4+Pj4+PiB0aGFuIGJhc2Vk
IG9uIHRoZSBjcHVfdHJhbnNjb2Rlci4KPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IEFsc28gbm90
ZSB0aGF0IGZvciBjb21wbGV0ZW5lc3MgSSBpbmNsdWRlZCBzdXBwb3J0IGZvciBEREkKPj4+Pj4+
Pj4+Pj4gQS9FIGluIHRoZSBjb2RlIGV2ZW4gdGhvdWdoIHdlIG5ldmVyIGhhdmUgSERNSSBvbiB0
aG9zZSBwb3J0cy4KPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IHYyOiBDRkwgbmVlZHMgdGhlIHcv
YSBhcyB3ZWxsIChSb2RyaWdvIGFuZCBBcnQpCj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+PiBDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+Pj4+Pj4+Pj4+PiBDYzogQXJ0
IFJ1bnlhbiA8YXJ0aHVyLmoucnVueWFuQGludGVsLmNvbT4KPj4+Pj4+Pj4+Pj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+
Pj4+Pj4+Pj4gTGluazoKPj4+Pj4+Pj4+Pj4gCj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE4MDEyMjE3NDEzMS4KPj4+Pj4+Pj4+Pj4gMjgwNDYgLTEt
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20KPj4+Pj4+Pj4+Pj4gUmV2aWV3ZWQtYnk6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+
Pj4+IAo+Pj4+Pj4+Pj4+PiBkbWVzZyBmcm9tIGRybS10aXAgd2l0aCBkcm0uZGVidWc9MHhlIGNh
biBiZSBmb3VuZCBoZXJlOgo+Pj4+Pj4+Pj4+PiAKPj4gaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5u
ZXQvdWJ1bnR1Lytzb3VyY2UvbGludXgvK2J1Zy8xODcxNzIxLwo+Pj4+Pj4+Pj4+PiBjb21tZQo+
Pj4+Pj4+Pj4+PiBudHMKPj4+Pj4+Pj4+Pj4gLwo+Pj4+Pj4+Pj4+PiA2NAo+Pj4+Pj4+Pj4+PiAK
Pj4+Pj4+Pj4+Pj4gS2FpLUhlbmcKPj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+IAo+
Pj4+Pj4+IAo+Pj4+Pj4+IC0tCj4+Pj4+Pj4gVmlsbGUgU3lyasOkbMOkCj4+Pj4+Pj4gSW50ZWwK
Pj4+Pj4gCj4+Pj4+IC0tCj4+Pj4+IFZpbGxlIFN5cmrDpGzDpAo+Pj4+PiBJbnRlbAo+Pj4+IAo+
PiAKPj4gLS0KPj4gVmlsbGUgU3lyasOkbMOkCj4+IEludGVsCj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QK
Pj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A32CF245C56
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 08:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 746A989F9F;
	Mon, 17 Aug 2020 06:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0032389F9F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 06:17:55 +0000 (UTC)
Received: from mail-pg1-f200.google.com ([209.85.215.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1k7YSw-00062M-4X
 for intel-gfx@lists.freedesktop.org; Mon, 17 Aug 2020 06:17:54 +0000
Received: by mail-pg1-f200.google.com with SMTP id q5so9701609pgl.5
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Aug 2020 23:17:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=MKZg3Thl7qP8uJkNDgpuKFgrdD+/v4S4KLFs+H6eBYQ=;
 b=RnAnBnnx8yk8FW4tM0iFv7I7OGyhq9AWD3RtWrYm6psSLyYyKUDYT4bKMWE/bBYPqi
 AyAEQG+HA+SihgGQa4Vg3FJvphQI2SJUE3Fs2nGdUL+yBdinfPT3oVSciXjzY/V+vPqP
 5/L/b0MN4qUvvDSgo9WPXVPBPVAeNWmjqs/2RUChhQtvgIaf8N+K0GLJfVcwE3couWB3
 ZWE5Kr2/SUHm8YaxN181QRkes2vizq2GEIfJi06MWtgijTuVoEhkjX8jhMaxyF6bMqkA
 5Cwx2Mqhc6LaDv0Me2qsRUhYsiro9QNDmRnu7hXuJAN2iwOfx2wi19T5dBqPPEMfqT6e
 LHxw==
X-Gm-Message-State: AOAM533TAzmRVkHtitRq+aHI+4KcVGDiC3QyWiwpmANIBPam2ogQoZZA
 cQkpWvrvoYxIDziCAUUK2H2Nlhr7xCg2CNrm7r+M3sfGa0W9yNisqCskNAjx6KfLGUHGCyVHtAw
 ZMugMt104LlbNG2rt8jak0qJGADSJ7P4yvn6YQv2Qfk3S4Q==
X-Received: by 2002:a62:1b4a:: with SMTP id b71mr10180258pfb.106.1597645072690; 
 Sun, 16 Aug 2020 23:17:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzClYUEyyeuwRSQSWTMsKL7oYk88xusgZdRTqiT0plEqR0Hz9C9gnXvxzYR5QStLqpEX5q9BQ==
X-Received: by 2002:a62:1b4a:: with SMTP id b71mr10180240pfb.106.1597645072356; 
 Sun, 16 Aug 2020 23:17:52 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id y72sm18574673pfg.58.2020.08.16.23.17.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 16 Aug 2020 23:17:51 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <BYAPR11MB3190EA6507BFF7C7D8294C02B25E0@BYAPR11MB3190.namprd11.prod.outlook.com>
Date: Mon, 17 Aug 2020 14:17:49 +0800
Message-Id: <30685BA7-1D02-48A0-9B7A-4933ED2B8F0D@canonical.com>
References: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
 <32B7CFB3-045A-463D-8556-A63BACEB89D1@intel.com>
 <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
 <DF870FF7-4EAD-48B3-8159-27359BD7B02B@canonical.com>
 <BYAPR11MB3190EA6507BFF7C7D8294C02B25E0@BYAPR11MB3190.namprd11.prod.outlook.com>
To: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IE9uIEF1ZyAxNywgMjAyMCwgYXQgMDA6MjIsIFJ1bnlhbiwgQXJ0aHVyIEogPGFydGh1ci5q
LnJ1bnlhbkBpbnRlbC5jb20+IHdyb3RlOgo+IAo+IFlvdSdsbCBuZWVkIHRvIHJlYWQgb3V0IHRo
ZSBERElfQlVGX1RSQU5TXyogYW5kIERJU1BJT19DUl9UWF9CTVVfQ1IwIHJlZ2lzdGVycyBhdCBi
b290IGJlZm9yZSBpOTE1IHByb2dyYW1zIHRoZW0gYW5kIGNvbXBhcmUgd2l0aCB3aGF0IGRyaXZl
ciBwcm9ncmFtcy4gIAo+IFJvZHJpZ28gY2FuIHByb2JhYmx5IHNob3cgeW91IGhvdy4gCgpSaWdo
dCwgSSdsbCB3YWl0IGZvciBhIHBhdGNoIHRoZW4gOikKCkthaS1IZW5nCgo+IAo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogS2FpLUhlbmcgRmVuZyA8a2FpLmhlbmcuZmVuZ0Bj
YW5vbmljYWwuY29tPiAKPiBTZW50OiBUaHVyc2RheSwgQXVndXN0IDEzLCAyMDIwIDEwOjE0IFBN
Cj4gVG86IFJ1bnlhbiwgQXJ0aHVyIEogPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+Cj4gQ2M6
IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgaW50ZWwtZ2Z4IDxpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnPgo+IFN1YmplY3Q6IFJlOiBbUmVncmVzc2lvbl0gImRybS9pOTE1
OiBJbXBsZW1lbnQgZGlzcGxheSB3L2EgIzExNDMiIGJyZWFrcyBIRE1JIG9uIEFTVVMgR0w1NTJW
Vwo+IAo+IEhpLAo+IAo+PiBPbiBBdWcgMTQsIDIwMjAsIGF0IDAxOjU2LCBSdW55YW4sIEFydGh1
ciBKIDxhcnRodXIuai5ydW55YW5AaW50ZWwuY29tPiB3cm90ZToKPj4gCj4+IFRoZSB3b3JrYXJv
dW5kIGlzIGZyZWVpbmcgdXAgc3R1Y2sgdnN3aW5nIHZhbHVlcyB0byBsZXQgbmV3IHZzd2luZyBw
cm9ncmFtbWluZyBraWNrIGluLiAgTWF5YmUgdGhlIG5ldyB2c3dpbmcgdmFsdWVzIGFyZSB3cm9u
Zy4KPj4gVHJ5IGNoZWNraW5nIHRoZSB2c3dpbmcgdGhhdCBkcml2ZXIgcHJvZ3JhbXMgYWdhaW5z
dCB3aGF0IEJJT1MvR09QIHByb2dyYW1zLgo+IAo+IERvIHlvdSBtZWFuIHRvIHByaW50IG91dCB2
YWx1ZSBvZiBJOTE1X1JFQUQoKT8KPiB2YWwgPSBJOTE1X1JFQUQoQ0hJQ0tFTl9UUkFOUyh0cmFu
c2NvZGVyKSk7Cj4gCj4gS2FpLUhlbmcKPiAKPj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tCj4+IEZyb206IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4+IFNl
bnQ6IFRodXJzZGF5LCBBdWd1c3QgMTMsIDIwMjAgOTo1MCBBTQo+PiBUbzogS2FpLUhlbmcgRmVu
ZyA8a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPjsgUnVueWFuLCBBcnRodXIgSiAKPj4gPGFy
dGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+Cj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPjsgaW50ZWwtZ2Z4IAo+PiA8aW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZz4KPj4gU3ViamVjdDogUmU6IFtSZWdyZXNzaW9uXSAiZHJtL2k5MTU6IElt
cGxlbWVudCBkaXNwbGF5IHcvYSAjMTE0MyIgCj4+IGJyZWFrcyBIRE1JIG9uIEFTVVMgR0w1NTJW
Vwo+PiAKPj4gQXJ0LCBhbnkgY29tbWVudCBoZXJlPwo+PiAKPj4gSSBqdXN0IGNoZWNrZWQgYW5k
IHRoZSAgVy9hIDExNDMgaXMgaW1wbGVtZW50ZWQgYXMgZGVzY3JpYmVkLCBidXQgaXQgaXMgZmFp
bGluZyBIRE1JIG9uIHRoaXMgaHlicmlkIHN5c3RlbS4KPj4gCj4+PiBPbiBBdWcgMTIsIDIwMjAs
IGF0IDk6MDcgUE0sIEthaS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4g
d3JvdGU6Cj4+PiAKPj4+IEhpLAo+Pj4gCj4+PiBUaGVyZSdzIGEgcmVncmVzc2lvbiByZXBvcnRl
ZCB0aGF0IEhETUkgb3V0cHV0IHN0b3BzIHdvcmtpbmcgYWZ0ZXIgb3MgdXBncmFkZToKPj4+IGh0
dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L2J1Z3MvMTg3MTcyMQo+Pj4gCj4+PiBIZXJlJ3MgdGhl
IGJpc2VjdCByZXN1bHQ6Cj4+PiAwNTE5YzEwMmY1Mjg1NDc2ZDc4NjhhMzg3YmRiNmM1ODM4NWU0
MDc0IGlzIHRoZSBmaXJzdCBiYWQgY29tbWl0IAo+Pj4gY29tbWl0IDA1MTljMTAyZjUyODU0NzZk
Nzg2OGEzODdiZGI2YzU4Mzg1ZTQwNzQKPj4+IEF1dGhvcjogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+IERhdGU6ICAgTW9uIEphbiAyMiAxOTo0MToz
MSAyMDE4ICswMjAwCj4+PiAKPj4+ICBkcm0vaTkxNTogSW1wbGVtZW50IGRpc3BsYXkgdy9hICMx
MTQzCj4+PiAKPj4+ICBBcHBhcmVudGx5IFNLTC9LQkwvQ0ZMIG5lZWQgc29tZSBtYW51YWwgaGVs
cCB0byBnZXQgdGhlCj4+PiAgcHJvZ3JhbW1lZCBIRE1JIHZzd2luZyB0byBzdGljay4gSW1wbGVt
ZW50IHRoZSByZWxldmFudAo+Pj4gIHdvcmthcm91bmQgKGRpc3BsYXkgdy9hICMxMTQzKS4KPj4+
IAo+Pj4gIE5vdGUgdGhhdCB0aGUgcmVsZXZhbnQgY2hpY2tlbiBiaXRzIGxpdmUgaW4gYSB0cmFu
c2NvZGVyIHJlZ2lzdGVyCj4+PiAgZXZlbiB0aG91Z2ggdGhlIGJpdHMgYWZmZWN0IGEgc3BlY2lm
aWMgRERJIHBvcnQgcmF0aGVyIHRoYW4gYQo+Pj4gIHNwZWNpZmljIHRyYW5zY29kZXIuIEhlbmNl
IHdlIG11c3QgcGljayB0aGUgY29ycmVjdCB0cmFuc2NvZGVyCj4+PiAgcmVnaXN0ZXIgaW5zdGFu
Y2UgYmFzZWQgb24gdGhlIHBvcnQgcmF0aGVyIHRoYW4gYmFzZWQgb24gdGhlCj4+PiAgY3B1X3Ry
YW5zY29kZXIuCj4+PiAKPj4+ICBBbHNvIG5vdGUgdGhhdCBmb3IgY29tcGxldGVuZXNzIEkgaW5j
bHVkZWQgc3VwcG9ydCBmb3IgRERJIEEvRQo+Pj4gIGluIHRoZSBjb2RlIGV2ZW4gdGhvdWdoIHdl
IG5ldmVyIGhhdmUgSERNSSBvbiB0aG9zZSBwb3J0cy4KPj4+IAo+Pj4gIHYyOiBDRkwgbmVlZHMg
dGhlIHcvYSBhcyB3ZWxsIChSb2RyaWdvIGFuZCBBcnQpCj4+PiAKPj4+ICBDYzogUm9kcmlnbyBW
aXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+Pj4gIENjOiBBcnQgUnVueWFuIDxhcnRodXIu
ai5ydW55YW5AaW50ZWwuY29tPgo+Pj4gIFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+PiAgTGluazogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMTgwMTIyMTc0MTMxLjI4MDQ2LTEtdmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20KPj4+ICBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+Pj4gCj4+PiAKPj4+IGRtZXNnIGZyb20gZHJtLXRp
cCB3aXRoIGRybS5kZWJ1Zz0weGUgY2FuIGJlIGZvdW5kIGhlcmU6Cj4+PiBodHRwczovL2J1Z3Mu
bGF1bmNocGFkLm5ldC91YnVudHUvK3NvdXJjZS9saW51eC8rYnVnLzE4NzE3MjEvY29tbWVudHMK
Pj4+IC8KPj4+IDY0Cj4+PiAKPj4+IEthaS1IZW5nCj4+IAo+PiAKPiAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D48A020A1E9
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 17:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14EA76EBE3;
	Thu, 25 Jun 2020 15:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD1BF6EBE3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 15:27:59 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id n23so6984790ljh.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 08:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:cc:in-reply-to:references
 :from:to:subject:date:message-id:user-agent;
 bh=EerBDf41YrXQYeuY8zRXlo02DiSuBpg2lRewhWVGw0U=;
 b=eGZVG5igMaQG887ePY85JLJwzRK8vrMgHyk2DDo86aC/1KHrOvFzNpL7WDd9AxPTnn
 A1Ld3YOjUDyC7PZyYm9EYBUlaNS8g+Am9+TmERT/Ib/EnJaf35XOPRWGHpoTXlI6g62C
 LhDsZyFJMBDqiApS9975nR/ZwPwejTBCMu+Ncl2bpNjh3gBtdHnR7bO6aN5Nmhf5xe4d
 3WMhwQ22xFnZQkRWIB3vp15dp9XDBRhrPK2tuLmyVb8mP7PcbcpGS1gYxyVw7nA64Tmi
 x7Lv7j2QSImrVMhF+3RGSXczwU5jmYqmVBbNw8JlVhFpexOdoLixghVvFpyPwHwZ+YlL
 vH3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:cc
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=EerBDf41YrXQYeuY8zRXlo02DiSuBpg2lRewhWVGw0U=;
 b=rMX4PkzvpgzO+aAUy4dk5Y0ZHSoPjJGGcqdesDbtY57IebyAT/MA7Nk8WYYihWQCZc
 SKpMG+0MgfXzKCoU0MVsOBvc1e2IIlwVMv6gTtq3TuNeZtyqUbRb8IgIDhzfkQxifYB+
 tZ9LKILxfB+yPB7jr9r13xlSoOhGUxgdt2AuQg9/rf084HAbP5Q5pRKhnSHzrvFpRDOH
 Bk73PzYKNwGhK2RkmTLrdxjImshkP12GwXZ85NVirRtzPJH7iAfIrcDk0ibypPAjHSRT
 4cA+6Rnwpsj2b7Bar5tUEjQs0BHf/COf9okkmp/iNBwaA7UQNk/HxtJ9xTGLVyraWxwD
 4ysQ==
X-Gm-Message-State: AOAM532g/7/uko1E81b/P5jGEUXMN1iwZzlH2EzL3b+1B7KO+0DK+xRJ
 XsLvIvl7nVN5+b39vXCG+5YtgISDJig=
X-Google-Smtp-Source: ABdhPJyioj7tm9/gpgMYnQfKzVUHICrnWDf2WVSK/QtKZfNVKmDqaoZOqdETodOc600BcMU608b6ZQ==
X-Received: by 2002:a2e:8754:: with SMTP id q20mr17374144ljj.270.1593098877798; 
 Thu, 25 Jun 2020 08:27:57 -0700 (PDT)
Received: from localhost (109241244009.gdansk.vectranet.pl. [109.241.244.9])
 by smtp.gmail.com with ESMTPSA id k14sm367380ljc.48.2020.06.25.08.27.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 08:27:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200622164415.30352-2-janusz.krzysztofik@linux.intel.com>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-2-janusz.krzysztofik@linux.intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Thu, 25 Jun 2020 17:27:56 +0200
Message-ID: <159309887614.186992.12805428537676828006@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2 1/8] tests/core_hotunplug:
 Duplicate debug messages in dmesg
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIgMTg6NDQ6MDgpCj4gVGhlIHB1
cnBvc2Ugb2YgZGVidWcgbWVzc2FnZXMgZGlzcGxheWVkIGJ5IHRoZSB0ZXN0IGlzIHRvIG1ha2UK
PiBpZGVudGlmaWNhdGlvbiBvZiBhIHN1YnRlc3QgcGhhc2UgdGhhdCBmYWlscyBtb3JlIGVhc3ku
ICBTaW5jZSBpc3N1ZXMKPiBleGhpYml0ZWQgYnkgdGhlIHRlc3QgYXJlIG1vc3RseSByZXBvcnRl
ZCB0byBkbWVzZywgcHJpbnQgdGhvc2UgZGVidWcKPiBtZXNzYWdlcyB0byAvZGV2L2ttc2cgYXMg
d2VsbC4KCkknbSBub3QgYSBmYW4gb2Ygc3BhbW1pbmcgZG1lc2cgZnJvbSBJR1QgYW5kIEknZCBw
cmVmZXIgaWYgeW91IGFkZCB0aGlzIGxvZ2dpbmcKdG8gdGhlIGtlcm5lbCwgYnV0IGxldCdzIGdv
IG92ZXIgdGhpcyBjYXNlLWJ5LWNhc2UuCgo+IHYyOiByZWJhc2Ugb24gdXBzdHJlYW0KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMgfCAzOCArKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5z
ZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVf
aG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCj4gaW5kZXggZTAzZjNiOTQ1Li44
MjY2NDViMWYgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwo+ICsrKyBiL3Rl
c3RzL2NvcmVfaG90dW5wbHVnLmMKPiBAQCAtNDksNiArNDksMTIgQEAgc3RydWN0IGhvdHVucGx1
ZyB7Cj4gIAo+ICAvKiBIZWxwZXJzICovCj4gIAo+ICsjZGVmaW5lIGxvY2FsX2RlYnVnKG1zZy4u
LikgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICso
eyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXAo+ICsgICAgICAgaWd0X2RlYnVnKCIlczogJXNcbiIsIF9fZnVu
Y19fLCBtc2cpOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICsgICAgICAgaWd0
X2ttc2coS01TR19ERUJVRyAiJXM6ICVzOiAlc1xuIiwgaWd0X3Rlc3RfbmFtZSgpLCBfX2Z1bmNf
XywgbXNnKTsgXAo+ICt9KQo+ICsKPiAgc3RhdGljIHZvaWQgcHJlcGFyZV9mb3JfdW5iaW5kKHN0
cnVjdCBob3R1bnBsdWcgKnByaXYsIGNoYXIgKmJ1ZiwgaW50IGJ1ZmxlbikKPiAgewo+ICAgICAg
ICAgaW50IGxlbjsKPiBAQCAtNjgsOSArNzQsOSBAQCBzdGF0aWMgdm9pZCBwcmVwYXJlX2Zvcl91
bmJpbmQoc3RydWN0IGhvdHVucGx1ZyAqcHJpdiwgY2hhciAqYnVmLCBpbnQgYnVmbGVuKQo+ICAg
ICAgICAgY2xvc2UocHJpdi0+ZmQuc3lzZnNfZGV2KTsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQg
cHJlcGFyZShzdHJ1Y3QgaG90dW5wbHVnICpwcml2LCBjaGFyICpidWYsIGludCBidWZsZW4pCj4g
K3N0YXRpYyBpbmxpbmUgdm9pZCBwcmVwYXJlKHN0cnVjdCBob3R1bnBsdWcgKnByaXYsIGNoYXIg
KmJ1ZiwgaW50IGJ1ZmxlbikKPiAgewo+IC0gICAgICAgaWd0X2RlYnVnKCJvcGVuaW5nIGRldmlj
ZVxuIik7Cj4gKyAgICAgICBsb2NhbF9kZWJ1Zygib3BlbmluZyBkZXZpY2UiKTsKClsgIDIyMC40
NTgzNzBdIFtkcm06ZHJtX29wZW5dIHBpZCA9IDE5NCwgbWlub3IgPSAxMjgKWyAgMjIwLjQ2MDA2
Ml0gW2RybTppOTE1X2dlbV9vcGVuIFtpOTE1XV0KCj4gICAgICAgICBwcml2LT5mZC5kcm0gPSBf
X2RybV9vcGVuX2RyaXZlcihEUklWRVJfQU5ZKTsKPiAgICAgICAgIGlndF9hc3NlcnQocHJpdi0+
ZmQuZHJtID49IDApOwo+ICAKPiBAQCAtMTM3LDE0ICsxNDMsMTQgQEAgc3RhdGljIHZvaWQgYnVz
X3Jlc2NhbihpbnQgZmRfc3lzZnNfYnVzKQo+ICAgICAgICAgY2xvc2UoZmRfc3lzZnNfYnVzKTsK
PiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgaGVhbHRoY2hlY2sodm9pZCkKPiArc3RhdGljIGlubGlu
ZSB2b2lkIGhlYWx0aGNoZWNrKHZvaWQpCj4gIHsKPiAgICAgICAgIGludCBmZF9kcm07Cj4gIAo+
ICAgICAgICAgLyogZGV2aWNlIG5hbWUgbWF5IGhhdmUgY2hhbmdlZCwgcmVidWlsZCBJR1QgZGV2
aWNlIGxpc3QgKi8KPiAgICAgICAgIGlndF9kZXZpY2VzX3NjYW4odHJ1ZSk7Cj4gIAo+IC0gICAg
ICAgaWd0X2RlYnVnKCJyZW9wZW5pbmcgdGhlIGRldmljZVxuIik7Cj4gKyAgICAgICBsb2NhbF9k
ZWJ1ZygicmVvcGVuaW5nIHRoZSBkZXZpY2UiKTsKCldlbGwsIHRoaXMgaXMgZ29pbmcgdG8gbG9v
ayB0aGUgc2FtZSBhcyBvcGVuLCBleGNlcHQgY2xvc2luZyBpdCB3b24ndCBwcmludApkcm1fbGFz
dGNsb3NlLgoKWyAgMjkzLjk1NzU2N10gW2RybTpkcm1fcmVsZWFzZV0gb3Blbl9jb3VudCA9IDIK
WyAgMjkzLjk1ODgwNV0gW2RybTpkcm1fZmlsZV9mcmVlLnBhcnQuMF0gcGlkID0gMTk0LCBkZXZp
Y2UgPSAweGUyODAsIG9wZW5fY291bnQgPSAyCgo+ICAgICAgICAgZmRfZHJtID0gX19kcm1fb3Bl
bl9kcml2ZXIoRFJJVkVSX0FOWSk7Cj4gICAgICAgICBpZ3RfYWJvcnRfb25fZihmZF9kcm0gPCAw
LCAiRGV2aWNlIHJlb3BlbiBmYWlsdXJlIik7Cj4gIAo+IEBAIC0xODEsMTMgKzE4NywxMyBAQCBz
dGF0aWMgdm9pZCB1bmJpbmRfcmViaW5kKHZvaWQpCj4gIAo+ICAgICAgICAgcHJlcGFyZSgmcHJp
diwgYnVmLCBzaXplb2YoYnVmKSk7Cj4gIAo+IC0gICAgICAgaWd0X2RlYnVnKCJjbG9zaW5nIHRo
ZSBkZXZpY2VcbiIpOwo+ICsgICAgICAgbG9jYWxfZGVidWcoImNsb3NpbmcgdGhlIGRldmljZSIp
OwoKWyAgMjUwLjE1NzU2OF0gW2RybTpkcm1fcmVsZWFzZV0gb3Blbl9jb3VudCA9IDEKWyAgMjUw
LjE1ODgwN10gW2RybTpkcm1fZmlsZV9mcmVlLnBhcnQuMF0gcGlkID0gMTk0LCBkZXZpY2UgPSAw
eGUyODAsIG9wZW5fY291bnQgPSAxClsgIDI1MC4xNjExODNdIFtkcm06ZHJtX2xhc3RjbG9zZV0K
WyAgMjUwLjE2MjMxMl0gW2RybTpkcm1fbGFzdGNsb3NlXSBkcml2ZXIgbGFzdGNsb3NlIGNvbXBs
ZXRlZAoKPiAgICAgICAgIGNsb3NlKHByaXYuZmQuZHJtKTsKPiAgCj4gLSAgICAgICBpZ3RfZGVi
dWcoInVuYmluZGluZyB0aGUgZHJpdmVyIGZyb20gdGhlIGRldmljZVxuIik7Cj4gKyAgICAgICBs
b2NhbF9kZWJ1ZygidW5iaW5kaW5nIHRoZSBkcml2ZXIgZnJvbSB0aGUgZGV2aWNlIik7Cj4gICAg
ICAgICBkcml2ZXJfdW5iaW5kKHByaXYuZmQuc3lzZnNfZHJ2LCBwcml2LmRldl9idXNfYWRkcik7
CgpbIDE1NTMuODY4MjM1XSBidXM6ICdldmVudF9zb3VyY2UnOiByZW1vdmUgZGV2aWNlIGk5MTVf
MDAwMF8wMF8wMi4wCgo+ICAKPiAtICAgICAgIGlndF9kZWJ1ZygicmViaW5kaW5nIHRoZSBkcml2
ZXIgdG8gdGhlIGRldmljZVxuIik7Cj4gKyAgICAgICBsb2NhbF9kZWJ1ZygicmViaW5kaW5nIHRo
ZSBkcml2ZXIgdG8gdGhlIGRldmljZSIpOwo+ICAgICAgICAgZHJpdmVyX2JpbmQocHJpdi5mZC5z
eXNmc19kcnYsIHByaXYuZGV2X2J1c19hZGRyKTsKClsgMTU5Mi43NTgyMTldIGJ1czogJ3BjaSc6
IGRyaXZlcl9wcm9iZV9kZXZpY2U6IG1hdGNoZWQgZGV2aWNlIDAwMDA6MDA6MDIuMCB3aXRoIGRy
aXZlciBpOTE1ClsgMTU5Mi43NjA1NDNdIGJ1czogJ3BjaSc6IHJlYWxseV9wcm9iZTogcHJvYmlu
ZyBkcml2ZXIgaTkxNSB3aXRoIGRldmljZSAwMDAwOjAwOjAyLjAKKC4uLmJ1bmNoIG9mIGk5MTUg
bG9ncy4uLikKWyAgMjAzLjk2MTY1Nl0gZHJpdmVyOiAnaTkxNSc6IGRyaXZlcl9ib3VuZDogYm91
bmQgdG8gZGV2aWNlICcwMDAwOjAwOjAyLjAnClsgIDIwMy45NjY0MjFdIGJ1czogJ3BjaSc6IHJl
YWxseV9wcm9iZTogYm91bmQgZGV2aWNlIDAwMDA6MDA6MDIuMCB0byBkcml2ZXIgaTkxNQoKPiAg
Cj4gICAgICAgICBoZWFsdGhjaGVjaygpOwo+IEBAIC0xOTksMTMgKzIwNSwxMyBAQCBzdGF0aWMg
dm9pZCB1bnBsdWdfcmVzY2FuKHZvaWQpCj4gIAo+ICAgICAgICAgcHJlcGFyZSgmcHJpdiwgTlVM
TCwgMCk7Cj4gIAo+IC0gICAgICAgaWd0X2RlYnVnKCJjbG9zaW5nIHRoZSBkZXZpY2VcbiIpOwo+
ICsgICAgICAgbG9jYWxfZGVidWcoImNsb3NpbmcgdGhlIGRldmljZSIpOwo+ICAgICAgICAgY2xv
c2UocHJpdi5mZC5kcm0pOwo+ICAKPiAtICAgICAgIGlndF9kZWJ1ZygidW5wbHVnZ2luZyB0aGUg
ZGV2aWNlXG4iKTsKPiArICAgICAgIGxvY2FsX2RlYnVnKCJ1bnBsdWdnaW5nIHRoZSBkZXZpY2Ui
KTsKPiAgICAgICAgIGRldmljZV91bnBsdWcocHJpdi5mZC5zeXNmc19kZXYpOwoKWyAgIDYwLjY2
NDE2M10gYnVzOiAncGNpJzogcmVtb3ZlIGRldmljZSAwMDAwOjAwOjAyLjAKCj4gLSAgICAgICBp
Z3RfZGVidWcoInJlY292ZXJpbmcgdGhlIGRldmljZVxuIik7Cj4gKyAgICAgICBsb2NhbF9kZWJ1
ZygicmVjb3ZlcmluZyB0aGUgZGV2aWNlIik7Cj4gICAgICAgICBidXNfcmVzY2FuKHByaXYuZmQu
c3lzZnNfYnVzKTsKClsgICA5Ny4zODQ0NzldIGJ1czogJ3BjaSc6IGFkZCBkZXZpY2UgMDAwMDow
MDowMi4wCgo+ICAKPiAgICAgICAgIGhlYWx0aGNoZWNrKCk7Cj4gQEAgLTIxOCwxMyArMjI0LDEz
IEBAIHN0YXRpYyB2b2lkIGhvdHVuYmluZF9sYXRlY2xvc2Uodm9pZCkKPiAgCj4gICAgICAgICBw
cmVwYXJlKCZwcml2LCBidWYsIHNpemVvZihidWYpKTsKPiAgCj4gLSAgICAgICBpZ3RfZGVidWco
ImhvdCB1bmJpbmRpbmcgdGhlIGRyaXZlciBmcm9tIHRoZSBkZXZpY2VcbiIpOwo+ICsgICAgICAg
bG9jYWxfZGVidWcoImhvdCB1bmJpbmRpbmcgdGhlIGRyaXZlciBmcm9tIHRoZSBkZXZpY2UiKTsK
PiAgICAgICAgIGRyaXZlcl91bmJpbmQocHJpdi5mZC5zeXNmc19kcnYsIHByaXYuZGV2X2J1c19h
ZGRyKTsKPiAgCj4gLSAgICAgICBpZ3RfZGVidWcoInJlYmluZGluZyB0aGUgZHJpdmVyIHRvIHRo
ZSBkZXZpY2VcbiIpOwo+ICsgICAgICAgbG9jYWxfZGVidWcoInJlYmluZGluZyB0aGUgZHJpdmVy
IHRvIHRoZSBkZXZpY2UiKTsKPiAgICAgICAgIGRyaXZlcl9iaW5kKHByaXYuZmQuc3lzZnNfZHJ2
LCBwcml2LmRldl9idXNfYWRkcik7Cj4gIAo+IC0gICAgICAgaWd0X2RlYnVnKCJsYXRlIGNsb3Np
bmcgdGhlIHVuYm91bmQgZGV2aWNlIGluc3RhbmNlXG4iKTsKPiArICAgICAgIGxvY2FsX2RlYnVn
KCJsYXRlIGNsb3NpbmcgdGhlIHVuYm91bmQgZGV2aWNlIGluc3RhbmNlIik7Cj4gICAgICAgICBj
bG9zZShwcml2LmZkLmRybSk7CgpXb3VsZCBpdCBiZSBwb3NzaWJsZSB0byBhZGQgZXh0cmEgbG9n
Z2luZyBhbGxvd2luZyB1cyB0byBkaXN0aW5ndWlzaCB0aGlzIGZyb20KcmVndWxhciB1bmJpbmQg
b24gaTkxNSBzaWRlPwoKPiAgCj4gICAgICAgICBoZWFsdGhjaGVjaygpOwo+IEBAIC0yMzYsMTMg
KzI0MiwxMyBAQCBzdGF0aWMgdm9pZCBob3R1bnBsdWdfbGF0ZWNsb3NlKHZvaWQpCj4gIAo+ICAg
ICAgICAgcHJlcGFyZSgmcHJpdiwgTlVMTCwgMCk7Cj4gIAo+IC0gICAgICAgaWd0X2RlYnVnKCJo
b3QgdW5wbHVnZ2luZyB0aGUgZGV2aWNlXG4iKTsKPiArICAgICAgIGxvY2FsX2RlYnVnKCJob3Qg
dW5wbHVnZ2luZyB0aGUgZGV2aWNlIik7Cj4gICAgICAgICBkZXZpY2VfdW5wbHVnKHByaXYuZmQu
c3lzZnNfZGV2KTsKPiAgCj4gLSAgICAgICBpZ3RfZGVidWcoInJlY292ZXJpbmcgdGhlIGRldmlj
ZVxuIik7Cj4gKyAgICAgICBsb2NhbF9kZWJ1ZygicmVjb3ZlcmluZyB0aGUgZGV2aWNlIik7Cj4g
ICAgICAgICBidXNfcmVzY2FuKHByaXYuZmQuc3lzZnNfYnVzKTsKPiAgCj4gLSAgICAgICBpZ3Rf
ZGVidWcoImxhdGUgY2xvc2luZyB0aGUgcmVtb3ZlZCBkZXZpY2UgaW5zdGFuY2VcbiIpOwo+ICsg
ICAgICAgbG9jYWxfZGVidWcoImxhdGUgY2xvc2luZyB0aGUgcmVtb3ZlZCBkZXZpY2UgaW5zdGFu
Y2UiKTsKPiAgICAgICAgIGNsb3NlKHByaXYuZmQuZHJtKTsKClNhbWUgdGhpbmcgaGVyZS4KClNv
LCBub3QgaW5jbHVkaW5nIHRoZSBob3QgdW5wbHVnL3VuYmluZCwgSSB0aGluayB0aGUgbG9nZ2lu
ZyBpcyBhbHJlYWR5IHRoZXJlLgoKQWxzbyAtIG5vdGUsIHRoZSAiZHJpdmVyIGNvcmUiIGxvZ3Mg
YXJlIHByb2JhYmx5IGRpc2FibGVkIG9uIENJLCBidXQgSSBzdGlsbAp0aGluayB0aGF0IGZpZ3Vy
aW5nIG91dCBob3cgdG8gZW5hYmxlIHRob3NlIGZyb20gSUdUIChhbmQgbGV0dGluZyB0aGUga2Vy
bmVsCmp1c3QgZG8gaXRzIHJlZ3VsYXIgbG9nZ2luZykgcmF0aGVyIHRoYW4gYWRkaW5nIGttc2cg
cHJpbnRzIGZyb20gdXNlcnNwYWNlIGlzIGEKYmV0dGVyIGFwcHJvYWNoLgoKLU1pY2hhxYIKCj4g
IAo+ICAgICAgICAgaGVhbHRoY2hlY2soKTsKPiAtLSAKPiAyLjIxLjEKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A4828F2EE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 15:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3868A6E157;
	Thu, 15 Oct 2020 13:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Wed, 14 Oct 2020 19:44:19 UTC
Received: from esa1.hc3370-68.iphmx.com (esa1.hc3370-68.iphmx.com
 [216.71.145.142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF846EB42
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 19:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=citrix.com; s=securemail; t=1602704660;
 h=subject:to:references:from:message-id:date:mime-version:
 in-reply-to:content-transfer-encoding;
 bh=1NquZVhKtHgIfSXsdXr9x93CbiYIcEFDLKC5Qh1YrSE=;
 b=DQ8Z1XjolWcbFRlV9NjrQGVprA/s1k4IuB+s0HZ5I9mSCbWpDD/rXclz
 Fvmf4+ljQ/w66wBvbVSe1ozUQb0eswMMVJR12eK9vspbFTXab4giBKhTY
 fSQWjyURcT2w0LEouCmZHh70l8iRjJokYwiiefi5nVpchrSq6svXo5H08 w=;
Authentication-Results: esa1.hc3370-68.iphmx.com;
 dkim=none (message not signed) header.i=none
IronPort-SDR: bNF8p36IWhINFjAdplWDNjC82HQGJ6T8P9UbrPg5fzoF5Xgs/BfMZs0U8j4V310+KGmyMNy+Pg
 oVvIXPELkru50vfUzuSMbMp8EiD/TP1QpNU1xhQZJRl6fLht9x+e7rdUL6rinuoIv+AxUZ8W99
 ffbKxuBvbCNIkVgPWLcSreojgAsqabHuhXMxm68GF9n9JWcKnFK+UXb8/uKOBhrYUB6JV6qOxP
 mtjGdMbN0h1lazGpmokmxrUhIo+9L49JhyP4AenCXqrY6xAqDTp5pT2tBOO6t8iwwJ+4PZ6tAn
 K88=
X-SBRS: 2.5
X-MesageID: 29351929
X-Ironport-Server: esa1.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.77,375,1596513600"; d="scan'208";a="29351929"
To: Jason Andryuk <jandryuk@gmail.com>, <intel-gfx@lists.freedesktop.org>,
 xen-devel <xen-devel@lists.xenproject.org>
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
From: Andrew Cooper <andrew.cooper3@citrix.com>
Message-ID: <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
Date: Wed, 14 Oct 2020 20:37:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
Content-Language: en-GB
X-ClientProxiedBy: AMSPEX02CAS02.citrite.net (10.69.22.113) To
 FTLPEX02CL05.citrite.net (10.13.108.178)
X-Mailman-Approved-At: Thu, 15 Oct 2020 13:10:15 +0000
Subject: Re: [Intel-gfx] i915 dma faults on Xen
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTQvMTAvMjAyMCAyMDoyOCwgSmFzb24gQW5kcnl1ayB3cm90ZToKPiBIaSwKPgo+IEJ1ZyBv
cGVuZWQgYXQgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vl
cy8yNTc2Cj4KPiBJJ20gc2VlaW5nIERNQSBmYXVsdHMgZm9yIHRoZSBpOTE1IGdyYXBoaWNzIGhh
cmR3YXJlIG9uIGEgRGVsbAo+IExhdGl0dWRlIDU1MDAuIFRoZXNlIHdlcmUgY2FwdHVyZWQgd2hl
biBJIHBsdWdnZWQgaW50byBhIERlbGwKPiBUaHVuZGVyYm9sdCBkb2NrIHdpdGggdHdvIERpc3Bs
YXlQb3J0IG1vbml0b3JzIGF0dGFjaGVkLiAgWGVuIDQuMTIuNAo+IHN0YWdpbmcgYW5kIExpbnV4
IDUuNC43MCAoYW5kIHNvbWUgZWFybGllciB2ZXJzaW9ucykuCj4KPiBPY3QgMTQgMTg6NDE6NDku
MDU2NDkwIGtlcm5lbDpbICAgODUuNTcwMzQ3XSBbZHJtOmdlbjhfZGVfaXJxX2hhbmRsZXIKPiBb
aTkxNV1dICpFUlJPUiogRmF1bHQgZXJyb3JzIG9uIHBpcGUgQTogMHgwMDAwMDA4MAo+IE9jdCAx
NCAxODo0MTo0OS4wNTY0OTQga2VybmVsOlsgICA4NS41NzAzOTVdIFtkcm06Z2VuOF9kZV9pcnFf
aGFuZGxlcgo+IFtpOTE1XV0gKkVSUk9SKiBGYXVsdCBlcnJvcnMgb24gcGlwZSBBOiAweDAwMDAw
MDgwCj4gT2N0IDE0IDE4OjQxOjQ5LjA1NjU4OSBWTSBoeXBlcnZpc29yOiAoWEVOKSBbVlQtRF1E
TUFSOltETUEgUmVhZF0KPiBSZXF1ZXN0IGRldmljZSBbMDAwMDowMDowMi4wXSBmYXVsdCBhZGRy
IDM5YjU4NDUwMDAsIGlvbW11IHJlZyA9Cj4gZmZmZjgyYzAwMDIxZDAwMAo+IE9jdCAxNCAxODo0
MTo0OS4wNTY1OTQgVk0gaHlwZXJ2aXNvcjogKFhFTikgW1ZULURdRE1BUjogcmVhc29uIDA2IC0K
PiBQVEUgUmVhZCBhY2Nlc3MgaXMgbm90IHNldAo+IE9jdCAxNCAxODo0MTo0OS4wNTY3ODQga2Vy
bmVsOlsgICA4NS41NzA2NjhdIFtkcm06Z2VuOF9kZV9pcnFfaGFuZGxlcgo+IFtpOTE1XV0gKkVS
Uk9SKiBGYXVsdCBlcnJvcnMgb24gcGlwZSBBOiAweDAwMDAwMDgwCj4gT2N0IDE0IDE4OjQxOjQ5
LjA1Njc4OSBrZXJuZWw6WyAgIDg1LjU3MDY4N10gW2RybTpnZW44X2RlX2lycV9oYW5kbGVyCj4g
W2k5MTVdXSAqRVJST1IqIEZhdWx0IGVycm9ycyBvbiBwaXBlIEE6IDB4MDAwMDAwODAKPiBPY3Qg
MTQgMTg6NDE6NDkuMDU2ODg1IFZNIGh5cGVydmlzb3I6IChYRU4pIFtWVC1EXURNQVI6W0RNQSBS
ZWFkXQo+IFJlcXVlc3QgZGV2aWNlIFswMDAwOjAwOjAyLjBdIGZhdWx0IGFkZHIgNDIzOGQwYTAw
MCwgaW9tbXUgcmVnID0KPiBmZmZmODJjMDAwMjFkMDAwCj4gT2N0IDE0IDE4OjQxOjQ5LjA1Njg5
MCBWTSBoeXBlcnZpc29yOiAoWEVOKSBbVlQtRF1ETUFSOiByZWFzb24gMDYgLQo+IFBURSBSZWFk
IGFjY2VzcyBpcyBub3Qgc2V0Cj4KPiBUaGV5IHJlcGVhdC4gSW4gdGhlIGxvZyBhdHRhY2hlZCB0
bwo+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMjU3
NiwgdGhleSBzdGFydCBhdAo+ICJPY3QgMTQgMTg6NDE6NDkuMDU2NTg5IiBhbmQgY29udGludWUg
dW50aWwgSSB1bnBsdWcgdGhlIGRvY2sgYXJvdW5kCj4gIk9jdCAxNCAxODo0MTo1NC44MDE4MDIi
Lgo+Cj4gSSd2ZSBhbHNvIHNlZW4gc2ltaWxhciBtZXNzYWdlcyB3aGVuIGF0dGFjaGluZyB0aGUg
bGFwdG9wJ3MgSERNSSBwb3J0Cj4gdG8gYSA0ayBtb25pdG9yLiBUaGUgZURQIGRpc3BsYXkgYnkg
aXRzZWxmIHNlZW1zIG9rYXkuCj4KPiBJIHRyaWVkIEZlZG9yYSAzMSAmIDMyIGxpdmUgaW1hZ2Vz
IHdpdGggaW50ZWxfaW9tbXU9b24sIHNvIG5vIFhlbiwgYW5kCj4gZGlkbid0IHNlZSBhbnkgZXJy
b3JzCj4KPiBUaGlzIGlzIGEga2VybmVsICYgeGVuIGxvZyB3aXRoIGRybS5kZWJ1Zz0weDFlLiBJ
dCBhbHNvIGluY2x1ZGVzIHNvbWUKPiBhcHBsaWNhdGlvbiAoZ2xhc3MpIGxvZ2dpbmcgd2hlbiBp
dCBjaGFuZ2VzIHJlc29sdXRpb25zIHdoaWNoIHNlZW1zIHRvCj4gc2V0IG9mZiB0aGUgRE1BIGZh
dWx0cy4gNTUwMC1pZ2Z4LW1lc3NhZ2VzLWtlcm4teGVuLWdsYXNzCj4KPiBSdW5uaW5nIHhlbiB3
aXRoIGlvbW11PW5vLWlnZnggZGlzYWJsZXMgdGhlIGlvbW11IGZvciB0aGUgaTkxNQo+IGdyYXBo
aWNzIGFuZCBubyBmYXVsdHMgYXJlIHJlcG9ydGVkLiBIb3dldmVyLCB0aGF0IGJyZWFrcyBzb21l
IG90aGVyCj4gZGV2aWNlcyAoRGVsbCBMYXRpdHVkZSA3MjAwIGFuZCA1NTgwKSBnaXZpbmcgYSBi
bGFjayBzY3JlZW4gd2l0aDoKPgo+IE9jdCAxMCAxMzoyNDozNy4wMjIxMTcga2VybmVsOlsgICAx
NC44ODQ3NTldIGk5MTUgMDAwMDowMDowMi4wOiBGYWlsZWQKPiB0byBpZGxlIGVuZ2luZXMsIGRl
Y2xhcmluZyB3ZWRnZWQhCj4gT2N0IDEwIDEzOjI0OjM3LjAyMjExOCBrZXJuZWw6WyAgIDE0Ljk2
NDc5NF0gaTkxNSAwMDAwOjAwOjAyLjA6IEZhaWxlZAo+IHRvIGluaXRpYWxpemUgR1BVLCBkZWNs
YXJpbmcgaXQgd2VkZ2VkIQo+Cj4gQW55IHN1Z2dlc3Rpb25zIHdlbGNvbWUuCgpQcmVzdW1hYmx5
IHRoaXMgaXMgd2l0aCBhIFBWIGRvbTAuwqAgV2hhdCBhcmUgMzliNTg0NTAwMCBhbmQgNDIzOGQw
YTAwMAppbiB0aGUgbWFjaGluZSBtZW1vcnkgbWFwPwoKVGhpcyBzbWVsbHMgbGlrZSBhIG1pc3Np
bmcgUk1SUiBpbiB0aGUgQUNQSSB0YWJsZXMuCgp+QW5kcmV3Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

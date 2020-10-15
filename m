Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA8E28F170
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E139188E5B;
	Thu, 15 Oct 2020 11:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Thu, 15 Oct 2020 11:38:48 UTC
Received: from esa6.hc3370-68.iphmx.com (esa6.hc3370-68.iphmx.com
 [216.71.155.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF0488E5B
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 11:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=citrix.com; s=securemail; t=1602761928;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JaKKGt3d+i+nh0Sf/oHSA2TVHCS6q9lA/II9WTvsiHI=;
 b=KWkvu115/N33VEphFBngI9if60/E3hoxNSvAOwFh+LoCa0iPnUklTqOZ
 iF0X5h3rOLsI0wPRuoWYB0TpUZeP1wIqIvzWZP1SHII7mvoV7sV+HrIZ7
 AheO8ni7DxgZ6Mp6x5Bf6t8irED8k20FcHNh+2uv2GvaA8a70tn6pDL3z g=;
Authentication-Results: esa6.hc3370-68.iphmx.com;
 dkim=none (message not signed) header.i=none
IronPort-SDR: RTxSUs8l+PfyoDrEqhblrAMlIjAPi4B35dQozjF52rakKudSspVBFEp++RApEw57Kq1MBrOhEv
 +y/JW6VwM0kfES4d7GN7Chx049SKFoCm1kP/XsuxrdjXwWr8Jr1J7vre3OX7pUyK3CJDpRrfeM
 XpdLLcgLEcJZ6iKbTGh5hfGgYma7ILqJ7iDP1T9/5l8Q84yk0xnTb6ZY3cliTNTNlemZyHOV+B
 6cf+bd3v+W7xz/eK69xtYZ/na3uJdT5RwfAjVAXhGE4Jp93Ad141PASZsyN+ntBcYvXuhHauRx
 1Ug=
X-SBRS: 2.5
X-MesageID: 29314360
X-Ironport-Server: esa6.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.77,378,1596513600"; d="scan'208";a="29314360"
Date: Thu, 15 Oct 2020 13:31:33 +0200
From: Roger Pau =?utf-8?B?TW9ubsOp?= <roger.pau@citrix.com>
To: Jason Andryuk <jandryuk@gmail.com>
Message-ID: <20201015113109.GA68032@Air-de-Roger>
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
 <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
X-ClientProxiedBy: AMSPEX02CAS02.citrite.net (10.69.22.113) To
 FTLPEX02CL06.citrite.net (10.13.108.179)
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
Cc: Andrew Cooper <andrew.cooper3@citrix.com>, intel-gfx@lists.freedesktop.org,
 xen-devel <xen-devel@lists.xenproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMTQsIDIwMjAgYXQgMDg6Mzc6MDZQTSArMDEwMCwgQW5kcmV3IENvb3BlciB3
cm90ZToKPiBPbiAxNC8xMC8yMDIwIDIwOjI4LCBKYXNvbiBBbmRyeXVrIHdyb3RlOgo+ID4gSGks
Cj4gPgo+ID4gQnVnIG9wZW5lZCBhdCBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2ludGVsLy0vaXNzdWVzLzI1NzYKPiA+Cj4gPiBJJ20gc2VlaW5nIERNQSBmYXVsdHMgZm9yIHRo
ZSBpOTE1IGdyYXBoaWNzIGhhcmR3YXJlIG9uIGEgRGVsbAo+ID4gTGF0aXR1ZGUgNTUwMC4gVGhl
c2Ugd2VyZSBjYXB0dXJlZCB3aGVuIEkgcGx1Z2dlZCBpbnRvIGEgRGVsbAo+ID4gVGh1bmRlcmJv
bHQgZG9jayB3aXRoIHR3byBEaXNwbGF5UG9ydCBtb25pdG9ycyBhdHRhY2hlZC4gIFhlbiA0LjEy
LjQKPiA+IHN0YWdpbmcgYW5kIExpbnV4IDUuNC43MCAoYW5kIHNvbWUgZWFybGllciB2ZXJzaW9u
cykuCj4gPgo+ID4gT2N0IDE0IDE4OjQxOjQ5LjA1NjQ5MCBrZXJuZWw6WyAgIDg1LjU3MDM0N10g
W2RybTpnZW44X2RlX2lycV9oYW5kbGVyCj4gPiBbaTkxNV1dICpFUlJPUiogRmF1bHQgZXJyb3Jz
IG9uIHBpcGUgQTogMHgwMDAwMDA4MAo+ID4gT2N0IDE0IDE4OjQxOjQ5LjA1NjQ5NCBrZXJuZWw6
WyAgIDg1LjU3MDM5NV0gW2RybTpnZW44X2RlX2lycV9oYW5kbGVyCj4gPiBbaTkxNV1dICpFUlJP
UiogRmF1bHQgZXJyb3JzIG9uIHBpcGUgQTogMHgwMDAwMDA4MAo+ID4gT2N0IDE0IDE4OjQxOjQ5
LjA1NjU4OSBWTSBoeXBlcnZpc29yOiAoWEVOKSBbVlQtRF1ETUFSOltETUEgUmVhZF0KPiA+IFJl
cXVlc3QgZGV2aWNlIFswMDAwOjAwOjAyLjBdIGZhdWx0IGFkZHIgMzliNTg0NTAwMCwgaW9tbXUg
cmVnID0KPiA+IGZmZmY4MmMwMDAyMWQwMDAKPiA+IE9jdCAxNCAxODo0MTo0OS4wNTY1OTQgVk0g
aHlwZXJ2aXNvcjogKFhFTikgW1ZULURdRE1BUjogcmVhc29uIDA2IC0KPiA+IFBURSBSZWFkIGFj
Y2VzcyBpcyBub3Qgc2V0Cj4gPiBPY3QgMTQgMTg6NDE6NDkuMDU2Nzg0IGtlcm5lbDpbICAgODUu
NTcwNjY4XSBbZHJtOmdlbjhfZGVfaXJxX2hhbmRsZXIKPiA+IFtpOTE1XV0gKkVSUk9SKiBGYXVs
dCBlcnJvcnMgb24gcGlwZSBBOiAweDAwMDAwMDgwCj4gPiBPY3QgMTQgMTg6NDE6NDkuMDU2Nzg5
IGtlcm5lbDpbICAgODUuNTcwNjg3XSBbZHJtOmdlbjhfZGVfaXJxX2hhbmRsZXIKPiA+IFtpOTE1
XV0gKkVSUk9SKiBGYXVsdCBlcnJvcnMgb24gcGlwZSBBOiAweDAwMDAwMDgwCj4gPiBPY3QgMTQg
MTg6NDE6NDkuMDU2ODg1IFZNIGh5cGVydmlzb3I6IChYRU4pIFtWVC1EXURNQVI6W0RNQSBSZWFk
XQo+ID4gUmVxdWVzdCBkZXZpY2UgWzAwMDA6MDA6MDIuMF0gZmF1bHQgYWRkciA0MjM4ZDBhMDAw
LCBpb21tdSByZWcgPQo+ID4gZmZmZjgyYzAwMDIxZDAwMAo+ID4gT2N0IDE0IDE4OjQxOjQ5LjA1
Njg5MCBWTSBoeXBlcnZpc29yOiAoWEVOKSBbVlQtRF1ETUFSOiByZWFzb24gMDYgLQo+ID4gUFRF
IFJlYWQgYWNjZXNzIGlzIG5vdCBzZXQKPiA+Cj4gPiBUaGV5IHJlcGVhdC4gSW4gdGhlIGxvZyBh
dHRhY2hlZCB0bwo+ID4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8t
L2lzc3Vlcy8yNTc2LCB0aGV5IHN0YXJ0IGF0Cj4gPiAiT2N0IDE0IDE4OjQxOjQ5LjA1NjU4OSIg
YW5kIGNvbnRpbnVlIHVudGlsIEkgdW5wbHVnIHRoZSBkb2NrIGFyb3VuZAo+ID4gIk9jdCAxNCAx
ODo0MTo1NC44MDE4MDIiLgo+ID4KPiA+IEkndmUgYWxzbyBzZWVuIHNpbWlsYXIgbWVzc2FnZXMg
d2hlbiBhdHRhY2hpbmcgdGhlIGxhcHRvcCdzIEhETUkgcG9ydAo+ID4gdG8gYSA0ayBtb25pdG9y
LiBUaGUgZURQIGRpc3BsYXkgYnkgaXRzZWxmIHNlZW1zIG9rYXkuCj4gPgo+ID4gSSB0cmllZCBG
ZWRvcmEgMzEgJiAzMiBsaXZlIGltYWdlcyB3aXRoIGludGVsX2lvbW11PW9uLCBzbyBubyBYZW4s
IGFuZAo+ID4gZGlkbid0IHNlZSBhbnkgZXJyb3JzCj4gPgo+ID4gVGhpcyBpcyBhIGtlcm5lbCAm
IHhlbiBsb2cgd2l0aCBkcm0uZGVidWc9MHgxZS4gSXQgYWxzbyBpbmNsdWRlcyBzb21lCj4gPiBh
cHBsaWNhdGlvbiAoZ2xhc3MpIGxvZ2dpbmcgd2hlbiBpdCBjaGFuZ2VzIHJlc29sdXRpb25zIHdo
aWNoIHNlZW1zIHRvCj4gPiBzZXQgb2ZmIHRoZSBETUEgZmF1bHRzLiA1NTAwLWlnZngtbWVzc2Fn
ZXMta2Vybi14ZW4tZ2xhc3MKPiA+Cj4gPiBSdW5uaW5nIHhlbiB3aXRoIGlvbW11PW5vLWlnZngg
ZGlzYWJsZXMgdGhlIGlvbW11IGZvciB0aGUgaTkxNQo+ID4gZ3JhcGhpY3MgYW5kIG5vIGZhdWx0
cyBhcmUgcmVwb3J0ZWQuIEhvd2V2ZXIsIHRoYXQgYnJlYWtzIHNvbWUgb3RoZXIKPiA+IGRldmlj
ZXMgKERlbGwgTGF0aXR1ZGUgNzIwMCBhbmQgNTU4MCkgZ2l2aW5nIGEgYmxhY2sgc2NyZWVuIHdp
dGg6Cj4gPgo+ID4gT2N0IDEwIDEzOjI0OjM3LjAyMjExNyBrZXJuZWw6WyAgIDE0Ljg4NDc1OV0g
aTkxNSAwMDAwOjAwOjAyLjA6IEZhaWxlZAo+ID4gdG8gaWRsZSBlbmdpbmVzLCBkZWNsYXJpbmcg
d2VkZ2VkIQo+ID4gT2N0IDEwIDEzOjI0OjM3LjAyMjExOCBrZXJuZWw6WyAgIDE0Ljk2NDc5NF0g
aTkxNSAwMDAwOjAwOjAyLjA6IEZhaWxlZAo+ID4gdG8gaW5pdGlhbGl6ZSBHUFUsIGRlY2xhcmlu
ZyBpdCB3ZWRnZWQhCj4gPgo+ID4gQW55IHN1Z2dlc3Rpb25zIHdlbGNvbWUuCj4gCj4gUHJlc3Vt
YWJseSB0aGlzIGlzIHdpdGggYSBQViBkb20wLsKgIFdoYXQgYXJlIDM5YjU4NDUwMDAgYW5kIDQy
MzhkMGEwMDAKPiBpbiB0aGUgbWFjaGluZSBtZW1vcnkgbWFwPwo+IAo+IFRoaXMgc21lbGxzIGxp
a2UgYSBtaXNzaW5nIFJNUlIgaW4gdGhlIEFDUEkgdGFibGVzLgoKSSBhZ3JlZS4KCkNhbiB5b3Ug
cGFzdGUgdGhlIG1lbW9yeSBtYXAgYXMgcHJpbnRlZCBieSBYZW4gd2hlbiBib290aW5nLCBhbmQg
d2hhdApjb21tYW5kIGxpbmUgYXJlIHlvdSB1c2luZyB0byBib290IFhlbi4KCkhhdmUgeW91IHRy
aWVkIGFkZGluZyBkb20wLWlvbW11PW1hcC1pbmNsdXNpdmUgdG8gdGhlIFhlbiBjb21tYW5kCmxp
bmU/CgpSb2dlci4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D255FE3EE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E4C6E9E3;
	Fri, 15 Nov 2019 17:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ackle.nomi.cz (ackle.nomi.cz [IPv6:2a01:430:1:1::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C286E9E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 17:29:05 +0000 (UTC)
Received: from localhost (unknown
 [IPv6:2a02:8308:a03d:b400:3f23:631f:7f50:8a55])
 by ackle.nomi.cz (Postfix) with ESMTPSA id 8C3A6A1E5B;
 Fri, 15 Nov 2019 18:29:03 +0100 (CET)
Date: Fri, 15 Nov 2019 18:29:03 +0100
From: Tomas Janousek <tomi@nomi.cz>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191115172902.yeqpnnunuowrbnrb@notes.lisk.in>
References: <20191115011112.25249-1-don.hiatt@intel.com>
 <20191115011112.25249-2-don.hiatt@intel.com>
 <5cebb6ef4b95c893ec53f68113439a3922ea8163.camel@intel.com>
 <157383839967.11997.12324024656389899848@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157383839967.11997.12324024656389899848@skylake-alporthouse-com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=nomi.cz; s=201904; 
 t=1573838943; bh=MFXSJGbxbdw/TDtkh9jBWd7BYU56JB2ib58G2AFIFR0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gjiSo7nuayLGApKjXKvcJSQBgxAOq/vruzXEJHcTvZfYQYMg6bX51/qNOAbteDbPt
 tc+ClIlKEXHKz5s9E1t24Dz6OTscIZJhybxMrjp66f1I5K9qQAvNbP+XjA+sqjQ81h
 t0qfPYl0gYIfz/Sb22vcsXlITlkQ+6WdmYTJOSqUmXDWJVVPzXs93ekU4QPsZjehsA
 E/pkEPEI7hvGdN79+qgOpAe3BhnJlmruX+Gr8MquCWYMwxUQN/3o56vtXPI7DV4Y39
 XnzS71vIuz+KwZjATMvpp3PwKv/xB1kZZR9fphsqfP9E3JAxHtfOaCtk4rEnZzVHXs
 Q4OGaDSKTUcbw==
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG9uLCBDaHJpcywKCk9uIEZyaSwgTm92IDE1LCAyMDE5IGF0IDA1OjE5OjU5UE0gKzAwMDAsIENo
cmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFN1bW1lcnMsIFN0dWFydCAoMjAxOS0xMS0xNSAx
NzoxMjo1OCkKPiA+IE9uIFRodSwgMjAxOS0xMS0xNCBhdCAxNzoxMSAtMDgwMCwgZG9uLmhpYXR0
QGludGVsLmNvbSB3cm90ZToKPiA+ID4gRnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwu
Y29tPgo+ID4gPiAKPiA+ID4gT24gc29tZSBwbGF0Zm9ybXMgKGUuZy4gS0JMKSB0aGF0IGRvIG5v
dCBzdXBwb3J0IEd1QyBzdWJtaXNzaW9uLCBidXQKPiA+ID4gdGhlIHVzZXIgZW5hYmxlZCB0aGUg
R3VDIGNvbW11bmljYXRpb24gKGUuZyBmb3IgSHVDIGF1dGhlbnRpY2F0aW9uKQo+ID4gPiBjYWxs
aW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ugb2YgYWJpbGl0
eSB0bwo+ID4gPiBlbnRlciBSQzYuIFdlIGNhbiByZW1vdmUgdGhlIEd1QyBzdXNwZW5kL3Jlc3Vt
ZSBlbnRpcmVseSBhcyB3ZSBkbwo+ID4gPiBub3QgbmVlZCB0byBzYXZlIHRoZSBHdUMgc3VibWlz
c2lvbiBzdGF0dXMuCj4gPiA+IAo+ID4gPiB2MjogRG8gbm90IHN1c3BlbmQvcmVzdW1lIHRoZSBH
dUMgb24gcGxhdGZvcm1zIHRoYXQgZG8gbm90IHN1cHBvcnQKPiA+ID4gICAgIEd1YyBTdWJtaXNz
aW9uLgo+ID4gPiB2MzogRml4IHR5cG8sIG1vdmUgc3VzcGVuZCBsb2dpYyB0byByZW1vdmUgZ290
by4KPiA+ID4gdjQ6IFVzZSBpbnRlbF9ndWNfc3VibWlzc2lvbl9pc19lbmFibGVkKCkgdG8gY2hl
Y2sgR3VDIHN1Ym1pc3Npb24KPiA+ID4gICAgIHN0YXR1cy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1v
ZmYtYnk6IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4KPiA+IAo+ID4gQW55IHJlYXNv
biBub3QgdG8ganVzdCBjb21iaW5lIGJvdGggb2YgdGhlc2UgaW50byBhIHNpbmdsZSBwYXRjaD8K
PiAKPiBBbHNvIHBsZWFzZSByZW1lbWJlciB0byBpbmNsdWRlIHRoZSBidWd6aWxsYSBsaW5rLCBh
c2sgaWYgdGhlIHJlcG9ydGVyCj4gd2FudHMgdG8gYmUgY3JlZGl0ZWQsIGFuZCBtb3N0IGltcG9y
dGFudCBvZiBhbGwgYSBGaXhlczogc28gd2UgY2FuCj4gYmFja3BvcnQgaXQgY29ycmVjdGx5LiBJ
ZiB0aGVyZSBpcyBubyBzaW5ndWxhciBjYXVzZSwgcG9pbnQgYXQgdGhlCj4gImd1Yy9odWMgZW5h
YmxpbmcgYnkgZGVmYXVsdCIgcGF0Y2guCgpUaGlzIGNvbW1lbnQgb2YgbWluZSBjYW4gaGVscCB3
aXRoIHRoZSBGaXhlczogbGluZToKaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTExNjIzI2MyMAoKPiBJIGJpc2VjdGVkIHRoaXMgdG8gW2NjODBiMmVmMjQ4OThk
YzYyMjQyZTE5NDI3MDIwMGIwMWNhNzU4ZDFdIGRybS9pOTE1L2d1YzoKPiBDaGFuZ2UgcGxhdGZv
cm0gZGVmYXVsdCBHdUMgbW9kZSAtLSBJJ3ZlIGJlZW4gcnVubmluZyB3aXRoIGVuYWJsZV9ndWM9
LTEuIElmCj4gSSBoYWQgYmVlbiBydW5uaW5nIHdpdGggZW5hYmxlX2d1Yz0zLCBJIGd1ZXNzIGl0
IHdvdWxkJ3ZlIGJpc2VjdGVkIHRvCj4gW2EyOTA0YWRlM2RjMjhjZjFhMWI3ZGVkZWQ0MWY0MzY5
Zjc1ZTY2NGNdIGRybS9pOTE1L2d1YzogRG9uJ3QgYWxsb3cgR3VDCj4gc3VibWlzc2lvbi4KPgo+
IEFueXdheSwgaXQgc2VlbXMgdGhhdCBvbiB0aGlzIEthYnkgTGFrZSBzeXN0ZW0sIGxvYWRpbmcg
SHVDIHdpdGhvdXQgR3VDCj4gc3VibWlzc2lvbiBsZWFkcyB0byB0aGUgR1BVIG5vdCBlbnRlcmlu
ZyByYzYgYW5kIHRodXMga2VlcGluZyB0aGUgcGFja2FnZQo+IG91dCBvZiBDLXN0YXRlcy4gT2J2
aW91c2x5IHRoZW4gaXQgZG9lc24ndCBtYXR0ZXIgd2hhdCBHdUMgdmVyc2lvbiBpdCBpcywgYmUK
PiBpdCA5LjM5IG9yIDMyLjAuMyBvciB3aGF0ZXZlci4KCkFsc28sIGFzIG1lbnRpb25lZCBpbiBh
bm90aGVyIGNvbW1lbnQ6CgpUZXN0ZWQtYnk6IFRvbWFzIEphbm91c2VrIDx0b21pQG5vbWkuY3o+
CgooRG8gbm90ZSB0aGF0IEknbSBydW5uaW5nIGEgYmFja3BvcnQgdG8gNS4zLApodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL2F0dGFjaG1lbnQuY2dpP2lkPTE0NTk2OSwgbm90IGRybS10aXAu
KQoKLS0gClRvbcOhxaEgSmFub3XFoWVrLCBhLmsuYS4gUGl2bsOtaywgYS5rLmEuIExpc2tuaV9z
aSwgaHR0cDovL3dvcmsubGlzay5pbi8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4

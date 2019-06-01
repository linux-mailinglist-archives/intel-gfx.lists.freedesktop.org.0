Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B3731A96
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Jun 2019 10:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83FD89B49;
	Sat,  1 Jun 2019 08:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB4189B46
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Jun 2019 08:45:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16757233-1500050 for multiple; Sat, 01 Jun 2019 09:45:24 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190531222409.9177-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190531222409.9177-1-daniele.ceraolospurio@intel.com>
Message-ID: <155937872123.22493.3618519792490340553@skylake-alporthouse-com>
Date: Sat, 01 Jun 2019 09:45:21 +0100
Subject: Re: [Intel-gfx] [PATCH 0/2] split out intel_display_power
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA1LTMxIDIzOjI0OjA3KQo+IFNl
cGFyYXRlIHRoZSBkaXNwbGF5IFBNIGZyb20gdGhlIFBDSS1sZXZlbCBydW50aW1lIFBNLgo+IEkn
bGwgZm9sbG93IHRoaXMgdXAgd2l0aCB2MiBvZiB0aGUgcnBtIGVuY2Fwc3VsYXRpb24gc2VyaWVz
IFsxXSwgYnV0Cj4gSSdkIGxpa2UgdG8gZ2V0IHRoaXMgaW4gYmVmb3JlIHRoYXQgdG8gYXZvaWQg
aGF2aW5nIHRvIGNhcnJ5IHRoaXMKPiBiaWcgZHVtYiBkaWZmIGluIHRoYXQgc2VyaWVzLgoKV2l0
aCBSVU5USU1FX1BNX0RFQlVHIGRpc2FibGVkLAoKYWRkL3JlbW92ZTogMy8xIGdyb3cvc2hyaW5r
OiA2LzggdXAvZG93bjogMzk2Ly0zOTMgKDMpCkZ1bmN0aW9uICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIG9sZCAgICAgbmV3ICAgZGVsdGEKaW50ZWxfcnVudGltZV9wbV9yZWxl
YXNlICAgICAgICAgICAgICAgICAgICAgICAtICAgICAyNzQgICAgKzI3NAppbnRlbF9ydW50aW1l
X3BtX3B1dF9yYXcgICAgICAgICAgICAgICAgICAgICAgIC0gICAgICA0NSAgICAgKzQ1CmludGVs
X3J1bnRpbWVfcG1fcHV0X3VuY2hlY2tlZCAgICAgICAgICAgICAgICAxMCAgICAgIDQ4ICAgICAr
MzgKaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5bmNfd29yayAgICAgICAgICAgMTc5ICAgICAx
OTIgICAgICsxMwppbnRlbF9kaXNwbGF5X3Bvd2VyX2ZsdXNoX3dvcmsgICAgICAgICAgICAgICAx
MTcgICAgIDEyNiAgICAgICs5Cl9faW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5bmMgICAgICAg
ICAgICAgIDE5MyAgICAgMTk5ICAgICAgKzYKaW50ZWxfcnVudGltZV9wbV9nZXRfcmF3ICAgICAg
ICAgICAgICAgICAgICAgICAtICAgICAgIDQgICAgICArNAppbnRlbF9kaXNwbGF5X3Bvd2VyX2dy
YWJfYXN5bmNfcHV0X3JlZiAgICAgICAxMTcgICAgIDEyMSAgICAgICs0Cl9fd2FybmVkICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDQ2OSAgICAgNDcyICAgICAgKzMKaW50ZWxf
cnVudGltZV9wbV9nZXQgICAgICAgICAgICAgICAgICAgICAgICAgIDEwICAgICAgIDcgICAgICAt
MwppbnRlbF9wb3dlcl9kb21haW5zX2VuYWJsZSAgICAgICAgICAgICAgICAgICAgMzggICAgICAz
MyAgICAgIC01CmludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X3VuY2hlY2tlZCAgICAgICAgICAgICAy
MyAgICAgIDE4ICAgICAgLTUKaW50ZWxfZGlzcGxheV9wb3dlcl9nZXRfaWZfZW5hYmxlZCAgICAg
ICAgICAgMTQzICAgICAxMzggICAgICAtNQppbnRlbF9kaXNwbGF5X3Bvd2VyX2dldCAgICAgICAg
ICAgICAgICAgICAgICAgODQgICAgICA3OSAgICAgIC01CmludGVsX3Bvd2VyX2RvbWFpbnNfc3Vz
cGVuZCAgICAgICAgICAgICAgICAgIDQ5MCAgICAgNDgwICAgICAtMTAKaW50ZWxfcG93ZXJfZG9t
YWluc19maW5pX2h3ICAgICAgICAgICAgICAgICAgMTE2ICAgICAxMDYgICAgIC0xMApyZWxlYXNl
X2FzeW5jX3B1dF9kb21haW5zICAgICAgICAgICAgICAgICAgICAyMjAgICAgIDIwMyAgICAgLTE3
Cl9faW50ZWxfcnVudGltZV9wbV9wdXQuY29uc3Rwcm9wICAgICAgICAgICAgIDMzMyAgICAgICAt
ICAgIC0zMzMKVG90YWw6IEJlZm9yZT0yMzM5NDM4OCwgQWZ0ZXI9MjMzOTQzOTEsIGNoZyArMC4w
MCUKCndoaWNoIGlzIG15IGJpZ2dlc3Qgd29ycnkgd2hlbiBtZWRkbGluZyB3aXRoIHRoZXNlLCB0
aGF0IHdlIGFjY2lkZW50YWxseQpleHBsb2RlIHByb2R1Y3Rpb24gY29kZSB3aXRoIHVudXNlZCBk
ZWJ1Z2dpbmcgKGFsbCB0aG9zZSB3YWtlcmVmcykuCgpMZ3RtLCBJIHdvdWxkIGxpa2UgSmFuaSB0
byBpbmRpY2F0ZSB0aGF0IGhlJ3MgaGFwcHkgd2l0aCB0aGlzIHNwbGl0IGFzCndlbGwgc2luY2Ug
aGUgaGFzIGJlZW4gbG9va2luZyBhdCB2ZXJ5IHNpbWlsYXIgaWRlYXMuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

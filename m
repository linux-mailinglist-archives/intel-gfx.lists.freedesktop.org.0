Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43374470CC
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jun 2019 17:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D778901E;
	Sat, 15 Jun 2019 15:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BBAA8901E
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jun 2019 15:23:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jun 2019 08:23:32 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga002.jf.intel.com with ESMTP; 15 Jun 2019 08:23:32 -0700
Date: Sat, 15 Jun 2019 08:23:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190615152332.GA32323@mdroper-desk.amr.corp.intel.com>
References: <20190530234014.22340-1-matthew.d.roper@intel.com>
 <b13e3a5b45bf74cd212b9fbcb529fe95a680bea3.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b13e3a5b45bf74cd212b9fbcb529fe95a680bea3.camel@intel.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Update MOCS table for EHL
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

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgMDM6Mjc6MDRQTSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVGh1LCAyMDE5LTA1LTMwIGF0IDE2OjQwIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3Rl
Ogo+ID4gRUhMIGRlZmluZXMgdHdvIG5ldyBNT0NTIHRhYmxlIGVudHJpZXMgYnV0IGlzIG90aGVy
d2lzZSBjb21wYXRpYmxlCj4gPiB3aXRoCj4gPiB0aGUgSUNMIE1PQ1MgdGFibGUuCj4gPiAKPiA+
IFRoZXNlIHRhYmxlIGVudHJpZXMgKDE2IGFuZCAxNykgc2hvdWxkIHN0aWxsIGJlIGNvbnNpZGVy
ZWQgdW51c2VkIGZvcgo+ID4gSUNMIGFuZCBhcyBzdWNoIHRoZWlyIGJlaGF2aW9yIHJlbWFpbnMg
dW5kZWZpbmVkIGZvciB0aGF0IHBsYXRmb3JtLgo+ID4gCj4gCj4gUmVxdWVzdGluZyBhbm90aGVy
IENJIHJvdW5kIGJlZm9yZSBtZXJnaW5nIGl0Lgo+IAo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KCkNJIHJlLXJ1biBsb29rcyBjbGVh
bjsgcHVzaGVkIHRvIGRpbnEuICBUaGFua3MgZm9yIHRoZSByZXZpZXdzLgoKCk1hdHQKCgo+IAo+
ID4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
PiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8IDggKysr
KysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4gPiBpbmRleCA3OWRmNjYwMjJkM2EuLjFm
OWRiNTBiMTg2OSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X21vY3MuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4g
PiBAQCAtMjAwLDYgKzIwMCwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X21vY3Nf
ZW50cnkKPiA+IGJyb3h0b25fbW9jc190YWJsZVtdID0gewo+ID4gIAlNT0NTX0VOVFJZKDE1LCBc
Cj4gPiAgCQkgICBMRV8zX1dCIHwgTEVfVENfMV9MTEMgfCBMRV9MUlVNKDIpIHwgTEVfQU9NKDEp
LCBcCj4gPiAgCQkgICBMM18zX1dCKSwgXAo+ID4gKwkvKiBCeXBhc3MgTExDIC0gVW5jYWNoZWQg
KEVITCspICovIFwKPiA+ICsJTU9DU19FTlRSWSgxNiwgXAo+ID4gKwkJICAgTEVfMV9VQyB8IExF
X1RDXzFfTExDIHwgTEVfU0NGKDEpLCBcCj4gPiArCQkgICBMM18xX1VDKSwgXAo+ID4gKwkvKiBC
eXBhc3MgTExDIC0gTDMgKFJlYWQtT25seSkgKEVITCspICovIFwKPiA+ICsJTU9DU19FTlRSWSgx
NywgXAo+ID4gKwkJICAgTEVfMV9VQyB8IExFX1RDXzFfTExDIHwgTEVfU0NGKDEpLCBcCj4gPiAr
CQkgICBMM18zX1dCKSwgXAo+ID4gIAkvKiBTZWxmLVNub29wIC0gTDMgKyBMTEMgKi8gXAo+ID4g
IAlNT0NTX0VOVFJZKDE4LCBcCj4gPiAgCQkgICBMRV8zX1dCIHwgTEVfVENfMV9MTEMgfCBMRV9M
UlVNKDMpIHwgTEVfU1NFKDMpLCBcCgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBF
bmdpbmVlcgpJb1RHIFBsYXRmb3JtIEVuYWJsaW5nICYgRGV2ZWxvcG1lbnQKSW50ZWwgQ29ycG9y
YXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4

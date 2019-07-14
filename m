Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AC467F10
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jul 2019 15:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB95789893;
	Sun, 14 Jul 2019 13:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1343589893
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Jul 2019 13:01:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17285565-1500050 for multiple; Sun, 14 Jul 2019 14:01:22 +0100
MIME-Version: 1.0
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <3e7a4865-0d5e-5dca-ce03-f72e834c5c0e@gmail.com>
References: <f4d7d506-bed5-c205-8532-0d360f9eee04@gmail.com>
 <09346773-8023-9c32-7650-48daa4ec546c@gmail.com>
 <156310765929.9436.10195271706258664728@skylake-alporthouse-com>
 <eeae3226-4bdf-3d90-2651-cb75e91e6f14@gmail.com>
 <156310838731.9436.10439630434196784138@skylake-alporthouse-com>
 <3e7a4865-0d5e-5dca-ce03-f72e834c5c0e@gmail.com>
Message-ID: <156310928036.9436.2714086936038939581@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 14 Jul 2019 14:01:20 +0100
Subject: Re: [Intel-gfx] NPE in i915_gemfs_init
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBIZWluZXIgS2FsbHdlaXQgKDIwMTktMDctMTQgMTM6NTE6NDUpCj4gT24gMTQuMDcu
MjAxOSAxNDo0NiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBIZWluZXIgS2FsbHdl
aXQgKDIwMTktMDctMTQgMTM6Mzk6MTUpCj4gPj4gT24gMTQuMDcuMjAxOSAxNDozNCwgQ2hyaXMg
V2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIEhlaW5lciBLYWxsd2VpdCAoMjAxOS0wNy0xMyAx
MjoxMjo1NikKPiA+Pj4+IEkgZGVidWdnZWQgYSBsaXR0bGUgYml0IGFuZCByZW1vdW50X2ZzIGlz
bid0IHNldCBpbiBzYi0+c19vcC4KPiA+Pj4+IFRoZSBmb2xsb3dpbmcgYXQgbGVhc3QgYXZvaWRz
IHRoZSBOUEUsIG5vdCBzdXJlIHdoZXRoZXIgaXQncyB0aGUgY29ycmVjdCBmaXguCj4gPj4+Cj4g
Pj4+IEkgdGFrZSBpdCB5b3UgZG9uJ3QgaGF2ZSBDT05GSUdfVE1QRlMgc2V0Pwo+ID4+Pgo+ID4+
IFRoaXMgb3B0aW9uIGlzIHNldDoKPiA+Pgo+ID4+IFtyb290QHpvdGFjIGxpbnV4LW5leHRdIyBn
cmVwIFRNUEZTIC5jb25maWcKPiA+PiBDT05GSUdfREVWVE1QRlM9eQo+ID4+IENPTkZJR19ERVZU
TVBGU19NT1VOVD15Cj4gPj4gQ09ORklHX1RNUEZTPXkKPiA+PiBDT05GSUdfVE1QRlNfUE9TSVhf
QUNMPXkKPiA+PiBDT05GSUdfVE1QRlNfWEFUVFI9eQo+ID4gCj4gPiBOb3cgdGhhdCdzIHdlaXJk
LCBhcwo+ID4gCj4gPiBzdGF0aWMgY29uc3Qgc3RydWN0IHN1cGVyX29wZXJhdGlvbnMgc2htZW1f
b3BzID0gewo+ID4gICAgICAgICAuYWxsb2NfaW5vZGUgICAgPSBzaG1lbV9hbGxvY19pbm9kZSwK
PiA+ICAgICAgICAgLmZyZWVfaW5vZGUgICAgID0gc2htZW1fZnJlZV9pbl9jb3JlX2lub2RlLAo+
ID4gICAgICAgICAuZGVzdHJveV9pbm9kZSAgPSBzaG1lbV9kZXN0cm95X2lub2RlLAo+ID4gI2lm
ZGVmIENPTkZJR19UTVBGUwo+ID4gICAgICAgICAuc3RhdGZzICAgICAgICAgPSBzaG1lbV9zdGF0
ZnMsCj4gPiAgICAgICAgIC5yZW1vdW50X2ZzICAgICA9IHNobWVtX3JlbW91bnRfZnMsCj4gPiAg
ICAgICAgIC5zaG93X29wdGlvbnMgICA9IHNobWVtX3Nob3dfb3B0aW9ucywKPiA+ICNlbmRpZgo+
ID4gICAgICAgICAuZXZpY3RfaW5vZGUgICAgPSBzaG1lbV9ldmljdF9pbm9kZSwKPiA+ICAgICAg
ICAgLmRyb3BfaW5vZGUgICAgID0gZ2VuZXJpY19kZWxldGVfaW5vZGUsCj4gPiAgICAgICAgIC5w
dXRfc3VwZXIgICAgICA9IHNobWVtX3B1dF9zdXBlciwKPiA+ICNpZmRlZiBDT05GSUdfVFJBTlNQ
QVJFTlRfSFVHRV9QQUdFQ0FDSEUKPiA+ICAgICAgICAgLm5yX2NhY2hlZF9vYmplY3RzICAgICAg
PSBzaG1lbV91bnVzZWRfaHVnZV9jb3VudCwKPiA+ICAgICAgICAgLmZyZWVfY2FjaGVkX29iamVj
dHMgICAgPSBzaG1lbV91bnVzZWRfaHVnZV9zY2FuLAo+ID4gI2VuZGlmCj4gPiB9Owo+ID4gCj4g
PiB0aGUgb25seSB3YXkgaXQgc2hvdWxkIGJlIHVuc2V0IHdhcyBpZiAhQ09ORklHX1RNUEZTLgo+
ID4gCj4gPiBIbW0sIHdlIGV2ZW4gc2VsZWN0IFRNUEZTIHNvIGl0IHNob3VsZCBuZXZlciBiZSBh
YnNlbnQuCj4gPiAKPiA+IFNvIHRoZSBxdWVzdGlvbiBpcyB3aGF0IG1vdW50IGRpZCB3ZSBnZXQg
aWYgaXQgd2FzIG5vdCBhIHNobWVtZnMgb25lPwo+ID4gLUNocmlzCj4gPiAKPiBJIHRoaW5rIHRo
YXQncyB0aGUgcmVhc29uOgo+IDE0NGRmM2IyODhjNCAoInZmczogQ29udmVydCByYW1mcywgc2ht
ZW0sIHRtcGZzLCBkZXZ0bXBmcywgcm9vdGZzIHRvIHVzZSB0aGUgbmV3IG1vdW50IEFQSSIpCj4g
Cj4gQEAgLTM3MzYsNyArMzg0OSw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VwZXJfb3BlcmF0
aW9ucyBzaG1lbV9vcHMgPSB7Cj4gICAgICAgICAuZGVzdHJveV9pbm9kZSAgPSBzaG1lbV9kZXN0
cm95X2lub2RlLAo+ICAjaWZkZWYgQ09ORklHX1RNUEZTCj4gICAgICAgICAuc3RhdGZzICAgICAg
ICAgPSBzaG1lbV9zdGF0ZnMsCj4gLSAgICAgICAucmVtb3VudF9mcyAgICAgPSBzaG1lbV9yZW1v
dW50X2ZzLAo+ICAgICAgICAgLnNob3dfb3B0aW9ucyAgID0gc2htZW1fc2hvd19vcHRpb25zLAo+
ICAjZW5kaWYKPiAgICAgICAgIC5ldmljdF9pbm9kZSAgICA9IHNobWVtX2V2aWN0X2lub2RlLAo+
IAo+IE1vc3QgbGlrZWx5IHRoaXMgIm5ldyBtb3VudCBBUEkiIGltcGFjdHMgeW91ciBjb2RlLgoK
SW4gdGhhdCBzY2hlbWUsIGl0IGxvb2tzIGxpa2UgdGhlcmUncyBhICJyZWNvbmZpZ3VyZSIgb3Ag
dG8gcmVwbGFjZQpyZW1vdW50X2ZzLiBOb3Qgc3VyZSBob3cgd2UgaG9vayB0aGF0IHVwIHlldCwg
aXQgYXBwZWFycyB0byB0YWtlIHRoZQpmc19jb250ZXh0IGZvciBtb3VudGluZywgc28gcHJlc3Vt
YWJseSB0aGVyZSdzIGEgbmV3IGtlcm5fbW91bnQoKSBBUEkgYXMKd2VsbC4KCk9yIHdlIGNhbiBr
ZWVwIHRoZSBjcnVkZSBoYWNrIHRvIGFkanVzdCBzYl9pbmZvLT5odWdlIGRpcmVjdGx5IDp8Ci1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA891E68D2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 19:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C0756E5BD;
	Thu, 28 May 2020 17:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95516E5BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 17:47:10 +0000 (UTC)
IronPort-SDR: XmEz1QXVHpgaag5XbHP+IU3PGfWF9/w1rz/osC+JeUhMZ7jRw552dJLpmIm9aFtgnnu9wQqBuP
 KHN/iZUqMcQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 10:47:10 -0700
IronPort-SDR: E2/RZ2qWKZBZ3V8zzPzTX3/FU6j3HNrlr0baoijJVhxpl7oyxA8m9NNWyVqhKTjfziqMIjLH+3
 7erpi6EDGAag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,445,1583222400"; d="scan'208";a="469203372"
Received: from przanoni-mobl.amr.corp.intel.com ([10.254.98.134])
 by fmsmga005.fm.intel.com with ESMTP; 28 May 2020 10:47:09 -0700
Message-ID: <98b06b60080abbfc178fad96ffbe9757ae0e8d53.camel@intel.com>
From: Paulo Zanoni <paulo.r.zanoni@intel.com>
To: Karthik B S <karthik.b.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 10:47:09 -0700
In-Reply-To: <20200528053931.29282-1-karthik.b.s@intel.com>
References: <20200528053931.29282-1-karthik.b.s@intel.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 0/5] Asynchronous flip implementation for
 i915
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

RW0gcXVpLCAyMDIwLTA1LTI4IMOgcyAxMTowOSArMDUzMCwgS2FydGhpayBCIFMgZXNjcmV2ZXU6
Cj4gV2l0aG91dCBhc3luYyBmbGlwIHN1cHBvcnQgaW4gdGhlIGtlcm5lbCwgZnVsbHNjcmVlbiBh
cHBzIHdoZXJlIGdhbWUKPiByZXNvbHV0aW9uIGlzIGVxdWFsIHRvIHRoZSBzY3JlZW4gcmVzb2x1
dGlvbiwgbXVzdCBwZXJmb3JtIGFuIGV4dHJhIGJsaXQKPiBwZXIgZnJhbWUgcHJpb3IgdG8gZmxp
cHBpbmcuCj4gCj4gQXN5bmNocm9ub3VzIHBhZ2UgZmxpcHMgd2lsbCBhbHNvIGJvb3N0IHRoZSBG
UFMgb2YgTWVzYSBiZW5jaG1hcmtzLgo+IAo+IHYyOiBGZXcgcGF0Y2hlcyBoYXZlIGJlZW4gc3F1
YXNoZWQgYW5kIHBhdGNoZXMgaGF2ZSBiZWVuIHNodWZmbGVkIGFzCj4gICAgIHBlciB0aGUgcmV2
aWV3cyBvbiB0aGUgcHJldmlvdXMgdmVyc2lvbi4KPiAKPiB2MzogRmV3IHBhdGNoZXMgaGF2ZSBi
ZWVuIHNxdWFzaGVkIGFuZCBwYXRjaGVzIGhhdmUgYmVlbiBzaHVmZmxlZCBhcwo+ICAgICBwZXIg
dGhlIHJldmlld3Mgb24gdGhlIHByZXZpb3VzIHZlcnNpb24uCgpIZWxsbwoKSSBhc2tlZCBxdWl0
ZSBhIGZldyBxdWVzdGlvbnMgaW4gdGhlIHJldmlldyBvZiB2MiwgYnV0IG5ldmVyIGdvdCBhbnkK
cmVwbGllcy4gSSBzZWUgc29tZSB0aGluZ3MgcmVnYXJkaW5nIHRob3NlIHF1ZXN0aW9ucyBhcmUg
ZGlmZmVyZW50IGluCnYzLCBidXQgSSBzdGlsbCB3b3VsZCByZWFsbHkgbGlrZSB0byBoYXZlIHRo
b3NlIGFuc3dlcnMgaW4gZGlyZWN0CnRleHQvZW1haWwgZm9ybSBpbiBvcmRlciB0byBjbGFyaWZ5
IG15IHVuZGVyc3RhbmRpbmcgb2YgeW91ciBvcmlnaW5hbAppbnRlbnQgKGFuZCBhbHNvIGhlbHAg
bWUgdW5kZXJzdGFuZCB3aHkgdGhpbmdzIGFyZSBkaWZmZXJlbnQgaW4gdjMpLgpXb3VsZCB5b3Ug
bWluZCByZXBseWluZyB0byB0aG9zZSBlbWFpbHM/CgpUaGFua3MsClBhdWxvCgo+IAo+IEthcnRo
aWsgQiBTICg1KToKPiAgIGRybS9pOTE1OiBBZGQgZW5hYmxlL2Rpc2FibGUgZmxpcCBkb25lIGFu
ZCBmbGlwIGRvbmUgaGFuZGxlcgo+ICAgZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBhc3luYyBm
bGlwcyBpbiBJOTE1Cj4gICBkcm0vaTkxNTogQWRkIGNoZWNrcyBzcGVjaWZpYyB0byBhc3luYyBm
bGlwcwo+ICAgZHJtL2k5MTU6IERvIG5vdCBjYWxsIGRybV9jcnRjX2FybV92YmxhbmtfZXZlbnQg
aW4gYXN5bmMgZmxpcHMKPiAgIGRybS9pOTE1OiBFbmFibGUgYXN5bmMgZmxpcHMgaW4gaTkxNQo+
IAo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDcxICsr
KysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMgIHwgIDggKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAg
ICAgICAgICAgIHwgNTIgKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuaCAgICAgICAgICAgICAgfCAgMiArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgICAgIHwgIDEgKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDEzMyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK

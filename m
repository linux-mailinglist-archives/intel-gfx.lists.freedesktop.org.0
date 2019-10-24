Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3E5E3874
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 18:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E38D6892C5;
	Thu, 24 Oct 2019 16:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA93B892C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 16:44:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 09:44:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="192245259"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by orsmga008.jf.intel.com with ESMTP; 24 Oct 2019 09:44:18 -0700
Date: Thu, 24 Oct 2019 13:01:31 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191024170131.GR3257@intel.com>
References: <20191022115126.18746-4-chris@chris-wilson.co.uk>
 <20191022115705.4744-1-chris@chris-wilson.co.uk>
 <20191023210340.GP3257@intel.com>
 <157190120947.18724.9509951564701317530@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157190120947.18724.9509951564701317530@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Add coverage of mocs
 registers
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

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMDg6MTM6MjlBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgS3VtYXIgVmFsc2FuLCBQcmF0aGFwICgyMDE5LTEwLTIzIDIyOjAzOjQw
KQo+ID4gT24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMTI6NTc6MDVQTSArMDEwMCwgQ2hyaXMgV2ls
c29uIHdyb3RlOgo+ID4gPiBQcm9iZSB0aGUgbW9jcyByZWdpc3RlcnMgZm9yIG5ldyBjb250ZXh0
cyBhbmQgYWNyb3NzIEdQVSByZXNldHMuIFNpbWlsYXIKPiA+ID4gdG8gaW50ZWxfd29ya2Fyb3Vu
ZHMsIHdlIGhhdmUgdGFibGVzIG9mIHdoYXQgcmVnaXN0ZXIgdmFsdWVzIHdlIGV4cGVjdAo+ID4g
PiB0byBzZWUsIHNvIHZlcmlmeSB0aGF0IHVzZXIgY29udGV4dHMgYXJlIGFmZmVjdGVkIGJ5IHRo
ZW0uIEluIHRoZQo+ID4gPiBmdXR1cmUsIHdlIHNob3VsZCBhZGQgdGVzdHMgc2ltaWxhciB0byBp
bnRlbF9zc2V1IHRvIGNvdmVyIGR5bmFtaWMKPiA+ID4gcmVjb25maWd1cmF0aW9ucy4KPiA+ID4g
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+ID4gPiBDYzogUHJhdGhhcCBLdW1hciBWYWxzYW4gPHByYXRoYXAua3VtYXIudmFsc2Fu
QGludGVsLmNvbT4KPiA+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgo+ID4gCj4gPiBzL2Zvcl9lYWNoX2VuZ2luZS9mb3JfZWFjaF91YWJpX2VuZ2lu
ZSA/Cj4gCj4gTm8sIHdlIGFyZSBpbnNpZGUgdGhlIGd0IGNvbXBhcnRtZW50LCBzbyB3ZSBvbmx5
IG9wZXJhdGUgd2l0aGluIG91cgo+IGxpdHRsZSBlbmNsb3N1cmUuIFRoaW5rIHBhcmFsbGVsaXNt
Li4uCk9rLiBUaGFua3MuCj4gLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==

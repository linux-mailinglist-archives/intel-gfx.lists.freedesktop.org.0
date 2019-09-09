Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6CCAE11E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 00:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE1589167;
	Mon,  9 Sep 2019 22:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED03E89167
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 22:35:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 15:35:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="268218612"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by orsmga001.jf.intel.com with ESMTP; 09 Sep 2019 15:35:12 -0700
Date: Mon, 9 Sep 2019 18:52:12 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20190909225212.GM28351@intel.com>
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
 <156802981996.16254.10371736850278360760@jlahtine-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156802981996.16254.10371736850278360760@jlahtine-desk.ger.corp.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add sysfs interface to
 control class-of-service
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
Cc: , intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMDksIDIwMTkgYXQgMDI6NTA6MjBQTSArMDMwMCwgSm9vbmFzIExhaHRpbmVu
IHdyb3RlOgo+IFF1b3RpbmcgUHJhdGhhcCBLdW1hciBWYWxzYW4gKDIwMTktMDgtMjYgMDE6NDg6
MDEpCj4gPiBUbyBwcm92aWRlIHNoYXJlZCBsYXN0LWxldmVsLWNhY2hlIGlzb2xhdGlvbiB0byBj
cHUgd29ya2xvYWRzIHJ1bm5pbmcKPiA+IGNvbmN1cnJlbnRseSB3aXRoIGdwdSB3b3JrbG9hZHMs
IHRoZSBncHUgYWxsb2NhdGlvbiBvZiBjYWNoZSBsaW5lcyBuZWVkcwo+ID4gdG8gYmUgcmVzdHJp
Y3RlZCB0byBjZXJ0YWluIHdheXMuIEN1cnJlbnRseSBHUFUgaGFyZHdhcmUgc3VwcG9ydHMgZm91
cgo+ID4gY2xhc3Mtb2Ytc2VydmljZShDTE9TKSBsZXZlbHMgYW5kIHRoZXJlIGlzIGFuIGFzc29j
aWF0ZWQgd2F5LW1hc2sgZm9yCj4gPiBlYWNoIENMT1MuCj4gPiAKPiA+IEhhcmR3YXJlIHN1cHBv
cnRzIHJlYWRpbmcgc3VwcG9ydGVkIHdheS1tYXNrIGNvbmZpZ3VyYXRpb24gZm9yIEdQVSB1c2lu
Zwo+ID4gYSBiaW9zIHBjb2RlIGludGVyZmFjZS4gVGhlIHN1cHBvcnRlZCB3YXktbWFza3MgYW5k
IHRoZSBvbmUgY3VycmVudGx5Cj4gPiBhY3RpdmUgaXMgY29tbXVuaWNhdGVkIHRvIHVzZXJzcGFj
ZSB2aWEgYSBzeXNmcyBmaWxlLS1jbG9zY3RybC4gQWRtaW4gdXNlcgo+ID4gY2FuIHRoZW4gc2Vs
ZWN0IGEgbmV3IG1hc2sgYnkgd3JpdGluZyB0aGUgbWFzayB2YWx1ZSB0byB0aGUgZmlsZS4KPiA+
IAo+ID4gTm90ZSBvZiBDYXV0aW9uOiBSZXN0cmljdGluZyBjYWNoZSB3YXlzIHVzaW5nIHRoaXMg
bWVjaGFuaXNtIHByZXNlbnRzIGEKPiA+IGxhcmdlciBhdHRhY2sgc3VyZmFjZSBmb3Igc2lkZS1j
aGFubmVsIGF0dGFja3MuCj4gCj4gSSB3b25kZXIgaWYgdGhpcyBpcyBlbm91Z2ggdG8ganVzdGlm
eSBzb21lIGZ1cnRoZXIgcHJvdGVjdGlvbiBiZWZvcmUKPiBlbmFibGluZz8KClNob3VsZCB0aGVy
ZSBiZSBhIGtlcm5lbCB3YXJuaW5nIG1lc3NhZ2Ugb24gZW5hYmxpbmcgdGhpcyBvciBhIGNvbW1p
dAptZXNzYWdlIGlzIGVub3VnaD8KPiAKPiA+IEV4YW1wbGUgdXNhZ2U6Cj4gPiBUaGUgYWN0aXZl
IHdheS1tYXNrIGlzIGhpZ2hsaWdodGVkIHdpdGhpbiBzcXVhcmUgYnJhY2tldHMuCj4gPiA+IGNh
dCAvc3lzL2NsYXNzL2RybS9jYXJkMC9jbG9zY3RybAo+ID4gWzB4ZmZmZl0gMHhmZjAwIDB4YzAw
MCAweDgwMDAKPiAKPiBIb3cgYWJvdXQgdHdvIGZpbGVzIGZvciBlYXNpZXIgc2NyaXB0aW5nIGlu
dGVyZmFjZT8KPiAKPiAvc3lzL2NsYXNzL2RybS9jYXJkMC9sbGNfY2xvcwo+IC9zeXMvY2xhc3Mv
ZHJtL2NhcmQwL2xsY19jbG9zX21vZGVzCj4KQWdyZWVkLiBBIHNpbmdsZSBmaWxlIGludGVyZmFj
ZSB3YXMgc3VnZ2VzdGVkIGJ5IEpvbi4gSG9wZSBoZSBpcyBvayB3aXRoIGhhdmluZwp0d28gZmls
ZXMgOikKPiBSZWdhcmRzLCBKb29uYXMKVGhhbmtzLApQcmF0aGFwCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

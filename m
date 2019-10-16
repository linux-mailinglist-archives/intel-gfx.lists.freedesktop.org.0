Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E92FD98F8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 20:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C616E06D;
	Wed, 16 Oct 2019 18:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CF006E06D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 18:16:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 11:16:47 -0700
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="186231964"
Received: from rchatre-mobl.amr.corp.intel.com (HELO [10.24.14.125])
 ([10.24.14.125])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Oct 2019 11:16:47 -0700
To: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015073129.2375-1-prathap.kumar.valsan@intel.com>
 <20191015073129.2375-2-prathap.kumar.valsan@intel.com>
From: Reinette Chatre <reinette.chatre@intel.com>
Message-ID: <2e8ab5e0-1bf6-81d7-8204-077a3feaea39@intel.com>
Date: Wed, 16 Oct 2019 11:16:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015073129.2375-2-prathap.kumar.valsan@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915: Add sysfs interface to
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
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgUHJhdGhhcCwKCk9uIDEwLzE1LzIwMTkgMTI6MzEgQU0sIFByYXRoYXAgS3VtYXIgVmFsc2Fu
IHdyb3RlOgo+IFJlYWwtVGltZSBjbGllbnRzIHJ1bm5pbmcgb24gQ1BVIG1heSB3YW50IHRvIHJ1
biBvbiBpdHMgb3duIHBhcnRpdGlvbiBvZgo+IExhc3QtTGV2ZWwtQ2FjaGUoTExDKSB0byBhY2hp
ZXZlIGlzb2xhdGlvbiBhbmQgdG8gYmUgbW9yZSBkZXRlcm1pbmlzdGljLgo+IFRoZSBJbnRlbCBD
YWNoZS1BbGxvY2F0aW9uLVRlY2hub2xvZ3kgZXhpc3Qgb24gQ1BVIHRvIHBhcnRpdGlvbiBMTEMg
aW4KPiB0byB3YXlzIGFuZCBkZWRpY2F0ZSBhIHBhcnRpdGlvbiB0byBhbiBhcHBsaWNhdGlvbi4K
PiAKPiBIb3dldmVyLCB3aGVuIExMQyBpcyBzaGFyZWQgYmV0d2VlbiBDUFUgYW5kIEdQVSwgdGhl
IHdvcmtsb2FkcyBydW5uaW5nCj4gb24gR1BVICBoYXMgbm8gbm90aW9uIGFib3V0IHRoaXMgcGFy
dGl0aW9uIGFuZCBjYW4gdGhyYXNoIHRoZSBjYWNoZSBsaW5lcwo+IGRlZGljYXRlZCB0byBhIFJl
YWwgVGltZSB0YXNrIHJ1bm5pbmcgb24gQ1BVLiBUbyBhdm9pZCB0aGlzLCBSZWFsLVRpbWUKPiBj
bGllbnRzIHdhbnRzIGEgbWVjaGFuaXNtIHRvIHJlYWQgdGhlIGV4aXN0aW5nIGNhY2hlIHdheXMg
dGhhdCBHUFUgY2FuCj4gYWxsb2NhdGUsIHdoaWNoIGRlcGVuZHMgb24gYSBjbGFzcy1vZi1zZXJ2
aWNlKENMT1MpIGFuZCBpdHMgYXNzb2NpYXRlZAo+IGNhY2hlIHdheSBtYXNrIGFuZCB0byByZXN0
cmljdCB0aGUgR1BVIGRldmljZSBnbG9iYWxseSB0byBvbmUgb2YgdGhlCj4gc3VwcG9ydGVkIENM
T1MgbGV2ZWxzLgo+IAo+IEN1cnJlbnRseSBHUFUgaGFyZHdhcmUgc3VwcG9ydHMgZm91ciBDTE9T
IGxldmVscyBhbmQgIHRoZXJlIGlzIGFuCj4gYXNzb2NpYXRlZCB3YXktbWFzayBmb3IgZWFjaCBD
TE9TLiBFYWNoIExMQyBNT0NTIHJlZ2lzdGVyIGhhcyBhIGZpZWxkCj4gdG8gc2VsZWN0IHRoZSBD
TE9TIGxldmVsLiBTbyBpbi1vcmRlciB0byBnbG9iYWxseSBzZXQgdGhlIEdQVSB0byBhIENMT1MK
PiBsZXZlbCwgZHJpdmVyIG5lZWRzIHRvIHByb2dyYW0gZW50aXJlIE1PQ1MgdGFibGUuCj4gCj4g
SGFyZHdhcmUgc3VwcG9ydHMgcmVhZGluZyBzdXBwb3J0ZWQgd2F5LW1hc2sgY29uZmlndXJhdGlv
biBmb3IgR1BVIHVzaW5nCj4gYSBiaW9zIFBDb2RlIGludGVyZmFjZS4gVGhlIHN5c2ZzIGludGVy
ZmFjZSBoYXMgdHdvIGZpbGVzLS1sbGNfY2xvc19tb2Rlcwo+IGFuZCBsbGNfY2xvcy4gVGhlIGZp
bGUgbGxjX2Nsb3NfbW9kZXMgaXMgcmVhZCBvbmx5IGZpbGUgYW5kIHdpbGwgbGlzdCB0aGUKPiBh
dmFpbGFibGUgd2F5IG1hc2tzLiBUaGUgZmlsZSBsbGNfY2xvcyBpcyByZWFkL3dyaXRlIGFuZCB3
aWxsIHNob3cgdGhlCj4gY3VycmVudGx5IGFjdGl2ZSB3YXkgbWFzayBhbmQgd3JpdGluZyBhIG5l
dyB3YXkgbWFzayB3aWxsIHVwZGF0ZSB0aGUKPiBhY3RpdmUgd2F5IG1hc2sgb2YgdGhlIEdQVS4K
PiAKPiBOb3RlIG9mIENhdXRpb246IFJlc3RyaWN0aW5nIGNhY2hlIHdheXMgdXNpbmcgdGhpcyBt
ZWNoYW5pc20gcHJlc2VudHMgYQo+IGxhcmdlciBhdHRhY2sgc3VyZmFjZSBmb3Igc2lkZS1jaGFu
bmVsIGF0dGFja3MuCj4gCj4gRXhhbXBsZSB1c2FnZToKPj4gY2F0IC9zeXMvY2xhc3MvZHJtL2Nh
cmQwL2xsY19jbG9zX21vZGVzCj4gMHhmZmYgMHhmYzAgMHhjMDAgMHg4MDAKPiAKPj4gY2F0IC9z
eXMvY2xhc3MvZHJtL2NhcmQwL2xsY19jbG9zCj4gMHhmZmYKPiAKPiBVcGRhdGUgdG8gbmV3IGNs
b3MKPiBlY2hvICIweDgwMCIgPiAvc3lzL2NsYXNzL2RybS9jYXJkMC9sbGNfY2xvcwoKV291bGQg
aXQgYmUgcG9zc2libGUgdG8gZXhwb3NlIHRoaXMgYml0bWFzayBhc3NvY2lhdGVkIHdpdGggdGhl
IGFjdGl2ZQpDTE9TIGludGVybmFsbHkgZm9yIHRoZSByZXNjdHJsIChrZXJuZWwgc3Vic3lzdGVt
IG1hbmFnaW5nIElBIGNhY2hlCmFsbG9jYXRpb24pIHRvIGNvbnN1bWU/IFRoZSByZXNjdHJsIHN1
YnN5c3RlbSBhbHJlYWR5IHN1cHBvcnRzCmRpc2NvdmVyaW5nIChhcyBmYXIgYXMgaGFyZHdhcmUg
ZXhwb3NlcyB0aGlzKSBjYWNoZSBpbnRlcmZlcmVuY2UgdG8Kc3VwcG9ydCBjYWNoZSBhbGxvY2F0
aW9uIGRlY2lzaW9ucyBidXQgYXQgdGhpcyB0aW1lIHRoZSBHcmFwaGljcyBjYWNoZQppbnRlcmZl
cmVuY2UgaXMgbm90IGRpc2NvdmVyYWJsZS4gSXQgd291bGQgYmUgdmFsdWFibGUgdG8gdGhlIHJl
c2N0cmwKc3Vic3lzdGVtIGFzIHdlbGwgYXMgdGhlIGFwcGxpY2F0aW9ucyBpbnRlcmFjdGluZyB3
aXRoIGl0IHRvIGhhdmUgbW9yZQphY2N1cmF0ZSBpbnRlcmZlcmVuY2UgaW5mb3JtYXRpb24uCgpU
aGFuayB5b3UKClJlaW5ldHRlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0888C3C3FEA
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 01:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F37189BD2;
	Sun, 11 Jul 2021 23:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3688989BD2
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Jul 2021 23:25:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10042"; a="189585652"
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="189585652"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2021 16:25:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,232,1620716400"; d="scan'208";a="464088767"
Received: from allen-box.sh.intel.com (HELO [10.239.159.118])
 ([10.239.159.118])
 by fmsmga008.fm.intel.com with ESMTP; 11 Jul 2021 16:25:03 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
 <20210709164750.9465-2-ville.syrjala@linux.intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <ab04666c-229c-fbd2-07f3-6955b46985db@linux.intel.com>
Date: Mon, 12 Jul 2021 07:23:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210709164750.9465-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] iommu/vt-d: Disable superpage for
 Geminilake igfx
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
Cc: iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gNy8xMC8yMSAxMjo0NyBBTSwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+IFdoaWxlIHJ1bm5p
bmcgImdlbV9leGVjX2JpZyAtLXIgc2luZ2xlIiBmcm9tIGlndC1ncHUtdG9vbHMgb24KPiBHZW1p
bmlsYWtlIGFzIHNvb24gYXMgYSAyTSBtYXBwaW5nIGlzIG1hZGUgSSB0ZW5kIHRvIGdldCBhIERN
QVIKPiB3cml0ZSBmYXVsdC4gU3RyYW5nZWx5IHRoZSBmYXVsdGluZyBhZGRyZXNzIGlzIGFsd2F5
cyBhIDRLIHBhZ2UKPiBhbmQgdXN1YWxseSB2ZXJ5IGZhciBhd2F5IGZyb20gdGhlIDJNIHBhZ2Ug
dGhhdCBnb3QgbWFwcGVkLgo+IEJ1dCBpZiBubyAyTSBtYXBwaW5ncyBnZXQgdXNlZCBJIGNhbid0
IHJlcHJvZHVjZSB0aGUgZmF1bHQuCj4gCj4gSSBhbHNvIHRyaWVkIHRvIGR1bXAgdGhlIFBURSBm
b3IgdGhlIGZhdWx0aW5nIGFkZHJlc3MgYnV0IGl0IGFjdHVhbGx5Cj4gbG9va3MgY29ycmVjdCB0
byBtZSAoaWUuIGRlZmluaXRlbHkgc2VlbXMgdG8gaGF2ZSB0aGUgd3JpdGUgYml0IHNldCk6Cj4g
ICBETUFSOiBEUkhEOiBoYW5kbGluZyBmYXVsdCBzdGF0dXMgcmVnIDIKPiAgIERNQVI6IFtETUEg
V3JpdGVdIFJlcXVlc3QgZGV2aWNlIFswMDowMi4wXSBQQVNJRCBmZmZmZmZmZiBmYXVsdCBhZGRy
IDdmYThhNzgwMDAgW2ZhdWx0IHJlYXNvbiAwNV0gUFRFIFdyaXRlIGFjY2VzcyBpcyBub3Qgc2V0
Cj4gICBETUFSOiBmYXVsdCA3ZmE4YTc4MDAwIChsZXZlbD0xKSBQVEUgPSAxNDllZmMwMDMKPiAK
PiBTbyBub3QgcmVhbGx5IHN1cmUgd2hhdCdzIGdvaW5nIG9uIGFuZCB0aGlzIG1pZ2h0IGp1c3Qg
YmUgZnVsbCBvbiBkdWN0Cj4gdGFwZSwgYnV0IGl0IHNlZW1zIHRvIHdvcmsgaGVyZS4gVGhlIG1h
Y2hpbmUgaGFzIG5vdyBzdXJ2aXZlZCBhIHdob2xlIGRheQo+IHJ1bm5pbmcgdGhhdCB0ZXN0IHdo
ZXJlYXMgd2l0aCBzdXBlcnBhZ2UgZW5hYmxlZCBpdCBmYWlscyBpbiBsZXNzIHRoYW4KPiBhIG1p
bnV0ZSB1c3VhbGx5Lgo+IAo+IFRPRE86IG1pZ2h0IGJlIG5pY2UgdG8gZGlzYWJsZSBzdXBlcnBh
Z2Ugb25seSBmb3IgdGhlIGlnZnggaW9tbXUKPiAgICAgICAgaW5zdGVhZCBvZiBib3RoIGlvbW11
cwoKSWYgYWxsIHRoZXNlIHF1aXJrcyBhcmUgYWJvdXQgaWdmeCBkZWRpY2F0ZWQgaW9tbXUncywg
SSB3b3VsZCBzdWdnZXN0IHRvCmRpc2FibGUgc3VwZXJwYWdlIG9ubHkgZm9yIHRoZSBpZ2Z4IG9u
ZXMuCgpCZXN0IHJlZ2FyZHMsCmJhb2x1Cgo+IFRPRE86IHdvdWxkIGJlIG5pY2UgdG8gdXNlIHRo
ZSBtYWNyb3MgZnJvbSBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oLAo+ICAgICAgICBidXQgY2Fu
J3QgZG8gdGhhdCB3aXRoIERFQ0xBUkVfUENJX0ZJWFVQX0hFQURFUigpCj4gCj4gQ2M6IERhdmlk
IFdvb2Rob3VzZSA8ZHdtdzJAaW5mcmFkZWFkLm9yZz4KPiBDYzogTHUgQmFvbHUgPGJhb2x1Lmx1
QGxpbnV4LmludGVsLmNvbT4KPiBDYzogaW9tbXVAbGlzdHMubGludXgtZm91bmRhdGlvbi5vcmcK
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9pb21tdS9pbnRlbC9pb21tdS5jIHwgMTAgKysrKysr
KysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9pb21tdS9pbnRlbC9pb21tdS5jIGIvZHJpdmVycy9pb21tdS9pbnRlbC9pb21t
dS5jCj4gaW5kZXggMTljNzg4OGNiYjg2Li40ZmZmMmM5Yzg2YWYgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9pb21tdS9pbnRlbC9pb21tdS5jCj4gKysrIGIvZHJpdmVycy9pb21tdS9pbnRlbC9pb21t
dS5jCj4gQEAgLTU2MTcsNiArNTYxNywxNiBAQCBERUNMQVJFX1BDSV9GSVhVUF9IRUFERVIoUENJ
X1ZFTkRPUl9JRF9JTlRFTCwgMHgxNjMyLCBxdWlya19pb21tdV9pZ2Z4KTsKPiAgIERFQ0xBUkVf
UENJX0ZJWFVQX0hFQURFUihQQ0lfVkVORE9SX0lEX0lOVEVMLCAweDE2M0EsIHF1aXJrX2lvbW11
X2lnZngpOwo+ICAgREVDTEFSRV9QQ0lfRklYVVBfSEVBREVSKFBDSV9WRU5ET1JfSURfSU5URUws
IDB4MTYzRCwgcXVpcmtfaW9tbXVfaWdmeCk7Cj4gICAKPiArc3RhdGljIHZvaWQgcXVpcmtfaW9t
bXVfbm9zcChzdHJ1Y3QgcGNpX2RldiAqZGV2KQo+ICt7Cj4gKwlwY2lfaW5mbyhkZXYsICJEaXNh
YmxpbmcgSU9NTVUgc3VwZXJwYWdlIGZvciBncmFwaGljcyBvbiB0aGlzIGNoaXBzZXRcbiIpOwo+
ICsJaW50ZWxfaW9tbXVfc3VwZXJwYWdlID0gMDsKPiArfQo+ICsKPiArLyogR2VtaW5pbGFrZSBp
Z2Z4IGFwcGVhcnMgdG8gaGF2ZSBpc3N1ZXMgd2l0aCBzdXBlcnBhZ2UgKi8KPiArREVDTEFSRV9Q
Q0lfRklYVVBfSEVBREVSKFBDSV9WRU5ET1JfSURfSU5URUwsIDB4MzE4NCwgcXVpcmtfaW9tbXVf
bm9zcCk7Cj4gK0RFQ0xBUkVfUENJX0ZJWFVQX0hFQURFUihQQ0lfVkVORE9SX0lEX0lOVEVMLCAw
eDMxODUsIHF1aXJrX2lvbW11X25vc3ApOwo+ICsKPiAgIHN0YXRpYyB2b2lkIHF1aXJrX2lvbW11
X3J3YmYoc3RydWN0IHBjaV9kZXYgKmRldikKPiAgIHsKPiAgIAlpZiAocmlza3lfZGV2aWNlKGRl
dikpCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

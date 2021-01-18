Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE452FA371
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 15:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8AC6E2E6;
	Mon, 18 Jan 2021 14:46:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132E76E2E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 14:46:51 +0000 (UTC)
IronPort-SDR: Ng+9u07A7d/WisIEQ8RuG5HQTV+/EyVb1K/7xYpkFNJUS87pQ4OopSP2VpzQ3I/jxwINoIadqM
 7F2xngx9Zyrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="166478342"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="166478342"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 06:46:44 -0800
IronPort-SDR: peGgX2LLsqTFZMvRVLJMkWE6MTsPurwGnbjOSgMCcR1E1kEDjyuL2Z18KjGpUfjwWIRu72ixNi
 glMIpW8TMrKQ==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="355216837"
Received: from peteratz-mobl.ger.corp.intel.com (HELO [10.252.51.240])
 ([10.252.51.240])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 06:46:43 -0800
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-64-maarten.lankhorst@linux.intel.com>
 <dbf9df80-2fba-b7f8-4e88-a6114eea3d5f@linux.intel.com>
 <90dda3ef-cbc9-ea2d-6247-6eba012e4caf@linux.intel.com>
 <7be09a47-9d15-f051-3ee4-ad5922ebf830@linux.intel.com>
 <7b56a025-4852-a172-06df-7d64d1cf8e39@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4836b692-d2f3-826d-cbc2-6c29c47df6f5@linux.intel.com>
Date: Mon, 18 Jan 2021 15:46:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <7b56a025-4852-a172-06df-7d64d1cf8e39@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 63/64] drm/i915: Move gt_revoke() slightly
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

T3AgMTgtMDEtMjAyMSBvbSAxNDoyOCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+Cj4gT24g
MS8xOC8yMSAyOjIyIFBNLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4KPj4gT24gMS8xOC8y
MSAxOjAxIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4+IE9wIDE4LTAxLTIwMjEgb20g
MTI6MTEgc2NocmVlZiBUaG9tYXMgSGVsbHN0csO2bToKPj4+PiBPbiAxLzUvMjEgNDozNSBQTSwg
TWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+Pj4+IFdlIGdldCBhIGxvY2tkZXAgc3BsYXQgd2hl
biB0aGUgcmVzZXQgbXV0ZXggaXMgaGVsZCwgYmVjYXVzZSBpdCBjYW4gYmUKPj4+Pj4gdGFrZW4g
ZnJvbSBmZW5jZV93YWl0LiBUaGlzIGNvbmZsaWN0cyB3aXRoIHRoZSBtbXUgbm90aWZpZXIgd2Ug
aGF2ZSwKPj4+Pj4gYmVjYXVzZSB3ZSByZWN1cnNlIGJldHdlZW4gcmVzZXQgbXV0ZXggYW5kIG1t
YXAgbG9jayAtPiBtbXUgbm90aWZpZXIuCj4+Pj4+Cj4+Pj4+IFJlbW92ZSB0aGlzIHJlY3Vyc2lv
biBieSBjYWxsaW5nIHJldm9rZV9tbWFwcyBiZWZvcmUgdGFraW5nIHRoZSBsb2NrLgo+Pj4+IEht
bS4gSXMgdGhlIG1tYXAgc2UgdGFrZW4gZnJvbSBndF9yZXZva2UoKT8KPj4+Pgo+Pj4+IElmIHNv
LCBpc24ndCB0aGUgcmVhbCBwcm9ibGVtIHRoYXQgdGhlIG1tYXBfc2VtIGlzIHRha2VuIGluIHRo
ZSBkbWFfZmVuY2UgY3JpdGljYWwgcGF0aCAod2hlcmUgdGhlIHJlc2V0IGNvZGUgc2l0cyk/Cj4+
PiBIZXksCj4+Pgo+Pj4gVGhlIGdwdSByZXNldCBjb2RlIHNwZWNpZmljYWxseSBuZWVkcyB0byBy
ZXZva2UgYWxsIGd0dCBtYXBwaW5ncywgYW5kIHRoZSBmYXVsdCBoYW5kbGVyIHVzZXMgaW50ZWxf
Z3RfcmVzZXRfdHJ5bG9jaygpLAo+Pj4KPj4+IHNvIHRoaXMgY2hhbmdlIHNob3VsZCBiZSBvayBz
aW5jZSBhbGwgdGhvc2UgbWFwcGluZ3MgYXJlIGludmFsaWRhdGVkIGNvcnJlY3RseSBhbmQgY29t
cGxldGVkIGJlZm9yZSB0aGlzIHBvaW50Lgo+Pj4KPj4+IFRoZSByZXNldCBtdXRleCBpc24ndCBh
Y3R1YWxseSB0YWtlbiBpbnNpZGUgZmVuY2UgY29kZSwgYnV0IHVzZWQgZm9yIGxvY2tkZXAgdmFs
aWRhdGlvbiwgc28gdGhpcyBzaG91bGQgYmUgb2suCj4+Pgo+Pj4gfk1hYXJ0ZW4KPj4KPj4gSG1t
LCBPSyBidXQgdGhlbiB3ZSBzdGlsbCBoYXZlIHRoZSBmb2xsb3dpbmcgZXN0YWJsaXNoZWQgbG9j
a2luZyBvcmRlci4KPj4KPj4gbG9jayhmZW5jZV9zaWduYWxpbmcpCj4+IGxvY2soaV9tbWFwX2xv
Y2spCj4+Cj4+IEJ1dCBpbiB0aGUgbm90aWZpZXIKPj4KPj4gbG9jayhpX21tYXBfbG9jaykKPj4g
ZmVuY2Vfc2lnbmFsaW5nKHdpdGhpbiBub3RpZmllcikKPj4KPj4gU28gZ3RfcmV2b2tlKCkgaXMg
dmlvbGF0aW5nIGRtYS1mZW5jZSBydWxlcy4KPj4KPj4gQlRXIGl0IGxvb2tzIHRvIG1lIGxpa2Ug
dGhlIHJlc2V0IG11dGV4IG5vdGF0aW9uIGlzIGFjdHVhbGx5IGRvaW5nIG11Y2ggdGhlIHNhbWUg
YXMgdGhlIGRtYS1mZW5jZSBhbm5vdGF0aW9uczsgV2hpbGUgd2UgY2FuIG1vdmUgZ3RfcmV2b2tl
KCkgb3V0IG9mIHRoZSByZXNldCBtdXRleCwgdGhhdCBvbmx5IGdpdmVzIHVzIGZhbHNlIGhvcGVz
IHNpbmNlIGl0IG1vdmVzIGl0IG91dCBvZiB0aGUgZXF1aXZhbGVudCBkbWEtZmVuY2UgYW5ub3Rh
dGlvbi4gSSBmaWd1cmUgdGhlIHJlYXNvbiB0aGlzIHdhcyBub3Qgc2VlbiBiZWZvcmUgdGhlIG5l
dyBjb2RlIGlzIHRoYXQgdGhlIHJlc2V0IG11dGV4IGxvY2tkZXAgaXNuJ3QgdGFrZW4gd2hlbiB3
YWl0aW5nIGZvciBhY3RpdmUuIE9ubHkgd2hlbiB3YWl0aW5nIGZvciBkbWEtZmVuY2UsIGJ1dCBJ
TU8gdGhlIHJvb3QgcHJvYmxlbSBpcyBwcmUtZXhpc3RpbmcuCj4+Cj4+IC9UaG9tYXMKPj4KPj4K
PiBUaGUgaW50ZXJlc3Rpbmcgc2NlbmFyaW8gaXMKPgo+IHRocmVhZCAxOgo+IHRha2UgaV9tbWFw
X2xvY2soKQo+IGVudGVyX21tdV9ub3RpZmllcigpCj4gd2FpdF9mZW5jZSgpCj4KPiB0aHJlYWQg
MjoKPiBuZWVkX3RvX3Jlc2V0X2dwdV9mb3JfdGhlX2Fib3ZlX2ZlbmNlKCk7Cj4gdGFrZSBpX21t
YXBfbG9jaygpCj4KPiBEZWFkbG9jay4KPgo+IC9UaG9tYXMKPgo+ClllYWgsIEkgdGhpbmsgZ3B1
IHJlc2V0IGlzbid0IGNvbXBsZXRlbHkgZm9sbG93aW5nIGxvY2tkZXAgcnVsZXMgeWV0LiBUaHJl
YWQgMSBpc24ndCBkb2luZyBhbnl0aGluZyB3cm9uZywgZ3B1IHJlc2V0IHByb2JhYmx5IHNob3Vs
ZCBzdG9wIHJldm9raW5nIGd0IGJpbmRpbmdzLCBhbmQgYWxsb3cgc29tZSBnYXJiYWdlIGR1cmlu
ZyByZXNldC4gSSBkb24ndCBzZWUgYW5vdGhlciB3YXkgb3V0LiA6LS8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

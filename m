Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A69AF2FA4C1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 16:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F9C89954;
	Mon, 18 Jan 2021 15:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEB889954
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 15:32:19 +0000 (UTC)
IronPort-SDR: s4cTS+qbCcBL1wmEd4Rl9Pvq5+SSAIuQm3csdnUI+2T8JYjr5CCGRsLAhYYE0Qk5XNtqkilQbL
 2Thz83fcptcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="178903733"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="178903733"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:32:17 -0800
IronPort-SDR: b0+8Is9escIpanViHYVlt2EtiB41zf1KD/Y5rTZzaCOKRv/3ZY8Mn3pFmZMnR9MzEA0ysbPWb/
 lP9cabgaYy7Q==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="355227524"
Received: from peteratz-mobl.ger.corp.intel.com (HELO [10.252.51.240])
 ([10.252.51.240])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:32:16 -0800
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-64-maarten.lankhorst@linux.intel.com>
 <dbf9df80-2fba-b7f8-4e88-a6114eea3d5f@linux.intel.com>
 <90dda3ef-cbc9-ea2d-6247-6eba012e4caf@linux.intel.com>
 <7be09a47-9d15-f051-3ee4-ad5922ebf830@linux.intel.com>
 <7b56a025-4852-a172-06df-7d64d1cf8e39@linux.intel.com>
 <4836b692-d2f3-826d-cbc2-6c29c47df6f5@linux.intel.com>
 <6518b764-faa0-4883-d524-061befee035c@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <7c3502fd-4d96-d8a7-aa8d-f3063326c4c9@linux.intel.com>
Date: Mon, 18 Jan 2021 16:32:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <6518b764-faa0-4883-d524-061befee035c@linux.intel.com>
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

T3AgMTgtMDEtMjAyMSBvbSAxNjowNSBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+Cj4gT24g
MS8xOC8yMSAzOjQ2IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4gT3AgMTgtMDEtMjAy
MSBvbSAxNDoyOCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+Pj4gT24gMS8xOC8yMSAyOjIy
IFBNLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToKPj4+PiBPbiAxLzE4LzIxIDE6MDEgUE0sIE1h
YXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4+PiBPcCAxOC0wMS0yMDIxIG9tIDEyOjExIHNjaHJl
ZWYgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+PiBPbiAxLzUvMjEgNDozNSBQTSwgTWFhcnRlbiBM
YW5raG9yc3Qgd3JvdGU6Cj4+Pj4+Pj4gV2UgZ2V0IGEgbG9ja2RlcCBzcGxhdCB3aGVuIHRoZSBy
ZXNldCBtdXRleCBpcyBoZWxkLCBiZWNhdXNlIGl0IGNhbiBiZQo+Pj4+Pj4+IHRha2VuIGZyb20g
ZmVuY2Vfd2FpdC4gVGhpcyBjb25mbGljdHMgd2l0aCB0aGUgbW11IG5vdGlmaWVyIHdlIGhhdmUs
Cj4+Pj4+Pj4gYmVjYXVzZSB3ZSByZWN1cnNlIGJldHdlZW4gcmVzZXQgbXV0ZXggYW5kIG1tYXAg
bG9jayAtPiBtbXUgbm90aWZpZXIuCj4+Pj4+Pj4KPj4+Pj4+PiBSZW1vdmUgdGhpcyByZWN1cnNp
b24gYnkgY2FsbGluZyByZXZva2VfbW1hcHMgYmVmb3JlIHRha2luZyB0aGUgbG9jay4KPj4+Pj4+
IEhtbS4gSXMgdGhlIG1tYXAgc2UgdGFrZW4gZnJvbSBndF9yZXZva2UoKT8KPj4+Pj4+Cj4+Pj4+
PiBJZiBzbywgaXNuJ3QgdGhlIHJlYWwgcHJvYmxlbSB0aGF0IHRoZSBtbWFwX3NlbSBpcyB0YWtl
biBpbiB0aGUgZG1hX2ZlbmNlIGNyaXRpY2FsIHBhdGggKHdoZXJlIHRoZSByZXNldCBjb2RlIHNp
dHMpPwo+Pj4+PiBIZXksCj4+Pj4+Cj4+Pj4+IFRoZSBncHUgcmVzZXQgY29kZSBzcGVjaWZpY2Fs
bHkgbmVlZHMgdG8gcmV2b2tlIGFsbCBndHQgbWFwcGluZ3MsIGFuZCB0aGUgZmF1bHQgaGFuZGxl
ciB1c2VzIGludGVsX2d0X3Jlc2V0X3RyeWxvY2soKSwKPj4+Pj4KPj4+Pj4gc28gdGhpcyBjaGFu
Z2Ugc2hvdWxkIGJlIG9rIHNpbmNlIGFsbCB0aG9zZSBtYXBwaW5ncyBhcmUgaW52YWxpZGF0ZWQg
Y29ycmVjdGx5IGFuZCBjb21wbGV0ZWQgYmVmb3JlIHRoaXMgcG9pbnQuCj4+Pj4+Cj4+Pj4+IFRo
ZSByZXNldCBtdXRleCBpc24ndCBhY3R1YWxseSB0YWtlbiBpbnNpZGUgZmVuY2UgY29kZSwgYnV0
IHVzZWQgZm9yIGxvY2tkZXAgdmFsaWRhdGlvbiwgc28gdGhpcyBzaG91bGQgYmUgb2suCj4+Pj4+
Cj4+Pj4+IH5NYWFydGVuCj4+Pj4gSG1tLCBPSyBidXQgdGhlbiB3ZSBzdGlsbCBoYXZlIHRoZSBm
b2xsb3dpbmcgZXN0YWJsaXNoZWQgbG9ja2luZyBvcmRlci4KPj4+Pgo+Pj4+IGxvY2soZmVuY2Vf
c2lnbmFsaW5nKQo+Pj4+IGxvY2soaV9tbWFwX2xvY2spCj4+Pj4KPj4+PiBCdXQgaW4gdGhlIG5v
dGlmaWVyCj4+Pj4KPj4+PiBsb2NrKGlfbW1hcF9sb2NrKQo+Pj4+IGZlbmNlX3NpZ25hbGluZyh3
aXRoaW4gbm90aWZpZXIpCj4+Pj4KPj4+PiBTbyBndF9yZXZva2UoKSBpcyB2aW9sYXRpbmcgZG1h
LWZlbmNlIHJ1bGVzLgo+Pj4+Cj4+Pj4gQlRXIGl0IGxvb2tzIHRvIG1lIGxpa2UgdGhlIHJlc2V0
IG11dGV4IG5vdGF0aW9uIGlzIGFjdHVhbGx5IGRvaW5nIG11Y2ggdGhlIHNhbWUgYXMgdGhlIGRt
YS1mZW5jZSBhbm5vdGF0aW9uczsgV2hpbGUgd2UgY2FuIG1vdmUgZ3RfcmV2b2tlKCkgb3V0IG9m
IHRoZSByZXNldCBtdXRleCwgdGhhdCBvbmx5IGdpdmVzIHVzIGZhbHNlIGhvcGVzIHNpbmNlIGl0
IG1vdmVzIGl0IG91dCBvZiB0aGUgZXF1aXZhbGVudCBkbWEtZmVuY2UgYW5ub3RhdGlvbi4gSSBm
aWd1cmUgdGhlIHJlYXNvbiB0aGlzIHdhcyBub3Qgc2VlbiBiZWZvcmUgdGhlIG5ldyBjb2RlIGlz
IHRoYXQgdGhlIHJlc2V0IG11dGV4IGxvY2tkZXAgaXNuJ3QgdGFrZW4gd2hlbiB3YWl0aW5nIGZv
ciBhY3RpdmUuIE9ubHkgd2hlbiB3YWl0aW5nIGZvciBkbWEtZmVuY2UsIGJ1dCBJTU8gdGhlIHJv
b3QgcHJvYmxlbSBpcyBwcmUtZXhpc3RpbmcuCj4+Pj4KPj4+PiAvVGhvbWFzCj4+Pj4KPj4+Pgo+
Pj4gVGhlIGludGVyZXN0aW5nIHNjZW5hcmlvIGlzCj4+Pgo+Pj4gdGhyZWFkIDE6Cj4+PiB0YWtl
IGlfbW1hcF9sb2NrKCkKPj4+IGVudGVyX21tdV9ub3RpZmllcigpCj4+PiB3YWl0X2ZlbmNlKCkK
Pj4+Cj4+PiB0aHJlYWQgMjoKPj4+IG5lZWRfdG9fcmVzZXRfZ3B1X2Zvcl90aGVfYWJvdmVfZmVu
Y2UoKTsKPj4+IHRha2UgaV9tbWFwX2xvY2soKQo+Pj4KPj4+IERlYWRsb2NrLgo+Pj4KPj4+IC9U
aG9tYXMKPj4+Cj4+Pgo+PiBZZWFoLCBJIHRoaW5rIGdwdSByZXNldCBpc24ndCBjb21wbGV0ZWx5
IGZvbGxvd2luZyBsb2NrZGVwIHJ1bGVzIHlldC4gVGhyZWFkIDEgaXNuJ3QgZG9pbmcgYW55dGhp
bmcgd3JvbmcsIGdwdSByZXNldCBwcm9iYWJseSBzaG91bGQgc3RvcCByZXZva2luZyBndCBiaW5k
aW5ncywgYW5kIGFsbG93IHNvbWUgZ2FyYmFnZSBkdXJpbmcgcmVzZXQuIEkgZG9uJ3Qgc2VlIGFu
b3RoZXIgd2F5IG91dC4gOi0vCj4KPiBNZSBuZWl0aGVyLgo+Cj4gQnV0IHRvIHNpbGVuY2UgbG9j
a2RlcCB1bnRpbCBkbWFfZmVuY2UgYW5ub3RhdGlvbiBpcyB3aWRlbHkgYWRkZWQ6Cj4KPiBSZXZp
ZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwu
Y29tPgo+Cj4KSWRlYWxseSB3ZSdsbCBhZGQgZmVuY2Ugc2lnbmFsaW5nIGFubm90YXRpb25zIHRv
IGdwdSByZXNldCwgdG8gZXhhY3RseSBkZXRlY3QgdGhlc2Uga2luZCBvZiB0aGluZ3MuIEhvcGVm
dWxseSBpbiB0aGUgZnV0dXJlLiA6KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==

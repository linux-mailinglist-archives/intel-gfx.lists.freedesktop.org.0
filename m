Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF412FA408
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 16:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2761D89830;
	Mon, 18 Jan 2021 15:05:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1243989830
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 15:05:17 +0000 (UTC)
IronPort-SDR: jendYpLrw6CADkMZiGuFzmjXJBGwZ6Bnhj8W50QVX9RaXKaSDMBggn0Y7q8ah4YJETvsNNChSd
 fB9ONgSPir+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="242884230"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="242884230"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:05:12 -0800
IronPort-SDR: d+rPQ8DrJAVVYLzTn32FxBbWbftqsA+54oxBmLnlBiwpDJzqkhsiE8AGwkhQ8d7C6GFrBGyqhe
 ViBPcZbwpLSg==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383600282"
Received: from jwalsh1-mobl1.ger.corp.intel.com (HELO [10.252.7.161])
 ([10.252.7.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:05:11 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-64-maarten.lankhorst@linux.intel.com>
 <dbf9df80-2fba-b7f8-4e88-a6114eea3d5f@linux.intel.com>
 <90dda3ef-cbc9-ea2d-6247-6eba012e4caf@linux.intel.com>
 <7be09a47-9d15-f051-3ee4-ad5922ebf830@linux.intel.com>
 <7b56a025-4852-a172-06df-7d64d1cf8e39@linux.intel.com>
 <4836b692-d2f3-826d-cbc2-6c29c47df6f5@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <6518b764-faa0-4883-d524-061befee035c@linux.intel.com>
Date: Mon, 18 Jan 2021 16:05:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <4836b692-d2f3-826d-cbc2-6c29c47df6f5@linux.intel.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEvMTgvMjEgMzo0NiBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gT3AgMTgtMDEt
MjAyMSBvbSAxNDoyOCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBPbiAxLzE4LzIxIDI6
MjIgUE0sIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Pj4gT24gMS8xOC8yMSAxOjAxIFBNLCBN
YWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4+PiBPcCAxOC0wMS0yMDIxIG9tIDEyOjExIHNjaHJl
ZWYgVGhvbWFzIEhlbGxzdHLDtm06Cj4+Pj4+IE9uIDEvNS8yMSA0OjM1IFBNLCBNYWFydGVuIExh
bmtob3JzdCB3cm90ZToKPj4+Pj4+IFdlIGdldCBhIGxvY2tkZXAgc3BsYXQgd2hlbiB0aGUgcmVz
ZXQgbXV0ZXggaXMgaGVsZCwgYmVjYXVzZSBpdCBjYW4gYmUKPj4+Pj4+IHRha2VuIGZyb20gZmVu
Y2Vfd2FpdC4gVGhpcyBjb25mbGljdHMgd2l0aCB0aGUgbW11IG5vdGlmaWVyIHdlIGhhdmUsCj4+
Pj4+PiBiZWNhdXNlIHdlIHJlY3Vyc2UgYmV0d2VlbiByZXNldCBtdXRleCBhbmQgbW1hcCBsb2Nr
IC0+IG1tdSBub3RpZmllci4KPj4+Pj4+Cj4+Pj4+PiBSZW1vdmUgdGhpcyByZWN1cnNpb24gYnkg
Y2FsbGluZyByZXZva2VfbW1hcHMgYmVmb3JlIHRha2luZyB0aGUgbG9jay4KPj4+Pj4gSG1tLiBJ
cyB0aGUgbW1hcCBzZSB0YWtlbiBmcm9tIGd0X3Jldm9rZSgpPwo+Pj4+Pgo+Pj4+PiBJZiBzbywg
aXNuJ3QgdGhlIHJlYWwgcHJvYmxlbSB0aGF0IHRoZSBtbWFwX3NlbSBpcyB0YWtlbiBpbiB0aGUg
ZG1hX2ZlbmNlIGNyaXRpY2FsIHBhdGggKHdoZXJlIHRoZSByZXNldCBjb2RlIHNpdHMpPwo+Pj4+
IEhleSwKPj4+Pgo+Pj4+IFRoZSBncHUgcmVzZXQgY29kZSBzcGVjaWZpY2FsbHkgbmVlZHMgdG8g
cmV2b2tlIGFsbCBndHQgbWFwcGluZ3MsIGFuZCB0aGUgZmF1bHQgaGFuZGxlciB1c2VzIGludGVs
X2d0X3Jlc2V0X3RyeWxvY2soKSwKPj4+Pgo+Pj4+IHNvIHRoaXMgY2hhbmdlIHNob3VsZCBiZSBv
ayBzaW5jZSBhbGwgdGhvc2UgbWFwcGluZ3MgYXJlIGludmFsaWRhdGVkIGNvcnJlY3RseSBhbmQg
Y29tcGxldGVkIGJlZm9yZSB0aGlzIHBvaW50Lgo+Pj4+Cj4+Pj4gVGhlIHJlc2V0IG11dGV4IGlz
bid0IGFjdHVhbGx5IHRha2VuIGluc2lkZSBmZW5jZSBjb2RlLCBidXQgdXNlZCBmb3IgbG9ja2Rl
cCB2YWxpZGF0aW9uLCBzbyB0aGlzIHNob3VsZCBiZSBvay4KPj4+Pgo+Pj4+IH5NYWFydGVuCj4+
PiBIbW0sIE9LIGJ1dCB0aGVuIHdlIHN0aWxsIGhhdmUgdGhlIGZvbGxvd2luZyBlc3RhYmxpc2hl
ZCBsb2NraW5nIG9yZGVyLgo+Pj4KPj4+IGxvY2soZmVuY2Vfc2lnbmFsaW5nKQo+Pj4gbG9jayhp
X21tYXBfbG9jaykKPj4+Cj4+PiBCdXQgaW4gdGhlIG5vdGlmaWVyCj4+Pgo+Pj4gbG9jayhpX21t
YXBfbG9jaykKPj4+IGZlbmNlX3NpZ25hbGluZyh3aXRoaW4gbm90aWZpZXIpCj4+Pgo+Pj4gU28g
Z3RfcmV2b2tlKCkgaXMgdmlvbGF0aW5nIGRtYS1mZW5jZSBydWxlcy4KPj4+Cj4+PiBCVFcgaXQg
bG9va3MgdG8gbWUgbGlrZSB0aGUgcmVzZXQgbXV0ZXggbm90YXRpb24gaXMgYWN0dWFsbHkgZG9p
bmcgbXVjaCB0aGUgc2FtZSBhcyB0aGUgZG1hLWZlbmNlIGFubm90YXRpb25zOyBXaGlsZSB3ZSBj
YW4gbW92ZSBndF9yZXZva2UoKSBvdXQgb2YgdGhlIHJlc2V0IG11dGV4LCB0aGF0IG9ubHkgZ2l2
ZXMgdXMgZmFsc2UgaG9wZXMgc2luY2UgaXQgbW92ZXMgaXQgb3V0IG9mIHRoZSBlcXVpdmFsZW50
IGRtYS1mZW5jZSBhbm5vdGF0aW9uLiBJIGZpZ3VyZSB0aGUgcmVhc29uIHRoaXMgd2FzIG5vdCBz
ZWVuIGJlZm9yZSB0aGUgbmV3IGNvZGUgaXMgdGhhdCB0aGUgcmVzZXQgbXV0ZXggbG9ja2RlcCBp
c24ndCB0YWtlbiB3aGVuIHdhaXRpbmcgZm9yIGFjdGl2ZS4gT25seSB3aGVuIHdhaXRpbmcgZm9y
IGRtYS1mZW5jZSwgYnV0IElNTyB0aGUgcm9vdCBwcm9ibGVtIGlzIHByZS1leGlzdGluZy4KPj4+
Cj4+PiAvVGhvbWFzCj4+Pgo+Pj4KPj4gVGhlIGludGVyZXN0aW5nIHNjZW5hcmlvIGlzCj4+Cj4+
IHRocmVhZCAxOgo+PiB0YWtlIGlfbW1hcF9sb2NrKCkKPj4gZW50ZXJfbW11X25vdGlmaWVyKCkK
Pj4gd2FpdF9mZW5jZSgpCj4+Cj4+IHRocmVhZCAyOgo+PiBuZWVkX3RvX3Jlc2V0X2dwdV9mb3Jf
dGhlX2Fib3ZlX2ZlbmNlKCk7Cj4+IHRha2UgaV9tbWFwX2xvY2soKQo+Pgo+PiBEZWFkbG9jay4K
Pj4KPj4gL1Rob21hcwo+Pgo+Pgo+IFllYWgsIEkgdGhpbmsgZ3B1IHJlc2V0IGlzbid0IGNvbXBs
ZXRlbHkgZm9sbG93aW5nIGxvY2tkZXAgcnVsZXMgeWV0LiBUaHJlYWQgMSBpc24ndCBkb2luZyBh
bnl0aGluZyB3cm9uZywgZ3B1IHJlc2V0IHByb2JhYmx5IHNob3VsZCBzdG9wIHJldm9raW5nIGd0
IGJpbmRpbmdzLCBhbmQgYWxsb3cgc29tZSBnYXJiYWdlIGR1cmluZyByZXNldC4gSSBkb24ndCBz
ZWUgYW5vdGhlciB3YXkgb3V0LiA6LS8KCk1lIG5laXRoZXIuCgpCdXQgdG8gc2lsZW5jZSBsb2Nr
ZGVwIHVudGlsIGRtYV9mZW5jZSBhbm5vdGF0aW9uIGlzIHdpZGVseSBhZGRlZDoKClJldmlld2Vk
LWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

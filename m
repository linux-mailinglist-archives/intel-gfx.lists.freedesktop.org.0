Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EF22FA14D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 14:23:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB4CF6E372;
	Mon, 18 Jan 2021 13:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F36B6E2E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 13:23:10 +0000 (UTC)
IronPort-SDR: 54PrCFz8SAy8qagEP+yQDyG3rQBQZlNJZM7opnn1Rk+imJFDwHzV6vO7uioZtrv4hZY9i3BK3W
 GXZIHaPMismw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="158574493"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="158574493"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 05:23:02 -0800
IronPort-SDR: SBMqqyq2DPDZD8kI5v6fqvEiPyAfWR4VLMAAv6M7wzh1GQnznobXkm8bAkZozwJ3XYpomjNvke
 kmUnIQCeyEQQ==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383571807"
Received: from jwalsh1-mobl1.ger.corp.intel.com (HELO [10.252.7.161])
 ([10.252.7.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 05:23:00 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-64-maarten.lankhorst@linux.intel.com>
 <dbf9df80-2fba-b7f8-4e88-a6114eea3d5f@linux.intel.com>
 <90dda3ef-cbc9-ea2d-6247-6eba012e4caf@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <7be09a47-9d15-f051-3ee4-ad5922ebf830@linux.intel.com>
Date: Mon, 18 Jan 2021 14:22:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <90dda3ef-cbc9-ea2d-6247-6eba012e4caf@linux.intel.com>
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

Ck9uIDEvMTgvMjEgMTowMSBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gT3AgMTgtMDEt
MjAyMSBvbSAxMjoxMSBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+PiBPbiAxLzUvMjEgNDoz
NSBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+PiBXZSBnZXQgYSBsb2NrZGVwIHNwbGF0
IHdoZW4gdGhlIHJlc2V0IG11dGV4IGlzIGhlbGQsIGJlY2F1c2UgaXQgY2FuIGJlCj4+PiB0YWtl
biBmcm9tIGZlbmNlX3dhaXQuIFRoaXMgY29uZmxpY3RzIHdpdGggdGhlIG1tdSBub3RpZmllciB3
ZSBoYXZlLAo+Pj4gYmVjYXVzZSB3ZSByZWN1cnNlIGJldHdlZW4gcmVzZXQgbXV0ZXggYW5kIG1t
YXAgbG9jayAtPiBtbXUgbm90aWZpZXIuCj4+Pgo+Pj4gUmVtb3ZlIHRoaXMgcmVjdXJzaW9uIGJ5
IGNhbGxpbmcgcmV2b2tlX21tYXBzIGJlZm9yZSB0YWtpbmcgdGhlIGxvY2suCj4+IEhtbS4gSXMg
dGhlIG1tYXAgc2UgdGFrZW4gZnJvbSBndF9yZXZva2UoKT8KPj4KPj4gSWYgc28sIGlzbid0IHRo
ZSByZWFsIHByb2JsZW0gdGhhdCB0aGUgbW1hcF9zZW0gaXMgdGFrZW4gaW4gdGhlIGRtYV9mZW5j
ZSBjcml0aWNhbCBwYXRoICh3aGVyZSB0aGUgcmVzZXQgY29kZSBzaXRzKT8KPiBIZXksCj4KPiBU
aGUgZ3B1IHJlc2V0IGNvZGUgc3BlY2lmaWNhbGx5IG5lZWRzIHRvIHJldm9rZSBhbGwgZ3R0IG1h
cHBpbmdzLCBhbmQgdGhlIGZhdWx0IGhhbmRsZXIgdXNlcyBpbnRlbF9ndF9yZXNldF90cnlsb2Nr
KCksCj4KPiBzbyB0aGlzIGNoYW5nZSBzaG91bGQgYmUgb2sgc2luY2UgYWxsIHRob3NlIG1hcHBp
bmdzIGFyZSBpbnZhbGlkYXRlZCBjb3JyZWN0bHkgYW5kIGNvbXBsZXRlZCBiZWZvcmUgdGhpcyBw
b2ludC4KPgo+IFRoZSByZXNldCBtdXRleCBpc24ndCBhY3R1YWxseSB0YWtlbiBpbnNpZGUgZmVu
Y2UgY29kZSwgYnV0IHVzZWQgZm9yIGxvY2tkZXAgdmFsaWRhdGlvbiwgc28gdGhpcyBzaG91bGQg
YmUgb2suCj4KPiB+TWFhcnRlbgoKSG1tLCBPSyBidXQgdGhlbiB3ZSBzdGlsbCBoYXZlIHRoZSBm
b2xsb3dpbmcgZXN0YWJsaXNoZWQgbG9ja2luZyBvcmRlci4KCmxvY2soZmVuY2Vfc2lnbmFsaW5n
KQpsb2NrKGlfbW1hcF9sb2NrKQoKQnV0IGluIHRoZSBub3RpZmllcgoKbG9jayhpX21tYXBfbG9j
aykKZmVuY2Vfc2lnbmFsaW5nKHdpdGhpbiBub3RpZmllcikKClNvIGd0X3Jldm9rZSgpIGlzIHZp
b2xhdGluZyBkbWEtZmVuY2UgcnVsZXMuCgpCVFcgaXQgbG9va3MgdG8gbWUgbGlrZSB0aGUgcmVz
ZXQgbXV0ZXggbm90YXRpb24gaXMgYWN0dWFsbHkgZG9pbmcgbXVjaCAKdGhlIHNhbWUgYXMgdGhl
IGRtYS1mZW5jZSBhbm5vdGF0aW9uczsgV2hpbGUgd2UgY2FuIG1vdmUgZ3RfcmV2b2tlKCkgb3V0
IApvZiB0aGUgcmVzZXQgbXV0ZXgsIHRoYXQgb25seSBnaXZlcyB1cyBmYWxzZSBob3BlcyBzaW5j
ZSBpdCBtb3ZlcyBpdCBvdXQgCm9mIHRoZSBlcXVpdmFsZW50IGRtYS1mZW5jZSBhbm5vdGF0aW9u
LiBJIGZpZ3VyZSB0aGUgcmVhc29uIHRoaXMgd2FzIG5vdCAKc2VlbiBiZWZvcmUgdGhlIG5ldyBj
b2RlIGlzIHRoYXQgdGhlIHJlc2V0IG11dGV4IGxvY2tkZXAgaXNuJ3QgdGFrZW4gCndoZW4gd2Fp
dGluZyBmb3IgYWN0aXZlLiBPbmx5IHdoZW4gd2FpdGluZyBmb3IgZG1hLWZlbmNlLCBidXQgSU1P
IHRoZSAKcm9vdCBwcm9ibGVtIGlzIHByZS1leGlzdGluZy4KCi9UaG9tYXMKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

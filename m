Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4174C2FA176
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 14:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B45E6E218;
	Mon, 18 Jan 2021 13:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA9C6E218
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 13:28:06 +0000 (UTC)
IronPort-SDR: DysMR4ATTQcpYhRmZHrz1pR64V6D6wOaopGym1iNPc0HoaTUCxe0hqAwrlGnGd9svfq8yT5o0M
 Xvm4A1n5aqZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="197497055"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="197497055"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 05:28:04 -0800
IronPort-SDR: +fBz1Ytdh0tGBmsK11DwV1H5iltNUq0nwe0x3BrnGT9EJzXlHrEqqwLgj3ds/3IxhoOKF5Hda8
 jVz0uXfEYuLA==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383572756"
Received: from jwalsh1-mobl1.ger.corp.intel.com (HELO [10.252.7.161])
 ([10.252.7.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 05:28:03 -0800
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-64-maarten.lankhorst@linux.intel.com>
 <dbf9df80-2fba-b7f8-4e88-a6114eea3d5f@linux.intel.com>
 <90dda3ef-cbc9-ea2d-6247-6eba012e4caf@linux.intel.com>
 <7be09a47-9d15-f051-3ee4-ad5922ebf830@linux.intel.com>
Message-ID: <7b56a025-4852-a172-06df-7d64d1cf8e39@linux.intel.com>
Date: Mon, 18 Jan 2021 14:28:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <7be09a47-9d15-f051-3ee4-ad5922ebf830@linux.intel.com>
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

Ck9uIDEvMTgvMjEgMjoyMiBQTSwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4KPiBPbiAxLzE4
LzIxIDE6MDEgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+PiBPcCAxOC0wMS0yMDIxIG9t
IDEyOjExIHNjaHJlZWYgVGhvbWFzIEhlbGxzdHLDtm06Cj4+PiBPbiAxLzUvMjEgNDozNSBQTSwg
TWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+Pj4gV2UgZ2V0IGEgbG9ja2RlcCBzcGxhdCB3aGVu
IHRoZSByZXNldCBtdXRleCBpcyBoZWxkLCBiZWNhdXNlIGl0IGNhbiBiZQo+Pj4+IHRha2VuIGZy
b20gZmVuY2Vfd2FpdC4gVGhpcyBjb25mbGljdHMgd2l0aCB0aGUgbW11IG5vdGlmaWVyIHdlIGhh
dmUsCj4+Pj4gYmVjYXVzZSB3ZSByZWN1cnNlIGJldHdlZW4gcmVzZXQgbXV0ZXggYW5kIG1tYXAg
bG9jayAtPiBtbXUgbm90aWZpZXIuCj4+Pj4KPj4+PiBSZW1vdmUgdGhpcyByZWN1cnNpb24gYnkg
Y2FsbGluZyByZXZva2VfbW1hcHMgYmVmb3JlIHRha2luZyB0aGUgbG9jay4KPj4+IEhtbS4gSXMg
dGhlIG1tYXAgc2UgdGFrZW4gZnJvbSBndF9yZXZva2UoKT8KPj4+Cj4+PiBJZiBzbywgaXNuJ3Qg
dGhlIHJlYWwgcHJvYmxlbSB0aGF0IHRoZSBtbWFwX3NlbSBpcyB0YWtlbiBpbiB0aGUgCj4+PiBk
bWFfZmVuY2UgY3JpdGljYWwgcGF0aCAod2hlcmUgdGhlIHJlc2V0IGNvZGUgc2l0cyk/Cj4+IEhl
eSwKPj4KPj4gVGhlIGdwdSByZXNldCBjb2RlIHNwZWNpZmljYWxseSBuZWVkcyB0byByZXZva2Ug
YWxsIGd0dCBtYXBwaW5ncywgYW5kIAo+PiB0aGUgZmF1bHQgaGFuZGxlciB1c2VzIGludGVsX2d0
X3Jlc2V0X3RyeWxvY2soKSwKPj4KPj4gc28gdGhpcyBjaGFuZ2Ugc2hvdWxkIGJlIG9rIHNpbmNl
IGFsbCB0aG9zZSBtYXBwaW5ncyBhcmUgaW52YWxpZGF0ZWQgCj4+IGNvcnJlY3RseSBhbmQgY29t
cGxldGVkIGJlZm9yZSB0aGlzIHBvaW50Lgo+Pgo+PiBUaGUgcmVzZXQgbXV0ZXggaXNuJ3QgYWN0
dWFsbHkgdGFrZW4gaW5zaWRlIGZlbmNlIGNvZGUsIGJ1dCB1c2VkIGZvciAKPj4gbG9ja2RlcCB2
YWxpZGF0aW9uLCBzbyB0aGlzIHNob3VsZCBiZSBvay4KPj4KPj4gfk1hYXJ0ZW4KPgo+IEhtbSwg
T0sgYnV0IHRoZW4gd2Ugc3RpbGwgaGF2ZSB0aGUgZm9sbG93aW5nIGVzdGFibGlzaGVkIGxvY2tp
bmcgb3JkZXIuCj4KPiBsb2NrKGZlbmNlX3NpZ25hbGluZykKPiBsb2NrKGlfbW1hcF9sb2NrKQo+
Cj4gQnV0IGluIHRoZSBub3RpZmllcgo+Cj4gbG9jayhpX21tYXBfbG9jaykKPiBmZW5jZV9zaWdu
YWxpbmcod2l0aGluIG5vdGlmaWVyKQo+Cj4gU28gZ3RfcmV2b2tlKCkgaXMgdmlvbGF0aW5nIGRt
YS1mZW5jZSBydWxlcy4KPgo+IEJUVyBpdCBsb29rcyB0byBtZSBsaWtlIHRoZSByZXNldCBtdXRl
eCBub3RhdGlvbiBpcyBhY3R1YWxseSBkb2luZyAKPiBtdWNoIHRoZSBzYW1lIGFzIHRoZSBkbWEt
ZmVuY2UgYW5ub3RhdGlvbnM7IFdoaWxlIHdlIGNhbiBtb3ZlIAo+IGd0X3Jldm9rZSgpIG91dCBv
ZiB0aGUgcmVzZXQgbXV0ZXgsIHRoYXQgb25seSBnaXZlcyB1cyBmYWxzZSBob3BlcyAKPiBzaW5j
ZSBpdCBtb3ZlcyBpdCBvdXQgb2YgdGhlIGVxdWl2YWxlbnQgZG1hLWZlbmNlIGFubm90YXRpb24u
IEkgZmlndXJlIAo+IHRoZSByZWFzb24gdGhpcyB3YXMgbm90IHNlZW4gYmVmb3JlIHRoZSBuZXcg
Y29kZSBpcyB0aGF0IHRoZSByZXNldCAKPiBtdXRleCBsb2NrZGVwIGlzbid0IHRha2VuIHdoZW4g
d2FpdGluZyBmb3IgYWN0aXZlLiBPbmx5IHdoZW4gd2FpdGluZyAKPiBmb3IgZG1hLWZlbmNlLCBi
dXQgSU1PIHRoZSByb290IHByb2JsZW0gaXMgcHJlLWV4aXN0aW5nLgo+Cj4gL1Rob21hcwo+Cj4K
VGhlIGludGVyZXN0aW5nIHNjZW5hcmlvIGlzCgp0aHJlYWQgMToKdGFrZSBpX21tYXBfbG9jaygp
CmVudGVyX21tdV9ub3RpZmllcigpCndhaXRfZmVuY2UoKQoKdGhyZWFkIDI6Cm5lZWRfdG9fcmVz
ZXRfZ3B1X2Zvcl90aGVfYWJvdmVfZmVuY2UoKTsKdGFrZSBpX21tYXBfbG9jaygpCgpEZWFkbG9j
ay4KCi9UaG9tYXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK

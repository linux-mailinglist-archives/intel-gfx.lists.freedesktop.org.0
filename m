Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33501F77FB
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 16:44:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C9D6E932;
	Mon, 11 Nov 2019 15:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A1F6E933
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 15:44:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 07:44:54 -0800
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="197702303"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Nov 2019 07:44:52 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191111133205.11590-1-chris@chris-wilson.co.uk>
 <20191111133205.11590-2-chris@chris-wilson.co.uk>
 <57389ded-7186-9d5c-3d46-b8aa0a7e025c@linux.intel.com>
 <157348243641.28106.6605301745084118769@skylake-alporthouse-com>
 <157348275112.28106.13456340027702285373@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <aba78389-45bf-17b3-2eb7-a51329da873c@linux.intel.com>
Date: Mon, 11 Nov 2019 15:44:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157348275112.28106.13456340027702285373@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [FIXES 2/3] drm/i915/userptr: Handle unlocked gup
 retries
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDExLzExLzIwMTkgMTQ6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0xMS0xMSAxNDoyNzoxNikKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0xMS0xMSAxNDoxOTozMSkKPj4+Cj4+PiBPbiAxMS8xMS8yMDE5IDEzOjMyLCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4+Pj4gRW5hYmxlIGd1cCB0byByZXRyeSBhbmQgZmF1bHQgdGhlIHBhZ2Vz
IG91dHNpZGUgb2YgdGhlIG1tYXBfc2VtIGxvY2sgaW4KPj4+PiBvdXIgd29ya2VyLiBBcyB3ZSBh
cmUgaW5zaWRlIG91ciB3b3JrZXIsIG91dHNpZGUgb2YgYW55IGNyaXRpY2FsIHBhdGgsCj4+Pj4g
d2UgY2FuIGFsbG93IHRoZSBtbWFwX3NlbSBsb2NrIHRvIGJlIGRyb3BwZWQgaW4gb3JkZXIgdG8g
c2VydmljZSBhIHBhZ2UKPj4+PiBmYXVsdDsgdGhpcyBpbiB0dXJuIGFsbG93cyB0aGUgbW0gdG8g
cG9wdWxhdGUgdGhlIHBhZ2UgdXNpbmcgYSBzbG93Cj4+Pj4gZmF1bHQgaGFuZGxlci4KPj4+Pgo+
Pj4+IFRlc3RjYXNlOiBpZ3QvZ2VtX3VzZXJwdHIvdXNlcmZhdWx0Cj4+Pgo+Pj4gVGhlcmUgYXJl
IG5vIHJlZmVyZW5jZXMgb3IgZXhwbGFuYXRpb24gb24gd2hhdCBkb2VzIHRoaXMgZml4Pwo+Pgo+
PiBndXAgc2ltcGx5IGZhaWxzIGlmIGl0IGlzIG5vdCBhbGxvd2VkIHRvIGRyb3AgdGhlIGxvY2sg
Zm9yIHNvbWUgZmF1bHRzLAo+Pgo+PiBfX2dldF91c2VyX3BhZ2VzX2xvY2tlZDoKPj4gICAgICAg
ICAgICAgICAgICByZXQgPSBfX2dldF91c2VyX3BhZ2VzKHRzaywgbW0sIHN0YXJ0LCBucl9wYWdl
cywgZmxhZ3MsIHBhZ2VzLAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdm1hcywgbG9ja2VkKTsKPj4gICAgICAgICAgICAgICAgICBpZiAoIWxvY2tlZCkKPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgIC8qIFZNX0ZBVUxUX1JFVFJZIGNvdWxkbid0IHRyaWdnZXIs
IGJ5cGFzcyAqLwo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4KPj4g
dXNlcmZhdWx0IGJlaW5nIHRoZSBmaXJzdCB0aW1lIEkgZGlzY292ZXJlZCB0aGlzIGV2ZW4gZXhp
c3RlZC4gU2luY2Ugd2UKPj4gYXJlIG9ubHkgaG9sZGluZyB0aGUgbW1hcF9zZW0gZm9yIHRoZSBn
dXAgKGFuZCBub3QgcHJvdGVjdGluZyBhbnl0aGluZwo+PiBlbHNlKSB3ZSBjYW4gc2ltcGx5IGFs
bG93IGd1cCB0byBkcm9wIHRoZSBsb2NrIGlmIGl0IG5lZWRzIHRvLgo+IAo+IEZpeGVzOiA1YjU2
ZDQ5ZmMzMWQgKCJtbTogYWRkIGxvY2tlZCBwYXJhbWV0ZXIgdG8gZ2V0X3VzZXJfcGFnZXNfcmVt
b3RlKCkiKQoKcy9GaXhlcy9SZWZlcmVuY2UvIEkgZ3Vlc3MuCgpSZXZpZXdlZC1ieTogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

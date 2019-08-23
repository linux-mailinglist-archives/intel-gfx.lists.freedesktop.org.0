Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A51949B40C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168816ECD4;
	Fri, 23 Aug 2019 15:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1AB6ECD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:56:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 08:56:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="203805971"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 08:56:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
 <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
 <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
 <156657304893.4019.6114530226750288695@skylake-alporthouse-com>
 <156657412207.4019.2312887558171300172@skylake-alporthouse-com>
 <f8bd967c-de26-730b-9871-ec918279e06b@intel.com>
 <156657556096.4019.5895875072663620308@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <db509eba-c142-1cc1-9e84-e5af15df4212@intel.com>
Date: Fri, 23 Aug 2019 08:56:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156657556096.4019.5895875072663620308@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC] drm/i915/tgl: Advanced preparser support for
 GPU relocs
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

CgpPbiA4LzIzLzE5IDg6NTIgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDgtMjMgMTY6Mzk6MTQpCj4+Cj4+Cj4+IE9uIDgvMjMv
MTkgODoyOCBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gUXVvdGluZyBDaHJpcyBXaWxzb24g
KDIwMTktMDgtMjMgMTY6MTA6NDgpCj4+Pj4gUXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlv
ICgyMDE5LTA4LTIzIDE2OjA1OjQ1KQo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBPbiA4LzIzLzE5IDc6MjYg
QU0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+Pj4+IFF1b3RpbmcgQ2hyaXMgV2lsc29uICgyMDE5
LTA4LTIzIDA4OjI3OjI1KQo+Pj4+Pj4+IFF1b3RpbmcgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAo
MjAxOS0wOC0yMyAwMzowOTowOSkKPj4+Pj4+Pj4gVEdMIGhhcyBhbiBpbXByb3ZlZCBDUyBwcmUt
cGFyc2VyIHRoYXQgY2FuIG5vdyBwcmUtZmV0Y2ggY29tbWFuZHMgYWNyb3NzCj4+Pj4+Pj4+IGJh
dGNoIGJvdW5kYXJpZXMuIFRoaXMgaW1wcm92ZXMgcGVyZm9ybWFuY2VzIHdoZW4gbG90cyBvZiBz
bWFsbCBiYXRjaGVzCj4+Pj4+Pj4+IGFyZSB1c2VkLCBidXQgaGFzIGFuIGltcGFjdCBvbiBzZWxm
LW1vZGlmeWluZyBjb2RlLiBJZiB3ZSB3YW50IHRvIG1vZGlmeQo+Pj4+Pj4+PiB0aGUgY29udGVu
dCBvZiBhIGJhdGNoIGZyb20gYW5vdGhlciByaW5nL2JhdGNoLCB3ZSBuZWVkIHRvIGVpdGhlcgo+
Pj4+Pj4+PiBndWFyYW50ZWUgdGhhdCB0aGUgbWVtb3J5IGxvY2F0aW9uIGlzIHVwZGF0ZWQgYmVm
b3JlIHRoZSBwcmUtcGFyc2VyIGdldHMKPj4+Pj4+Pj4gdG8gaXQgb3Igd2UgbmVlZCB0byB0dXJu
IHRoZSBwcmUtcGFyc2VyIG9mZiBhcm91bmQgdGhlIG1vZGlmaWNhdGlvbi4KPj4+Pj4+Pj4gSW4g
aTkxNSwgd2UgdXNlIHNlbGYtbW9kaWZ5aW5nIGNvZGUgb25seSBmb3IgR1BVIHJlbG9jYXRpb25z
Lgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUaGUgcHJlLXBhcnNlciBmZXRjaGVzIGFjcm9zcyBtZW1vcnkg
c3luY2hyb25pemF0aW9uIGNvbW1hbmRzIGFzIHdlbGwsCj4+Pj4+Pj4+IHNvIHRoZSBvbmx5IHdh
eSB0byBndWFyYW50ZWUgdGhhdCB0aGUgd3JpdGVzIGxhbmQgYmVmb3JlIHRoZSBwYXJzZXIgZ2V0
cwo+Pj4+Pj4+PiB0byBpdCBpcyB0byBoYXZlIG1vcmUgaW5zdHJ1Y3Rpb25zIGJldHdlZW4gdGhl
IHN5bmMgYW5kIHRoZSBkZXN0aW5hdGlvbgo+Pj4+Pj4+PiB0aGFuIHRoZSBwYXJzZXIgRklGTyBk
ZXB0aCwgd2hpY2ggaXMgbm90IGFuIG9wdGltYWwgc29sdXRpb24uCj4+Pj4+Pj4KPj4+Pj4+PiBX
ZWxsLCBvdXIgQUJJIGlzIHRoYXQgbWVtb3J5IGlzIGNvaGVyZW50IGJlZm9yZSB0aGUgYnJlYWRj
cnVtYiBvZiAqZWFjaCoKPj4+Pj4+PiBiYXRjaC4gVGhhdCBpcyBhIGZ1bmRhbWVudGFsIHJlcXVp
cmVtZW50IGZvciBvdXIgc2lnbmFsaW5nIHRvIHVzZXJzcGFjZS4KPj4+Pj4+PiBQbGVhc2UgdGVs
bCBtZSB0aGF0IHRoZXJlIGlzIGEgY29udGV4dCBmbGFnIHRvIHR1cm4gdGhpcyBvZmYsIG9yIHdl
IGVsc2UKPj4+Pj4+PiB3ZSBuZWVkIHRvIGVtaXQgMzJ4IGZsdXNoZXMgb3Igd2hhdGV2ZXIgaXQg
dGFrZXMuCj4+Pj4+Pgo+Pj4+PiBBcmUgeW91IHJlZmVycmluZyB0byB0aGUgc3BlY2lmaWMgY2Fz
ZSB3aGVyZSB3ZSBoYXZlIGEgcmVxdWVzdCBtb2RpZnlpbmcKPj4+Pj4gYW4gb2JqZWN0IHRoYXQg
aXMgdGhlbiB1c2VkIGFzIGEgYmF0Y2ggaW4gdGhlIG5leHQgcmVxdWVzdD8gQmVjYXVzZQo+Pj4+
PiBjb2hlcmVuY3kgb2Ygb2JqZWN0cyB0aGF0IGFyZSBub3QgZXhlY3V0ZWQgYXMgYmF0Y2hlcyBp
cyBub3QgaW1wYWN0ZWQuCj4+Pj4KPj4+PiAiRmV0Y2hlcyBhY3Jvc3MgbWVtb3J5IHN5bmMiIHNv
dW5kcyBsaWtlIGEgbWFqb3IgQUJJIGJyZWFrLiBUaGUgYmF0Y2hlcwo+Pj4+IGFyZSBhIGhhcmQg
c2VyaWFsaXNhdGlvbiBiYXJyaWVyLCB3aXRoIG1lbW9yeSBjb2hlcmVuY3kgZ3VhcmFudGVlZCBw
cmlvcgo+Pj4+IHRvIHRoZSBzaWduYWxpbmcgYXQgdGhlIGVuZCBvZiBvbmUgYmF0Y2ggYW5kIGNs
ZWFyIGNhY2hlcyBndWFyYW50ZWVkIGF0Cj4+Pj4gdGhlIHN0YXJ0IG9mIHRoZSBuZXh0Lgo+Pj4K
Pj4+IFdlIGhhdmUgcmVsb2NzLCBvYSBhbmQgc3NldSBhbGwgdXNpbmcgc2VsZi1tb2RpZnlpbmcg
Y29kZS4gSSBleHBlY3Qgd2UKPj4+IHdpbGwgaGF2ZSBQVEUgbW9kaWZpY2F0aW9ucyBhbmQgbXVj
aCBtb3JlIGRvbmUgdmlhIHRoZSBHUFUgaW4gdGhlIG5lYXIKPj4+IGZ1dHVyZS4gQWxsIHJlbHkg
b24gdGhlIENTX1NUQUxMIGRvaW5nIGV4YWN0bHkgd2hhdCBpdCBzYXlzIG9uIHRoZSB0aW4uCj4+
PiAtQ2hyaXMKPj4+Cj4+Cj4+IEkgZ3Vlc3MgdGhlIGVhc2llc3Qgc29sdXRpb24gaXMgdGhlbiB0
byBrZWVwIHRoZSBwYXJzZXIgb2ZmIG91dHNpZGUgb2YKPj4gdXNlciBiYXRjaGVzLiBXZSBjYW4g
ZGVmYXVsdCB0byBvZmYgYW5kIHRoZW4gcmVzdG9yZSB3aGF0IHRoZSB1c2VyIGhhcwo+PiBwcm9n
cmFtbWVkIGJlZm9yZSB0aGUgQkJTVEFSVC4gSXQncyBub3QgYSBicmVhY2ggb2YgY29udHJhY3Qg
aWYgd2Ugc2F5Cj4+IHRoYXQgaWYgeW91IG9wdC1pbiB0byB0aGUgcGFyc2VyIHRoZW4geW91IG5l
ZWQgdG8gbWFrZSBzdXJlIHlvdXIgYmF0Y2hlcwo+PiBhcmUgbm90IHNlbGYtbW9kaWZ5aW5nLCBy
aWdodD8KPiAKPiBJcyBpdCBqdXN0IHRoZSBNSV9BUkJfT05PRkYgYml0cywgYW5kIGlzIHRoYXQg
c3RpbGwgYSBwcml2aWxlZ2VkCj4gY29tbWFuZD8gaS5lLiBjYW4gdXNlcnNwYWNlIGNoYW5nZSBt
b2RlIGJ5IGl0c2VsZiwgb3IgaXQgaXMgYQo+IGNvbnRleHQtcGFyYW0/CgpJdCdzIHRoZSBBUkJf
Q0hFQ0ssIG5vdCB0aGUgQVJCX09OT0ZGLCBzbyB5ZXMsIGl0IGlzIG5vdCBwcml2aWxlZ2VkIGFu
ZCAKdXNlcnNwYWNlIGNhbiBtb2RpZnkgaXQgaXRzZWxmLiBJdCB3b3VsZCd2ZSBiZWVuIGVhc2ll
ciBpZiBpdCB3YXMgYSAKY29udGV4dCBwYXJhbSA6KQoKRGFuaWVsZQoKPiAKPj4gQlRXIHRoZSBD
U19TVEFMTCBkb2VzIG5vdCBndWFyYW50ZWUgb24gcHJlLWdlbjEyIGdlbnMgdGhhdAo+PiBzZWxm
LW1vZGlmeWluZyBjb2RlIHdvcmtzIHdpdGhpbiB0aGUgc2FtZSBiYXRjaC9yaW5nIGJlY2F1c2Ug
dGhlCj4+IHByZS1wYXJzZXIgaXMgYWxyZWFkeSBwcmUtZmV0Y2hpbmcgYWNyb3NzIG1lbW9yeSBz
eW5jIHBvaW50cywgaXQganVzdAo+PiBzdG9wcyBhdCB0aGUgbmV4dCBhcmIgcG9pbnQuCj4gCj4g
T2ssIHdlIHN0aWxsIHVwaG9sZCBvdXIgY29udHJhY3QgaWYgdGhleSBjYW4ndCBleGVjdXRlIGFu
eSBjb2RlIGluIHRoZQo+IHdpbmRvdyB3aGVyZSB0aGV5IHdvdWxkIHNlZSBzb21lb25lIGVsc2Un
cyBkYXRhLgo+IC1DaHJpcwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=

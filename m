Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D702471950
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 15:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA5789115;
	Tue, 23 Jul 2019 13:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2317C89115
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 13:34:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 06:34:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="368373669"
Received: from jsartini-mobl.ger.corp.intel.com (HELO [10.252.0.141])
 ([10.252.0.141])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2019 06:34:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190718124220.26623-1-chris@chris-wilson.co.uk>
 <4b24f426-7817-1805-0c09-b93c13221b16@linux.intel.com>
 <156383196297.31349.6122104767892051649@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5f4d4647-2cf0-b3cd-b5ef-b3d28f424f01@linux.intel.com>
Date: Tue, 23 Jul 2019 14:34:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156383196297.31349.6122104767892051649@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move global activity tracking
 from GEM to GT
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

Ck9uIDIyLzA3LzIwMTkgMjI6NDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTIyIDEzOjE2OjM4KQo+Pgo+PiBPbiAxOC8wNy8yMDE5IDEzOjQy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBcyBvdXIgZ2xvYmFsIHVucGFyay9wYXJrIGtlZXAg
dHJhY2sgb2YgdGhlIG51bWJlciBvZiBhY3RpdmUgdXNlcnMsIHdlCj4+PiBjYW4gc2ltcGx5IG1v
dmUgdGhlIGFjY291bnRpbmcgZnJvbSB0aGUgR0VNIGxheWVyIHRvIHRoZSBiYXNlIEdUIGxheWVy
Lgo+Pj4gSXQgd2FzIHBsYWNlZCBvcmlnaW5hbGx5IGluc2lkZSBHRU0gdG8gYmVuZWZpdCBmcm9t
IHRoZSAxMDBtcyBleHRyYQo+Pj4gZGVsYXkgb24gaWRsZW5lc3MsIGJ1dCB0aGF0IGhhcyBiZWVu
IGVsaW1pbmF0ZWQgYW5kIG5vdyB0aGVyZSBpcyBubwo+Pj4gc3Vic3RhbnRpdmUgZGlmZmVyZW5j
ZSBiZXR3ZWVuIHRoZSBsYXllcnMuIEluIG1vdmluZyBpdCwgd2UgbW92ZSBhbm90aGVyCj4+PiBw
aWVjZSBvZiB0aGUgcHV6emxlIG91dCBmcm9tIHVuZGVybmVhdGggc3RydWN0X211dGV4Lgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+PiAt
LS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIHwgNCAtLS0t
Cj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jICB8IDUgKysrKysK
Pj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCj4+PiBpbmRleCA4ZmFm
MjYyMjc4YWUuLjFhZmIwNDY2MDcyNSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wbS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcG0uYwo+Pj4gQEAgLTksNyArOSw2IEBACj4+PiAgICAjaW5jbHVkZSAiZ3QvaW50
ZWxfZ3RfcG0uaCIKPj4+ICAgIAo+Pj4gICAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4+PiAtI2lu
Y2x1ZGUgImk5MTVfZ2xvYmFscy5oIgo+Pj4gICAgCj4+PiAgICBzdGF0aWMgdm9pZCBjYWxsX2lk
bGVfYmFycmllcnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+Pj4gICAgewo+Pj4g
QEAgLTQxLDggKzQwLDYgQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1fcGFyayhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKPj4+ICAgIAo+Pj4gICAgICAgIGludGVsX3RpbWVsaW5lc19wYXJr
KGk5MTUpOwo+Pj4gICAgICAgIGk5MTVfdm1hX3BhcmtlZChpOTE1KTsKPj4+IC0KPj4+IC0gICAg
IGk5MTVfZ2xvYmFsc19wYXJrKCk7Cj4+Cj4+IEJlbmVmaXQgb2YgdGhpcyBwbGFjZW1lbnQgd2Fz
IGFsc28gdGhhdCB3aGF0IHdpbGwgYmUgZnJlZWQgb24gcGFya2luZwo+PiB3YXMgZnJlZWQgYnkg
dGhpcyBwb2ludCBzbyBzaHJpbmtpbmcgb2Ygc2xhYnMgaXMgZWZmZWN0aXZlLiBJZiB5b3UgbW92
ZQo+PiBpdCB0byBndCBwYXJraW5nIHRoZW4gdGhhdCBydW5zIHRvIGVhcmx5LiBTbyBJIHRoaW5r
IGl0IGlzIGJldHRlciB0aGF0Cj4+IGl0IHN0YXlzIHdoZXJlIGl0IGlzLgo+IAo+IEJ1dCB0aGVy
ZSdzIG5vdGhpbmcgaGVyZS4gWW91IGFyZSBpbWFnaW5nIHRoaW5ncy4gY2FsbF9pZGxlX2JhcnJp
ZXJzIGFuZAo+IGJhdGNoX3Bvb2wgYXJlIGluIGVuZ2luZV9wYXJrLCB0aW1lbGluZXNfcGFyayBp
cyBnb25lLCBhbmQgdm1hX3BhcmtlZCBpcwo+IG5vdyBhIHRpbWVyLgoKSSB3YXMgdGhpbmtpbmcg
YWJvdXQgc2xhYiBzaHJpbmtlcnMuIFRoZXkgZG8gc2VlbSB0byBiZSBjYWxsZWQgZnJvbSAKaTkx
NV9nbG9iYWxzX3Bhcmsgb3IgSSBhbSBzdGlsbCBpbWFnaW5pbmc/CgpSZWdhcmRzLAoKVHZydGtv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

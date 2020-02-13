Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1DE15CEC7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 00:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25606F89D;
	Thu, 13 Feb 2020 23:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA63B6F89C
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 23:49:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 15:49:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="238197101"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 13 Feb 2020 15:49:02 -0800
To: John Harrison <John.C.Harrison@Intel.com>, intel-gfx@lists.freedesktop.org
References: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
 <20200212003124.33844-10-daniele.ceraolospurio@intel.com>
 <856d97da-3f5c-f276-8ac0-3d84ee3f6d5c@Intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <73967e5f-4239-f7ae-e9c2-50df6cd7a90c@intel.com>
Date: Thu, 13 Feb 2020 15:48:51 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <856d97da-3f5c-f276-8ac0-3d84ee3f6d5c@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 09/10] drm/i915/uc: consolidate firmware
 cleanup
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

CgpPbiAyLzEzLzIwIDM6NDQgUE0sIEpvaG4gSGFycmlzb24gd3JvdGU6Cj4gT24gMi8xMS8yMDIw
IDE2OjMxLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+PiBXZSBhcmUgcXVpdGUgdHJp
Z2dlciBoYXBweSBpbiBjbGVhbmluZyB1cCB0aGUgZmlybXdhcmUgYmxvYnMsIGFzIHdlIGRvCj4+
IHNvIGZyb20gc2V2ZXJhbCBlcnJvci9maW5pIHBhdGhzIGluIEd1Qy9IdUMvdUMgY29kZS4gV2Ug
ZG8gaGF2ZSB0aGUKPj4gX191Y19jbGVhbnVwX2Zpcm13YXJlcyBjbGVhbnVwIGZ1bmN0aW9uLCB3
aGljaCB1bndpbmRzCj4+IF9fdWNfZmV0Y2hfZmlybXdhcmVzIGFuZCBpcyBhbHJlYWR5IGNhbGxl
ZCBib3RoIGZyb20gdGhlIGVycm9yIHBhdGggb2YKPj4gZ2VtX2luaXQgYW5kIGZyb20gZ2VtX2Ry
aXZlcl9yZWxlYXNlLCBzbyBsZXQncyBzdG9wIGNsZWFuaW5nIHVwIGZyb20KPj4gYWxsIHRoZSBv
dGhlciBwYXRocy4KPj4KPj4gVGhlIGZhY3QgdGhhdCB3ZSdyZSBub3QgY2xlYW5pbmcgdGhlIGZp
cm13YXJlIGltbWVkaWF0ZWx5IG1lYW5zIHRoYXQKPj4gd2UgY2FuJ3QgY29uc2lkZXIgZmlybXdh
cmUgYXZhaWxhYmlsaXR5IGFzIGFuIGluZGljYXRpb24gb2YKPj4gaW5pdGlhbGl6YXRpb24gc3Vj
Y2Vzcy4gQSAiUkVBRFlfVE9fTE9BRCIgc3RhdHVzIGhhcyBiZWVuIGFkZGVkIHRvCj4gSXMgaXQg
bm90IHdvcnRoIHVwZGF0aW5nIHRoZSBjb21taXQgbWVzc2FnZSB0byB1c2UgdGhlIG5hbWUgdGhh
dCBpcyAKPiBhY3R1YWxseSBpbiB0aGUgY29kZSBub3c/CgpEJ29oISBNaXNzZWQgdGhpcyBvbmUu
CgpEYW5pZWxlCgo+IAo+IE90aGVyd2lzZToKPiBSZXZpZXdlZC1ieTogSm9obiBIYXJyaXNvbiA8
Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPiAKPj4gaW5kaWNhdGUgdGhhdCB0aGUgaW5pdGlh
bGl6YXRpb24gd2FzIHN1Y2Nlc3NmdWwsIHRvIGJlIHVzZWQgdG8KPj4gc2VsZWN0aXZlbHkgbG9h
ZCBIdUMgb25seSBpZiBIdUMgaW5pdCBoYXMgY29tcGxldGVkIChIdUMgaW5pdCBmYWlsdXJlCj4+
IGlzIG5vdCBjb25zaWRlcmVkIGEgZmF0YWwgZXJyb3IpLgo+Pgo+PiB2Mjogcy9yZWFkeV90b19s
b2FkL2xvYWRhYmxlIChNaWNoYWwpLCBvbmx5IHJ1biBndWMvaHVjX2ZpbmkgaWYgdGhlCj4+IMKg
wqDCoMKgIGZ3IGlzIGluIGxvYWRhYmxlIHN0YXRlCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gQ2M6IE1pY2hhbCBX
YWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+PiBSZXZpZXdlZC1ieTogTWlj
aGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+ICN2MQo+PiAtLS0KPj4g
wqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmPCoMKgIHwgMTIgKysrKyst
LS0tLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jwqDCoCB8
wqAgNSArKystLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jwqDC
oMKgIHzCoCAyICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmMgfMKgIDcgKysrKystLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5oIHwgMTggKysrKysrKysrKysrKysrLS0tCj4+IMKgIDUgZmlsZXMgY2hhbmdlZCwgMjkg
aW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4+Cj4gCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

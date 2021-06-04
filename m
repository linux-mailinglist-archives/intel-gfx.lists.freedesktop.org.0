Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A09AC39C061
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 21:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1547C6F8CA;
	Fri,  4 Jun 2021 19:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841406F8C8;
 Fri,  4 Jun 2021 19:21:52 +0000 (UTC)
IronPort-SDR: hvswLfiuobVtOVy3L4JjNXQVlT5z2NHUc+ki71QugTyQNMSkj2IBZgpFtHALbXvoM0U/Pi1JlO
 36JLK+xbsinA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="184724351"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="184724351"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 12:21:52 -0700
IronPort-SDR: 16QQ8wudH96jK4ZwwCtg8GyfBOPwoSbVP/1yEi2RMhaaL5ZodLXW/IL1QsL/bW+Zh1AhmI3apP
 4xD8ec//KhWg==
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="636657865"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 12:21:51 -0700
Date: Fri, 4 Jun 2021 12:14:53 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <20210604191453.GB30465@sdutt-i7>
References: <20210603212722.59719-1-matthew.brost@intel.com>
 <20210603212722.59719-8-matthew.brost@intel.com>
 <CAOFGe966f+M+RECs-v-eVa9PWqCJcY0H2O-3d8hB3_Y0e47LdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe966f+M+RECs-v-eVa9PWqCJcY0H2O-3d8hB3_Y0e47LdQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Update i915_scheduler to
 operate on i915_sched_engine
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMDQsIDIwMjEgYXQgMDI6MTc6NThQTSAtMDUwMCwgSmFzb24gRWtzdHJhbmQg
d3JvdGU6Cj4gT24gVGh1LCBKdW4gMywgMjAyMSBhdCA0OjA5IFBNIE1hdHRoZXcgQnJvc3QgPG1h
dHRoZXcuYnJvc3RAaW50ZWwuY29tPiB3cm90ZToKPiA+Cj4gPiBSYXRoZXIgcGFzc2luZyBhcm91
bmQgYW4gaW50ZWxfZW5naW5lX2NzIGluIHRoZSBzY2hlZHVsaW5nIGNvZGUsIHBhc3MKPiA+IGFy
b3VuZCBhIGk5MTVfc2NoZWRfZW5naW5lLgo+IAo+IPCfkY0KPiAKPiA+IFNpZ25lZC1vZmYtYnk6
IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgLi4u
L2RybS9pOTE1L2d0L2ludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uLmMgIHwgMTEgKysrLS0KPiA+
ICAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgfCAgMiArLQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgICAgICAgICB8IDQ2ICsr
KysrKysrKy0tLS0tLS0tLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxl
ci5oICAgICAgICAgfCAgMiArLQo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygr
KSwgMjkgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbi5jCj4gPiBpbmRleCAzZmFjMTcxMDM4Mzcu
LjcyNDBjMTUzYmUzNSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uLmMKPiA+IEBAIC0zODIsNyArMzgyLDggQEAg
X191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCj4gPiAgICAgICAgICAgICAgICAgR0VNX0JVR19PTihycV9wcmlvKHJxKSA9PSBJOTE1X1BS
SU9SSVRZX0lOVkFMSUQpOwo+ID4gICAgICAgICAgICAgICAgIGlmIChycV9wcmlvKHJxKSAhPSBw
cmlvKSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBwcmlvID0gcnFfcHJpbyhycSk7Cj4g
PiAtICAgICAgICAgICAgICAgICAgICAgICBwbCA9IGk5MTVfc2NoZWRfbG9va3VwX3ByaW9saXN0
KGVuZ2luZSwgcHJpbyk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBwbCA9IGk5MTVfc2No
ZWRfbG9va3VwX3ByaW9saXN0KGVuZ2luZS0+c2NoZWRfZW5naW5lLAo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcmlvKTsKPiA+ICAg
ICAgICAgICAgICAgICB9Cj4gPiAgICAgICAgICAgICAgICAgR0VNX0JVR19PTihpOTE1X3NjaGVk
X2VuZ2luZV9pc19lbXB0eShlbmdpbmUtPnNjaGVkX2VuZ2luZSkpOwo+ID4KPiA+IEBAIC0xMDk2
LDcgKzEwOTcsOCBAQCBzdGF0aWMgdm9pZCBkZWZlcl9hY3RpdmUoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQo+ID4gICAgICAgICBpZiAoIXJxKQo+ID4gICAgICAgICAgICAgICAgIHJl
dHVybjsKPiA+Cj4gPiAtICAgICAgIGRlZmVyX3JlcXVlc3QocnEsIGk5MTVfc2NoZWRfbG9va3Vw
X3ByaW9saXN0KGVuZ2luZSwgcnFfcHJpbyhycSkpKTsKPiA+ICsgICAgICAgZGVmZXJfcmVxdWVz
dChycSwgaTkxNV9zY2hlZF9sb29rdXBfcHJpb2xpc3QoZW5naW5lLT5zY2hlZF9lbmdpbmUsCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJx
X3ByaW8ocnEpKSk7Cj4gPiAgfQo+ID4KPiA+ICBzdGF0aWMgYm9vbAo+ID4gQEAgLTIwODMsNyAr
MjA4NSw3IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3VuaG9sZChzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKPiA+Cj4gPiAgICAgICAgICAgICAgICAgaTkxNV9yZXF1ZXN0X2NsZWFyX2hvbGQo
cnEpOwo+ID4gICAgICAgICAgICAgICAgIGxpc3RfbW92ZV90YWlsKCZycS0+c2NoZWQubGluaywK
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpOTE1X3NjaGVkX2xvb2t1cF9wcmlv
bGlzdChycS0+ZW5naW5lLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVf
c2NoZWRfbG9va3VwX3ByaW9saXN0KHJxLT5lbmdpbmUtPnNjaGVkX2VuZ2luZSwKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBycV9w
cmlvKHJxKSkpOwo+ID4gICAgICAgICAgICAgICAgIHNldF9iaXQoSTkxNV9GRU5DRV9GTEFHX1BR
VUVVRSwgJnJxLT5mZW5jZS5mbGFncyk7Cj4gPgo+ID4gQEAgLTI0NTIsNyArMjQ1NCw4IEBAIHN0
YXRpYyB2b2lkIHF1ZXVlX3JlcXVlc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+
ID4gIHsKPiA+ICAgICAgICAgR0VNX0JVR19PTighbGlzdF9lbXB0eSgmcnEtPnNjaGVkLmxpbmsp
KTsKPiA+ICAgICAgICAgbGlzdF9hZGRfdGFpbCgmcnEtPnNjaGVkLmxpbmssCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgaTkxNV9zY2hlZF9sb29rdXBfcHJpb2xpc3QoZW5naW5lLCBycV9wcmlv
KHJxKSkpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGk5MTVfc2NoZWRfbG9va3VwX3ByaW9s
aXN0KGVuZ2luZS0+c2NoZWRfZW5naW5lLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJxX3ByaW8ocnEpKSk7Cj4gPiAgICAgICAgIHNldF9iaXQo
STkxNV9GRU5DRV9GTEFHX1BRVUVVRSwgJnJxLT5mZW5jZS5mbGFncyk7Cj4gPiAgfQo+ID4KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlz
c2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24u
Ywo+ID4gaW5kZXggNGM1YmJlYzA3NzVkLi43ZWQyMTY3MGVmMTQgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCj4gPiBA
QCAtNTI5LDcgKzUyOSw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBxdWV1ZV9yZXF1ZXN0KHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+ICB7Cj4gPiAgICAgICAgIEdFTV9CVUdfT04o
IWxpc3RfZW1wdHkoJnJxLT5zY2hlZC5saW5rKSk7Cj4gPiAgICAgICAgIGxpc3RfYWRkX3RhaWwo
JnJxLT5zY2hlZC5saW5rLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGk5MTVfc2NoZWRfbG9v
a3VwX3ByaW9saXN0KGVuZ2luZSwgcHJpbykpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGk5
MTVfc2NoZWRfbG9va3VwX3ByaW9saXN0KGVuZ2luZS0+c2NoZWRfZW5naW5lLCBwcmlvKSk7Cj4g
PiAgICAgICAgIHNldF9iaXQoSTkxNV9GRU5DRV9GTEFHX1BRVUVVRSwgJnJxLT5mZW5jZS5mbGFn
cyk7Cj4gPiAgfQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwo+ID4g
aW5kZXggMDM1Yjg4ZjJlNGFhLi4zZDM2ZTQ0NDdiNWQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3NjaGVkdWxlci5jCj4gPiBAQCAtNjEsMTQgKzYxLDEzIEBAIHN0YXRpYyB2b2lk
IGFzc2VydF9wcmlvbGlzdHMoc3RydWN0IGk5MTVfc2NoZWRfZW5naW5lICogY29uc3Qgc2NoZWRf
ZW5naW5lKQo+ID4gIH0KPiA+Cj4gPiAgc3RydWN0IGxpc3RfaGVhZCAqCj4gPiAtaTkxNV9zY2hl
ZF9sb29rdXBfcHJpb2xpc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBpbnQgcHJp
bykKPiA+ICtpOTE1X3NjaGVkX2xvb2t1cF9wcmlvbGlzdChzdHJ1Y3QgaTkxNV9zY2hlZF9lbmdp
bmUgKnNjaGVkX2VuZ2luZSwgaW50IHByaW8pCj4gPiAgewo+ID4gLSAgICAgICBzdHJ1Y3QgaTkx
NV9zY2hlZF9lbmdpbmUgKiBjb25zdCBzY2hlZF9lbmdpbmUgPSBlbmdpbmUtPnNjaGVkX2VuZ2lu
ZTsKPiA+ICAgICAgICAgc3RydWN0IGk5MTVfcHJpb2xpc3QgKnA7Cj4gPiAgICAgICAgIHN0cnVj
dCByYl9ub2RlICoqcGFyZW50LCAqcmI7Cj4gPiAgICAgICAgIGJvb2wgZmlyc3QgPSB0cnVlOwo+
ID4KPiA+IC0gICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZCgmZW5naW5lLT5zY2hlZF9lbmdpbmUt
PmxvY2spOwo+ID4gKyAgICAgICBsb2NrZGVwX2Fzc2VydF9oZWxkKCZzY2hlZF9lbmdpbmUtPmxv
Y2spOwo+ID4gICAgICAgICBhc3NlcnRfcHJpb2xpc3RzKHNjaGVkX2VuZ2luZSk7Cj4gPgo+ID4g
ICAgICAgICBpZiAodW5saWtlbHkoc2NoZWRfZW5naW5lLT5ub19wcmlvbGlzdCkpCj4gPiBAQCAt
MTMwLDEzICsxMjksMTMgQEAgc3RydWN0IHNjaGVkX2NhY2hlIHsKPiA+ICAgICAgICAgc3RydWN0
IGxpc3RfaGVhZCAqcHJpb2xpc3Q7Cj4gPiAgfTsKPiA+Cj4gPiAtc3RhdGljIHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKgo+ID4gLXNjaGVkX2xvY2tfZW5naW5lKGNvbnN0IHN0cnVjdCBpOTE1X3Nj
aGVkX25vZGUgKm5vZGUsCj4gPiAtICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICpsb2NrZWQsCj4gPiArc3RhdGljIHN0cnVjdCBpOTE1X3NjaGVkX2VuZ2luZSAqCj4gPiAr
bG9ja19zY2hlZF9lbmdpbmUoc3RydWN0IGk5MTVfc2NoZWRfbm9kZSAqbm9kZSwKPiA+ICsgICAg
ICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3NjaGVkX2VuZ2luZSAqbG9ja2VkLAo+ID4gICAgICAg
ICAgICAgICAgICAgc3RydWN0IHNjaGVkX2NhY2hlICpjYWNoZSkKPiA+ICB7Cj4gPiAgICAgICAg
IGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxID0gbm9kZV90b19yZXF1ZXN0KG5vZGUpOwo+
ID4gLSAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Cj4gPiArICAgICAgIHN0
cnVjdCBpOTE1X3NjaGVkX2VuZ2luZSAqc2NoZWRfZW5naW5lOwo+ID4KPiA+ICAgICAgICAgR0VN
X0JVR19PTighbG9ja2VkKTsKPiA+Cj4gPiBAQCAtMTQ2LDE0ICsxNDUsMTQgQEAgc2NoZWRfbG9j
a19lbmdpbmUoY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfbm9kZSAqbm9kZSwKPiA+ICAgICAgICAg
ICogZW5naW5lIGxvY2suIFRoZSBzaW1wbGUgcGxveSB3ZSB1c2UgaXMgdG8gdGFrZSB0aGUgbG9j
ayB0aGVuCj4gPiAgICAgICAgICAqIGNoZWNrIHRoYXQgdGhlIHJxIHN0aWxsIGJlbG9uZ3MgdG8g
dGhlIG5ld2x5IGxvY2tlZCBlbmdpbmUuCj4gPiAgICAgICAgICAqLwo+ID4gLSAgICAgICB3aGls
ZSAobG9ja2VkICE9IChlbmdpbmUgPSBSRUFEX09OQ0UocnEtPmVuZ2luZSkpKSB7Cj4gPiAtICAg
ICAgICAgICAgICAgc3Bpbl91bmxvY2soJmxvY2tlZC0+c2NoZWRfZW5naW5lLT5sb2NrKTsKPiA+
ICsgICAgICAgd2hpbGUgKGxvY2tlZCAhPSAoc2NoZWRfZW5naW5lID0gcnEtPmVuZ2luZS0+c2No
ZWRfZW5naW5lKSkgewo+IAo+IFlvdSBsb3N0IHRoZSBSRUFEX09OQ0UgaGVyZS4gIEJhc2VkIG9u
IHRoZSBjb21tZW50IGFib3ZlLCB0aGF0IG1heQo+IG1hdHRlci4gIEkgZ3Vlc3MgaXQgZGVwZW5k
cyBvbiB3aGF0IGFsbCBiYXJyaWVycyBzcGluX2xvY2soKSBpbXBsaWVzLgo+IAoKQWgsIGdvb2Qg
Y2F0Y2guIEkgdGhpbmsgaXQgc2hvdWxkIGJlOgoKUkVBRF9PTkNFKHJxLT5lbmdpbmUpLT5zY2hl
ZF9lbmdpbmUKCkFzIHRoZSBycS0+ZW5naW5lIGlzIHRoZSB1bnN0YWJsZSBwb2ludGVyLgoKTWF0
dAoKPiBBc3N1bWluZyB0aGF0J3MgYWxsIGdvb2QsCj4gCj4gUmV2aWV3ZWQtYnk6IEphc29uIEVr
c3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KPiAKPiA+ICsgICAgICAgICAgICAgICBzcGlu
X3VubG9jaygmbG9ja2VkLT5sb2NrKTsKPiA+ICAgICAgICAgICAgICAgICBtZW1zZXQoY2FjaGUs
IDAsIHNpemVvZigqY2FjaGUpKTsKPiA+IC0gICAgICAgICAgICAgICBzcGluX2xvY2soJmVuZ2lu
ZS0+c2NoZWRfZW5naW5lLT5sb2NrKTsKPiA+IC0gICAgICAgICAgICAgICBsb2NrZWQgPSBlbmdp
bmU7Cj4gPiArICAgICAgICAgICAgICAgc3Bpbl9sb2NrKCZzY2hlZF9lbmdpbmUtPmxvY2spOwo+
ID4gKyAgICAgICAgICAgICAgIGxvY2tlZCA9IHNjaGVkX2VuZ2luZTsKPiA+ICAgICAgICAgfQo+
ID4KPiA+IC0gICAgICAgR0VNX0JVR19PTihsb2NrZWQgIT0gZW5naW5lKTsKPiA+ICsgICAgICAg
R0VNX0JVR19PTihsb2NrZWQgIT0gc2NoZWRfZW5naW5lKTsKPiA+ICAgICAgICAgcmV0dXJuIGxv
Y2tlZDsKPiA+ICB9Cj4gPgo+ID4gQEAgLTE2MSw3ICsxNjAsNyBAQCBzdGF0aWMgdm9pZCBfX2k5
MTVfc2NoZWR1bGUoc3RydWN0IGk5MTVfc2NoZWRfbm9kZSAqbm9kZSwKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyICphdHRyKQo+ID4g
IHsKPiA+ICAgICAgICAgY29uc3QgaW50IHByaW8gPSBtYXgoYXR0ci0+cHJpb3JpdHksIG5vZGUt
PmF0dHIucHJpb3JpdHkpOwo+ID4gLSAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmU7Cj4gPiArICAgICAgIHN0cnVjdCBpOTE1X3NjaGVkX2VuZ2luZSAqc2NoZWRfZW5naW5lOwo+
ID4gICAgICAgICBzdHJ1Y3QgaTkxNV9kZXBlbmRlbmN5ICpkZXAsICpwOwo+ID4gICAgICAgICBz
dHJ1Y3QgaTkxNV9kZXBlbmRlbmN5IHN0YWNrOwo+ID4gICAgICAgICBzdHJ1Y3Qgc2NoZWRfY2Fj
aGUgY2FjaGU7Cj4gPiBAQCAtMjM2LDIzICsyMzUsMjQgQEAgc3RhdGljIHZvaWQgX19pOTE1X3Nj
aGVkdWxlKHN0cnVjdCBpOTE1X3NjaGVkX25vZGUgKm5vZGUsCj4gPiAgICAgICAgIH0KPiA+Cj4g
PiAgICAgICAgIG1lbXNldCgmY2FjaGUsIDAsIHNpemVvZihjYWNoZSkpOwo+ID4gLSAgICAgICBl
bmdpbmUgPSBub2RlX3RvX3JlcXVlc3Qobm9kZSktPmVuZ2luZTsKPiA+IC0gICAgICAgc3Bpbl9s
b2NrKCZlbmdpbmUtPnNjaGVkX2VuZ2luZS0+bG9jayk7Cj4gPiArICAgICAgIHNjaGVkX2VuZ2lu
ZSA9IG5vZGVfdG9fcmVxdWVzdChub2RlKS0+ZW5naW5lLT5zY2hlZF9lbmdpbmU7Cj4gPiArICAg
ICAgIHNwaW5fbG9jaygmc2NoZWRfZW5naW5lLT5sb2NrKTsKPiA+Cj4gPiAgICAgICAgIC8qIEZp
Zm8gYW5kIGRlcHRoLWZpcnN0IHJlcGxhY2VtZW50IGVuc3VyZSBvdXIgZGVwcyBleGVjdXRlIGJl
Zm9yZSB1cyAqLwo+ID4gLSAgICAgICBlbmdpbmUgPSBzY2hlZF9sb2NrX2VuZ2luZShub2RlLCBl
bmdpbmUsICZjYWNoZSk7Cj4gPiArICAgICAgIHNjaGVkX2VuZ2luZSA9IGxvY2tfc2NoZWRfZW5n
aW5lKG5vZGUsIHNjaGVkX2VuZ2luZSwgJmNhY2hlKTsKPiA+ICAgICAgICAgbGlzdF9mb3JfZWFj
aF9lbnRyeV9zYWZlX3JldmVyc2UoZGVwLCBwLCAmZGZzLCBkZnNfbGluaykgewo+ID4gICAgICAg
ICAgICAgICAgIElOSVRfTElTVF9IRUFEKCZkZXAtPmRmc19saW5rKTsKPiA+Cj4gPiAgICAgICAg
ICAgICAgICAgbm9kZSA9IGRlcC0+c2lnbmFsZXI7Cj4gPiAtICAgICAgICAgICAgICAgZW5naW5l
ID0gc2NoZWRfbG9ja19lbmdpbmUobm9kZSwgZW5naW5lLCAmY2FjaGUpOwo+ID4gLSAgICAgICAg
ICAgICAgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJmVuZ2luZS0+c2NoZWRfZW5naW5lLT5sb2NrKTsK
PiA+ICsgICAgICAgICAgICAgICBzY2hlZF9lbmdpbmUgPSBsb2NrX3NjaGVkX2VuZ2luZShub2Rl
LCBzY2hlZF9lbmdpbmUsICZjYWNoZSk7Cj4gPiArICAgICAgICAgICAgICAgbG9ja2RlcF9hc3Nl
cnRfaGVsZCgmc2NoZWRfZW5naW5lLT5sb2NrKTsKPiA+Cj4gPiAgICAgICAgICAgICAgICAgLyog
UmVjaGVjayBhZnRlciBhY3F1aXJpbmcgdGhlIGVuZ2luZS0+dGltZWxpbmUubG9jayAqLwo+ID4g
ICAgICAgICAgICAgICAgIGlmIChwcmlvIDw9IG5vZGUtPmF0dHIucHJpb3JpdHkgfHwgbm9kZV9z
aWduYWxlZChub2RlKSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4K
PiA+IC0gICAgICAgICAgICAgICBHRU1fQlVHX09OKG5vZGVfdG9fcmVxdWVzdChub2RlKS0+ZW5n
aW5lICE9IGVuZ2luZSk7Cj4gPiArICAgICAgICAgICAgICAgR0VNX0JVR19PTihub2RlX3RvX3Jl
cXVlc3Qobm9kZSktPmVuZ2luZS0+c2NoZWRfZW5naW5lICE9Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICBzY2hlZF9lbmdpbmUpOwo+ID4KPiA+ICAgICAgICAgICAgICAgICBXUklURV9P
TkNFKG5vZGUtPmF0dHIucHJpb3JpdHksIHByaW8pOwo+ID4KPiA+IEBAIC0yNzAsMTcgKzI3MCwx
NyBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfc2NoZWR1bGUoc3RydWN0IGk5MTVfc2NoZWRfbm9kZSAq
bm9kZSwKPiA+ICAgICAgICAgICAgICAgICBpZiAoaTkxNV9yZXF1ZXN0X2luX3ByaW9yaXR5X3F1
ZXVlKG5vZGVfdG9fcmVxdWVzdChub2RlKSkpIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
IGlmICghY2FjaGUucHJpb2xpc3QpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGNhY2hlLnByaW9saXN0ID0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpOTE1X3NjaGVkX2xvb2t1cF9wcmlvbGlzdChlbmdpbmUsCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9zY2hlZF9sb29rdXBfcHJpb2xpc3Qoc2No
ZWRfZW5naW5lLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHByaW8pOwo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgbGlzdF9tb3ZlX3RhaWwoJm5vZGUtPmxpbmssIGNhY2hlLnByaW9saXN0KTsKPiA+ICAgICAg
ICAgICAgICAgICB9Cj4gPgo+ID4gICAgICAgICAgICAgICAgIC8qIERlZmVyICh0YXNrbGV0KSBz
dWJtaXNzaW9uIHVudGlsIGFmdGVyIGFsbCBvZiBvdXIgdXBkYXRlcy4gKi8KPiA+IC0gICAgICAg
ICAgICAgICBpZiAoZW5naW5lLT5zY2hlZF9lbmdpbmUtPmtpY2tfYmFja2VuZCkKPiA+IC0gICAg
ICAgICAgICAgICAgICAgICAgIGVuZ2luZS0+c2NoZWRfZW5naW5lLT5raWNrX2JhY2tlbmQobm9k
ZV90b19yZXF1ZXN0KG5vZGUpLCBwcmlvKTsKPiA+ICsgICAgICAgICAgICAgICBpZiAoc2NoZWRf
ZW5naW5lLT5raWNrX2JhY2tlbmQpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBzY2hlZF9l
bmdpbmUtPmtpY2tfYmFja2VuZChub2RlX3RvX3JlcXVlc3Qobm9kZSksIHByaW8pOwo+ID4gICAg
ICAgICB9Cj4gPgo+ID4gLSAgICAgICBzcGluX3VubG9jaygmZW5naW5lLT5zY2hlZF9lbmdpbmUt
PmxvY2spOwo+ID4gKyAgICAgICBzcGluX3VubG9jaygmc2NoZWRfZW5naW5lLT5sb2NrKTsKPiA+
ICB9Cj4gPgo+ID4gIHZvaWQgaTkxNV9zY2hlZHVsZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwg
Y29uc3Qgc3RydWN0IGk5MTVfc2NoZWRfYXR0ciAqYXR0cikKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zY2hlZHVsZXIuaAo+ID4gaW5kZXggNzEzYzM4Yzk5ZGU5Li4wMDE0NzQ1YmRhMzAgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5oCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5oCj4gPiBAQCAtMzksNyAr
MzksNyBAQCB2b2lkIGk5MTVfc2NoZWR1bGUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwK
PiA+ICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyICphdHRy
KTsKPiA+Cj4gPiAgc3RydWN0IGxpc3RfaGVhZCAqCj4gPiAtaTkxNV9zY2hlZF9sb29rdXBfcHJp
b2xpc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBpbnQgcHJpbyk7Cj4gPiAraTkx
NV9zY2hlZF9sb29rdXBfcHJpb2xpc3Qoc3RydWN0IGk5MTVfc2NoZWRfZW5naW5lICpzY2hlZF9l
bmdpbmUsIGludCBwcmlvKTsKPiA+Cj4gPiAgdm9pZCBfX2k5MTVfcHJpb2xpc3RfZnJlZShzdHJ1
Y3QgaTkxNV9wcmlvbGlzdCAqcCk7Cj4gPiAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfcHJpb2xp
c3RfZnJlZShzdHJ1Y3QgaTkxNV9wcmlvbGlzdCAqcCkKPiA+IC0tCj4gPiAyLjI4LjAKPiA+Cj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

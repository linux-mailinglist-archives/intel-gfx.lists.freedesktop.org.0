Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DCA8338B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 16:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF546E3A0;
	Tue,  6 Aug 2019 14:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB09F6E3A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 14:06:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 07:06:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="174188942"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 06 Aug 2019 07:06:44 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A03695C1E4B; Tue,  6 Aug 2019 17:06:09 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190805231723.21060-2-daniele.ceraolospurio@intel.com>
References: <20190805231723.21060-1-daniele.ceraolospurio@intel.com>
 <20190805231723.21060-2-daniele.ceraolospurio@intel.com>
Date: Tue, 06 Aug 2019 17:06:09 +0300
Message-ID: <877e7qie26.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Gen12 csb support
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4g
d3JpdGVzOgoKPiBUaGUgQ1NCIGZvcm1hdCBoYXMgYmVlbiByZXdvcmtlZCBmb3IgR2VuMTIgdG8g
aW5jbHVkZSBpbmZvcm1hdGlvbiBvbgo+IGJvdGggdGhlIGNvbnRleHQgd2UncmUgc3dpdGNoaW5n
IGF3YXkgZnJvbSBhbmQgdGhlIGNvbnRleHQgd2UncmUKPiBzd2l0Y2hpbmcgdG8uIEFmdGVyIHRo
ZSBjaGFuZ2UsIHNvbWUgb2YgdGhlIGV2ZW50cyBkb24ndCBoYXZlIHRoZWlyCj4gb3duIGJpdCBh
bnltb3JlIGFuZCBuZWVkIHRvIGJlIGluZmVycmVkIGZyb20gb3RoZXIgdmFsdWVzIGluIHRoZSBj
c2IuCj4gT25lIG9mIHRoZSBjb250ZXh0IElEcyAoMHg3RkYpIGhhcyBhbHNvIGJlZW4gcmVzZXJ2
ZWQgdG8gaW5kaWNhdGUKPiB0aGUgaW52YWxpZCBjdHgsIGkuZS4gZW5naW5lIGlkbGUuCj4KPiBO
b3RlIHRoYXQgdGhlIGZ1bGwgY29udGV4dCBJRCBpbmNsdWRlcyB0aGUgU1cgY291bnRlciBhcyB3
ZWxsLCBidXQgc2luY2UKPiB3ZSBjdXJyZW50bHkgb25seSBjYXJlIGlmIHRoZSBjb250ZXh0IGlz
IHZhbGlkIG9yIG5vdCB3ZSBjYW4gaWdub3JlIHRoYXQKPiBwYXJ0Lgo+Cj4gdjI6IGZpeCBtYXNr
IHNpemUsIGZpeCBhbmQgZXhwYW5kIGNvbW1lbnRzIChUdnJ0a28pLAo+ICAgICB1c2UgaWYtbGFk
ZGVyIChDaHJpcykKPgo+IEJzcGVjOiA0NTU1NSwgNDYxNDQKPiBTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDc4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggNDhiNzExNDA5NGYxLi42Y2Q3NTZi
MTUwOTggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0xNjMsNiAr
MTYzLDEzIEBACj4gIAo+ICAjZGVmaW5lIENUWF9ERVNDX0ZPUkNFX1JFU1RPUkUgQklUX1VMTCgy
KQo+ICAKPiArI2RlZmluZSBHRU4xMl9DVFhfU1RBVFVTX1NXSVRDSEVEX1RPX05FV19RVUVVRQko
MHgxKSAvKiBsb3dlciBjc2IgZHdvcmQgKi8KPiArI2RlZmluZSBHRU4xMl9DVFhfU1dJVENIX0RF
VEFJTChjc2JfZHcpCSgoY3NiX2R3KSAmIDB4RikgLyogdXBwZXIgY3NiIGR3b3JkICovCj4gKyNk
ZWZpbmUgR0VOMTJfQ1NCX1NXX0NUWF9JRF9NQVNLCQlHRU5NQVNLKDI1LCAxNSkKPiArI2RlZmlu
ZSBHRU4xMl9JRExFX0NUWF9JRAkJMHg3RkYKCldpdGhvdXQgbG9va2luZyBhdCBic3BlYyBmaXJz
dCBJIHRob3VnaHQgRklFTERfR0VUKEdFTjEyX0NTQl9TV19DVFhfSURfTUFTSywgfjApCndvdWxk
IGVtcGhhc2l6ZSB0aGUgbWFzayBzaXplLiBCdXQgYXMgYnNwZWMgdXNlcyAweDdGRiBpdCBpcyB3
ZWxsIHN1aXRlZAppbiBoZXJlIHRvby4KCj4gKyNkZWZpbmUgR0VOMTJfQ1NCX0NUWF9WQUxJRChj
c2JfZHcpIFwKPiArCShGSUVMRF9HRVQoR0VOMTJfQ1NCX1NXX0NUWF9JRF9NQVNLLCBjc2JfZHcp
ICE9IEdFTjEyX0lETEVfQ1RYX0lEKQo+ICsKPiAgLyogVHlwaWNhbCBzaXplIG9mIHRoZSBhdmVy
YWdlIHJlcXVlc3QgKDIgcGlwZWNvbnRyb2xzIGFuZCBhIE1JX0JCKSAqLwo+ICAjZGVmaW5lIEVY
RUNMSVNUU19SRVFVRVNUX1NJWkUgNjQgLyogYnl0ZXMgKi8KPiAgI2RlZmluZSBXQV9UQUlMX0RX
T1JEUyAyCj4gQEAgLTEzMjYsNiArMTMzMyw2OSBAQCBlbnVtIGNzYl9zdGVwIHsKPiAgCUNTQl9D
T01QTEVURSwKPiAgfTsKPiAgCj4gKy8qCj4gKyAqIFN0YXJ0aW5nIHdpdGggR2VuMTIsIHRoZSBz
dGF0dXMgaGFzIGEgbmV3IGZvcm1hdDoKPiArICoKPiArICogICAgIGJpdCAgMDogICAgIHN3aXRj
aGVkIHRvIG5ldyBxdWV1ZQo+ICsgKiAgICAgYml0ICAxOiAgICAgcmVzZXJ2ZWQKPiArICogICAg
IGJpdCAgMjogICAgIHNlbWFwaG9yZSB3YWl0IG1vZGUgKHBvbGwgb3Igc2lnbmFsKSwgb25seSB2
YWxpZCB3aGVuCj4gKyAqICAgICAgICAgICAgICAgICBzd2l0Y2ggZGV0YWlsIGlzIHNldCB0byAi
d2FpdCBvbiBzZW1hcGhvcmUiCj4gKyAqICAgICBiaXRzIDMtNTogICBlbmdpbmUgY2xhc3MKPiAr
ICogICAgIGJpdHMgNi0xMTogIGVuZ2luZSBpbnN0YW5jZQo+ICsgKiAgICAgYml0cyAxMi0xNDog
cmVzZXJ2ZWQKPiArICogICAgIGJpdHMgMTUtMjU6IHN3IGNvbnRleHQgaWQgb2YgdGhlIGxyYyB0
aGUgR1Qgc3dpdGNoZWQgdG8KPiArICogICAgIGJpdHMgMjYtMzE6IHN3IGNvdW50ZXIgb2YgdGhl
IGxyYyB0aGUgR1Qgc3dpdGNoZWQgdG8KPiArICogICAgIGJpdHMgMzItMzU6IGNvbnRleHQgc3dp
dGNoIGRldGFpbAo+ICsgKiAgICAgICAgICAgICAgICAgIC0gMDogY3R4IGNvbXBsZXRlCj4gKyAq
ICAgICAgICAgICAgICAgICAgLSAxOiB3YWl0IG9uIHN5bmMgZmxpcAo+ICsgKiAgICAgICAgICAg
ICAgICAgIC0gMjogd2FpdCBvbiB2YmxhbmsKPiArICogICAgICAgICAgICAgICAgICAtIDM6IHdh
aXQgb24gc2NhbmxpbmUKPiArICogICAgICAgICAgICAgICAgICAtIDQ6IHdhaXQgb24gc2VtYXBo
b3JlCj4gKyAqICAgICAgICAgICAgICAgICAgLSA1OiBjb250ZXh0IHByZWVtcHRlZCAobm90IG9u
IFNFTUFQSE9SRV9XQUlUIG9yCj4gKyAqICAgICAgICAgICAgICAgICAgICAgICBXQUlUX0ZPUl9F
VkVOVCkKPiArICogICAgIGJpdCAgMzY6ICAgIHJlc2VydmVkCj4gKyAqICAgICBiaXRzIDM3LTQz
OiB3YWl0IGRldGFpbCAoZm9yIHN3aXRjaCBkZXRhaWwgMSB0byA0KQo+ICsgKiAgICAgYml0cyA0
NC00NjogcmVzZXJ2ZWQKPiArICogICAgIGJpdHMgNDctNTc6IHN3IGNvbnRleHQgaWQgb2YgdGhl
IGxyYyB0aGUgR1Qgc3dpdGNoZWQgYXdheSBmcm9tCj4gKyAqICAgICBiaXRzIDU4LTYzOiBzdyBj
b3VudGVyIG9mIHRoZSBscmMgdGhlIEdUIHN3aXRjaGVkIGF3YXkgZnJvbQo+ICsgKi8KPiArc3Rh
dGljIGlubGluZSBlbnVtIGNzYl9zdGVwCj4gK2dlbjEyX2NzYl9wYXJzZShjb25zdCBzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzLCBjb25zdCB1MzIgKmNzYikKPiArewo+
ICsJdTMyIGxvd2VyX2R3ID0gY3NiWzBdOwo+ICsJdTMyIHVwcGVyX2R3ID0gY3NiWzFdOwo+ICsJ
Ym9vbCBjdHhfdG9fdmFsaWQgPSBHRU4xMl9DU0JfQ1RYX1ZBTElEKGxvd2VyX2R3KTsKPiArCWJv
b2wgY3R4X2F3YXlfdmFsaWQgPSBHRU4xMl9DU0JfQ1RYX1ZBTElEKHVwcGVyX2R3KTsKPiArCWJv
b2wgbmV3X3F1ZXVlID0gbG93ZXJfZHcgJiBHRU4xMl9DVFhfU1RBVFVTX1NXSVRDSEVEX1RPX05F
V19RVUVVRTsKPiArCgpGb3IgYSBsb25nZXIgbW9yZSBjb21wbGV4IGZ1bmN0aW9uLCB0aGUgYWJv
dmUgY291bGQgYmUgY29uc3RzIHRvCnJlbGlldmUgdGhlIHJlYWRlcnMgYnVyZGVuLiBJbiBoZXJl
LCB0ZXJzZSBpcyBhcyBnb29kLgoKPiArCWlmICghY3R4X2F3YXlfdmFsaWQgJiYgY3R4X3RvX3Zh
bGlkKQo+ICsJCXJldHVybiBDU0JfUFJPTU9URTsKPiArCj4gKwkvKgo+ICsJICogVGhlIGNvbnRl
eHQgc3dpdGNoIGRldGFpbCBpcyBub3QgZ3VhcmFudGVlZCB0byBiZSA1IHdoZW4gYSBwcmVlbXB0
aW9uCj4gKwkgKiBvY2N1cnMsIHNvIHdlIGNhbid0IGp1c3QgY2hlY2sgZm9yIHRoYXQuIFRoZSBj
aGVjayBiZWxvdyB3b3JrcyBmb3IKPiArCSAqIGFsbCB0aGUgY2FzZXMgd2UgY2FyZSBhYm91dCwg
aW5jbHVkaW5nIHByZWVtcHRpb25zIG9mIFdBSVQKPiArCSAqIGluc3RydWN0aW9ucyBhbmQgbGl0
ZS1yZXN0b3JlLiBQcmVlbXB0LXRvLWlkbGUgdmlhIHRoZSBDVFJMIHJlZ2lzdGVyCj4gKwkgKiB3
b3VsZCByZXF1aXJlIHNvbWUgZXh0cmEgaGFuZGxpbmcsIGJ1dCB3ZSBkb24ndCBzdXBwb3J0IHRo
YXQuCj4gKwkgKi8KPiArCWlmIChuZXdfcXVldWUgJiYgY3R4X2F3YXlfdmFsaWQpCj4gKwkJcmV0
dXJuIENTQl9QUkVFTVBUOwo+ICsKPiArCS8qCj4gKwkgKiBzd2l0Y2ggZGV0YWlsID0gNSBpcyBj
b3ZlcmVkIGJ5IHRoZSBjYXNlIGFib3ZlIGFuZCB3ZSBkbyBub3QgZXhwZWN0IGEKPiArCSAqIGNv
bnRleHQgc3dpdGNoIG9uIGFuIHVuc3VjY2Vzc2Z1bCB3YWl0IGluc3RydWN0aW9uIHNpbmNlIHdl
IGFsd2F5cwo+ICsJICogdXNlIHBvbGxpbmcgbW9kZS4KPiArCSAqLwo+ICsJR0VNX0JVR19PTihH
RU4xMl9DVFhfU1dJVENIX0RFVEFJTCh1cHBlcl9kdykpOwo+ICsKPiArCWlmICgqZXhlY2xpc3Rz
LT5hY3RpdmUpIHsKPiArCQlHRU1fQlVHX09OKCFjdHhfYXdheV92YWxpZCk7Cj4gKwkJcmV0dXJu
IENTQl9DT01QTEVURTsKPiArCX0KPiArCj4gKwlyZXR1cm4gQ1NCX05PUDsKCkkgZG9uJ3QgaGF2
ZSBhIHRnbCB0byBwbGF5IHdpdGggdG8gdHJ5IGl0IG91dCwgYnV0IHRoZSBjb21tZW50cyBhcmUg
Z29sZGVuLgoKPiArfQo+ICsKPiAgc3RhdGljIGlubGluZSBlbnVtIGNzYl9zdGVwCj4gIGNzYl9w
YXJzZShjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzLCBjb25z
dCB1MzIgKmNzYikKPiAgewo+IEBAIC0xMzgwLDYgKzE0NTAsOCBAQCBzdGF0aWMgdm9pZCBwcm9j
ZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gIAlybWIoKTsKPiAgCj4g
IAlkbyB7Cj4gKwkJZW51bSBjc2Jfc3RlcCBjc2Jfc3RlcDsKPiArCj4gIAkJaWYgKCsraGVhZCA9
PSBudW1fZW50cmllcykKPiAgCQkJaGVhZCA9IDA7Cj4gIAo+IEBAIC0xNDA1LDcgKzE0NzcsMTIg
QEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQo+ICAJCQkgIGVuZ2luZS0+bmFtZSwgaGVhZCwKPiAgCQkJICBidWZbMiAqIGhlYWQgKyAwXSwg
YnVmWzIgKiBoZWFkICsgMV0pOwo+ICAKPiAtCQlzd2l0Y2ggKGNzYl9wYXJzZShleGVjbGlzdHMs
IGJ1ZiArIDIgKiBoZWFkKSkgewo+ICsJCWlmIChJTlRFTF9HRU4oZW5naW5lLT5pOTE1KSA+PSAx
MikKPiArCQkJY3NiX3N0ZXAgPSBnZW4xMl9jc2JfcGFyc2UoZXhlY2xpc3RzLCBidWYgKyAyICog
aGVhZCk7Cj4gKwkJZWxzZQo+ICsJCQljc2Jfc3RlcCA9IGNzYl9wYXJzZShleGVjbGlzdHMsIGJ1
ZiArIDIgKiBoZWFkKTsKClRoaXMgY291bGQgaGF2ZSBiZWVuIHMvY3NiX3BhcnNlL2dlbjhfY3Ni
X3BhcnNlIHRvIGVtcGhhc2l6ZSB0aGUKZ2VuIHJhbmdlIGJ1dCBJIGFtIG5vdCBpbnNpc3Rpbmcu
CgpJIHJlbWVtYmVyIGRvaW5nIGEgcGF0Y2ggd2hlcmUgd2UgcmVhZCBmdWxsIDY0Yml0IGF0IGEg
dGltZSwKYXMgd2UgdXNlIHVwcGVyIHBhcnQgaW4gdHJhY2luZyBhcyB3ZWxsIG9uIGdlbiA8IDEy
LgpDb3VsZCBiZSB0aGF0IENocmlzIGRpZG4ndCBsaWtlIGl0LiBCdXQgbm93IHdpdGggZG9pbmcg
YSBjc2IKcGFyc2luZyBmdW5jdGlvbiBwb2ludGVyIGZvciBlYWNoIGdlbiByYW5nZSwgaXQgY291
bGQgZmx5LgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgoKPiArCj4gKwkJc3dpdGNoIChjc2Jfc3RlcCkgewo+ICAJCWNhc2UgQ1NCX1BS
RUVNUFQ6IC8qIGNhbmNlbCBvbGQgaW5mbGlnaHQsIHByZXBhcmUgZm9yIHN3aXRjaCAqLwo+ICAJ
CQl0cmFjZV9wb3J0cyhleGVjbGlzdHMsICJwcmVlbXB0ZWQiLCBleGVjbGlzdHMtPmFjdGl2ZSk7
Cj4gIAo+IC0tIAo+IDIuMjIuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=

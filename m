Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BB0105658
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 17:02:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92DE46F3D0;
	Thu, 21 Nov 2019 16:02:34 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0247D6F3D0
 for <Intel-GFX@lists.freedesktop.org>; Thu, 21 Nov 2019 16:02:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 08:02:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="209947607"
Received: from unknown (HELO sdutt) ([10.165.21.200])
 by orsmga003.jf.intel.com with ESMTP; 21 Nov 2019 08:02:23 -0800
Date: Thu, 21 Nov 2019 07:56:07 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20191121155606.GA28379@sdutt>
References: <20191120235604.29047-1-John.C.Harrison@Intel.com>
 <20191120235604.29047-3-John.C.Harrison@Intel.com>
 <op.0blswcryxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <op.0blswcryxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/guc: Optimized CTB writes and
 reads
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
Cc: Intel-GFX@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMTI6NTg6NTBQTSArMDEwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPk9uIFRodSwgMjEgTm92IDIwMTkgMDA6NTY6MDMgKzAxMDAsIDxKb2huLkMuSGFy
cmlzb25AaW50ZWwuY29tPiB3cm90ZToKPgo+PkZyb206IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcu
YnJvc3RAaW50ZWwuY29tPgo+Pgo+PkNUQiB3cml0ZXMgYXJlIG5vdyBpbiB0aGUgcGF0aCBvZiBj
b21tYW5kIHN1Ym1pc3Npb24gYW5kIHNob3VsZCBiZQo+Pm9wdGltaXplZCBmb3IgcGVyZm9ybWFu
Y2UuIFJhdGhlciB0aGFuIHJlYWRpbmcgQ1RCIGRlc2NyaXB0b3IgdmFsdWVzCj4+KGUuZy4gaGVh
ZCwgdGFpbCwgc2l6ZSkgd2hpY2ggY291bGQgcmVzdWx0IGluIGFjY2Vzc2VzIGFjcm9zcyB0aGUg
UENJZQo+PmJ1cywgc3RvcmUgc2hhZG93IGxvY2FsIGNvcGllcyBhbmQgb25seSByZWFkL3dyaXRl
IHRoZSBkZXNjcmlwdG9yCj4+dmFsdWVzIHdoZW4gYWJzb2x1dGVseSBuZWNlc3NhcnkuCj4+Cj4+
Q2M6IEpvaG4gSGFycmlzb24gPGpvaG4uYy5oYXJyaXNvbkBpbnRlbC5jb20+Cj4+U2lnbmVkLW9m
Zi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+Cj4+LS0tCj4+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5jIHwgNzkgKysrKysrKysrKyst
LS0tLS0tLS0tLS0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2N0Lmgg
fCAgOCArKysKPj4gMiBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlv
bnMoLSkKPj4KPj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjX2N0LmMgCj4+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuYwo+
PmluZGV4IGU1MGQ5NjhiMTVkNS4uNGQ4YTRjNmFmZDcxIDEwMDY0NAo+Pi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5jCj4+KysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2N0LmMKPj5AQCAtNjgsMjMgKzY4LDI5IEBAIHN0YXRpYyBp
bmxpbmUgY29uc3QgY2hhciAKPj4qZ3VjX2N0X2J1ZmZlcl90eXBlX3RvX3N0cih1MzIgdHlwZSkK
Pj4gCX0KPj4gfQo+Pi1zdGF0aWMgdm9pZCBndWNfY3RfYnVmZmVyX2Rlc2NfaW5pdChzdHJ1Y3Qg
Z3VjX2N0X2J1ZmZlcl9kZXNjICpkZXNjLAo+PitzdGF0aWMgdm9pZCBndWNfY3RfYnVmZmVyX2Rl
c2NfaW5pdChzdHJ1Y3QgaW50ZWxfZ3VjX2N0X2J1ZmZlciAqY3RiLAo+PiAJCQkJICAgIHUzMiBj
bWRzX2FkZHIsIHUzMiBzaXplLCB1MzIgb3duZXIpCj4KPmFzIG5vdyB0aGlzIGZ1bmN0aW9uIHRh
a2VzIGN0YiBpbnN0ZWFkIG9mIGRlc2MsIGl0IHNob3VsZCBiZSByZW5hbWVkCj5vciBtYWtlIGl0
IHNlcGFyYXRlIGZyb20gZ3VjX2N0X2J1ZmZlcl9kZXNjX2luaXQKPgoKWWVzLCBtYWtlcyBzZW5z
ZS4KCj4+IHsKPj4rCXN0cnVjdCBndWNfY3RfYnVmZmVyX2Rlc2MgKmRlc2MgPSBjdGItPmRlc2M7
Cj4+IAlDVF9ERUJVR19EUklWRVIoIkNUOiBkZXNjICVwIGluaXQgYWRkcj0lI3ggc2l6ZT0ldSBv
d25lcj0ldVxuIiwKPj4gCQkJZGVzYywgY21kc19hZGRyLCBzaXplLCBvd25lcik7Cj4+IAltZW1z
ZXQoZGVzYywgMCwgc2l6ZW9mKCpkZXNjKSk7Cj4+IAlkZXNjLT5hZGRyID0gY21kc19hZGRyOwo+
Pi0JZGVzYy0+c2l6ZSA9IHNpemU7Cj4+KwljdGItPnNpemUgPSBkZXNjLT5zaXplID0gc2l6ZTsK
Pj4gCWRlc2MtPm93bmVyID0gb3duZXI7Cj4+KwljdGItPnRhaWwgPSAwOwo+PisJY3RiLT5oZWFk
ID0gMDsKPj4rCWN0Yi0+c3BhY2UgPSBDSVJDX1NQQUNFKGN0Yi0+dGFpbCwgY3RiLT5oZWFkLCBj
dGItPnNpemUpOwo+PiB9Cj4+LXN0YXRpYyB2b2lkIGd1Y19jdF9idWZmZXJfZGVzY19yZXNldChz
dHJ1Y3QgZ3VjX2N0X2J1ZmZlcl9kZXNjICpkZXNjKQo+PitzdGF0aWMgdm9pZCBndWNfY3RfYnVm
ZmVyX2Rlc2NfcmVzZXQoc3RydWN0IGludGVsX2d1Y19jdF9idWZmZXIgKmN0YikKPgo+c2FtZSBo
ZXJlCj4KClNhbWUuCgo+PiB7Cj4+KwlzdHJ1Y3QgZ3VjX2N0X2J1ZmZlcl9kZXNjICpkZXNjID0g
Y3RiLT5kZXNjOwo+PiAJQ1RfREVCVUdfRFJJVkVSKCJDVDogZGVzYyAlcCByZXNldCBoZWFkPSV1
IHRhaWw9JXVcbiIsCj4+IAkJCWRlc2MsIGRlc2MtPmhlYWQsIGRlc2MtPnRhaWwpOwo+Pi0JZGVz
Yy0+aGVhZCA9IDA7Cj4+LQlkZXNjLT50YWlsID0gMDsKPj4rCWN0Yi0+aGVhZCA9IGRlc2MtPmhl
YWQgPSAwOwo+PisJY3RiLT50YWlsID0gZGVzYy0+dGFpbCA9IDA7Cj4+KwljdGItPnNwYWNlID0g
Q0lSQ19TUEFDRShjdGItPnRhaWwsIGN0Yi0+aGVhZCwgY3RiLT5zaXplKTsKPj4gCWRlc2MtPmlz
X2luX2Vycm9yID0gMDsKPj4gfQo+PkBAIC0yMjAsNyArMjI2LDcgQEAgc3RhdGljIGludCBjdGNo
X2VuYWJsZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsCj4+IAkgKi8KPj4gCWZvciAoaSA9IDA7IGkg
PCBBUlJBWV9TSVpFKGN0Y2gtPmN0YnMpOyBpKyspIHsKPj4gCQlHRU1fQlVHX09OKChpICE9IENU
Ql9TRU5EKSAmJiAoaSAhPSBDVEJfUkVDVikpOwo+Pi0JCWd1Y19jdF9idWZmZXJfZGVzY19pbml0
KGN0Y2gtPmN0YnNbaV0uZGVzYywKPj4rCQlndWNfY3RfYnVmZmVyX2Rlc2NfaW5pdCgmY3RjaC0+
Y3Ric1tpXSwKPj4gCQkJCQliYXNlICsgUEFHRV9TSVpFLzQgKiBpICsgUEFHRV9TSVpFLzIsCj4+
IAkJCQkJUEFHRV9TSVpFLzQsCj4+IAkJCQkJY3RjaC0+b3duZXIpOwo+PkBAIC0zMDEsMzIgKzMw
NywxNiBAQCBzdGF0aWMgaW50IGN0Yl93cml0ZShzdHJ1Y3QgCj4+aW50ZWxfZ3VjX2N0X2J1ZmZl
ciAqY3RiLAo+PiAJCSAgICAgYm9vbCB3YW50X3Jlc3BvbnNlKQo+PiB7Cj4+IAlzdHJ1Y3QgZ3Vj
X2N0X2J1ZmZlcl9kZXNjICpkZXNjID0gY3RiLT5kZXNjOwo+Pi0JdTMyIGhlYWQgPSBkZXNjLT5o
ZWFkIC8gNDsJLyogaW4gZHdvcmRzICovCj4+LQl1MzIgdGFpbCA9IGRlc2MtPnRhaWwgLyA0Owkv
KiBpbiBkd29yZHMgKi8KPj4tCXUzMiBzaXplID0gZGVzYy0+c2l6ZSAvIDQ7CS8qIGluIGR3b3Jk
cyAqLwo+Pi0JdTMyIHVzZWQ7CQkJLyogaW4gZHdvcmRzICovCj4+Kwl1MzIgdGFpbCA9IGN0Yi0+
dGFpbCAvIDQ7CS8qIGluIGR3b3JkcyAqLwo+PisJdTMyIHNpemUgPSBjdGItPnNpemUgLyA0Owkv
KiBpbiBkd29yZHMgKi8KPj4gCXUzMiBoZWFkZXI7Cj4+IAl1MzIgKmNtZHMgPSBjdGItPmNtZHM7
Cj4+IAl1bnNpZ25lZCBpbnQgaTsKPj4tCUdFTV9CVUdfT04oZGVzYy0+c2l6ZSAlIDQpOwo+Pi0J
R0VNX0JVR19PTihkZXNjLT5oZWFkICUgNCk7Cj4+LQlHRU1fQlVHX09OKGRlc2MtPnRhaWwgJSA0
KTsKPj4rCUdFTV9CVUdfT04oY3RiLT5zaXplICUgNCk7Cj4+KwlHRU1fQlVHX09OKGN0Yi0+dGFp
bCAlIDQpOwo+PiAJR0VNX0JVR19PTih0YWlsID49IHNpemUpOwo+Pi0JLyoKPj4tCSAqIHRhaWwg
PT0gaGVhZCBjb25kaXRpb24gaW5kaWNhdGVzIGVtcHR5LiBHdUMgRlcgZG9lcyBub3Qgc3VwcG9y
dAo+Pi0JICogdXNpbmcgdXAgdGhlIGVudGlyZSBidWZmZXIgdG8gZ2V0IHRhaWwgPT0gaGVhZCBt
ZWFuaW5nIGZ1bGwuCj4+LQkgKi8KPj4tCWlmICh0YWlsIDwgaGVhZCkKPj4tCQl1c2VkID0gKHNp
emUgLSBoZWFkKSArIHRhaWw7Cj4+LQllbHNlCj4+LQkJdXNlZCA9IHRhaWwgLSBoZWFkOwo+Pi0K
Pj4tCS8qIG1ha2Ugc3VyZSB0aGVyZSBpcyBhIHNwYWNlIGluY2x1ZGluZyBleHRyYSBkdyBmb3Ig
dGhlIGZlbmNlICovCj4+LQlpZiAodW5saWtlbHkodXNlZCArIGxlbiArIDEgPj0gc2l6ZSkpCj4+
LQkJcmV0dXJuIC1FTk9TUEM7Cj4+LQo+PiAJLyoKPj4gCSAqIFdyaXRlIHRoZSBtZXNzYWdlLiBU
aGUgZm9ybWF0IGlzIHRoZSBmb2xsb3dpbmc6Cj4+IAkgKiBEVzA6IGhlYWRlciAoaW5jbHVkaW5n
IGFjdGlvbiBjb2RlKQo+PkBAIC0zNTQsMTUgKzM0NCwxNiBAQCBzdGF0aWMgaW50IGN0Yl93cml0
ZShzdHJ1Y3QgCj4+aW50ZWxfZ3VjX2N0X2J1ZmZlciAqY3RiLAo+PiAJfQo+PgkvKiBub3cgdXBk
YXRlIGRlc2MgdGFpbCAoYmFjayBpbiBieXRlcykgKi8KPj4tCWRlc2MtPnRhaWwgPSB0YWlsICog
NDsKPj4tCUdFTV9CVUdfT04oZGVzYy0+dGFpbCA+IGRlc2MtPnNpemUpOwo+PisJY3RiLT50YWls
ID0gZGVzYy0+dGFpbCA9IHRhaWwgKiA0Owo+PisJY3RiLT5zcGFjZSAtPSAobGVuICsgMSkgKiA0
Owo+PisJR0VNX0JVR19PTihjdGItPnRhaWwgPiBjdGItPnNpemUpOwo+PglyZXR1cm4gMDsKPj4g
fQo+Pi8qKgo+PiAgKiB3YWl0X2Zvcl9jdGJfZGVzY191cGRhdGUgLSBXYWl0IGZvciB0aGUgQ1Qg
YnVmZmVyIGRlc2NyaXB0b3IgdXBkYXRlLgo+Pi0gKiBAZGVzYzoJYnVmZmVyIGRlc2NyaXB0b3IK
Pj4rICogQGN0YjoJY3RiIGJ1ZmZlcgo+PiAgKiBAZmVuY2U6CXJlc3BvbnNlIGZlbmNlCj4+ICAq
IEBzdGF0dXM6CXBsYWNlaG9sZGVyIGZvciBzdGF0dXMKPj4gICoKPj5AQCAtMzc2LDExICszNjcs
MTIgQEAgc3RhdGljIGludCBjdGJfd3JpdGUoc3RydWN0IAo+PmludGVsX2d1Y19jdF9idWZmZXIg
KmN0YiwKPj4gICogKgktRVRJTUVET1VUIG5vIHJlc3BvbnNlIHdpdGhpbiBoYXJkY29kZWQgdGlt
ZW91dAo+PiAgKiAqCS1FUFJPVE8gbm8gcmVzcG9uc2UsIENUIGJ1ZmZlciBpcyBpbiBlcnJvcgo+
PiAgKi8KPj4tc3RhdGljIGludCB3YWl0X2Zvcl9jdGJfZGVzY191cGRhdGUoc3RydWN0IGd1Y19j
dF9idWZmZXJfZGVzYyAqZGVzYywKPj4rc3RhdGljIGludCB3YWl0X2Zvcl9jdGJfZGVzY191cGRh
dGUoc3RydWN0IGludGVsX2d1Y19jdF9idWZmZXIgKmN0YiwKPj4gCQkJCSAgICB1MzIgZmVuY2Us
Cj4+IAkJCQkgICAgdTMyICpzdGF0dXMpCj4+IHsKPj4gCWludCBlcnI7Cj4+KwlzdHJ1Y3QgZ3Vj
X2N0X2J1ZmZlcl9kZXNjICpkZXNjID0gY3RiLT5kZXNjOwo+PgkvKgo+PiAJICogRmFzdCBjb21t
YW5kcyBzaG91bGQgY29tcGxldGUgaW4gbGVzcyB0aGFuIDEwdXMsIHNvIHNhbXBsZSBxdWlja2x5
Cj4+QEAgLTQwMSw3ICszOTMsNyBAQCBzdGF0aWMgaW50IHdhaXRfZm9yX2N0Yl9kZXNjX3VwZGF0
ZShzdHJ1Y3QgCj4+Z3VjX2N0X2J1ZmZlcl9kZXNjICpkZXNjLAo+PiAJCQkvKiBTb21ldGhpbmcg
d2VudCB3cm9uZyB3aXRoIHRoZSBtZXNzYWdpbmcsIHRyeSB0byByZXNldAo+PiAJCQkgKiB0aGUg
YnVmZmVyIGFuZCBob3BlIGZvciB0aGUgYmVzdAo+PiAJCQkgKi8KPj4tCQkJZ3VjX2N0X2J1ZmZl
cl9kZXNjX3Jlc2V0KGRlc2MpOwo+PisJCQlndWNfY3RfYnVmZmVyX2Rlc2NfcmVzZXQoY3RiKTsK
Pj4gCQkJZXJyID0gLUVQUk9UTzsKPj4gCQl9Cj4+IAl9Cj4+QEAgLTQ0NiwxMiArNDM4LDE3IEBA
IHN0YXRpYyBpbnQgd2FpdF9mb3JfY3RfcmVxdWVzdF91cGRhdGUoc3RydWN0IAo+PmN0X3JlcXVl
c3QgKnJlcSwgdTMyICpzdGF0dXMpCj4+IAlyZXR1cm4gZXJyOwo+PiB9Cj4+LXN0YXRpYyBpbmxp
bmUgYm9vbCBjdGJfaGFzX3Jvb20oc3RydWN0IGd1Y19jdF9idWZmZXJfZGVzYyAqZGVzYywgCj4+
dTMyIGxlbikKPj4rc3RhdGljIGlubGluZSBib29sIGN0Yl9oYXNfcm9vbShzdHJ1Y3QgaW50ZWxf
Z3VjX2N0X2J1ZmZlciAqY3RiLCAKPj51MzIgbGVuKQo+PiB7Cj4+LQl1MzIgaGVhZCA9IFJFQURf
T05DRShkZXNjLT5oZWFkKTsKPj4rCXUzMiBoZWFkOwo+PiAJdTMyIHNwYWNlOwo+Pi0Jc3BhY2Ug
PSBDSVJDX1NQQUNFKGRlc2MtPnRhaWwsIGhlYWQsIGRlc2MtPnNpemUpOwo+PisJaWYgKGN0Yi0+
c3BhY2UgPj0gbGVuKQo+PisJCXJldHVybiB0cnVlOwo+PisKPj4rCWhlYWQgPSBSRUFEX09OQ0Uo
Y3RiLT5kZXNjLT5oZWFkKTsKPj4rCXNwYWNlID0gQ0lSQ19TUEFDRShjdGItPnRhaWwsIGhlYWQs
IGN0Yi0+c2l6ZSk7Cj4+KwljdGItPnNwYWNlID0gc3BhY2U7Cj4+CXJldHVybiBzcGFjZSA+PSBs
ZW47Cj4+IH0KPj5AQCAtNDYyLDcgKzQ1OSw2IEBAIGludCBpbnRlbF9ndWNfc2VuZF9uYihzdHJ1
Y3QgaW50ZWxfZ3VjX2N0ICpjdCwKPj4gewo+PiAJc3RydWN0IGludGVsX2d1Y19jdF9jaGFubmVs
ICpjdGNoID0gJmN0LT5ob3N0X2NoYW5uZWw7Cj4+IAlzdHJ1Y3QgaW50ZWxfZ3VjX2N0X2J1ZmZl
ciAqY3RiID0gJmN0Y2gtPmN0YnNbQ1RCX1NFTkRdOwo+Pi0Jc3RydWN0IGd1Y19jdF9idWZmZXJf
ZGVzYyAqZGVzYyA9IGN0Yi0+ZGVzYzsKPj4gCWludCBlcnI7Cj4+CUdFTV9CVUdfT04oIWN0Y2gt
PmVuYWJsZWQpOwo+PkBAIC00NzAsNyArNDY2LDcgQEAgaW50IGludGVsX2d1Y19zZW5kX25iKHN0
cnVjdCBpbnRlbF9ndWNfY3QgKmN0LAo+PiAJR0VNX0JVR19PTihsZW4gJiB+R1VDX0NUX01TR19M
RU5fTUFTSyk7Cj4+IAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZjdC0+c2VuZF9sb2NrKTsKPj4tCWlm
ICh1bmxpa2VseSghY3RiX2hhc19yb29tKGRlc2MsIChsZW4gKyAxKSAqIDQpKSkgewo+PisJaWYg
KHVubGlrZWx5KCFjdGJfaGFzX3Jvb20oY3RiLCAobGVuICsgMSkgKiA0KSkpIHsKPj4gCQljdC0+
cmV0cnkrKzsKPj4gCQlpZiAoY3QtPnJldHJ5ID49IE1BWF9SRVRSWSkKPj4gCQkJcmV0dXJuIC1F
REVBRExLOwo+PkBAIC00OTYsNyArNDkyLDYgQEAgc3RhdGljIGludCBjdGNoX3NlbmQoc3RydWN0
IGludGVsX2d1Y19jdCAqY3QsCj4+IAkJICAgICB1MzIgKnN0YXR1cykKPj4gewo+PiAJc3RydWN0
IGludGVsX2d1Y19jdF9idWZmZXIgKmN0YiA9ICZjdGNoLT5jdGJzW0NUQl9TRU5EXTsKPj4tCXN0
cnVjdCBndWNfY3RfYnVmZmVyX2Rlc2MgKmRlc2MgPSBjdGItPmRlc2M7Cj4+IAlzdHJ1Y3QgY3Rf
cmVxdWVzdCByZXF1ZXN0Owo+PiAJdW5zaWduZWQgbG9uZyBmbGFnczsKPj4gCXUzMiBmZW5jZTsK
Pj5AQCAtNTE0LDcgKzUwOSw3IEBAIHN0YXRpYyBpbnQgY3RjaF9zZW5kKHN0cnVjdCBpbnRlbF9n
dWNfY3QgKmN0LAo+PiAJICovCj4+IHJldHJ5Ogo+PiAJc3Bpbl9sb2NrX2lycXNhdmUoJmN0LT5z
ZW5kX2xvY2ssIGZsYWdzKTsKPj4tCWlmICh1bmxpa2VseSghY3RiX2hhc19yb29tKGRlc2MsIChs
ZW4gKyAxKSAqIDQpKSkgewo+PisJaWYgKHVubGlrZWx5KCFjdGJfaGFzX3Jvb20oY3RiLCAobGVu
ICsgMSkgKiA0KSkpIHsKPj4gCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZjdC0+c2VuZF9sb2Nr
LCBmbGFncyk7Cj4+IAkJY3QtPnJldHJ5Kys7Cj4+IAkJaWYgKGN0LT5yZXRyeSA+PSBNQVhfUkVU
UlkpCj4+QEAgLTU0NCw3ICs1MzksNyBAQCBzdGF0aWMgaW50IGN0Y2hfc2VuZChzdHJ1Y3QgaW50
ZWxfZ3VjX2N0ICpjdCwKPj4gCWlmIChyZXNwb25zZV9idWYpCj4+IAkJZXJyID0gd2FpdF9mb3Jf
Y3RfcmVxdWVzdF91cGRhdGUoJnJlcXVlc3QsIHN0YXR1cyk7Cj4+IAllbHNlCj4+LQkJZXJyID0g
d2FpdF9mb3JfY3RiX2Rlc2NfdXBkYXRlKGRlc2MsIGZlbmNlLCBzdGF0dXMpOwo+PisJCWVyciA9
IHdhaXRfZm9yX2N0Yl9kZXNjX3VwZGF0ZShjdGIsIGZlbmNlLCBzdGF0dXMpOwo+PiAJaWYgKHVu
bGlrZWx5KGVycikpCj4+IAkJZ290byB1bmxpbms7Cj4+QEAgLTYxOCw5ICs2MTMsOSBAQCBzdGF0
aWMgaW5saW5lIGJvb2wgY3RfaGVhZGVyX2lzX3Jlc3BvbnNlKHUzMiBoZWFkZXIpCj4+IHN0YXRp
YyBpbnQgY3RiX3JlYWQoc3RydWN0IGludGVsX2d1Y19jdF9idWZmZXIgKmN0YiwgdTMyICpkYXRh
KQo+PiB7Cj4+IAlzdHJ1Y3QgZ3VjX2N0X2J1ZmZlcl9kZXNjICpkZXNjID0gY3RiLT5kZXNjOwo+
Pi0JdTMyIGhlYWQgPSBkZXNjLT5oZWFkIC8gNDsJLyogaW4gZHdvcmRzICovCj4+Kwl1MzIgaGVh
ZCA9IGN0Yi0+aGVhZCAvIDQ7CS8qIGluIGR3b3JkcyAqLwo+PiAJdTMyIHRhaWwgPSBkZXNjLT50
YWlsIC8gNDsJLyogaW4gZHdvcmRzICovCj4+LQl1MzIgc2l6ZSA9IGRlc2MtPnNpemUgLyA0Owkv
KiBpbiBkd29yZHMgKi8KPj4rCXUzMiBzaXplID0gY3RiLT5zaXplIC8gNDsJLyogaW4gZHdvcmRz
ICovCj4+IAl1MzIgKmNtZHMgPSBjdGItPmNtZHM7Cj4+IAlzMzIgYXZhaWxhYmxlOwkJCS8qIGlu
IGR3b3JkcyAqLwo+PiAJdW5zaWduZWQgaW50IGxlbjsKPj5AQCAtNjY0LDcgKzY1OSw3IEBAIHN0
YXRpYyBpbnQgY3RiX3JlYWQoc3RydWN0IGludGVsX2d1Y19jdF9idWZmZXIgCj4+KmN0YiwgdTMy
ICpkYXRhKQo+PiAJfQo+PiAJQ1RfREVCVUdfRFJJVkVSKCJDVDogcmVjZWl2ZWQgJSpwaFxuIiwg
NCAqIGxlbiwgZGF0YSk7Cj4+LQlkZXNjLT5oZWFkID0gaGVhZCAqIDQ7Cj4+KwljdGItPmhlYWQg
PSBkZXNjLT5oZWFkID0gaGVhZCAqIDQ7Cj4+IAlyZXR1cm4gMDsKPj4gfQo+PmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY3QuaCAKPj5iL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jdC5oCj4+aW5kZXggYmM2NzBhNzk2YmQ4Li4x
YmZmNGYwYjkxZjcgMTAwNjQ0Cj4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX2N0LmgKPj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
Y3QuaAo+PkBAIC0yOSwxMCArMjksMTggQEAgc3RydWN0IGludGVsX2d1YzsKPj4gICoKPj4gICog
QGRlc2M6IHBvaW50ZXIgdG8gdGhlIGJ1ZmZlciBkZXNjcmlwdG9yCj4+ICAqIEBjbWRzOiBwb2lu
dGVyIHRvIHRoZSBjb21tYW5kcyBidWZmZXIKPj4rICogQHNpemU6IGxvY2FsIHNoYWRvdyBjb3B5
IG9mIHNpemUKPgo+SSB3b3VsZCByYXRoZXIgZXhwZWN0IHRoaXMgYXMgcmVhbCBmaXhlZCBzaXpl
LAo+bm90ZSB0aGF0IHNpemUgaXMgbm90IGV4cGVjdGVkIHRvIGNoYW5nZQo+CgpZZXMsIGl0IGlz
IGZpeGVkIG92ZXIgdGhlIGxpZmUgb2YgdGhlIENUQiBidXQgbm90IGFsbCBDVEJzIG5lZWQgdG8g
YmUgdGhlIHNhbWUKc2l6ZS4gZS5nLiBUaGUgSDJHICYgRzJIIG1heSBhbmQgbGlrZWx5IHdpbGwg
YmUgZGlmZmVyZW50IHNpemVzIHdpdGggdGhlIG5ldyBHdWMKaW50ZXJmYWNlLgoKPj4rICogQGhl
YWQ6IGxvY2FsIHNoYWRvdyBjb3B5IG9mIGhlYWQKPj4rICogQHRhaWw6IGxvY2FsIHNoYWRvdyBj
b3B5IG9mIHRhaWwKPj4rICogQHNwYWNlOiBsb2NhbCBzaGFkb3cgY29weSBvZiBzcGFjZQo+PiAg
Ki8KPj4gc3RydWN0IGludGVsX2d1Y19jdF9idWZmZXIgewo+PiAJc3RydWN0IGd1Y19jdF9idWZm
ZXJfZGVzYyAqZGVzYzsKPj4gCXUzMiAqY21kczsKPj4rCXUzMiBzaXplOwo+PisJdTMyIHRhaWw7
Cj4+Kwl1MzIgaGVhZDsKPj4rCXUzMiBzcGFjZTsKPj4gfTsKPj4vKiogUmVwcmVzZW50cyBwYWly
IG9mIGNvbW1hbmQgdHJhbnNwb3J0IGJ1ZmZlcnMuCj4KPkNhbiB3ZSByZW9yZGVyIHRoaXMgcGF0
Y2ggdG8gYmUgZmlyc3QgaW4gdGhlIHNlcmllcyA/Cj4KPk1pY2hhbAo+X19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KClllcy4KCj5JbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

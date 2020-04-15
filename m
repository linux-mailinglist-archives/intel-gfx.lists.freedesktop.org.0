Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB051AB3ED
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 00:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373736EAA2;
	Wed, 15 Apr 2020 22:47:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9602A6EAA2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 22:47:58 +0000 (UTC)
IronPort-SDR: vUvS3VVDjnkLKJobzHirHg+JBIkKhjZnBNWUPGKx1+LyJmiSF/QJ/5CSQB2I5ivlJKy0n/EcJh
 dtrWsICSuQww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 15:47:58 -0700
IronPort-SDR: ZJUW/HgApH8c350Qf0VeEvTv32MUPKVYwsZ929MT3KJXJed0VqxMdbrrpkuxu9F9tGSBPvj8pw
 8sKoX2PvIDUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="257006278"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga006.jf.intel.com with ESMTP; 15 Apr 2020 15:47:57 -0700
Date: Wed, 15 Apr 2020 15:47:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200415224757.GD16071@orsosgc001.amr.corp.intel.com>
References: <20200413154822.11620-1-umesh.nerlige.ramappa@intel.com>
 <20200413154822.11620-2-umesh.nerlige.ramappa@intel.com>
 <6fd2488e-4a76-cb94-12b2-a61ab7f4bfe2@intel.com>
 <20200415185502.GA16071@orsosgc001.amr.corp.intel.com>
 <735096bd-524b-f68e-086f-d1b7c11a23d1@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <735096bd-524b-f68e-086f-d1b7c11a23d1@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Reduce cpu overhead for
 blocking perf OA reads
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBcHIgMTUsIDIwMjAgYXQgMTA6MTY6NTlQTSArMDMwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5PbiAxNS8wNC8yMDIwIDIxOjU1LCBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgd3Jv
dGU6Cj4+T24gV2VkLCBBcHIgMTUsIDIwMjAgYXQgMDE6MDA6MzBQTSArMDMwMCwgTGlvbmVsIExh
bmR3ZXJsaW4gd3JvdGU6Cj4+Pk9uIDEzLzA0LzIwMjAgMTg6NDgsIFVtZXNoIE5lcmxpZ2UgUmFt
YXBwYSB3cm90ZToKPj4+PkEgY29uZGl0aW9uIGluIHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZSBz
ZWVtcyB0byBiZSBjaGVja2VkIAo+Pj4+dHdpY2UgYmVmb3JlCj4+Pj53YWl0aW5nIG9uIHRoZSBl
dmVudCB0byBvY2N1ci4gVGhlc2UgY2hlY2tzIGFyZSByZWR1bmRhbnQgd2hlbiBocnRpbWVyCj4+
Pj5ldmVudHMgd2lsbCBjYWxsIG9hX2J1ZmZlcl9jaGVja191bmxvY2tlZCB0byB1cGRhdGUgdGhl
IG9hX2J1ZmZlciB0YWlsCj4+Pj5wb2ludGVycy4gVGhlIHJlZHVuZGFudCBjaGVja3MgYWRkIGNw
dSBvdmVyaGVhZC4gU2ltcGxpZnkgdGhlIGNoZWNrCj4+Pj50byByZWR1Y2UgY3B1IG92ZXJoZWFk
IHdoZW4gdXNpbmcgYmxvY2tpbmcgaW8gdG8gcmVhZCBvYSBidWZmZXIgCj4+Pj5yZXBvcnRzLgo+
Pj4+Cj4+Pj5TaWduZWQtb2ZmLWJ5OiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxp
Z2UucmFtYXBwYUBpbnRlbC5jb20+Cj4+Pgo+Pj4KPj4+SSBjaGVycnkgcGlja2VkIHRoaXMgcGF0
Y2ggYWxvbmUgYW5kIGl0IHNlZW1zIHRvIGJyZWFrIHRoZSAKPj4+ZGlzYWJsZWQtcmVhZC1lcnJv
ciB0ZXN0Lgo+Pgo+PlN0cmFuZ2UuIEkgZG9uJ3Qgc2VlIGl0IGZhaWwgb24gbXkgQ0ZMLiBJIGFt
IGFwcGx5IHRoaXMgb24gdGhlIAo+PmxhdGVzdCBkcm0tdGlwIGZyb20geWVzdGVyZGF5Lgo+Pgo+
PlRoZSBwYXRjaCBzdGlsbCBjaGVja3MgaWYgcmVwb3J0cyBhcmUgYXZhaWxhYmxlIGJlZm9yZSBi
bG9ja2luZy4gVGhlIAo+PmJlaGF2aW9yIHNob3VsZCBzdGlsbCBiZSB0aGUgc2FtZSB3LnIudCB0
aGlzIHRlc3QuCj4+Cj4+V2hhdCBtYWNoaW5lIGRpZCB5b3UgcnVuIGl0IG9uPyBJIHdpbGwgdHJ5
IG9uIHRoZSBzYW1lLiBBbnkgY2hhbmNlIAo+PnlvdSBoYXZlIHRoZSBkZWJ1ZyBvdXRwdXQgZnJv
bSB0aGUgdGVzdD8KPj4KPj5UaGFua3MsCj4+VW1lc2gKPj4KPgo+SSBnb3QgdGhhdCBvbiBTS0wg
R1Q0IDogaHR0cDovL3Bhc3RlLmRlYmlhbi5uZXQvMTE0MDYwNC8KPgoKRmFpbHMgYWx3YXlzIG9u
IFNLTCBHVDQuIFRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhpcyA6KQoKQWxzbyBmYWlscyB3aXRob3V0
IHRoaXMgcGF0Y2ggaWYgdGhpcyB0ZXN0IHdlcmUgdG8gdXNlIE5PTkJMT0NLaW5nIElPLgoKVGhp
cyBoYXMgdG8gZG8gd2l0aCBiZWluZyBhYmxlIHRvIHJlYWQgcmVwb3J0cyBhdCBzYW1wbGluZyBm
cmVxdWVuY2llcyAKYXMgaGlnaCBhcyA1IHVzIChvbiBzb21lIHBsYXRmb3JtcywgSSBndWVzcyku
CgpXaWxsIGxvb2sgaW50byBpdCBmdXJ0aGVyIGFuZCByZXBvc3QgdGhlIHNlcmllcy4gTGV0IG1l
IGtub3cgaWYgeW91IGhhdmUgCmFueSBvdGhlciB0aG91Z2h0cyBvbiB0aGlzLgoKVGhhbmtzLApV
bWVzaAoKPgo+VGhhbmtzLAo+Cj4KPi1MaW9uZWwKPgo+Cj4+Pgo+Pj4KPj4+Pi0tLQo+Pj4+wqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKy0KPj4+PsKgMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPj4+Pgo+Pj4+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jIAo+Pj4+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+Pj4+aW5kZXggNWNk
ZTNlNGU3YmU2Li5lMjhhM2FiODNmZGUgMTAwNjQ0Cj4+Pj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYwo+Pj4+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJm
LmMKPj4+PkBAIC01NDEsNiArNTQxLDMyIEBAIHN0YXRpYyBib29sIG9hX2J1ZmZlcl9jaGVja191
bmxvY2tlZChzdHJ1Y3QgCj4+Pj5pOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4+Pj7CoMKgwqDC
oCByZXR1cm4gcG9sbGluOwo+Pj4+wqB9Cj4+Pj4rLyoqCj4+Pj4rICogb2FfYnVmZmVyX2NoZWNr
X3JlcG9ydHMgLSBxdWljayBjaGVjayBpZiByZXBvcnRzIGFyZSBhdmFpbGFibGUKPj4+PisgKiBA
c3RyZWFtOiBpOTE1IHN0cmVhbSBpbnN0YW5jZQo+Pj4+KyAqCj4+Pj4rICogVGhlIHJldHVybiBm
cm9tIHRoaXMgZnVuY3Rpb24gaXMgdXNlZCBhcyBhIGNvbmRpdGlvbiBmb3IKPj4+PisgKiB3YWl0
X2V2ZW50X2ludGVycnVwdGlibGUgaW4gYmxvY2tpbmcgcmVhZC4gVGhpcyBpcyB1c2VkIHRvIGRl
dGVjdAo+Pj4+KyAqIGF2YWlsYWJsZSByZXBvcnRzLgo+Pj4+KyAqCj4+Pj4rICogQSBjb25kaXRp
b24gaW4gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlIHNlZW1zIHRvIGJlIGNoZWNrZWQgCj4+Pj50
d2ljZSBiZWZvcmUKPj4+PisgKiB3YWl0aW5nIG9uIGFuIGV2ZW50IHRvIG9jY3VyLiBUaGVzZSBj
aGVja3MgYXJlIHJlZHVuZGFudCAKPj4+PndoZW4gaHJ0aW1lciBldmVudHMKPj4+PisgKiB3aWxs
IGNhbGwgb2FfYnVmZmVyX2NoZWNrX3VubG9ja2VkIHRvIHVwZGF0ZSB0aGUgb2FfYnVmZmVyIAo+
Pj4+dGFpbCBwb2ludGVycy4gVGhlCj4+Pj4rICogcmVkdW5kYW50IGNoZWNrcyBhZGQgY3B1IG92
ZXJoZWFkLiBXZSBzaW1wbGlmeSB0aGUgY2hlY2sgdG8gCj4+Pj5yZWR1Y2UgY3B1Cj4+Pj4rICog
b3ZlcmhlYWQuCj4+Pj4rICovCj4+Pj4rc3RhdGljIGJvb2wgb2FfYnVmZmVyX2NoZWNrX3JlcG9y
dHMoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPj4+Pit7Cj4+Pj4rwqDCoMKgIHVu
c2lnbmVkIGxvbmcgZmxhZ3M7Cj4+Pj4rwqDCoMKgIGJvb2wgYXZhaWxhYmxlOwo+Pj4+Kwo+Pj4+
K8KgwqDCoCBzcGluX2xvY2tfaXJxc2F2ZSgmc3RyZWFtLT5vYV9idWZmZXIucHRyX2xvY2ssIGZs
YWdzKTsKPj4+PivCoMKgwqAgYXZhaWxhYmxlID0gc3RyZWFtLT5vYV9idWZmZXIudGFpbCAhPSBz
dHJlYW0tPm9hX2J1ZmZlci5oZWFkOwo+Pj4+KyBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZzdHJl
YW0tPm9hX2J1ZmZlci5wdHJfbG9jaywgZmxhZ3MpOwo+Pj4+Kwo+Pj4+K8KgwqDCoCByZXR1cm4g
YXZhaWxhYmxlOwo+Pj4+K30KPj4+PisKPj4+PsKgLyoqCj4+Pj7CoCAqIGFwcGVuZF9vYV9zdGF0
dXMgLSBBcHBlbmRzIGEgc3RhdHVzIHJlY29yZCB0byBhIHVzZXJzcGFjZSAKPj4+PnJlYWQoKSBi
dWZmZXIuCj4+Pj7CoCAqIEBzdHJlYW06IEFuIGk5MTUtcGVyZiBzdHJlYW0gb3BlbmVkIGZvciBP
QSBtZXRyaWNzCj4+Pj5AQCAtMTE1MCw3ICsxMTc2LDcgQEAgc3RhdGljIGludCBpOTE1X29hX3dh
aXRfdW5sb2NrZWQoc3RydWN0IAo+Pj4+aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+Pj4+wqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTzsKPj4+PsKgwqDCoMKgIHJldHVybiB3YWl0X2V2ZW50
X2ludGVycnVwdGlibGUoc3RyZWFtLT5wb2xsX3dxLAo+Pj4+LcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIG9hX2J1ZmZlcl9jaGVja191bmxvY2tlZChzdHJlYW0pKTsKPj4+
PivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvYV9idWZmZXJfY2hlY2tf
cmVwb3J0cyhzdHJlYW0pKTsKPj4+PsKgfQo+Pj4+wqAvKioKPj4+Cj4+Pgo+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

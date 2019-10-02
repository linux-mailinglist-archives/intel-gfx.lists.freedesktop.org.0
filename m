Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A01C8773
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF776E955;
	Wed,  2 Oct 2019 11:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2381C6E94C;
 Wed,  2 Oct 2019 11:38:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 04:38:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="198184212"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Oct 2019 04:38:32 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1iFcxj-0005mV-Kp; Wed, 02 Oct 2019 14:38:31 +0300
Date: Wed, 2 Oct 2019 14:38:31 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191002113831.GG4019@platvala-desk.ger.corp.intel.com>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
References: <20191002112648.12532-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002112648.12532-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_isolation: Bump support
 for Tigerlake
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMTI6MjY6NDhQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFRoZXJlJ3MgdmVyeSBsaXR0bGUgdmFyaWF0aW9uIGluIG5vbi1wcml2aWxlZ2VkIHJl
Z2lzdGVycyBmb3IgVGlnZXJsYWtlLAo+IHNvIHdlIGNhbiBtb3N0bHkgaW5oZXJpdCB0aGUgc2V0
IGZyb20gZ2VuMTEuIFRoZXJlIGlzIG5vIHdoaXRlbGlzdCBhdAo+IHByZXNlbnQsIHNvIHdlIGRv
IG5vdCBuZWVkIHRvIGFkZCBhbnkgc3BlY2lhbCByZWdpc3RlcnMuCj4gCj4gQnVnemlsbGE6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTU5OQo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+
ICB0ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMgfCAxMSArKysrKystLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhf
aXNvbGF0aW9uLmMKPiBpbmRleCBkZjFkNjU1YWUuLjgxOWRhYWZjMyAxMDA2NDQKPiAtLS0gYS90
ZXN0cy9pOTE1L2dlbV9jdHhfaXNvbGF0aW9uLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhf
aXNvbGF0aW9uLmMKPiBAQCAtNTUsMTAgKzU1LDExIEBAIGVudW0gewo+ICAjZGVmaW5lIEdFTjkg
KEFMTCA8PCA5KQo+ICAjZGVmaW5lIEdFTjEwIChBTEwgPDwgMTApCj4gICNkZWZpbmUgR0VOMTEg
KEFMTCA8PCAxMSkKPiArI2RlZmluZSBHRU4xMiAoQUxMIDw8IDEyKQo+ICAKPiAgI2RlZmluZSBO
T0NUWCAwCj4gIAo+IC0jZGVmaW5lIExBU1RfS05PV05fR0VOIDExCj4gKyNkZWZpbmUgTEFTVF9L
Tk9XTl9HRU4gMTIKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbmFtZWRfcmVnaXN0ZXIgewo+
ICAJY29uc3QgY2hhciAqbmFtZTsKPiBAQCAtMTE2LDkgKzExNyw5IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgbmFtZWRfcmVnaXN0ZXIgewo+ICAJeyAiQ2FjaGVfTW9kZV8wIiwgR0VONywgUkNTMCwg
MHg3MDAwLCAubWFza2VkID0gdHJ1ZSB9LAo+ICAJeyAiQ2FjaGVfTW9kZV8xIiwgR0VONywgUkNT
MCwgMHg3MDA0LCAubWFza2VkID0gdHJ1ZSB9LAo+ICAJeyAiR1RfTU9ERSIsIEdFTjgsIFJDUzAs
IDB4NzAwOCwgLm1hc2tlZCA9IHRydWUgfSwKPiAtCXsgIkwzX0NvbmZpZyIsIEdFTjgsIFJDUzAs
IDB4NzAzNCB9LAo+IC0JeyAiVERfQ1RMIiwgR0VOOCwgUkNTMCwgMHhlNDAwLCAud3JpdGVfbWFz
ayA9IDB4ZmZmZiB9LAo+IC0JeyAiVERfQ1RMMiIsIEdFTjgsIFJDUzAsIDB4ZTQwNCB9LAo+ICsJ
eyAiTDNfQ29uZmlnIiwgR0VOX1JBTkdFKDgsIDExKSwgUkNTMCwgMHg3MDM0IH0sCj4gKwl7ICJU
RF9DVEwiLCBHRU5fUkFOR0UoOCwgMTEpLCBSQ1MwLCAweGU0MDAsIC53cml0ZV9tYXNrID0gMHhm
ZmZmIH0sCj4gKwl7ICJURF9DVEwyIiwgR0VOX1JBTkdFKDgsIDExKSwgUkNTMCwgMHhlNDA0IH0s
Cj4gIAl7ICJTT19OVU1fUFJJTVNfV1JJVFRFTjAiLCBHRU42LCBSQ1MwLCAweDUyMDAsIDIgfSwK
PiAgCXsgIlNPX05VTV9QUklNU19XUklUVEVOMSIsIEdFTjYsIFJDUzAsIDB4NTIwOCwgMiB9LAo+
ICAJeyAiU09fTlVNX1BSSU1TX1dSSVRURU4yIiwgR0VONiwgUkNTMCwgMHg1MjEwLCAyIH0sCj4g
QEAgLTg1Miw3ICs4NTMsNyBAQCBpZ3RfbWFpbgo+ICAJCWdlbiA9IGludGVsX2dlbihpbnRlbF9n
ZXRfZHJtX2RldmlkKGZkKSk7Cj4gIAo+ICAJCWlndF93YXJuX29uX2YoZ2VuID4gTEFTVF9LTk9X
Tl9HRU4sCj4gLQkJCQkJICAiR0VOIG5vdCByZWNvZ25pemVkISBUZXN0IG5lZWRzIHRvIGJlIHVw
ZGF0ZWQgdG8gcnVuLiIpOwo+ICsJCQkgICAgICAiR0VOIG5vdCByZWNvZ25pemVkISBUZXN0IG5l
ZWRzIHRvIGJlIHVwZGF0ZWQgdG8gcnVuLiIpOwo+ICAJCWlndF9za2lwX29uKGdlbiA+IExBU1Rf
S05PV05fR0VOKTsKClRoYW5rcyB0byB0aGlzIGVkaXRvcmlhbCBjaGFuZ2UsIHdlJ3JlIGFibGUg
dG8gc2VlIHRoYXQgdGhpcyBzdHJpbmcgaXMKbWlzc2luZyBhIG5ld2xpbmUgY2hhcmFjdGVyLgoK
Ci0tIApQZXRyaSBMYXR2YWxhCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==

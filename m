Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEB513B6A2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 02:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8CB6E7DC;
	Wed, 15 Jan 2020 01:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFF06E457;
 Wed, 15 Jan 2020 01:01:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 17:01:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="217940885"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.29.74])
 by orsmga008.jf.intel.com with ESMTP; 14 Jan 2020 17:01:49 -0800
From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
To: akeem.g.abodunrin@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, omer.aran@intel.com,
 pragyansri.pathi@intel.com, d.scott.phillips@intel.com,
 david.c.stewart@intel.com, tony.luck@intel.com, jon.bloomfield@intel.com,
 sudeep.dutt@intel.com, daniel.vetter@intel.com, joonas.lahtinen@intel.com,
 jani.nikula@intel.com, chris.p.wilson@intel.com,
 prathap.kumar.valsan@intel.com, mika.kuoppala@intel.com,
 francesco.balestrieri@intel.com
Date: Tue, 14 Jan 2020 09:45:46 -0800
Message-Id: <20200114174549.74643-1-akeem.g.abodunrin@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH v2 0/2] Security mitigation for Intel Gen7
 HWs
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW50ZWwgSUQ6IFBTSVJULVRBLTIwMTkxMC0wMDEKQ1ZFSUQ6IENWRS0yMDE5LTE0NjE1CgpTdW1t
YXJ5IG9mIFZ1bG5lcmFiaWxpdHkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkluc3VmZmljaWVu
dCBjb250cm9sIGZsb3cgaW4gY2VydGFpbiBkYXRhIHN0cnVjdHVyZXMgZm9yIHNvbWUgSW50ZWwo
UikKUHJvY2Vzc29ycyB3aXRoIEludGVsIFByb2Nlc3NvciBHcmFwaGljcyBtYXkgYWxsb3cgYW4g
dW5hdXRoZW50aWNhdGVkCnVzZXIgdG8gcG90ZW50aWFsbHkgZW5hYmxlIGluZm9ybWF0aW9uIGRp
c2Nsb3N1cmUgdmlhIGxvY2FsIGFjY2VzcwoKUHJvZHVjdHMgYWZmZWN0ZWQ6Ci0tLS0tLS0tLS0t
LS0tLS0tLQpJbnRlbCBDUFXigJlzIHdpdGggR2VuNywgR2VuNy41IGFuZCBHZW45IEdyYXBoaWNz
LgoKTWl0aWdhdGlvbiBTdW1tYXJ5Ci0tLS0tLS0tLS0tLS0tLS0tLQpUaGlzIHBhdGNoIHByb3Zp
ZGVzIG1pdGlnYXRpb24gZm9yIEdlbjcgYW5kIEdlbjcuNSBoYXJkd2FyZSBvbmx5LgpQYXRjaCBm
b3IgR2VuOSBkZXZpY2VzIGhhdmUgYmVlbiBwcm92aWRlZCBhbmQgbWVyZ2VkIHRvIExpbnV4IG1h
aW5saW5lLAphbmQgYmFja3BvcnRlZCB0byBzdGFibGUga2VybmVscy4KTm90ZSB0aGF0IEdlbjgg
aXMgbm90IGltcGFjdGVkIGR1ZSB0byBhIHByZXZpb3VzbHkgaW1wbGVtZW50ZWQKd29ya2Fyb3Vu
ZC4KClRoZSBtaXRpZ2F0aW9uIGludm9sdmVzIHN1Ym1pdHRpbmcgYSBjdXN0b20gRVUga2VybmVs
IHByaW9yIHRvIGV2ZXJ5CmNvbnRleHQgcmVzdG9yZSwgaW4gb3JkZXIgdG8gZm9yY2libHkgY2xl
YXIgZG93biByZXNpZHVhbCBFVSBhbmQgVVJCCnJlc291cmNlcy4KClRoaXMgaXMgY3VycmVudGx5
IGFuIFJGQyB3aGlsZSBtb3JlIGFuYWx5c2lzIGlzIHBlcmZvcm1lZCBvbiB0aGUKcGVyZm9ybWFu
Y2UgaW1wbGljYXRpb25zLgoKTm90ZSBvbiBBZGRyZXNzIFNwYWNlIElzb2xhdGlvbiAoRnVsbCBQ
UEdUVCkKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCklzb2xh
dGlvbiBvZiBFVSBrZXJuZWwgYXNzZXRzIHNob3VsZCBiZSBjb25zaWRlcmVkIGNvbXBsZW1lbnRh
cnkgdG8gdGhlCmV4aXN0aW5nIHN1cHBvcnQgZm9yIGFkZHJlc3Mgc3BhY2UgaXNvbGF0aW9uIChh
a2EgRnVsbCBQUEdUVCksIHNpbmNlCndpdGhvdXQgYWRkcmVzcyBzcGFjZSBpc29sYXRpb24gdGhl
cmUgaXMgbWluaW1hbCB2YWx1ZSBpbiBwcmV2ZW50aW5nCmxlYWthZ2UgYmV0d2VlbiBFVSBjb250
ZXh0cy4gRnVsbCBQUEdUVCBoYXMgbG9uZyBiZWVuIHN1cHBvcnRlZCBvbiBHZW4KR2Z4IGRldmlj
ZXMgc2luY2UgR2VuOCwgYW5kIHByb3RlY3Rpb24gYWdhaW5zdCBFVSByZXNpZHVhbCBsZWFrYWdl
IGlzIGEKd2VsY29tZSBhZGRpdGlvbiBmb3IgdGhlc2UgbmV3ZXIgcGxhdGZvcm1zLgoKQnkgY29u
dHJhc3QsIEdlbjcgYW5kIEdlbjcuNSBkZXZpY2UgaW50cm9kdWNlZCBGdWxsIFBQR1RUIHN1cHBv
cnQgb25seQphcyBhIGhhcmR3YXJlIGRldmVsb3BtZW50IGZlYXR1cmUgZm9yIGFudGljaXBhdGVk
IEdlbjggcHJvZHVjdGl6YXRpb24uClN1cHBvcnQgd2FzIG5ldmVyIGludGVuZGVkIGZvciwgb3Ig
cHJvdmlkZWQgdG8gdGhlIExpbnV4IGtlcm5lbHMgZm9yCnRoZXNlIHBsYXRmb3Jtcy4gUmVjZW50
IHdvcmsgKHN0aWxsIG9uZ29pbmcpIHRvIHRoZSBtYWlubGluZSBrZXJuZWwgaXMKcmV0cm9hY3Rp
dmVseSBwcm92aWRpbmcgdGhpcyBzdXBwb3J0LCBidXQgZHVlIHRvIHRoZSBsZXZlbCBvZiBjb21w
bGV4aXR5Cml0IGlzIG5vdCBwcmFjdGljYWwgdG8gYXR0ZW1wdCB0byBiYWNrcG9ydCB0aGlzIHRv
IGVhcmxpZXIgc3RhYmxlCmtlcm5lbHMuIFNpbmNlIHdpdGhvdXQgRnVsbCBQUEdUVCwgRVUgcmVz
aWR1YWxzIHByb3RlY3Rpb24gaGFzCnF1ZXN0aW9uYWJsZSBiZW5lZml0LCAqdGhlcmUgYXJlIG5v
IHBsYW5zIHRvIHByb3ZpZGUgc3RhYmxlIGtlcm5lbApiYWNrcG9ydHMgZm9yIHRoaXMgcGF0Y2gg
c2VyaWVzLioKClYyOiBBZGRyZXNzZWQgY29tbWVudHMgYWJvdXQgdW51c2VkIGNvZGUsIGNvZGUg
Zm9ybWF0dGluZywgYW5kIGluY2x1ZGUKYWRkaXRpb25hbCBkZWJ1ZyBjb2RlCgpNaWthIEt1b3Bw
YWxhICgxKToKICBkcm0vaTkxNTogQWRkIG1lY2hhbmlzbSB0byBzdWJtaXQgYSBjb250ZXh0IFdB
IG9uIHJpbmcgc3VibWlzc2lvbgoKUHJhdGhhcCBLdW1hciBWYWxzYW4gKDEpOgogIGRybS9pOTE1
L2dlbjc6IENsZWFyIGFsbCBFVS9MMyByZXNpZHVhbCBjb250ZXh0cwoKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9nZW43X3JlbmRlcmNsZWFyLmMgICAgfCA1MTUgKysrKysrKysrKysrKysrKysrCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43X3JlbmRlcmNsZWFyLmggICAgfCAgMTYgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggIHwgIDE3ICstCiAuLi4v
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jICAgfCAxMDMgKysrLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oICAgICAgICAgICAgIHwgICA1ICsKIDYgZmls
ZXMgY2hhbmdlZCwgNjUxIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5jCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5o
CgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5D4163752
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 00:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606596EAED;
	Tue, 18 Feb 2020 23:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 907956EAE8;
 Tue, 18 Feb 2020 23:36:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 15:36:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="228917148"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.29.74])
 by orsmga008.jf.intel.com with ESMTP; 18 Feb 2020 15:36:54 -0800
From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
To: akeem.g.abodunrin@intel.com, jon.bloomfield@intel.com,
 sudeep.dutt@intel.com, daniel.vetter@intel.com,
 joonas.lahtinen@linux.intel.com, jani.nikula@intel.com,
 chris.p.wilson@intel.com, prathap.kumar.valsan@intel.com,
 mika.kuoppala@intel.com, francesco.balestrieri@intel.com,
 ville.syrjala@linux.intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, omer.aran@intel.com,
 pragyansri.pathi@intel.com, d.scott.phillips@intel.com,
 david.c.stewart@intel.com, tony.luck@intel.com
Date: Tue, 18 Feb 2020 08:21:03 -0800
Message-Id: <20200218162105.12537-1-akeem.g.abodunrin@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/2] Security mitigation for Intel Gen7/7.5
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
YXIgZG93biByZXNpZHVhbCBFVSBhbmQgVVJCCnJlc291cmNlcy4KClRoZSBjdXN0b20gRVUga2Vy
bmVsIGFyZSBnZW5lcmF0ZWQvYXNzZW1ibGVkIGF1dG9tYXRpY2FsbHksIHVzaW5nIE1FU0EKKGFu
IG9wZW4gc291cmNlIHRvb2wpIGFuZCBJR1QgR1BVIHRvb2wgLSBhc3NlbWJseSBzb3VyY2VzIGFy
ZSBwcm92aWRlZAp3aXRoIElHVCBzb3VyY2UgY29kZS4KClRoaXMgc2VjdXJpdHkgbWl0aWdhdGlv
biBjaGFuZ2UgZG9lcyBub3QgdHJpZ2dlciBhbnkga25vd24gcGVyZm9ybWFuY2UKcmVncmVzc2lv
bi4gUGVyZm9ybWFuY2UgaXMgb24gcGFyIHdpdGggY3VycmVudCBtYWlubGluZS9kcm0tdGlwLgoK
Tm90ZSBvbiBBZGRyZXNzIFNwYWNlIElzb2xhdGlvbiAoRnVsbCBQUEdUVCkKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCklzb2xhdGlvbiBvZiBFVSBrZXJuZWwg
YXNzZXRzIHNob3VsZCBiZSBjb25zaWRlcmVkIGNvbXBsZW1lbnRhcnkgdG8gdGhlCmV4aXN0aW5n
IHN1cHBvcnQgZm9yIGFkZHJlc3Mgc3BhY2UgaXNvbGF0aW9uIChha2EgRnVsbCBQUEdUVCksIHNp
bmNlCndpdGhvdXQgYWRkcmVzcyBzcGFjZSBpc29sYXRpb24gdGhlcmUgaXMgbWluaW1hbCB2YWx1
ZSBpbiBwcmV2ZW50aW5nCmxlYWthZ2UgYmV0d2VlbiBFVSBjb250ZXh0cy4gRnVsbCBQUEdUVCBo
YXMgbG9uZyBiZWVuIHN1cHBvcnRlZCBvbiBHZW4KR2Z4IGRldmljZXMgc2luY2UgR2VuOCwgYW5k
IHByb3RlY3Rpb24gYWdhaW5zdCBFVSByZXNpZHVhbCBsZWFrYWdlIGlzIGEKd2VsY29tZSBhZGRp
dGlvbiBmb3IgdGhlc2UgbmV3ZXIgcGxhdGZvcm1zLgoKQnkgY29udHJhc3QsIEdlbjcgYW5kIEdl
bjcuNSBkZXZpY2UgaW50cm9kdWNlZCBGdWxsIFBQR1RUIHN1cHBvcnQgb25seQphcyBhIGhhcmR3
YXJlIGRldmVsb3BtZW50IGZlYXR1cmUgZm9yIGFudGljaXBhdGVkIEdlbjggcHJvZHVjdGl6YXRp
b24uClN1cHBvcnQgd2FzIG5ldmVyIGludGVuZGVkIGZvciwgb3IgcHJvdmlkZWQgdG8gdGhlIExp
bnV4IGtlcm5lbHMgZm9yCnRoZXNlIHBsYXRmb3Jtcy4gUmVjZW50IHdvcmsgKHN0aWxsIG9uZ29p
bmcpIHRvIHRoZSBtYWlubGluZSBrZXJuZWwgaXMKcmV0cm9hY3RpdmVseSBwcm92aWRpbmcgdGhp
cyBzdXBwb3J0LCBidXQgZHVlIHRvIHRoZSBsZXZlbCBvZiBjb21wbGV4aXR5Cml0IGlzIG5vdCBw
cmFjdGljYWwgdG8gYXR0ZW1wdCB0byBiYWNrcG9ydCB0aGlzIHRvIGVhcmxpZXIgc3RhYmxlCmtl
cm5lbHMuIFNpbmNlIHdpdGhvdXQgRnVsbCBQUEdUVCwgRVUgcmVzaWR1YWxzIHByb3RlY3Rpb24g
aGFzCnF1ZXN0aW9uYWJsZSBiZW5lZml0LCAqdGhlcmUgYXJlIG5vIHBsYW5zIHRvIHByb3ZpZGUg
c3RhYmxlIGtlcm5lbApiYWNrcG9ydHMgZm9yIHRoaXMgcGF0Y2ggc2VyaWVzLioKCk1pa2EgS3Vv
cHBhbGEgKDEpOgogIGRybS9pOTE1OiBBZGQgbWVjaGFuaXNtIHRvIHN1Ym1pdCBhIGNvbnRleHQg
V0Egb24gcmluZyBzdWJtaXNzaW9uCgpQcmF0aGFwIEt1bWFyIFZhbHNhbiAoMSk6CiAgZHJtL2k5
MTUvZ2VuNzogQ2xlYXIgYWxsIEVVL0wzIHJlc2lkdWFsIGNvbnRleHRzCgogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2dlbjdfNV9jbGVhcmJ1ZmZlci5oICB8ICA2OSArKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2dlbjdfY2xlYXJidWZmZXIuaCAgICB8ICA2OSArKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuYyAgICB8IDM5OSArKysrKysrKysrKysrKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuaCAgICB8ICAxNSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCAgfCAgMTcgKy0KIC4u
Li9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgICB8IDEzNSArKysrKy0K
IDcgZmlsZXMgY2hhbmdlZCwgNjk4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN181X2NsZWFyYnVmZmVy
LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43X2NsZWFy
YnVmZmVyLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43
X3JlbmRlcmNsZWFyLmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9nZW43X3JlbmRlcmNsZWFyLmgKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

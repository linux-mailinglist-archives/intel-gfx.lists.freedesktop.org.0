Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF093A6BB1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 18:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95A589DFD;
	Mon, 14 Jun 2021 16:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1669989F06;
 Mon, 14 Jun 2021 16:26:47 +0000 (UTC)
IronPort-SDR: p82sOF9Nt3kHtYAkgI8R6sJbYWACN/uqKCsR5wmcE/43DhN3LjdSB++AGv/wGEjwnIgD9X0sna
 CzqUhRyx1JfA==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="269689035"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="269689035"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 09:26:44 -0700
IronPort-SDR: C9h9v5U5u79APONLXMu3PaH7PHTMIX+nqm1EmCDxMAua0qEVxNH2E8hbVLt7qf+GUtx2l4UqqT
 j5WPj2dfajWw==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="449946738"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 09:26:42 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 14 Jun 2021 18:26:11 +0200
Message-Id: <20210614162612.294869-12-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210614162612.294869-1-thomas.hellstrom@linux.intel.com>
References: <20210614162612.294869-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/12] drm/i915/gem: Zap the client blt code
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBub3QgdXNlZCBhbnl3aGVyZS4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7Zt
IDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgLQogLi4uL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jICAgIHwgMzU1IC0tLS0tLS0tLQogLi4uL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5oICAgIHwgIDIxIC0KIC4uLi9pOTE1L2dlbS9z
ZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2JsdC5jICB8IDcwNCAtLS0tLS0tLS0tLS0tLS0tLS0K
IC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oICB8ICAgMSAtCiA1
IGZpbGVzIGNoYW5nZWQsIDEwODIgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYwogZGVsZXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmgKIGRl
bGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2NsaWVudF9ibHQuYwoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggZGU0Y2I5YzUyNTg1Li5j
YTA3NDc0ZWMyZGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC0xMzYsNyArMTM2LDYgQEAgaTkx
NS15ICs9ICQoZ3QteSkKIGdlbS15ICs9IFwKIAlnZW0vaTkxNV9nZW1fYnVzeS5vIFwKIAlnZW0v
aTkxNV9nZW1fY2xmbHVzaC5vIFwKLQlnZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5vIFwKIAlnZW0v
aTkxNV9nZW1fY29udGV4dC5vIFwKIAlnZW0vaTkxNV9nZW1fY3JlYXRlLm8gXAogCWdlbS9pOTE1
X2dlbV9kbWFidWYubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Ns
aWVudF9ibHQuYwpkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggNDQ4MjFkOTQ1NDRmLi4w
MDAwMDAwMDAwMDAKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVu
dF9ibHQuYworKysgL2Rldi9udWxsCkBAIC0xLDM1NSArMCwwIEBACi0vLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUCi0vKgotICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRp
b24KLSAqLwotCi0jaW5jbHVkZSAiaTkxNV9kcnYuaCIKLSNpbmNsdWRlICJndC9pbnRlbF9jb250
ZXh0LmgiCi0jaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3BtLmgiCi0jaW5jbHVkZSAiaTkxNV9n
ZW1fY2xpZW50X2JsdC5oIgotI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdF9ibHQuaCIKLQotc3Ry
dWN0IGk5MTVfc2xlZXZlIHsKLQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKLQlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqOwotCXN0cnVjdCBzZ190YWJsZSAqcGFnZXM7Ci0Jc3RydWN0IGk5
MTVfcGFnZV9zaXplcyBwYWdlX3NpemVzOwotfTsKLQotc3RhdGljIGludCB2bWFfc2V0X3BhZ2Vz
KHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQotewotCXN0cnVjdCBpOTE1X3NsZWV2ZSAqc2xlZXZlID0g
dm1hLT5wcml2YXRlOwotCi0Jdm1hLT5wYWdlcyA9IHNsZWV2ZS0+cGFnZXM7Ci0Jdm1hLT5wYWdl
X3NpemVzID0gc2xlZXZlLT5wYWdlX3NpemVzOwotCi0JcmV0dXJuIDA7Ci19Ci0KLXN0YXRpYyB2
b2lkIHZtYV9jbGVhcl9wYWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKLXsKLQlHRU1fQlVHX09O
KCF2bWEtPnBhZ2VzKTsKLQl2bWEtPnBhZ2VzID0gTlVMTDsKLX0KLQotc3RhdGljIHZvaWQgdm1h
X2JpbmQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCi0JCSAgICAgc3RydWN0IGk5MTVf
dm1fcHRfc3Rhc2ggKnN0YXNoLAotCQkgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAotCQkgICAg
IGVudW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9sZXZlbCwKLQkJICAgICB1MzIgZmxhZ3MpCi17
Ci0Jdm0tPnZtYV9vcHMuYmluZF92bWEodm0sIHN0YXNoLCB2bWEsIGNhY2hlX2xldmVsLCBmbGFn
cyk7Ci19Ci0KLXN0YXRpYyB2b2lkIHZtYV91bmJpbmQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0sIHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQotewotCXZtLT52bWFfb3BzLnVuYmluZF92bWEo
dm0sIHZtYSk7Ci19Ci0KLXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV92bWFfb3BzIHByb3h5X3Zt
YV9vcHMgPSB7Ci0JLnNldF9wYWdlcyA9IHZtYV9zZXRfcGFnZXMsCi0JLmNsZWFyX3BhZ2VzID0g
dm1hX2NsZWFyX3BhZ2VzLAotCS5iaW5kX3ZtYSA9IHZtYV9iaW5kLAotCS51bmJpbmRfdm1hID0g
dm1hX3VuYmluZCwKLX07Ci0KLXN0YXRpYyBzdHJ1Y3QgaTkxNV9zbGVldmUgKmNyZWF0ZV9zbGVl
dmUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCi0JCQkJCSBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAotCQkJCQkgc3RydWN0IHNnX3RhYmxlICpwYWdlcywKLQkJCQkJIHN0
cnVjdCBpOTE1X3BhZ2Vfc2l6ZXMgKnBhZ2Vfc2l6ZXMpCi17Ci0Jc3RydWN0IGk5MTVfc2xlZXZl
ICpzbGVldmU7Ci0Jc3RydWN0IGk5MTVfdm1hICp2bWE7Ci0JaW50IGVycjsKLQotCXNsZWV2ZSA9
IGt6YWxsb2Moc2l6ZW9mKCpzbGVldmUpLCBHRlBfS0VSTkVMKTsKLQlpZiAoIXNsZWV2ZSkKLQkJ
cmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Ci0KLQl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmos
IHZtLCBOVUxMKTsKLQlpZiAoSVNfRVJSKHZtYSkpIHsKLQkJZXJyID0gUFRSX0VSUih2bWEpOwot
CQlnb3RvIGVycl9mcmVlOwotCX0KLQotCXZtYS0+cHJpdmF0ZSA9IHNsZWV2ZTsKLQl2bWEtPm9w
cyA9ICZwcm94eV92bWFfb3BzOwotCi0Jc2xlZXZlLT52bWEgPSB2bWE7Ci0Jc2xlZXZlLT5wYWdl
cyA9IHBhZ2VzOwotCXNsZWV2ZS0+cGFnZV9zaXplcyA9ICpwYWdlX3NpemVzOwotCi0JcmV0dXJu
IHNsZWV2ZTsKLQotZXJyX2ZyZWU6Ci0Ja2ZyZWUoc2xlZXZlKTsKLQlyZXR1cm4gRVJSX1BUUihl
cnIpOwotfQotCi1zdGF0aWMgdm9pZCBkZXN0cm95X3NsZWV2ZShzdHJ1Y3QgaTkxNV9zbGVldmUg
KnNsZWV2ZSkKLXsKLQlrZnJlZShzbGVldmUpOwotfQotCi1zdHJ1Y3QgY2xlYXJfcGFnZXNfd29y
ayB7Ci0Jc3RydWN0IGRtYV9mZW5jZSBkbWE7Ci0Jc3RydWN0IGRtYV9mZW5jZV9jYiBjYjsKLQlz
dHJ1Y3QgaTkxNV9zd19mZW5jZSB3YWl0OwotCXN0cnVjdCB3b3JrX3N0cnVjdCB3b3JrOwotCXN0
cnVjdCBpcnFfd29yayBpcnFfd29yazsKLQlzdHJ1Y3QgaTkxNV9zbGVldmUgKnNsZWV2ZTsKLQlz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Ci0JdTMyIHZhbHVlOwotfTsKLQotc3RhdGljIGNvbnN0
IGNoYXIgKmNsZWFyX3BhZ2VzX3dvcmtfZHJpdmVyX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpCi17Ci0JcmV0dXJuIERSSVZFUl9OQU1FOwotfQotCi1zdGF0aWMgY29uc3QgY2hhciAqY2xl
YXJfcGFnZXNfd29ya190aW1lbGluZV9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQotewot
CXJldHVybiAiY2xlYXIiOwotfQotCi1zdGF0aWMgdm9pZCBjbGVhcl9wYWdlc193b3JrX3JlbGVh
c2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCi17Ci0Jc3RydWN0IGNsZWFyX3BhZ2VzX3dvcmsg
KncgPSBjb250YWluZXJfb2YoZmVuY2UsIHR5cGVvZigqdyksIGRtYSk7Ci0KLQlkZXN0cm95X3Ns
ZWV2ZSh3LT5zbGVldmUpOwotCi0JaTkxNV9zd19mZW5jZV9maW5pKCZ3LT53YWl0KTsKLQotCUJV
SUxEX0JVR19PTihvZmZzZXRvZih0eXBlb2YoKncpLCBkbWEpKTsKLQlkbWFfZmVuY2VfZnJlZSgm
dy0+ZG1hKTsKLX0KLQotc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGNsZWFyX3Bh
Z2VzX3dvcmtfb3BzID0gewotCS5nZXRfZHJpdmVyX25hbWUgPSBjbGVhcl9wYWdlc193b3JrX2Ry
aXZlcl9uYW1lLAotCS5nZXRfdGltZWxpbmVfbmFtZSA9IGNsZWFyX3BhZ2VzX3dvcmtfdGltZWxp
bmVfbmFtZSwKLQkucmVsZWFzZSA9IGNsZWFyX3BhZ2VzX3dvcmtfcmVsZWFzZSwKLX07Ci0KLXN0
YXRpYyB2b2lkIGNsZWFyX3BhZ2VzX3NpZ25hbF9pcnFfd29ya2VyKHN0cnVjdCBpcnFfd29yayAq
d29yaykKLXsKLQlzdHJ1Y3QgY2xlYXJfcGFnZXNfd29yayAqdyA9IGNvbnRhaW5lcl9vZih3b3Jr
LCB0eXBlb2YoKncpLCBpcnFfd29yayk7Ci0KLQlkbWFfZmVuY2Vfc2lnbmFsKCZ3LT5kbWEpOwot
CWRtYV9mZW5jZV9wdXQoJnctPmRtYSk7Ci19Ci0KLXN0YXRpYyB2b2lkIGNsZWFyX3BhZ2VzX2Rt
YV9mZW5jZV9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKLQkJCQkgICAgIHN0cnVjdCBkbWFf
ZmVuY2VfY2IgKmNiKQotewotCXN0cnVjdCBjbGVhcl9wYWdlc193b3JrICp3ID0gY29udGFpbmVy
X29mKGNiLCB0eXBlb2YoKncpLCBjYik7Ci0KLQlpZiAoZmVuY2UtPmVycm9yKQotCQlkbWFfZmVu
Y2Vfc2V0X2Vycm9yKCZ3LT5kbWEsIGZlbmNlLT5lcnJvcik7Ci0KLQkvKgotCSAqIFB1c2ggdGhl
IHNpZ25hbGxpbmcgb2YgdGhlIGZlbmNlIGludG8geWV0IGFub3RoZXIgd29ya2VyIHRvIGF2b2lk
Ci0JICogdGhlIG5pZ2h0bWFyZSBsb2NraW5nIGFyb3VuZCB0aGUgZmVuY2Ugc3BpbmxvY2suCi0J
ICovCi0JaXJxX3dvcmtfcXVldWUoJnctPmlycV93b3JrKTsKLX0KLQotc3RhdGljIHZvaWQgY2xl
YXJfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKLXsKLQlzdHJ1Y3QgY2xl
YXJfcGFnZXNfd29yayAqdyA9IGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKncpLCB3b3JrKTsK
LQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gdy0+c2xlZXZlLT52bWEtPm9iajsK
LQlzdHJ1Y3QgaTkxNV92bWEgKnZtYSA9IHctPnNsZWV2ZS0+dm1hOwotCXN0cnVjdCBpOTE1X2dl
bV93d19jdHggd3c7Ci0Jc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Ci0Jc3RydWN0IGk5MTVfdm1h
ICpiYXRjaDsKLQlpbnQgZXJyID0gdy0+ZG1hLmVycm9yOwotCi0JaWYgKHVubGlrZWx5KGVycikp
Ci0JCWdvdG8gb3V0X3NpZ25hbDsKLQotCWlmIChvYmotPmNhY2hlX2RpcnR5KSB7Ci0JCWlmIChp
OTE1X2dlbV9vYmplY3RfaGFzX3N0cnVjdF9wYWdlKG9iaikpCi0JCQlkcm1fY2xmbHVzaF9zZyh3
LT5zbGVldmUtPnBhZ2VzKTsKLQkJb2JqLT5jYWNoZV9kaXJ0eSA9IGZhbHNlOwotCX0KLQlvYmot
PnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0dQVV9ET01BSU5TOwotCW9iai0+d3JpdGVfZG9tYWlu
ID0gMDsKLQotCWk5MTVfZ2VtX3d3X2N0eF9pbml0KCZ3dywgZmFsc2UpOwotCWludGVsX2VuZ2lu
ZV9wbV9nZXQody0+Y2UtPmVuZ2luZSk7Ci1yZXRyeToKLQllcnIgPSBpbnRlbF9jb250ZXh0X3Bp
bl93dyh3LT5jZSwgJnd3KTsKLQlpZiAoZXJyKQotCQlnb3RvIG91dF9zaWduYWw7Ci0KLQliYXRj
aCA9IGludGVsX2VtaXRfdm1hX2ZpbGxfYmx0KHctPmNlLCB2bWEsICZ3dywgdy0+dmFsdWUpOwot
CWlmIChJU19FUlIoYmF0Y2gpKSB7Ci0JCWVyciA9IFBUUl9FUlIoYmF0Y2gpOwotCQlnb3RvIG91
dF9jdHg7Ci0JfQotCi0JcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKHctPmNlKTsKLQlpZiAoSVNf
RVJSKHJxKSkgewotCQllcnIgPSBQVFJfRVJSKHJxKTsKLQkJZ290byBvdXRfYmF0Y2g7Ci0JfQot
Ci0JLyogVGhlcmUncyBubyB3YXkgdGhlIGZlbmNlIGhhcyBzaWduYWxsZWQgKi8KLQlpZiAoZG1h
X2ZlbmNlX2FkZF9jYWxsYmFjaygmcnEtPmZlbmNlLCAmdy0+Y2IsCi0JCQkJICAgY2xlYXJfcGFn
ZXNfZG1hX2ZlbmNlX2NiKSkKLQkJR0VNX0JVR19PTigxKTsKLQotCWVyciA9IGludGVsX2VtaXRf
dm1hX21hcmtfYWN0aXZlKGJhdGNoLCBycSk7Ci0JaWYgKHVubGlrZWx5KGVycikpCi0JCWdvdG8g
b3V0X3JlcXVlc3Q7Ci0KLQkvKgotCSAqIHctPmRtYSBpcyBhbHJlYWR5IGV4cG9ydGVkIHZpYSAo
dm1hfG9iaiktPnJlc3Ygd2UgbmVlZCBvbmx5Ci0JICoga2VlcCB0cmFjayBvZiB0aGUgR1BVIGFj
dGl2aXR5IHdpdGhpbiB0aGlzIHZtYS9yZXF1ZXN0LCBhbmQKLQkgKiBwcm9wYWdhdGUgdGhlIHNp
Z25hbCBmcm9tIHRoZSByZXF1ZXN0IHRvIHctPmRtYS4KLQkgKi8KLQllcnIgPSBfX2k5MTVfdm1h
X21vdmVfdG9fYWN0aXZlKHZtYSwgcnEpOwotCWlmIChlcnIpCi0JCWdvdG8gb3V0X3JlcXVlc3Q7
Ci0KLQlpZiAocnEtPmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1bWIpIHsKLQkJZXJyID0gcnEt
PmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1bWIocnEpOwotCQlpZiAodW5saWtlbHkoZXJyKSkK
LQkJCWdvdG8gb3V0X3JlcXVlc3Q7Ci0JfQotCi0JZXJyID0gcnEtPmVuZ2luZS0+ZW1pdF9iYl9z
dGFydChycSwKLQkJCQkJYmF0Y2gtPm5vZGUuc3RhcnQsIGJhdGNoLT5ub2RlLnNpemUsCi0JCQkJ
CTApOwotb3V0X3JlcXVlc3Q6Ci0JaWYgKHVubGlrZWx5KGVycikpIHsKLQkJaTkxNV9yZXF1ZXN0
X3NldF9lcnJvcl9vbmNlKHJxLCBlcnIpOwotCQllcnIgPSAwOwotCX0KLQotCWk5MTVfcmVxdWVz
dF9hZGQocnEpOwotb3V0X2JhdGNoOgotCWludGVsX2VtaXRfdm1hX3JlbGVhc2Uody0+Y2UsIGJh
dGNoKTsKLW91dF9jdHg6Ci0JaW50ZWxfY29udGV4dF91bnBpbih3LT5jZSk7Ci1vdXRfc2lnbmFs
OgotCWlmIChlcnIgPT0gLUVERUFETEspIHsKLQkJZXJyID0gaTkxNV9nZW1fd3dfY3R4X2JhY2tv
ZmYoJnd3KTsKLQkJaWYgKCFlcnIpCi0JCQlnb3RvIHJldHJ5OwotCX0KLQlpOTE1X2dlbV93d19j
dHhfZmluaSgmd3cpOwotCi0JaTkxNV92bWFfdW5waW4ody0+c2xlZXZlLT52bWEpOwotCWludGVs
X2VuZ2luZV9wbV9wdXQody0+Y2UtPmVuZ2luZSk7Ci0KLQlpZiAodW5saWtlbHkoZXJyKSkgewot
CQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZ3LT5kbWEsIGVycik7Ci0JCWRtYV9mZW5jZV9zaWduYWwo
JnctPmRtYSk7Ci0JCWRtYV9mZW5jZV9wdXQoJnctPmRtYSk7Ci0JfQotfQotCi1zdGF0aWMgaW50
IHBpbl93YWl0X2NsZWFyX3BhZ2VzX3dvcmsoc3RydWN0IGNsZWFyX3BhZ2VzX3dvcmsgKncsCi0J
CQkJICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCi17Ci0Jc3RydWN0IGk5MTVfdm1hICp2
bWEgPSB3LT5zbGVldmUtPnZtYTsKLQlzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHd3OwotCWludCBl
cnI7Ci0KLQlpOTE1X2dlbV93d19jdHhfaW5pdCgmd3csIGZhbHNlKTsKLXJldHJ5OgotCWVyciA9
IGk5MTVfZ2VtX29iamVjdF9sb2NrKHZtYS0+b2JqLCAmd3cpOwotCWlmIChlcnIpCi0JCWdvdG8g
b3V0OwotCi0JZXJyID0gaTkxNV92bWFfcGluX3d3KHZtYSwgJnd3LCAwLCAwLCBQSU5fVVNFUik7
Ci0JaWYgKHVubGlrZWx5KGVycikpCi0JCWdvdG8gb3V0OwotCi0JZXJyID0gaTkxNV9zd19mZW5j
ZV9hd2FpdF9yZXNlcnZhdGlvbigmdy0+d2FpdCwKLQkJCQkJICAgICAgdm1hLT5vYmotPmJhc2Uu
cmVzdiwgTlVMTCwKLQkJCQkJICAgICAgdHJ1ZSwgMCwgSTkxNV9GRU5DRV9HRlApOwotCWlmIChl
cnIpCi0JCWdvdG8gZXJyX3VucGluX3ZtYTsKLQotCWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKHZt
YS0+b2JqLT5iYXNlLnJlc3YsICZ3LT5kbWEpOwotCi1lcnJfdW5waW5fdm1hOgotCWlmIChlcnIp
Ci0JCWk5MTVfdm1hX3VucGluKHZtYSk7Ci1vdXQ6Ci0JaWYgKGVyciA9PSAtRURFQURMSykgewot
CQllcnIgPSBpOTE1X2dlbV93d19jdHhfYmFja29mZigmd3cpOwotCQlpZiAoIWVycikKLQkJCWdv
dG8gcmV0cnk7Ci0JfQotCWk5MTVfZ2VtX3d3X2N0eF9maW5pKCZ3dyk7Ci0JcmV0dXJuIGVycjsK
LX0KLQotc3RhdGljIGludCBfX2k5MTVfc3dfZmVuY2VfY2FsbAotY2xlYXJfcGFnZXNfd29ya19u
b3RpZnkoc3RydWN0IGk5MTVfc3dfZmVuY2UgKmZlbmNlLAotCQkJZW51bSBpOTE1X3N3X2ZlbmNl
X25vdGlmeSBzdGF0ZSkKLXsKLQlzdHJ1Y3QgY2xlYXJfcGFnZXNfd29yayAqdyA9IGNvbnRhaW5l
cl9vZihmZW5jZSwgdHlwZW9mKCp3KSwgd2FpdCk7Ci0KLQlzd2l0Y2ggKHN0YXRlKSB7Ci0JY2Fz
ZSBGRU5DRV9DT01QTEVURToKLQkJc2NoZWR1bGVfd29yaygmdy0+d29yayk7Ci0JCWJyZWFrOwot
Ci0JY2FzZSBGRU5DRV9GUkVFOgotCQlkbWFfZmVuY2VfcHV0KCZ3LT5kbWEpOwotCQlicmVhazsK
LQl9Ci0KLQlyZXR1cm4gTk9USUZZX0RPTkU7Ci19Ci0KLXN0YXRpYyBERUZJTkVfU1BJTkxPQ0so
ZmVuY2VfbG9jayk7Ci0KLS8qIFhYWDogYmV0dGVyIG5hbWUgcGxlYXNlICovCi1pbnQgaTkxNV9n
ZW1fc2NoZWR1bGVfZmlsbF9wYWdlc19ibHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiwKLQkJCQkgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKLQkJCQkgICAgIHN0cnVjdCBz
Z190YWJsZSAqcGFnZXMsCi0JCQkJICAgICBzdHJ1Y3QgaTkxNV9wYWdlX3NpemVzICpwYWdlX3Np
emVzLAotCQkJCSAgICAgdTMyIHZhbHVlKQotewotCXN0cnVjdCBjbGVhcl9wYWdlc193b3JrICp3
b3JrOwotCXN0cnVjdCBpOTE1X3NsZWV2ZSAqc2xlZXZlOwotCWludCBlcnI7Ci0KLQlzbGVldmUg
PSBjcmVhdGVfc2xlZXZlKGNlLT52bSwgb2JqLCBwYWdlcywgcGFnZV9zaXplcyk7Ci0JaWYgKElT
X0VSUihzbGVldmUpKQotCQlyZXR1cm4gUFRSX0VSUihzbGVldmUpOwotCi0Jd29yayA9IGttYWxs
b2Moc2l6ZW9mKCp3b3JrKSwgR0ZQX0tFUk5FTCk7Ci0JaWYgKCF3b3JrKSB7Ci0JCWRlc3Ryb3lf
c2xlZXZlKHNsZWV2ZSk7Ci0JCXJldHVybiAtRU5PTUVNOwotCX0KLQotCXdvcmstPnZhbHVlID0g
dmFsdWU7Ci0Jd29yay0+c2xlZXZlID0gc2xlZXZlOwotCXdvcmstPmNlID0gY2U7Ci0KLQlJTklU
X1dPUksoJndvcmstPndvcmssIGNsZWFyX3BhZ2VzX3dvcmtlcik7Ci0KLQlpbml0X2lycV93b3Jr
KCZ3b3JrLT5pcnFfd29yaywgY2xlYXJfcGFnZXNfc2lnbmFsX2lycV93b3JrZXIpOwotCi0JZG1h
X2ZlbmNlX2luaXQoJndvcmstPmRtYSwgJmNsZWFyX3BhZ2VzX3dvcmtfb3BzLCAmZmVuY2VfbG9j
aywgMCwgMCk7Ci0JaTkxNV9zd19mZW5jZV9pbml0KCZ3b3JrLT53YWl0LCBjbGVhcl9wYWdlc193
b3JrX25vdGlmeSk7Ci0KLQllcnIgPSBwaW5fd2FpdF9jbGVhcl9wYWdlc193b3JrKHdvcmssIGNl
KTsKLQlpZiAoZXJyIDwgMCkKLQkJZG1hX2ZlbmNlX3NldF9lcnJvcigmd29yay0+ZG1hLCBlcnIp
OwotCi0JZG1hX2ZlbmNlX2dldCgmd29yay0+ZG1hKTsKLQlpOTE1X3N3X2ZlbmNlX2NvbW1pdCgm
d29yay0+d2FpdCk7Ci0KLQlyZXR1cm4gZXJyOwotfQotCi0jaWYgSVNfRU5BQkxFRChDT05GSUdf
RFJNX0k5MTVfU0VMRlRFU1QpCi0jaW5jbHVkZSAic2VsZnRlc3RzL2k5MTVfZ2VtX2NsaWVudF9i
bHQuYyIKLSNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NsaWVudF9ibHQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGll
bnRfYmx0LmgKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDNkYmQyOGMyMmZmNS4uMDAw
MDAwMDAwMDAwCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRf
Ymx0LmgKKysrIC9kZXYvbnVsbApAQCAtMSwyMSArMCwwIEBACi0vKiBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogTUlUICovCi0vKgotICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRp
b24KLSAqLwotI2lmbmRlZiBfX0k5MTVfR0VNX0NMSUVOVF9CTFRfSF9fCi0jZGVmaW5lIF9fSTkx
NV9HRU1fQ0xJRU5UX0JMVF9IX18KLQotI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Ci0KLXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0Owotc3RydWN0IGk5MTVfcGFnZV9zaXplczsKLXN0cnVjdCBp
bnRlbF9jb250ZXh0Owotc3RydWN0IHNnX3RhYmxlOwotCi1pbnQgaTkxNV9nZW1fc2NoZWR1bGVf
ZmlsbF9wYWdlc19ibHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKLQkJCQkgICAg
IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKLQkJCQkgICAgIHN0cnVjdCBzZ190YWJsZSAqcGFn
ZXMsCi0JCQkJICAgICBzdHJ1Y3QgaTkxNV9wYWdlX3NpemVzICpwYWdlX3NpemVzLAotCQkJCSAg
ICAgdTMyIHZhbHVlKTsKLQotI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2JsdC5jCmRlbGV0ZWQgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCAxNzZlNmIyMmY4N2YuLjAwMDAwMDAwMDAwMAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NsaWVudF9ibHQuYworKysgL2Rldi9u
dWxsCkBAIC0xLDcwNCArMCwwIEBACi0vLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCi0v
KgotICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KLSAqLwotCi0jaW5jbHVk
ZSAiaTkxNV9zZWxmdGVzdC5oIgotCi0jaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIK
LSNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgotI2luY2x1ZGUgImd0L2ludGVsX2dwdV9jb21tYW5k
cy5oIgotI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9sbWVtLmgiCi0KLSNpbmNsdWRlICJzZWxmdGVz
dHMvaWd0X2ZsdXNoX3Rlc3QuaCIKLSNpbmNsdWRlICJzZWxmdGVzdHMvbW9ja19kcm0uaCIKLSNp
bmNsdWRlICJzZWxmdGVzdHMvaTkxNV9yYW5kb20uaCIKLSNpbmNsdWRlICJodWdlX2dlbV9vYmpl
Y3QuaCIKLSNpbmNsdWRlICJtb2NrX2NvbnRleHQuaCIKLQotc3RhdGljIGludCBfX2lndF9jbGll
bnRfZmlsbChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi17Ci0Jc3RydWN0IGludGVs
X2NvbnRleHQgKmNlID0gZW5naW5lLT5rZXJuZWxfY29udGV4dDsKLQlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOwotCUk5MTVfUk5EX1NUQVRFKHBybmcpOwotCUlHVF9USU1FT1VUKGVu
ZCk7Ci0JdTMyICp2YWRkcjsKLQlpbnQgZXJyID0gMDsKLQotCWludGVsX2VuZ2luZV9wbV9nZXQo
ZW5naW5lKTsKLQlkbyB7Ci0JCWNvbnN0IHUzMiBtYXhfYmxvY2tfc2l6ZSA9IFMxNl9NQVggKiBQ
QUdFX1NJWkU7Ci0JCXUzMiBzeiA9IG1pbl90KHU2NCwgY2UtPnZtLT50b3RhbCA+PiA0LCBwcmFu
ZG9tX3UzMl9zdGF0ZSgmcHJuZykpOwotCQl1MzIgcGh5c19zeiA9IHN6ICUgKG1heF9ibG9ja19z
aXplICsgMSk7Ci0JCXUzMiB2YWwgPSBwcmFuZG9tX3UzMl9zdGF0ZSgmcHJuZyk7Ci0JCXUzMiBp
OwotCi0JCXN6ID0gcm91bmRfdXAoc3osIFBBR0VfU0laRSk7Ci0JCXBoeXNfc3ogPSByb3VuZF91
cChwaHlzX3N6LCBQQUdFX1NJWkUpOwotCi0JCXByX2RlYnVnKCIlcyB3aXRoIHBoeXNfc3o9ICV4
LCBzej0leCwgdmFsPSV4XG4iLCBfX2Z1bmNfXywKLQkJCSBwaHlzX3N6LCBzeiwgdmFsKTsKLQot
CQlvYmogPSBodWdlX2dlbV9vYmplY3QoZW5naW5lLT5pOTE1LCBwaHlzX3N6LCBzeik7Ci0JCWlm
IChJU19FUlIob2JqKSkgewotCQkJZXJyID0gUFRSX0VSUihvYmopOwotCQkJZ290byBlcnJfZmx1
c2g7Ci0JCX0KLQotCQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKG9i
aiwgSTkxNV9NQVBfV0IpOwotCQlpZiAoSVNfRVJSKHZhZGRyKSkgewotCQkJZXJyID0gUFRSX0VS
Uih2YWRkcik7Ci0JCQlnb3RvIGVycl9wdXQ7Ci0JCX0KLQotCQkvKgotCQkgKiBYWFg6IFRoZSBn
b2FsIGlzIG1vdmUgdGhpcyB0byBnZXRfcGFnZXMsIHNvIHRyeSB0byBkaXJ0eSB0aGUKLQkJICog
Q1BVIGNhY2hlIGZpcnN0IHRvIGNoZWNrIHRoYXQgd2UgZG8gdGhlIHJlcXVpcmVkIGNsZmx1c2gK
LQkJICogYmVmb3JlIHNjaGVkdWxpbmcgdGhlIGJsdCBmb3IgIWxsYyBwbGF0Zm9ybXMuIFRoaXMg
bWF0Y2hlcwotCQkgKiBzb21lIHZlcnNpb24gb2YgcmVhbGl0eSB3aGVyZSBhdCBnZXRfcGFnZXMg
dGhlIHBhZ2VzCi0JCSAqIHRoZW1zZWx2ZXMgbWF5IG5vdCB5ZXQgYmUgY29oZXJlbnQgd2l0aCB0
aGUgR1BVKHN3YXAtaW4pLiBJZgotCQkgKiB3ZSBhcmUgbWlzc2luZyB0aGUgZmx1c2ggdGhlbiB3
ZSBzaG91bGQgc2VlIHRoZSBzdGFsZSBjYWNoZQotCQkgKiB2YWx1ZXMgYWZ0ZXIgd2UgZG8gdGhl
IHNldF90b19jcHVfZG9tYWluIGFuZCBwaWNrIGl0IHVwIGFzIGEKLQkJICogdGVzdCBmYWlsdXJl
LgotCQkgKi8KLQkJbWVtc2V0MzIodmFkZHIsIHZhbCBeIDB4ZGVhZGJlYWYsCi0JCQkgaHVnZV9n
ZW1fb2JqZWN0X3BoeXNfc2l6ZShvYmopIC8gc2l6ZW9mKHUzMikpOwotCi0JCWlmICghKG9iai0+
Y2FjaGVfY29oZXJlbnQgJiBJOTE1X0JPX0NBQ0hFX0NPSEVSRU5UX0ZPUl9XUklURSkpCi0JCQlv
YmotPmNhY2hlX2RpcnR5ID0gdHJ1ZTsKLQotCQllcnIgPSBpOTE1X2dlbV9zY2hlZHVsZV9maWxs
X3BhZ2VzX2JsdChvYmosIGNlLCBvYmotPm1tLnBhZ2VzLAotCQkJCQkJICAgICAgICZvYmotPm1t
LnBhZ2Vfc2l6ZXMsCi0JCQkJCQkgICAgICAgdmFsKTsKLQkJaWYgKGVycikKLQkJCWdvdG8gZXJy
X3VucGluOwotCi0JCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaiwgTlVMTCk7Ci0JCWVyciA9IGk5
MTVfZ2VtX29iamVjdF9zZXRfdG9fY3B1X2RvbWFpbihvYmosIGZhbHNlKTsKLQkJaTkxNV9nZW1f
b2JqZWN0X3VubG9jayhvYmopOwotCQlpZiAoZXJyKQotCQkJZ290byBlcnJfdW5waW47Ci0KLQkJ
Zm9yIChpID0gMDsgaSA8IGh1Z2VfZ2VtX29iamVjdF9waHlzX3NpemUob2JqKSAvIHNpemVvZih1
MzIpOyArK2kpIHsKLQkJCWlmICh2YWRkcltpXSAhPSB2YWwpIHsKLQkJCQlwcl9lcnIoInZhZGRy
WyV1XT0leCwgZXhwZWN0ZWQ9JXhcbiIsIGksCi0JCQkJICAgICAgIHZhZGRyW2ldLCB2YWwpOwot
CQkJCWVyciA9IC1FSU5WQUw7Ci0JCQkJZ290byBlcnJfdW5waW47Ci0JCQl9Ci0JCX0KLQotCQlp
OTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7Ci0JCWk5MTVfZ2VtX29iamVjdF9wdXQob2Jq
KTsKLQl9IHdoaWxlICghdGltZV9hZnRlcihqaWZmaWVzLCBlbmQpKTsKLQotCWdvdG8gZXJyX2Zs
dXNoOwotCi1lcnJfdW5waW46Ci0JaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOwotZXJy
X3B1dDoKLQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7Ci1lcnJfZmx1c2g6Ci0JaWYgKGVyciA9
PSAtRU5PTUVNKQotCQllcnIgPSAwOwotCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKLQot
CXJldHVybiBlcnI7Ci19Ci0KLXN0YXRpYyBpbnQgaWd0X2NsaWVudF9maWxsKHZvaWQgKmFyZykK
LXsKLQlpbnQgaW5zdCA9IDA7Ci0KLQlkbyB7Ci0JCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZTsKLQkJaW50IGVycjsKLQotCQllbmdpbmUgPSBpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIo
YXJnLAotCQkJCQkJICBJOTE1X0VOR0lORV9DTEFTU19DT1BZLAotCQkJCQkJICBpbnN0KyspOwot
CQlpZiAoIWVuZ2luZSkKLQkJCXJldHVybiAwOwotCi0JCWVyciA9IF9faWd0X2NsaWVudF9maWxs
KGVuZ2luZSk7Ci0JCWlmIChlcnIgPT0gLUVOT01FTSkKLQkJCWVyciA9IDA7Ci0JCWlmIChlcnIp
Ci0JCQlyZXR1cm4gZXJyOwotCX0gd2hpbGUgKDEpOwotfQotCi0jZGVmaW5lIFdJRFRIIDUxMgot
I2RlZmluZSBIRUlHSFQgMzIKLQotc3RydWN0IGJsaXRfYnVmZmVyIHsKLQlzdHJ1Y3QgaTkxNV92
bWEgKnZtYTsKLQl1MzIgc3RhcnRfdmFsOwotCXUzMiB0aWxpbmc7Ci19OwotCi1zdHJ1Y3QgdGls
ZWRfYmxpdHMgewotCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKLQlzdHJ1Y3QgYmxpdF9idWZm
ZXIgYnVmZmVyc1szXTsKLQlzdHJ1Y3QgYmxpdF9idWZmZXIgc2NyYXRjaDsKLQlzdHJ1Y3QgaTkx
NV92bWEgKmJhdGNoOwotCXU2NCBob2xlOwotCXUzMiB3aWR0aDsKLQl1MzIgaGVpZ2h0OwotfTsK
LQotc3RhdGljIGludCBwcmVwYXJlX2JsaXQoY29uc3Qgc3RydWN0IHRpbGVkX2JsaXRzICp0LAot
CQkJc3RydWN0IGJsaXRfYnVmZmVyICpkc3QsCi0JCQlzdHJ1Y3QgYmxpdF9idWZmZXIgKnNyYywK
LQkJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpiYXRjaCkKLXsKLQljb25zdCBpbnQgdmVy
ID0gR1JBUEhJQ1NfVkVSKHRvX2k5MTUoYmF0Y2gtPmJhc2UuZGV2KSk7Ci0JYm9vbCB1c2VfNjRi
X3JlbG9jID0gdmVyID49IDg7Ci0JdTMyIHNyY19waXRjaCwgZHN0X3BpdGNoOwotCXUzMiBjbWQs
ICpjczsKLQotCWNzID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQoYmF0Y2gsIEk5
MTVfTUFQX1dDKTsKLQlpZiAoSVNfRVJSKGNzKSkKLQkJcmV0dXJuIFBUUl9FUlIoY3MpOwotCi0J
KmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsKLQkqY3MrKyA9IGk5MTVfbW1pb19yZWdf
b2Zmc2V0KEJDU19TV0NUUkwpOwotCWNtZCA9IChCQ1NfU1JDX1kgfCBCQ1NfRFNUX1kpIDw8IDE2
OwotCWlmIChzcmMtPnRpbGluZyA9PSBJOTE1X1RJTElOR19ZKQotCQljbWQgfD0gQkNTX1NSQ19Z
OwotCWlmIChkc3QtPnRpbGluZyA9PSBJOTE1X1RJTElOR19ZKQotCQljbWQgfD0gQkNTX0RTVF9Z
OwotCSpjcysrID0gY21kOwotCi0JY21kID0gTUlfRkxVU0hfRFc7Ci0JaWYgKHZlciA+PSA4KQot
CQljbWQrKzsKLQkqY3MrKyA9IGNtZDsKLQkqY3MrKyA9IDA7Ci0JKmNzKysgPSAwOwotCSpjcysr
ID0gMDsKLQotCWNtZCA9IFhZX1NSQ19DT1BZX0JMVF9DTUQgfCBCTFRfV1JJVEVfUkdCQSB8ICg4
IC0gMik7Ci0JaWYgKHZlciA+PSA4KQotCQljbWQgKz0gMjsKLQotCXNyY19waXRjaCA9IHQtPndp
ZHRoICogNDsKLQlpZiAoc3JjLT50aWxpbmcpIHsKLQkJY21kIHw9IFhZX1NSQ19DT1BZX0JMVF9T
UkNfVElMRUQ7Ci0JCXNyY19waXRjaCAvPSA0OwotCX0KLQotCWRzdF9waXRjaCA9IHQtPndpZHRo
ICogNDsKLQlpZiAoZHN0LT50aWxpbmcpIHsKLQkJY21kIHw9IFhZX1NSQ19DT1BZX0JMVF9EU1Rf
VElMRUQ7Ci0JCWRzdF9waXRjaCAvPSA0OwotCX0KLQotCSpjcysrID0gY21kOwotCSpjcysrID0g
QkxUX0RFUFRIXzMyIHwgQkxUX1JPUF9TUkNfQ09QWSB8IGRzdF9waXRjaDsKLQkqY3MrKyA9IDA7
Ci0JKmNzKysgPSB0LT5oZWlnaHQgPDwgMTYgfCB0LT53aWR0aDsKLQkqY3MrKyA9IGxvd2VyXzMy
X2JpdHMoZHN0LT52bWEtPm5vZGUuc3RhcnQpOwotCWlmICh1c2VfNjRiX3JlbG9jKQotCQkqY3Mr
KyA9IHVwcGVyXzMyX2JpdHMoZHN0LT52bWEtPm5vZGUuc3RhcnQpOwotCSpjcysrID0gMDsKLQkq
Y3MrKyA9IHNyY19waXRjaDsKLQkqY3MrKyA9IGxvd2VyXzMyX2JpdHMoc3JjLT52bWEtPm5vZGUu
c3RhcnQpOwotCWlmICh1c2VfNjRiX3JlbG9jKQotCQkqY3MrKyA9IHVwcGVyXzMyX2JpdHMoc3Jj
LT52bWEtPm5vZGUuc3RhcnQpOwotCi0JKmNzKysgPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwotCi0J
aTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChiYXRjaCk7Ci0JaTkxNV9nZW1fb2JqZWN0X3VucGlu
X21hcChiYXRjaCk7Ci0KLQlyZXR1cm4gMDsKLX0KLQotc3RhdGljIHZvaWQgdGlsZWRfYmxpdHNf
ZGVzdHJveV9idWZmZXJzKHN0cnVjdCB0aWxlZF9ibGl0cyAqdCkKLXsKLQlpbnQgaTsKLQotCWZv
ciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHQtPmJ1ZmZlcnMpOyBpKyspCi0JCWk5MTVfdm1hX3B1
dCh0LT5idWZmZXJzW2ldLnZtYSk7Ci0KLQlpOTE1X3ZtYV9wdXQodC0+c2NyYXRjaC52bWEpOwot
CWk5MTVfdm1hX3B1dCh0LT5iYXRjaCk7Ci19Ci0KLXN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKgot
X19jcmVhdGVfdm1hKHN0cnVjdCB0aWxlZF9ibGl0cyAqdCwgc2l6ZV90IHNpemUsIGJvb2wgbG1l
bSkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHQtPmNlLT52bS0+aTkxNTsK
LQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwotCXN0cnVjdCBpOTE1X3ZtYSAqdm1h
OwotCi0JaWYgKGxtZW0pCi0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShpOTE1
LCBzaXplLCAwKTsKLQllbHNlCi0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0o
aTkxNSwgc2l6ZSk7Ci0JaWYgKElTX0VSUihvYmopKQotCQlyZXR1cm4gRVJSX0NBU1Qob2JqKTsK
LQotCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgdC0+Y2UtPnZtLCBOVUxMKTsKLQlpZiAo
SVNfRVJSKHZtYSkpCi0JCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKLQotCXJldHVybiB2bWE7
Ci19Ci0KLXN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV92bWEoc3RydWN0IHRpbGVkX2Js
aXRzICp0LCBib29sIGxtZW0pCi17Ci0JcmV0dXJuIF9fY3JlYXRlX3ZtYSh0LCBQQUdFX0FMSUdO
KHQtPndpZHRoICogdC0+aGVpZ2h0ICogNCksIGxtZW0pOwotfQotCi1zdGF0aWMgaW50IHRpbGVk
X2JsaXRzX2NyZWF0ZV9idWZmZXJzKHN0cnVjdCB0aWxlZF9ibGl0cyAqdCwKLQkJCQkgICAgICBp
bnQgd2lkdGgsIGludCBoZWlnaHQsCi0JCQkJICAgICAgc3RydWN0IHJuZF9zdGF0ZSAqcHJuZykK
LXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHQtPmNlLT5lbmdpbmUtPmk5MTU7
Ci0JaW50IGk7Ci0KLQl0LT53aWR0aCA9IHdpZHRoOwotCXQtPmhlaWdodCA9IGhlaWdodDsKLQot
CXQtPmJhdGNoID0gX19jcmVhdGVfdm1hKHQsIFBBR0VfU0laRSwgZmFsc2UpOwotCWlmIChJU19F
UlIodC0+YmF0Y2gpKQotCQlyZXR1cm4gUFRSX0VSUih0LT5iYXRjaCk7Ci0KLQl0LT5zY3JhdGNo
LnZtYSA9IGNyZWF0ZV92bWEodCwgZmFsc2UpOwotCWlmIChJU19FUlIodC0+c2NyYXRjaC52bWEp
KSB7Ci0JCWk5MTVfdm1hX3B1dCh0LT5iYXRjaCk7Ci0JCXJldHVybiBQVFJfRVJSKHQtPnNjcmF0
Y2gudm1hKTsKLQl9Ci0KLQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRSh0LT5idWZmZXJzKTsg
aSsrKSB7Ci0JCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwotCi0JCXZtYSA9IGNyZWF0ZV92bWEodCwg
SEFTX0xNRU0oaTkxNSkgJiYgaSAlIDIpOwotCQlpZiAoSVNfRVJSKHZtYSkpIHsKLQkJCXRpbGVk
X2JsaXRzX2Rlc3Ryb3lfYnVmZmVycyh0KTsKLQkJCXJldHVybiBQVFJfRVJSKHZtYSk7Ci0JCX0K
LQotCQl0LT5idWZmZXJzW2ldLnZtYSA9IHZtYTsKLQkJdC0+YnVmZmVyc1tpXS50aWxpbmcgPQot
CQkJaTkxNV9wcmFuZG9tX3UzMl9tYXhfc3RhdGUoSTkxNV9USUxJTkdfWSArIDEsIHBybmcpOwot
CX0KLQotCXJldHVybiAwOwotfQotCi1zdGF0aWMgdm9pZCBmaWxsX3NjcmF0Y2goc3RydWN0IHRp
bGVkX2JsaXRzICp0LCB1MzIgKnZhZGRyLCB1MzIgdmFsKQotewotCWludCBpOwotCi0JdC0+c2Ny
YXRjaC5zdGFydF92YWwgPSB2YWw7Ci0JZm9yIChpID0gMDsgaSA8IHQtPndpZHRoICogdC0+aGVp
Z2h0OyBpKyspCi0JCXZhZGRyW2ldID0gdmFsKys7Ci0KLQlpOTE1X2dlbV9vYmplY3RfZmx1c2hf
bWFwKHQtPnNjcmF0Y2gudm1hLT5vYmopOwotfQotCi1zdGF0aWMgdTY0IHN3aXp6bGVfYml0KHVu
c2lnbmVkIGludCBiaXQsIHU2NCBvZmZzZXQpCi17Ci0JcmV0dXJuIChvZmZzZXQgJiBCSVRfVUxM
KGJpdCkpID4+IChiaXQgLSA2KTsKLX0KLQotc3RhdGljIHU2NCB0aWxlZF9vZmZzZXQoY29uc3Qg
c3RydWN0IGludGVsX2d0ICpndCwKLQkJCXU2NCB2LAotCQkJdW5zaWduZWQgaW50IHN0cmlkZSwK
LQkJCXVuc2lnbmVkIGludCB0aWxpbmcpCi17Ci0JdW5zaWduZWQgaW50IHN3aXp6bGU7Ci0JdTY0
IHgsIHk7Ci0KLQlpZiAodGlsaW5nID09IEk5MTVfVElMSU5HX05PTkUpCi0JCXJldHVybiB2Owot
Ci0JeSA9IGRpdjY0X3U2NF9yZW0odiwgc3RyaWRlLCAmeCk7Ci0KLQlpZiAodGlsaW5nID09IEk5
MTVfVElMSU5HX1gpIHsKLQkJdiA9IGRpdjY0X3U2NF9yZW0oeSwgOCwgJnkpICogc3RyaWRlICog
ODsKLQkJdiArPSB5ICogNTEyOwotCQl2ICs9IGRpdjY0X3U2NF9yZW0oeCwgNTEyLCAmeCkgPDwg
MTI7Ci0JCXYgKz0geDsKLQotCQlzd2l6emxlID0gZ3QtPmdndHQtPmJpdF82X3N3aXp6bGVfeDsK
LQl9IGVsc2UgewotCQljb25zdCB1bnNpZ25lZCBpbnQgeXRpbGVfc3BhbiA9IDE2OwotCQljb25z
dCB1bnNpZ25lZCBpbnQgeXRpbGVfaGVpZ2h0ID0gNTEyOwotCi0JCXYgPSBkaXY2NF91NjRfcmVt
KHksIDMyLCAmeSkgKiBzdHJpZGUgKiAzMjsKLQkJdiArPSB5ICogeXRpbGVfc3BhbjsKLQkJdiAr
PSBkaXY2NF91NjRfcmVtKHgsIHl0aWxlX3NwYW4sICZ4KSAqIHl0aWxlX2hlaWdodDsKLQkJdiAr
PSB4OwotCi0JCXN3aXp6bGUgPSBndC0+Z2d0dC0+Yml0XzZfc3dpenpsZV95OwotCX0KLQotCXN3
aXRjaCAoc3dpenpsZSkgewotCWNhc2UgSTkxNV9CSVRfNl9TV0laWkxFXzk6Ci0JCXYgXj0gc3dp
enpsZV9iaXQoOSwgdik7Ci0JCWJyZWFrOwotCWNhc2UgSTkxNV9CSVRfNl9TV0laWkxFXzlfMTA6
Ci0JCXYgXj0gc3dpenpsZV9iaXQoOSwgdikgXiBzd2l6emxlX2JpdCgxMCwgdik7Ci0JCWJyZWFr
OwotCWNhc2UgSTkxNV9CSVRfNl9TV0laWkxFXzlfMTE6Ci0JCXYgXj0gc3dpenpsZV9iaXQoOSwg
dikgXiBzd2l6emxlX2JpdCgxMSwgdik7Ci0JCWJyZWFrOwotCWNhc2UgSTkxNV9CSVRfNl9TV0la
WkxFXzlfMTBfMTE6Ci0JCXYgXj0gc3dpenpsZV9iaXQoOSwgdikgXiBzd2l6emxlX2JpdCgxMCwg
dikgXiBzd2l6emxlX2JpdCgxMSwgdik7Ci0JCWJyZWFrOwotCX0KLQotCXJldHVybiB2OwotfQot
Ci1zdGF0aWMgY29uc3QgY2hhciAqcmVwcl90aWxpbmcoaW50IHRpbGluZykKLXsKLQlzd2l0Y2gg
KHRpbGluZykgewotCWNhc2UgSTkxNV9USUxJTkdfTk9ORTogcmV0dXJuICJsaW5lYXIiOwotCWNh
c2UgSTkxNV9USUxJTkdfWDogcmV0dXJuICJYIjsKLQljYXNlIEk5MTVfVElMSU5HX1k6IHJldHVy
biAiWSI7Ci0JZGVmYXVsdDogcmV0dXJuICJ1bmtub3duIjsKLQl9Ci19Ci0KLXN0YXRpYyBpbnQg
dmVyaWZ5X2J1ZmZlcihjb25zdCBzdHJ1Y3QgdGlsZWRfYmxpdHMgKnQsCi0JCQkgc3RydWN0IGJs
aXRfYnVmZmVyICpidWYsCi0JCQkgc3RydWN0IHJuZF9zdGF0ZSAqcHJuZykKLXsKLQljb25zdCB1
MzIgKnZhZGRyOwotCWludCByZXQgPSAwOwotCWludCB4LCB5LCBwOwotCi0JeCA9IGk5MTVfcHJh
bmRvbV91MzJfbWF4X3N0YXRlKHQtPndpZHRoLCBwcm5nKTsKLQl5ID0gaTkxNV9wcmFuZG9tX3Uz
Ml9tYXhfc3RhdGUodC0+aGVpZ2h0LCBwcm5nKTsKLQlwID0geSAqIHQtPndpZHRoICsgeDsKLQot
CXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQoYnVmLT52bWEtPm9iaiwg
STkxNV9NQVBfV0MpOwotCWlmIChJU19FUlIodmFkZHIpKQotCQlyZXR1cm4gUFRSX0VSUih2YWRk
cik7Ci0KLQlpZiAodmFkZHJbMF0gIT0gYnVmLT5zdGFydF92YWwpIHsKLQkJcmV0ID0gLUVJTlZB
TDsKLQl9IGVsc2UgewotCQl1NjQgdiA9IHRpbGVkX29mZnNldChidWYtPnZtYS0+dm0tPmd0LAot
CQkJCSAgICAgcCAqIDQsIHQtPndpZHRoICogNCwKLQkJCQkgICAgIGJ1Zi0+dGlsaW5nKTsKLQot
CQlpZiAodmFkZHJbdiAvIHNpemVvZigqdmFkZHIpXSAhPSBidWYtPnN0YXJ0X3ZhbCArIHApCi0J
CQlyZXQgPSAtRUlOVkFMOwotCX0KLQlpZiAocmV0KSB7Ci0JCXByX2VycigiSW52YWxpZCAlcyB0
aWxpbmcgZGV0ZWN0ZWQgYXQgKCVkLCAlZCksIHN0YXJ0X3ZhbCAleFxuIiwKLQkJICAgICAgIHJl
cHJfdGlsaW5nKGJ1Zi0+dGlsaW5nKSwKLQkJICAgICAgIHgsIHksIGJ1Zi0+c3RhcnRfdmFsKTsK
LQkJaWd0X2hleGR1bXAodmFkZHIsIDQwOTYpOwotCX0KLQotCWk5MTVfZ2VtX29iamVjdF91bnBp
bl9tYXAoYnVmLT52bWEtPm9iaik7Ci0JcmV0dXJuIHJldDsKLX0KLQotc3RhdGljIGludCBtb3Zl
X3RvX2FjdGl2ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKLQkJCSAgc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsCi0JCQkgIHVuc2lnbmVkIGludCBmbGFncykKLXsKLQlpbnQgZXJyOwotCi0JaTkxNV92
bWFfbG9jayh2bWEpOwotCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3QocnEsIHZtYS0+
b2JqLCBmYWxzZSk7Ci0JaWYgKGVyciA9PSAwKQotCQllcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2Fj
dGl2ZSh2bWEsIHJxLCBmbGFncyk7Ci0JaTkxNV92bWFfdW5sb2NrKHZtYSk7Ci0KLQlyZXR1cm4g
ZXJyOwotfQotCi1zdGF0aWMgaW50IHBpbl9idWZmZXIoc3RydWN0IGk5MTVfdm1hICp2bWEsIHU2
NCBhZGRyKQotewotCWludCBlcnI7Ci0KLQlpZiAoZHJtX21tX25vZGVfYWxsb2NhdGVkKCZ2bWEt
Pm5vZGUpICYmIHZtYS0+bm9kZS5zdGFydCAhPSBhZGRyKSB7Ci0JCWVyciA9IGk5MTVfdm1hX3Vu
YmluZCh2bWEpOwotCQlpZiAoZXJyKQotCQkJcmV0dXJuIGVycjsKLQl9Ci0KLQllcnIgPSBpOTE1
X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5fVVNFUiB8IFBJTl9PRkZTRVRfRklYRUQgfCBhZGRyKTsK
LQlpZiAoZXJyKQotCQlyZXR1cm4gZXJyOwotCi0JcmV0dXJuIDA7Ci19Ci0KLXN0YXRpYyBpbnQK
LXRpbGVkX2JsaXQoc3RydWN0IHRpbGVkX2JsaXRzICp0LAotCSAgIHN0cnVjdCBibGl0X2J1ZmZl
ciAqZHN0LCB1NjQgZHN0X2FkZHIsCi0JICAgc3RydWN0IGJsaXRfYnVmZmVyICpzcmMsIHU2NCBz
cmNfYWRkcikKLXsKLQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKLQlpbnQgZXJyOwotCi0JZXJy
ID0gcGluX2J1ZmZlcihzcmMtPnZtYSwgc3JjX2FkZHIpOwotCWlmIChlcnIpIHsKLQkJcHJfZXJy
KCJDYW5ub3QgcGluIHNyYyBAICVsbHhcbiIsIHNyY19hZGRyKTsKLQkJcmV0dXJuIGVycjsKLQl9
Ci0KLQllcnIgPSBwaW5fYnVmZmVyKGRzdC0+dm1hLCBkc3RfYWRkcik7Ci0JaWYgKGVycikgewot
CQlwcl9lcnIoIkNhbm5vdCBwaW4gZHN0IEAgJWxseFxuIiwgZHN0X2FkZHIpOwotCQlnb3RvIGVy
cl9zcmM7Ci0JfQotCi0JZXJyID0gaTkxNV92bWFfcGluKHQtPmJhdGNoLCAwLCAwLCBQSU5fVVNF
UiB8IFBJTl9ISUdIKTsKLQlpZiAoZXJyKSB7Ci0JCXByX2VycigiY2Fubm90IHBpbiBiYXRjaFxu
Iik7Ci0JCWdvdG8gZXJyX2RzdDsKLQl9Ci0KLQllcnIgPSBwcmVwYXJlX2JsaXQodCwgZHN0LCBz
cmMsIHQtPmJhdGNoLT5vYmopOwotCWlmIChlcnIpCi0JCWdvdG8gZXJyX2JiOwotCi0JcnEgPSBp
bnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KHQtPmNlKTsKLQlpZiAoSVNfRVJSKHJxKSkgewot
CQllcnIgPSBQVFJfRVJSKHJxKTsKLQkJZ290byBlcnJfYmI7Ci0JfQotCi0JZXJyID0gbW92ZV90
b19hY3RpdmUodC0+YmF0Y2gsIHJxLCAwKTsKLQlpZiAoIWVycikKLQkJZXJyID0gbW92ZV90b19h
Y3RpdmUoc3JjLT52bWEsIHJxLCAwKTsKLQlpZiAoIWVycikKLQkJZXJyID0gbW92ZV90b19hY3Rp
dmUoZHN0LT52bWEsIHJxLCAwKTsKLQlpZiAoIWVycikKLQkJZXJyID0gcnEtPmVuZ2luZS0+ZW1p
dF9iYl9zdGFydChycSwKLQkJCQkJCXQtPmJhdGNoLT5ub2RlLnN0YXJ0LAotCQkJCQkJdC0+YmF0
Y2gtPm5vZGUuc2l6ZSwKLQkJCQkJCTApOwotCWk5MTVfcmVxdWVzdF9nZXQocnEpOwotCWk5MTVf
cmVxdWVzdF9hZGQocnEpOwotCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgSFogLyAyKSA8
IDApCi0JCWVyciA9IC1FVElNRTsKLQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKLQotCWRzdC0+c3Rh
cnRfdmFsID0gc3JjLT5zdGFydF92YWw7Ci1lcnJfYmI6Ci0JaTkxNV92bWFfdW5waW4odC0+YmF0
Y2gpOwotZXJyX2RzdDoKLQlpOTE1X3ZtYV91bnBpbihkc3QtPnZtYSk7Ci1lcnJfc3JjOgotCWk5
MTVfdm1hX3VucGluKHNyYy0+dm1hKTsKLQlyZXR1cm4gZXJyOwotfQotCi1zdGF0aWMgc3RydWN0
IHRpbGVkX2JsaXRzICoKLXRpbGVkX2JsaXRzX2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsIHN0cnVjdCBybmRfc3RhdGUgKnBybmcpCi17Ci0Jc3RydWN0IGRybV9tbV9ub2Rl
IGhvbGU7Ci0Jc3RydWN0IHRpbGVkX2JsaXRzICp0OwotCXU2NCBob2xlX3NpemU7Ci0JaW50IGVy
cjsKLQotCXQgPSBremFsbG9jKHNpemVvZigqdCksIEdGUF9LRVJORUwpOwotCWlmICghdCkKLQkJ
cmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Ci0KLQl0LT5jZSA9IGludGVsX2NvbnRleHRfY3JlYXRl
KGVuZ2luZSk7Ci0JaWYgKElTX0VSUih0LT5jZSkpIHsKLQkJZXJyID0gUFRSX0VSUih0LT5jZSk7
Ci0JCWdvdG8gZXJyX2ZyZWU7Ci0JfQotCi0JaG9sZV9zaXplID0gMiAqIFBBR0VfQUxJR04oV0lE
VEggKiBIRUlHSFQgKiA0KTsKLQlob2xlX3NpemUgKj0gMjsgLyogcm9vbSB0byBtYW5ldXZlciAq
LwotCWhvbGVfc2l6ZSArPSAyICogSTkxNV9HVFRfTUlOX0FMSUdOTUVOVDsKLQotCW11dGV4X2xv
Y2soJnQtPmNlLT52bS0+bXV0ZXgpOwotCW1lbXNldCgmaG9sZSwgMCwgc2l6ZW9mKGhvbGUpKTsK
LQllcnIgPSBkcm1fbW1faW5zZXJ0X25vZGVfaW5fcmFuZ2UoJnQtPmNlLT52bS0+bW0sICZob2xl
LAotCQkJCQkgIGhvbGVfc2l6ZSwgMCwgSTkxNV9DT0xPUl9VTkVWSUNUQUJMRSwKLQkJCQkJICAw
LCBVNjRfTUFYLAotCQkJCQkgIERSTV9NTV9JTlNFUlRfQkVTVCk7Ci0JaWYgKCFlcnIpCi0JCWRy
bV9tbV9yZW1vdmVfbm9kZSgmaG9sZSk7Ci0JbXV0ZXhfdW5sb2NrKCZ0LT5jZS0+dm0tPm11dGV4
KTsKLQlpZiAoZXJyKSB7Ci0JCWVyciA9IC1FTk9ERVY7Ci0JCWdvdG8gZXJyX3B1dDsKLQl9Ci0K
LQl0LT5ob2xlID0gaG9sZS5zdGFydCArIEk5MTVfR1RUX01JTl9BTElHTk1FTlQ7Ci0JcHJfaW5m
bygiVXNpbmcgaG9sZSBhdCAlbGx4XG4iLCB0LT5ob2xlKTsKLQotCWVyciA9IHRpbGVkX2JsaXRz
X2NyZWF0ZV9idWZmZXJzKHQsIFdJRFRILCBIRUlHSFQsIHBybmcpOwotCWlmIChlcnIpCi0JCWdv
dG8gZXJyX3B1dDsKLQotCXJldHVybiB0OwotCi1lcnJfcHV0OgotCWludGVsX2NvbnRleHRfcHV0
KHQtPmNlKTsKLWVycl9mcmVlOgotCWtmcmVlKHQpOwotCXJldHVybiBFUlJfUFRSKGVycik7Ci19
Ci0KLXN0YXRpYyB2b2lkIHRpbGVkX2JsaXRzX2Rlc3Ryb3koc3RydWN0IHRpbGVkX2JsaXRzICp0
KQotewotCXRpbGVkX2JsaXRzX2Rlc3Ryb3lfYnVmZmVycyh0KTsKLQotCWludGVsX2NvbnRleHRf
cHV0KHQtPmNlKTsKLQlrZnJlZSh0KTsKLX0KLQotc3RhdGljIGludCB0aWxlZF9ibGl0c19wcmVw
YXJlKHN0cnVjdCB0aWxlZF9ibGl0cyAqdCwKLQkJCSAgICAgICBzdHJ1Y3Qgcm5kX3N0YXRlICpw
cm5nKQotewotCXU2NCBvZmZzZXQgPSBQQUdFX0FMSUdOKHQtPndpZHRoICogdC0+aGVpZ2h0ICog
NCk7Ci0JdTMyICptYXA7Ci0JaW50IGVycjsKLQlpbnQgaTsKLQotCW1hcCA9IGk5MTVfZ2VtX29i
amVjdF9waW5fbWFwX3VubG9ja2VkKHQtPnNjcmF0Y2gudm1hLT5vYmosIEk5MTVfTUFQX1dDKTsK
LQlpZiAoSVNfRVJSKG1hcCkpCi0JCXJldHVybiBQVFJfRVJSKG1hcCk7Ci0KLQkvKiBVc2Ugc2Ny
YXRjaCB0byBmaWxsIG9iamVjdHMgKi8KLQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRSh0LT5i
dWZmZXJzKTsgaSsrKSB7Ci0JCWZpbGxfc2NyYXRjaCh0LCBtYXAsIHByYW5kb21fdTMyX3N0YXRl
KHBybmcpKTsKLQkJR0VNX0JVR19PTih2ZXJpZnlfYnVmZmVyKHQsICZ0LT5zY3JhdGNoLCBwcm5n
KSk7Ci0KLQkJZXJyID0gdGlsZWRfYmxpdCh0LAotCQkJCSAmdC0+YnVmZmVyc1tpXSwgdC0+aG9s
ZSArIG9mZnNldCwKLQkJCQkgJnQtPnNjcmF0Y2gsIHQtPmhvbGUpOwotCQlpZiAoZXJyID09IDAp
Ci0JCQllcnIgPSB2ZXJpZnlfYnVmZmVyKHQsICZ0LT5idWZmZXJzW2ldLCBwcm5nKTsKLQkJaWYg
KGVycikgewotCQkJcHJfZXJyKCJGYWlsZWQgdG8gY3JlYXRlIGJ1ZmZlciAlZFxuIiwgaSk7Ci0J
CQlicmVhazsKLQkJfQotCX0KLQotCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAodC0+c2NyYXRj
aC52bWEtPm9iaik7Ci0JcmV0dXJuIGVycjsKLX0KLQotc3RhdGljIGludCB0aWxlZF9ibGl0c19i
b3VuY2Uoc3RydWN0IHRpbGVkX2JsaXRzICp0LCBzdHJ1Y3Qgcm5kX3N0YXRlICpwcm5nKQotewot
CXU2NCBvZmZzZXQgPQotCQlyb3VuZF91cCh0LT53aWR0aCAqIHQtPmhlaWdodCAqIDQsIDIgKiBJ
OTE1X0dUVF9NSU5fQUxJR05NRU5UKTsKLQlpbnQgZXJyOwotCi0JLyogV2Ugd2FudCB0byBjaGVj
ayBwb3NpdGlvbiBpbnZhcmlhbnQgdGlsaW5nIGFjcm9zcyBHVFQgZXZpY3Rpb24gKi8KLQotCWVy
ciA9IHRpbGVkX2JsaXQodCwKLQkJCSAmdC0+YnVmZmVyc1sxXSwgdC0+aG9sZSArIG9mZnNldCAv
IDIsCi0JCQkgJnQtPmJ1ZmZlcnNbMF0sIHQtPmhvbGUgKyAyICogb2Zmc2V0KTsKLQlpZiAoZXJy
KQotCQlyZXR1cm4gZXJyOwotCi0JLyogUmVwb3NpdGlvbiBzbyB0aGF0IHdlIG92ZXJsYXAgdGhl
IG9sZCBhZGRyZXNzZXMsIGFuZCBzbGlnaHRseSBvZmYgKi8KLQllcnIgPSB0aWxlZF9ibGl0KHQs
Ci0JCQkgJnQtPmJ1ZmZlcnNbMl0sIHQtPmhvbGUgKyBJOTE1X0dUVF9NSU5fQUxJR05NRU5ULAot
CQkJICZ0LT5idWZmZXJzWzFdLCB0LT5ob2xlICsgMyAqIG9mZnNldCAvIDIpOwotCWlmIChlcnIp
Ci0JCXJldHVybiBlcnI7Ci0KLQllcnIgPSB2ZXJpZnlfYnVmZmVyKHQsICZ0LT5idWZmZXJzWzJd
LCBwcm5nKTsKLQlpZiAoZXJyKQotCQlyZXR1cm4gZXJyOwotCi0JcmV0dXJuIDA7Ci19Ci0KLXN0
YXRpYyBpbnQgX19pZ3RfY2xpZW50X3RpbGVkX2JsaXRzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSwKLQkJCQkgICAgc3RydWN0IHJuZF9zdGF0ZSAqcHJuZykKLXsKLQlzdHJ1Y3QgdGls
ZWRfYmxpdHMgKnQ7Ci0JaW50IGVycjsKLQotCXQgPSB0aWxlZF9ibGl0c19jcmVhdGUoZW5naW5l
LCBwcm5nKTsKLQlpZiAoSVNfRVJSKHQpKQotCQlyZXR1cm4gUFRSX0VSUih0KTsKLQotCWVyciA9
IHRpbGVkX2JsaXRzX3ByZXBhcmUodCwgcHJuZyk7Ci0JaWYgKGVycikKLQkJZ290byBvdXQ7Ci0K
LQllcnIgPSB0aWxlZF9ibGl0c19ib3VuY2UodCwgcHJuZyk7Ci0JaWYgKGVycikKLQkJZ290byBv
dXQ7Ci0KLW91dDoKLQl0aWxlZF9ibGl0c19kZXN0cm95KHQpOwotCXJldHVybiBlcnI7Ci19Ci0K
LXN0YXRpYyBib29sIGhhc19iaXQxN19zd2l6emxlKGludCBzdykKLXsKLQlyZXR1cm4gKHN3ID09
IEk5MTVfQklUXzZfU1dJWlpMRV85XzEwXzE3IHx8Ci0JCXN3ID09IEk5MTVfQklUXzZfU1dJWlpM
RV85XzE3KTsKLX0KLQotc3RhdGljIGJvb2wgYmFkX3N3aXp6bGluZyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKLXsKLQlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmk5MTUtPmdndHQ7
Ci0KLQlpZiAoaTkxNS0+cXVpcmtzICYgUVVJUktfUElOX1NXSVpaTEVEX1BBR0VTKQotCQlyZXR1
cm4gdHJ1ZTsKLQotCWlmIChoYXNfYml0MTdfc3dpenpsZShnZ3R0LT5iaXRfNl9zd2l6emxlX3gp
IHx8Ci0JICAgIGhhc19iaXQxN19zd2l6emxlKGdndHQtPmJpdF82X3N3aXp6bGVfeSkpCi0JCXJl
dHVybiB0cnVlOwotCi0JcmV0dXJuIGZhbHNlOwotfQotCi1zdGF0aWMgaW50IGlndF9jbGllbnRf
dGlsZWRfYmxpdHModm9pZCAqYXJnKQotewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gYXJnOwotCUk5MTVfUk5EX1NUQVRFKHBybmcpOwotCWludCBpbnN0ID0gMDsKLQotCS8qIFRl
c3QgcmVxdWlyZXMgZXhwbGljaXQgQkxUIHRpbGluZyBjb250cm9scyAqLwotCWlmIChHUkFQSElD
U19WRVIoaTkxNSkgPCA0KQotCQlyZXR1cm4gMDsKLQotCWlmIChiYWRfc3dpenpsaW5nKGk5MTUp
KSAvKiBSZXF1aXJlcyBzYW5lIChzdWItcGFnZSkgc3dpenpsaW5nICovCi0JCXJldHVybiAwOwot
Ci0JZG8gewotCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0JCWludCBlcnI7Ci0K
LQkJZW5naW5lID0gaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGk5MTUsCi0JCQkJCQkgIEk5MTVf
RU5HSU5FX0NMQVNTX0NPUFksCi0JCQkJCQkgIGluc3QrKyk7Ci0JCWlmICghZW5naW5lKQotCQkJ
cmV0dXJuIDA7Ci0KLQkJZXJyID0gX19pZ3RfY2xpZW50X3RpbGVkX2JsaXRzKGVuZ2luZSwgJnBy
bmcpOwotCQlpZiAoZXJyID09IC1FTk9ERVYpCi0JCQllcnIgPSAwOwotCQlpZiAoZXJyKQotCQkJ
cmV0dXJuIGVycjsKLQl9IHdoaWxlICgxKTsKLX0KLQotaW50IGk5MTVfZ2VtX2NsaWVudF9ibHRf
bGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCi17Ci0Jc3RhdGlj
IGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKLQkJU1VCVEVTVChpZ3RfY2xp
ZW50X2ZpbGwpLAotCQlTVUJURVNUKGlndF9jbGllbnRfdGlsZWRfYmxpdHMpLAotCX07Ci0KLQlp
ZiAoaW50ZWxfZ3RfaXNfd2VkZ2VkKCZpOTE1LT5ndCkpCi0JCXJldHVybiAwOwotCi0JcmV0dXJu
IGk5MTVfbGl2ZV9zdWJ0ZXN0cyh0ZXN0cywgaTkxNSk7Ci19CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaAppbmRleCBiZTVlMDE5
MWVhZWEuLjZmNTg5M2VjZDU0OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCkBAIC00MCw3ICs0MCw2IEBAIHNlbGZ0ZXN0
KGh1Z2VwYWdlcywgaTkxNV9nZW1faHVnZV9wYWdlX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3Qo
Z2VtX2NvbnRleHRzLCBpOTE1X2dlbV9jb250ZXh0X2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3Qo
Z2VtX2V4ZWNidWYsIGk5MTVfZ2VtX2V4ZWNidWZmZXJfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVz
dChibHQsIGk5MTVfZ2VtX29iamVjdF9ibHRfbGl2ZV9zZWxmdGVzdHMpCi1zZWxmdGVzdChjbGll
bnQsIGk5MTVfZ2VtX2NsaWVudF9ibHRfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChyZXNldCwg
aW50ZWxfcmVzZXRfbGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChtZW1vcnlfcmVnaW9uLCBpbnRl
bF9tZW1vcnlfcmVnaW9uX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoaGFuZ2NoZWNrLCBpbnRl
bF9oYW5nY2hlY2tfbGl2ZV9zZWxmdGVzdHMpCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

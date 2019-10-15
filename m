Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D85D7E26
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 19:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DD86E233;
	Tue, 15 Oct 2019 17:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEFF26E233
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 17:53:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 10:53:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="279263154"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga001.jf.intel.com with ESMTP; 15 Oct 2019 10:53:59 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 15 Oct 2019 10:53:58 -0700
Received: from vkasired-desk2.fm.intel.com (10.22.254.140) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 15 Oct 2019 10:53:58 -0700
Date: Tue, 15 Oct 2019 10:51:18 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191015105118.28d97b45@vkasired-desk2.fm.intel.com>
In-Reply-To: <20191015161131.21239-1-matthew.d.roper@intel.com>
References: <20191015161131.21239-1-matthew.d.roper@intel.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [10.22.254.140]
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Don't forget to set TC long
 detect function
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
Cc: intel-gfx@lists.freedesktop.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxNSBPY3QgMjAxOSAwOToxMTozMSAtMDcwMApNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPiB3cm90ZToKCj4gU2luY2UgRUhMJ3MgTUNDIFBDSCByZXVzZXMgb25l
IG9mIHRoZSBUQyBwaW5zIHdlIG5lZWQgdG8gc3VwcGx5IGEgVEMKPiBsb25nIGRldGVjdCBmdW5j
dGlvbiB3aGVuIGhhbmRsaW5nIHRoZSBpbnRlcnJ1cHRzLgo+IAo+IEZpeGVzOiA1MzQ0OGFlZDdi
ODAgKCJkcm0vaTkxNS9laGw6IFBvcnQgQydzIGhvdHBsdWcgaW50ZXJydXB0IGlzCj4gYXNzb2Np
YXRlZCB3aXRoIFRDMSBiaXRzIikgUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90Cj4gPGxr
cEBpbnRlbC5jb20+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9y
YWNsZS5jb20+Cj4gQ2M6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMSArCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGlu
ZGV4IGE3Yzk2OGIwMWFmMy4uYWY3NDI2Y2Q4ZGU5Cj4gMTAwNjQ0IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCj4gQEAgLTIyNTEsNiArMjI1MSw3IEBAIHN0YXRpYyB2b2lkIGljcF9pcnFfaGFuZGxlcihz
dHJ1Y3QKPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBjaF9paXIpIH0gZWxzZSBp
Zgo+IChIQVNfUENIX01DQyhkZXZfcHJpdikpIHsgZGRpX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9p
aXIgJgo+IFNERV9ERElfTUFTS19JQ1A7IHRjX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJgo+
IFNERV9UQ19IT1RQTFVHX0lDUChQT1JUX1RDMSk7Cj4gKwkJdGNfcG9ydF9ob3RwbHVnX2xvbmdf
ZGV0ZWN0ID0KPiBpY3BfdGNfcG9ydF9ob3RwbHVnX2xvbmdfZGV0ZWN0OyBwaW5zID0gaHBkX2lj
cDsKClJldmlld2VkLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5j
b20+Cgo+ICAJfSBlbHNlIHsKPiAgCQlkZGlfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNE
RV9ERElfTUFTS19JQ1A7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=

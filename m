Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B80A3B1E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 17:58:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0E66E354;
	Fri, 30 Aug 2019 15:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E5F6E2FD;
 Fri, 30 Aug 2019 15:58:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 08:58:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="332895819"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga004.jf.intel.com with ESMTP; 30 Aug 2019 08:58:07 -0700
Date: Fri, 30 Aug 2019 08:58:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190830155807.GX13677@mdroper-desk.amr.corp.intel.com>
References: <20190829164707.30012-1-matthew.d.roper@intel.com>
 <af4dba4e9b212257fd95c5cc4cbfe3358db095cb.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af4dba4e9b212257fd95c5cc4cbfe3358db095cb.camel@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/kms_rotation_crc:
 Skip on platforms without atomic modesetting
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMTI6Mjc6NDVBTSAtMDcwMCwgU2VyLCBTaW1vbiB3cm90
ZToKPiBPbiBUaHUsIDIwMTktMDgtMjkgYXQgMDk6NDcgLTA3MDAsIE1hdHQgUm9wZXIgd3JvdGU6
Cj4gPiBUaGlzIHRlc3QgcGVyZm9ybXMgZGlzcGxheSB1cGRhdGVzIHZpYSBDT01NSVRfQVRPTUlD
LCBidXQgZmFpbHMgdG8gY2hlY2sKPiA+IHRoYXQgdGhlIHBsYXRmb3JtIGJlaW5nIHRlc3RlZCBh
Y3R1YWxseSBzdXBwb3J0cyBhdG9taWMuICBUaGlzIGNhdXNlcwo+ID4gZmFpbHVyZXMgb24gc29t
ZSBvZiBvdXIgb2xkZXIgcHJlLWdlbjUgcGxhdGZvcm1zLgo+ID4gCj4gPiBCdWd6aWxsYTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA2MDEyCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IAo+IFJl
dmlld2VkLWJ5OiBTaW1vbiBTZXIgPHNpbW9uLnNlckBpbnRlbC5jb20+CgpQdXNoZWQsIHRoYW5r
cyBmb3IgdGhlIHJldmlldy4KCgpNYXR0Cgo+IAo+ID4gLS0tCj4gPiAgdGVzdHMva21zX3JvdGF0
aW9uX2NyYy5jIHwgMSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS90ZXN0cy9rbXNfcm90YXRpb25fY3JjLmMgYi90ZXN0cy9rbXNfcm90
YXRpb25fY3JjLmMKPiA+IGluZGV4IGZlNDA0ODEwLi42NjhjMTczMiAxMDA2NDQKPiA+IC0tLSBh
L3Rlc3RzL2ttc19yb3RhdGlvbl9jcmMuYwo+ID4gKysrIGIvdGVzdHMva21zX3JvdGF0aW9uX2Ny
Yy5jCj4gPiBAQCAtNzgwLDYgKzc4MCw3IEBAIGlndF9tYWluCj4gPiAgCQlpZ3RfcmVxdWlyZV9w
aXBlX2NyYyhkYXRhLmdmeF9mZCk7Cj4gPiAgCj4gPiAgCQlpZ3RfZGlzcGxheV9yZXF1aXJlKCZk
YXRhLmRpc3BsYXksIGRhdGEuZ2Z4X2ZkKTsKPiA+ICsJCWlndF9yZXF1aXJlKGRhdGEuZGlzcGxh
eS5pc19hdG9taWMpOwo+ID4gIAl9Cj4gPiAgCj4gPiAgCWZvciAoc3VidGVzdCA9IHN1YnRlc3Rz
OyBzdWJ0ZXN0LT5yb3Q7IHN1YnRlc3QrKykgewoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29m
dHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudApJbnRlbCBDb3Jwb3Jh
dGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=

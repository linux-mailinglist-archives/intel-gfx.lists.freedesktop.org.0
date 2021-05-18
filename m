Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDA33874D7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 11:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 744DA6EB08;
	Tue, 18 May 2021 09:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126D26EB08;
 Tue, 18 May 2021 09:12:31 +0000 (UTC)
IronPort-SDR: qsMIj4cQ8ntWXhGs78vrwFaRL7qGLSY7o1GpyJHZ8Rqnb9MNpEOn8oNECfbBq1xHgEjVC8w7aw
 PEIeOz0wxSTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180268534"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="180268534"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 02:12:30 -0700
IronPort-SDR: kW1P7Da0t3aLsgFUElHXfQkRIiCMDuZrHk8UYOYMtHmBKAM8gx9nELRA5Lw/oKeekmcauL+GA/
 Ns1bpofE4Asw==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="466335777"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO [10.249.254.195])
 ([10.249.254.195])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 02:12:29 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-6-thomas.hellstrom@linux.intel.com>
 <CAM0jSHNOLTqrp-kv0rAkXZGb02swQ+8-Q7dxMZOHwDEh=QCgpw@mail.gmail.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <0e80ab1f-9b88-c2ec-bbfd-48de35f4ef3d@linux.intel.com>
Date: Tue, 18 May 2021 11:12:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAM0jSHNOLTqrp-kv0rAkXZGb02swQ+8-Q7dxMZOHwDEh=QCgpw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 05/15] drm/i915/ttm Initialize the ttm
 device and memory managers
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMTgvMjEgMTE6MDkgQU0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBPbiBUdWUsIDE4IE1h
eSAyMDIxIGF0IDA5OjI3LCBUaG9tYXMgSGVsbHN0csO2bQo+IDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+IFRlbXBvcmFyaWx5IHJlbW92ZSB0aGUgYnVkZHkgYWxs
b2NhdG9yIGFuZCByZWxhdGVkIHNlbGZ0ZXN0cwo+PiBhbmQgaG9vayB1cCB0aGUgVFRNIHJhbmdl
IG1hbmFnZXIgZm9yIGk5MTUgcmVnaW9ucy4KPj4KPj4gQWxzbyBtb2RpZnkgdGhlIG1vY2sgcmVn
aW9uIHNlbGZ0ZXN0cyBzb21ld2hhdCB0byBhY2NvdW50IGZvciBhCj4+IGZyYWdtZW50aW5nIG1h
bmFnZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVs
bHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPj4gLS0tCj4+IHYyOgo+PiAtIEZpeCBhbiBlcnJvciB1
bndpbmQgaW4gbG1lbV9nZXRfcGFnZXMoKSAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKQo+PiAt
IEJyZWFrIG91dCBhbmQgbW9kaWZ5IHVzYWdlIG9mIGk5MTVfc2dfZG1hX3NpemVzKCkgKFJlcG9y
dGVkIGJ5IE1hdHRldyBBdWxkKQo+PiAtIEJyZWFrIG91dCBUVE0gY2hhbmdlcyB0byBhIHNlcGFy
YXRlIHBhdGNoIChSZXBvcnRlZCBieSBDaHJpc3RpYW4gS8O2bmlnKQo+PiAtLS0KPiA8c25pcD4K
Pgo+PiArCj4+ICtzdGF0aWMgaW50IG1vY2tfcmVnaW9uX2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKQo+PiArewo+PiArICAgICAgIHVuc2lnbmVkIGludCBmbGFnczsK
Pj4gKyAgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnBhZ2VzOwo+PiArCj4+ICsgICAgICAgZmxhZ3Mg
PSBJOTE1X0FMTE9DX01JTl9QQUdFX1NJWkU7Cj4+ICsgICAgICAgaWYgKG9iai0+ZmxhZ3MgJiBJ
OTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMpCj4+ICsgICAgICAgICAgICAgICBmbGFncyB8PSBJOTE1
X0FMTE9DX0NPTlRJR1VPVVM7Cj4+ICsKPj4gKyAgICAgICBvYmotPm1tLnN0X21tX25vZGUgPSBp
bnRlbF9yZWdpb25fdHRtX25vZGVfYWxsb2Mob2JqLT5tbS5yZWdpb24sCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9iai0+YmFzZS5z
aXplLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBmbGFncyk7Cj4+ICsgICAgICAgaWYgKElTX0VSUihvYmotPm1tLnN0X21tX25vZGUp
KQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIob2JqLT5tbS5zdF9tbV9ub2RlKTsK
Pj4gKwo+PiArICAgICAgIHBhZ2VzID0gaW50ZWxfcmVnaW9uX3R0bV9ub2RlX3RvX3N0KG9iai0+
bW0ucmVnaW9uLCBvYmotPm1tLnN0X21tX25vZGUpOwo+PiArICAgICAgIGlmIChJU19FUlIocGFn
ZXMpKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocGFnZXMpOwo+IE5lZWRzIHNv
bWUgb25pb24/CgpBaCwgeWVzLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=

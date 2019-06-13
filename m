Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3237143628
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08C26882DF;
	Thu, 13 Jun 2019 13:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9463894FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:00:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 05:57:24 -0700
X-ExtLoop1: 1
Received: from fractal.fi.intel.com ([10.237.72.69])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jun 2019 05:57:22 -0700
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Martin Peres <martin.peres@linux.intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>
References: <20190613122842.4840-1-chris@chris-wilson.co.uk>
 <20190613124605.GH29428@intel.com>
From: Tomi Sarvela <tomi.p.sarvela@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <3d6f1ecd-9923-89bb-4be8-d197f42c049f@intel.com>
Date: Thu, 13 Jun 2019 15:57:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613124605.GH29428@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable refcount debugging for
 default debug levels
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gNi8xMy8xOSAzOjQ2IFBNLCBSb2RyaWdvIFZpdmkgd3JvdGU6Cj4gT24gVGh1LCBKdW4gMTMs
IDIwMTkgYXQgMDE6Mjg6NDJQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+PiByZWZjb3Vu
dF90IGlzIG91ciBmaXJzdCBsaW5lIG9mIGRlZmVuY2UgYWdhaW5zdCB1c2UtYWZ0ZXItZnJlZSwg
c28gbGV0J3MKPj4gZW5hYmxlIGl0IGZvciBkZWJ1Z2dpbmcuCj4gCj4gSXQgc2VlbXMgYSBuaWNl
IHRoaW5nIHRvIGhhdmUgb24gZGVidWcgYnkgZGVmYXVsdCBhbmQgdGhleSBwcm9taXNlIG5vCj4g
cGVyZm9ybWFuY2UgaW1wYWN0Lgo+IAo+IEFja2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+Cj4gCj4gV2VsbCwgSSBob3BlIG91ciBDSSBkb2Vzbid0IGNvbXBsYWlu
LCBidXQgaWYgaXQgZG9lcyB3ZSBjYW4gcmVtb3ZlIGxhdGVyLgo+IGFueXdheSwKPiBDYzogTWFy
dGluCj4gQ2M6IFRvbWkKPiBDYzogQXJlawoKVGhpcyBjaGFuZ2Ugd2lsbCBiZSBzZWVuIGluIGZv
cmNlZCBidWlsZCBDSV9EUk1fNjI2MC4KClRvbWkKCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnIHwgMSArCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmln
LmRlYnVnIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwo+PiBpbmRleCAwOWFh
MGY0YzhiZjEuLjhkOTIyYmI0ZDk1MyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvS2NvbmZpZy5kZWJ1Zwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRl
YnVnCj4+IEBAIC0yMSw2ICsyMSw3IEBAIGNvbmZpZyBEUk1fSTkxNV9ERUJVRwo+PiAgICAgICAg
ICAgZGVwZW5kcyBvbiBEUk1fSTkxNQo+PiAgICAgICAgICAgc2VsZWN0IERFQlVHX0ZTCj4+ICAg
ICAgICAgICBzZWxlY3QgUFJFRU1QVF9DT1VOVAo+PiArICAgICAgICBzZWxlY3QgUkVGQ09VTlRf
RlVMTAo+PiAgICAgICAgICAgc2VsZWN0IEkyQ19DSEFSREVWCj4+ICAgICAgICAgICBzZWxlY3Qg
U1RBQ0tERVBPVAo+PiAgICAgICAgICAgc2VsZWN0IERSTV9EUF9BVVhfQ0hBUkRFVgo+PiAtLSAK
Pj4gMi4yMC4xCgoKLS0gCkludGVsIEZpbmxhbmQgT3kgLSBCSUMgMDM1NzYwNi00IC0gV2VzdGVu
ZGlua2F0dSA3LCAwMjE2MCBFc3BvbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

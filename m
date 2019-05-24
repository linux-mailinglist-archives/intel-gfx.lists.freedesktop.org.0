Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF76294A2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 11:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE786E0D0;
	Fri, 24 May 2019 09:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751D46E0B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 09:28:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 02:28:16 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com (HELO [10.103.239.89]) ([10.103.239.89])
 by fmsmga007.fm.intel.com with ESMTP; 24 May 2019 02:28:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
 <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <6aa987f0-3825-ff37-7b8e-deb24840a3c9@intel.com>
Date: Fri, 24 May 2019 10:28:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjEvMDUvMjAxOSAxNzozNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjEgMTU6MDg6NTIpCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4+IGluZGV4IGYyNjNhODM3NDI3My4uMmFkOTU5NzdmN2E4IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+PiBAQCAtMjA4NSw3ICsyMDg1LDcgQEAgc3Rh
dGljIGludCBnZW45X2VtaXRfYmJfc3RhcnQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCj4+ICAg
ICAgICAgIGlmIChJU19FUlIoY3MpKQo+PiAgICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJS
KGNzKTsKPj4gICAKPj4gLSAgICAgICAqY3MrKyA9IE1JX0FSQl9PTl9PRkYgfCBNSV9BUkJfRU5B
QkxFOwo+PiArICAgICAgICpjcysrID0gTUlfQVJCX09OX09GRiB8IHJxLT5od19jb250ZXh0LT5h
cmJfZW5hYmxlOwo+IE15IHByZWRpY3Rpb24gaXMgdGhhdCB0aGlzIHdpbGwgcmVzdWx0IGluIHRo
aXMgY29udGV4dCBiZWluZyByZXNldCBkdWUKPiB0byBwcmVlbXB0aW9uIHRpbWVvdXRzIGFuZCB0
aGUgY29udGV4dCB1bmRlciBwcm9maWxlIGJlaW5nIGJhbm5lZC4gTm90ZQo+IHRoYXQgcHJlZW1w
dGlvbiB0aW1lb3V0cyB3aWxsIGJlIHRoZSBwcmltYXJ5IG1lYW5zIGZvciBoYW5nIGRldGVjdGlv
bgo+IGZvciBlbmRsZXNzIGJhdGNoZXMuCj4gLUNocmlzCj4KCkFub3RoZXIgdGhvdWdodCA6CgpX
aGF0IGlmIHdlIHJhbiB3aXRoIHRoZSBtYXggcHJpb3JpdHk/Ckl0IHdvdWxkIGJlIGZpbmUgdG8g
aGF2ZSB0aGUgaGFuZ2NoZWNrIHByZWVtcHQgdGhlIHdvcmtsb2FkIChpdCdzIHByZXR0eSAKc2hv
cnQgYW5kIHNob3VsZG4ndCBhZmZlY3QgcGVyZiBjb3VudGVycyBmcm9tIDNkL2NvbXB1dGUgcGlw
ZWxpbmUgbXVjaCkgCmFzIGxvbmcgYXMgZW5zdXJlIG5vdGhpbmcgZWxzZSBydW5zLgoKLUxpb25l
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

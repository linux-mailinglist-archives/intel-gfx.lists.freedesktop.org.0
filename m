Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577E527F43
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 16:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56BBE89E69;
	Thu, 23 May 2019 14:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D1E89E69
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 14:15:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 07:15:07 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com (HELO [10.103.238.204]) ([10.103.238.204])
 by fmsmga008.fm.intel.com with ESMTP; 23 May 2019 07:15:06 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190523114620.19335-1-lionel.g.landwerlin@intel.com>
 <20190523114620.19335-3-lionel.g.landwerlin@intel.com>
 <155861233043.28319.5452168515708280707@skylake-alporthouse-com>
 <52899af3-5f7a-b93a-8610-9054765d1f57@intel.com>
 <155861998217.28319.181082569082578511@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0f831de4-c263-24a3-86b9-462630657ed8@intel.com>
Date: Thu, 23 May 2019 15:15:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155861998217.28319.181082569082578511@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: add syncobj timeline support
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

T24gMjMvMDUvMjAxOSAxNDo1OSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjMgMTQ6NDY6NDIpCj4+IE9uIDIzLzA1LzIwMTkgMTI6NTIs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDUtMjMgMTI6NDY6MjApCj4+Pj4gLSAgICAgICAgICAgICAgIHN5bmNvYmogPSBkcm1fc3luY29i
al9maW5kKGZpbGUsIGZlbmNlLmhhbmRsZSk7Cj4+Pj4gLSAgICAgICAgICAgICAgIGlmICghc3lu
Y29iaikgewo+Pj4+IC0gICAgICAgICAgICAgICAgICAgICAgIERSTV9ERUJVRygiSW52YWxpZCBz
eW5jb2JqIGhhbmRsZSBwcm92aWRlZFxuIik7Cj4+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ZXJyID0gLUVOT0VOVDsKPj4+PiAtICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycjsKPj4+
PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAodXNlcl9mZW5jZS5mbGFncyAmIF9fSTkxNV9F
WEVDX0ZFTkNFX1VOS05PV05fRkxBR1MpIHsKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGVyciA9IC1FSU5WQUw7Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBnb3RvIGVycjsKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4+Pj4gKwo+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGlmICh1c2VyX2ZlbmNlLmZsYWdzICYgSTkxNV9FWEVDX0ZF
TkNFX1dBSVQpIHsKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IGRy
bV9zeW5jb2JqX2ZpbmRfZmVuY2UoCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGZpbGUsIHVzZXJfZmVuY2UuaGFuZGxlLCB1c2VyX2ZlbmNlLnZhbHVlLAo+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBEUk1fU1lOQ09CSl9XQUlU
X0ZMQUdTX1dBSVRfRk9SX1NVQk1JVCwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJnN5bmNvYmosICZmZW5jZSk7Cj4+PiBJcyB0aGlzIHN0aWxsIGEgc3luY2hy
b25vdXMgd2FpdD8gVGhhdCB3b3VsZCBiZSBhbiB1bmZvcnR1bmF0ZSBjaGFuZ2UgaW4KPj4+IGJl
aGF2aW91ciBhbmQgYW50aXRoZXNpcyB0byBoYXZpbmcgYSBzY2hlZHVsZXIuCj4+PiAtQ2hyaXMK
Pj4+Cj4+IE5vdCBzdXJlIHdoYXQgeW91IG1lYW4gYnkgc3luY2hyb25vdXMgd2FpdC4KPiBkcm1f
c3luY29ial9maW5kX2ZlbmNlKCkgaGFzIGFuIG9wZW4tY29kZWQgd2FpdF9ldmVudCBsb29wLiBU
aGF0IGlzCj4gc3luY2hyb25vdXMgYW5kIGluY29uc2lzdGVudCB3aXRoIHVzaW5nIGEgc2NoZWR1
bGVyOyB3aGVyZSBvbmUgb25seSBuZWVkCj4gdG8gcmV0dXJuIGEgcHJveHkgZmVuY2UgdGhhdCB3
aWxsIGJlIHBvcHVsYXRlZCB3aGVuIHRoZSBzeW5jcHQgaXMga25vd24sCj4gYW5kIGJlIHNpZ25h
bGVkIGFzIGEgcmVzdWx0IG9mIHRoYXQgc3luY3B0Lgo+IC1DaHJpcwo+CgpSaWdodCwKCgpJIHNl
ZSB0aGlzIGNoYW5nZXMgdGhlIGJlaGF2aW9yIGZvciBleGlzdGluZyBkcm1fc3luY29ianMsIHdo
aWNoIHdhcyBub3QgCmludGVuZGVkLgoKCkZvciB0aW1lbGluZSBkcm0tc3luY29ianMsIHdlJ3Jl
IGF3YXJlIHRoaXMgd2lsbCBibG9jayBhbmQgbWlnaHQgZmFpbCBpZiAKdGhlIGZlbmNlIGRvZXNu
J3QgbWF0ZXJpYWxpemUuCgpUaGUgVnVsa2FuIHNwZWMgZG9lc24ndCBnaXZlIGEgc3BlY2lmaWMg
YW1vdW50IG9mIHRpbWUgb2Ygd2hpY2ggdGhlIApzdWJtaXQgZmFpbHMsIGFwYXJ0IGZyb20gaXQg
YmVpbmcgbm9uIHplcm8uCgoKV2lsbCBmaXgsIHRoYW5rcyBhIGxvdCBmb3IgcG9pbnRpbmcgdGhp
cyBvdXQuCgoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4

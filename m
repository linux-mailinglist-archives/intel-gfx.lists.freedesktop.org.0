Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8C53A5F40
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 11:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527BC89CC9;
	Mon, 14 Jun 2021 09:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378AC89C99;
 Mon, 14 Jun 2021 09:41:32 +0000 (UTC)
IronPort-SDR: ipV/z7NvD6RPG+Hs7pidJXUkzdHhDCmB3rxmJAEUJEfCbb/XrKNZSxAwRpjahL6vogzD6HMy8f
 dj1Ld34fppyw==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="269632974"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="269632974"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 02:41:31 -0700
IronPort-SDR: EYZ5hjq3gE0dGFNmNLy+mK+mipCL462TTqxNwz8c5xh1jV54Z0jVk81lB4qmEHeSLDluEXrcWb
 YgsgCvCdfiDg==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="484031055"
Received: from jberg1-mobl.ger.corp.intel.com (HELO [10.252.56.53])
 ([10.252.56.53])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 02:41:30 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210614092227.97421-1-matthew.auld@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <7f9dc8a6-3559-e64d-ed6a-463dd84e488b@linux.intel.com>
Date: Mon, 14 Jun 2021 11:41:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210614092227.97421-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: allow DG1 autoprobe for
 CONFIG_BROKEN
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTQtMDYtMjAyMSBvbSAxMToyMiBzY2hyZWVmIE1hdHRoZXcgQXVsZDoKPiBQdXJlbHkgZm9y
IENJIHNvIHdlIGNhbiBnZXQgc29tZSBwcmUtbWVyZ2UgcmVzdWx0cyBmb3IgREcxLiBUaGlzIGlz
Cj4gZXNwZWNpYWxseSB1c2VmdWwgZm9yIGNyb3NzIGRyaXZlciBUVE0gY2hhbmdlcyB3aGVyZSBD
SSBjYW4gaG9wZWZ1bGx5Cj4gY2F0Y2ggcmVncmVzc2lvbnMuIFRoaXMgaXMgc2ltaWxhciB0byBo
b3cgd2UgYWxyZWFkeSBoYW5kbGUgdGhlIERHMQo+IHNwZWNpZmljIHVBUEksIHdoaWNoIGFyZSBh
bHNvIGhpZGRlbiBiZWhpbmQgQ09ORklHX0JST0tFTi4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0g
PHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFpbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAzICsrKwo+ICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMK
PiBpbmRleCA4M2I1MDBiYjE3MGMuLjc4NzQyMTU3YWFhMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYwo+IEBAIC0xMDQwLDYgKzEwNDAsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9k
ZXZpY2VfaWQgcGNpaWRsaXN0W10gPSB7Cj4gIAlJTlRFTF9SS0xfSURTKCZya2xfaW5mbyksCj4g
IAlJTlRFTF9BRExTX0lEUygmYWRsX3NfaW5mbyksCj4gIAlJTlRFTF9BRExQX0lEUygmYWRsX3Bf
aW5mbyksCj4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9VTlNUQUJMRV9GQUtFX0xN
RU0pCj4gKwlJTlRFTF9ERzFfSURTKCZkZzFfaW5mbyksCj4gKyNlbmRpZgo+ICAJezAsIDAsIDB9
Cj4gIH07Cj4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUocGNpLCBwY2lpZGxpc3QpOwoKUmV2aWV3ZWQt
Ynk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAABB3A5F21
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 11:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4952389D99;
	Mon, 14 Jun 2021 09:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEE489C27;
 Mon, 14 Jun 2021 09:31:34 +0000 (UTC)
IronPort-SDR: amJUXEV818F+Z5TY6cf7Xh7iW/uFAdCSyTyaCGZGPz/6ppJHeEBT74mpQI7sp7RrsdWh+9ltWL
 1EiSQ8qZ64fg==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="266931959"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="266931959"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 02:31:33 -0700
IronPort-SDR: Xohx6h68fkP4wmSPugTaEuNENEv21i2bYk3IM2h8zULVWQrMTH8Aga8n0onO8J9oBIbjJEv5FD
 1+V/oAgXLrXw==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="403837221"
Received: from janlundk-mobl1.ger.corp.intel.com (HELO [10.249.254.32])
 ([10.249.254.32])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 02:31:31 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210614092227.97421-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <326d55b2-d7e2-8707-e1ad-85167f125193@linux.intel.com>
Date: Mon, 14 Jun 2021 11:31:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMTQvMjEgMTE6MjIgQU0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBQdXJlbHkgZm9yIENJ
IHNvIHdlIGNhbiBnZXQgc29tZSBwcmUtbWVyZ2UgcmVzdWx0cyBmb3IgREcxLiBUaGlzIGlzCj4g
ZXNwZWNpYWxseSB1c2VmdWwgZm9yIGNyb3NzIGRyaXZlciBUVE0gY2hhbmdlcyB3aGVyZSBDSSBj
YW4gaG9wZWZ1bGx5Cj4gY2F0Y2ggcmVncmVzc2lvbnMuIFRoaXMgaXMgc2ltaWxhciB0byBob3cg
d2UgYWxyZWFkeSBoYW5kbGUgdGhlIERHMQo+IHNwZWNpZmljIHVBUEksIHdoaWNoIGFyZSBhbHNv
IGhpZGRlbiBiZWhpbmQgQ09ORklHX0JST0tFTi4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRo
b21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+
CgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPgoKKyBDQzogQ2hyaXN0aWFuIEvDtm5pZywKCldpdGggdGhpcyBpbiBwbGFjZSwg
SSB0aGluayBUaGUgbW9jayBtZW1vcnlfcmVnaW9uIGFuZCBodWdlcGFnZXMgCnNlbGZ0ZXN0cyB3
aWxsIGJlIHNlbnNpdGl2ZSB0byBjaGFuZ2VzIGluIFRUTSBvbiBtb3N0IGludGVsIHBsYXRmb3Jt
cywgCmFzIHdlbGwgYXMgYWxsIERHMSBzZWxmdGVzdHMsIGFuZCBhbnkgcGFzc2luZyBERzEgaWd0
IHRlc3RzLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=

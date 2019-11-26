Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BD1109EF1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23EC26E3B0;
	Tue, 26 Nov 2019 13:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D65B36E3A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:16:58 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="202715143"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 26 Nov 2019 05:16:56 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Ankit Navik <ankit.p.navik@intel.com>, intel-gfx@lists.freedesktop.org
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
 <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
 <6b39bcc7-ac78-49ef-c1b1-3741458f548f@linux.intel.com>
 <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
 <b3800d8f-d5cf-1dc4-4733-dbd9d7aa9248@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <32482b18-5ed5-fa38-c029-0b5c0e357ca2@linux.intel.com>
Date: Tue, 26 Nov 2019 13:16:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b3800d8f-d5cf-1dc4-4733-dbd9d7aa9248@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to
 control slice/subslice/eu
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
Cc: vipin.anand@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI2LzExLzIwMTkgMTE6MzEsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IE9uIDI2LzExLzIw
MTkgMTE6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0xMS0yNiAxMDo1MToyMikKPj4+IFlvdSBtZW50aW9uZWQgeW91IGRpZCBzb21lIGV4cGVy
aW1lbnQgd2hlcmUgeW91IGRpZCBzb21ldGhpbmcgb24gY29udGV4dAo+Pj4gcGlubmluZyBhbmQg
dGhhdCBpdCBkaWQgbm90IHdvcmsgc28gd2VsbC4gSSBkb24ndCBrbm93IHdoYXQgdGhhdCB3YXMK
Pj4+IHRob3VnaC4gSSBkb24ndCB0aGluayB0aGF0IHdhcyBldmVyIHBvc3RlZD8KPj4+Cj4+PiBX
aGF0IEkgYW0gdGhpbmtpbmcgaXMgdGhpczogWW91IGRyb3AgdGhlIHRpbWVyIGFsdG9nZXRoZXIu
IEluc3RlYWQgaW4KPj4+IF9fZXhlY2xpc3RzX3VwZGF0ZV9yZWdfc3RhdGUgeW91IGxvb2sgYXQg
eW91ciBnZW1fY29udGV4dC0+cmVxX2NudCBhbmQKPj4+IGltcGxlbWVudCB5b3VyIGxvZ2ljIHRo
ZXJlLgo+Pgo+PiBJIG5vdGljZWQgdGhlIHNhbWUgbm9uLXNlcXVpdHVyLiBFeGNlcHQgSSB3b3Vs
ZCBwdXNoIHRoYXQgZWl0aGVyIHRoZQo+PiBlbnRpcmUgbWVhc3VyZW1lbnQgYW5kIGhlbmNlIHBh
dGNoIHNlcmllcyBpcyBib2d1cyAoYmV5b25kIHRoZSBwYXRjaGVzCj4+IHRoZW1zZWx2ZXMgYmVp
bmcgdHJpdmlhbGx5IGJyb2tlbiwgdGVzdGVkIG11Y2g/KSwgb3IgdGhhdCBpdCByZWFsbHkKPj4g
c2hvdWxkIGJlIGRvbmUgZnJvbSBhIHRpbWVyIGFuZCBhbHNvIGFkanVzdCBwaW5uZWQgY29udGV4
dHMgYWxhCj4+IHJlY29uZmlndXJlX3NzZXUuCj4gCj4gWWVhaCwgaWYgZG9pbmcgaXQgYXQgcGlu
IHRpbWUgd291bGQgbm90IHNob3cgdGhlIHBvd2VyIGJlbmVmaXQgdGhhdCAKPiB3b3VsZCBtZWFu
IGxvb2tpbmcgYXQgcmVxX2NudCBhdCBwaW4gdGltZSBkb2VzIG5vdCB3b3JrLCB3aGlsZSBsb29r
aW5nIAo+IGF0IGl0IGhhbGYgYSB0aW1lciBwZXJpb2QgYWdvLCBvbiBhdmVyYWdlLCB3b3Jrcy4g
V2hpY2ggd291bGQgYmUgdmVyeSAKPiBpbnRyaWd1aW5nLiBXZSdkIHByb2JhYmx5IHdhbnQgbmlj
ZSBncmFwaHMgaW4gdGhpcyBjYXNlIG92ZXJsYXlpbmcgCj4gcG93ZXIsIHJlcXVlc3QgY291bnRz
LCBzZWxlY3RlZCBFVSBjb25maWcsIGV0Yy4KCkFub3RoZXIgdGhpbmcgdG8gdHJ5LCBpZiBzaW1w
bGUgYnVja2V0aW5nIG9mIHJlcV9jbnQgdG8gbG9hZCBsZXZlbCBhdCAKcGluIHRpbWUgd2lsbCBu
b3Qgd29yaywgY291bGQgYmUgYSB0aW1lLXdlaWdodGVkIG1vdmluZyBhdmVyYWdlIG9mIHRoZSAK
c2FtZSBjb3VudCwgYnV0IGFsc28gZHJpdmVuIGZyb20gY29udGV4dCBwaW5uaW5nLgoKUmVnYXJk
cywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

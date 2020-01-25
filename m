Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64822149600
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2020 15:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3426E848;
	Sat, 25 Jan 2020 14:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8423D6E846;
 Sat, 25 Jan 2020 14:07:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jan 2020 06:07:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,361,1574150400"; d="scan'208";a="221314688"
Received: from akoshoki-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.51.198])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jan 2020 06:07:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org
In-Reply-To: <6aa5cab2-6d5f-1a9e-6e04-261ef3476fdb@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200123124801.14958-1-jani.nikula@intel.com>
 <20200123124801.14958-2-jani.nikula@intel.com>
 <6aa5cab2-6d5f-1a9e-6e04-261ef3476fdb@suse.de>
Date: Sat, 25 Jan 2020 16:07:22 +0200
Message-ID: <87imkzd3z9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/debugfs: also take per device
 driver features into account
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMyBKYW4gMjAyMCwgVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+IHdyb3RlOgo+IEFtIDIzLjAxLjIwIHVtIDEzOjQ4IHNjaHJpZWIgSmFuaSBOaWt1bGE6Cj4+
IFVzZSBkcm1fY29yZV9jaGVja19hbGxfZmVhdHVyZXMoKSB0byBlbnN1cmUgYm90aCB0aGUgZHJp
dmVyIGZlYXR1cmVzIGFuZAo+PiB0aGUgcGVyLWRldmljZSBkcml2ZXIgZmVhdHVyZXMgYXJlIHRh
a2VuIGludG8gYWNjb3VudCB3aGVuIHJlZ2lzdGVyaW5nCj4+IGRlYnVnZnMgZmlsZXMuCj4+IAo+
PiB2MzoKPj4gLSBmaWxlc1tpXS5kcml2ZXJfZmVhdHVyZXMgPT0gMCBhY3R1YWxseSBtZWFucyAi
ZG9uJ3QgY2FyZSIKPj4gCj4+IHYyOgo+PiAtIHVzZSBkcm1fY29yZV9jaGVja19hbGxfZmVhdHVy
ZXMoKQo+PiAKPj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Cj4+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPj4g
U2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gLS0t
Cj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnMuYyB8IDMgKy0tCj4+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVn
ZnMuYwo+PiBpbmRleCBlYWIwZjI2ODdjZDYuLjRlNjczZDMxODUwMyAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9kZWJ1Z2ZzLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9kZWJ1Z2ZzLmMKPj4gQEAgLTE4Miw4ICsxODIsNyBAQCBpbnQgZHJtX2RlYnVnZnNfY3JlYXRl
X2ZpbGVzKGNvbnN0IHN0cnVjdCBkcm1faW5mb19saXN0ICpmaWxlcywgaW50IGNvdW50LAo+PiAg
CWZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4+ICAJCXUzMiBmZWF0dXJlcyA9IGZpbGVz
W2ldLmRyaXZlcl9mZWF0dXJlczsKPj4gIAo+PiAtCQlpZiAoZmVhdHVyZXMgIT0gMCAmJgo+PiAt
CQkgICAgKGRldi0+ZHJpdmVyLT5kcml2ZXJfZmVhdHVyZXMgJiBmZWF0dXJlcykgIT0gZmVhdHVy
ZXMpCj4+ICsJCWlmIChmZWF0dXJlcyAmJiAhZHJtX2NvcmVfY2hlY2tfYWxsX2ZlYXR1cmVzKGRl
diwgZmVhdHVyZXMpKQo+PiAgCQkJY29udGludWU7Cj4KPiBSZXZpZXdlZC1ieTogVGhvbWFzIFpp
bW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+CgpUaGFua3MgZm9yIHRoZSByZXZpZXcsIGJv
dGggcHVzaGVkIHRvIGRybS1taXNjLW5leHQuCgpCUiwKSmFuaS4KCgo+Cj4+ICAKPj4gIAkJdG1w
ID0ga21hbGxvYyhzaXplb2Yoc3RydWN0IGRybV9pbmZvX25vZGUpLCBHRlBfS0VSTkVMKTsKPj4g
CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

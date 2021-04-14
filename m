Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D133F35F0E0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:35:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFD06E48B;
	Wed, 14 Apr 2021 09:34:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBA46E48B
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:34:57 +0000 (UTC)
IronPort-SDR: nbDuKeWdxmL+E+FEuwUXFeidcf1XtRvCZrFSTz46xiWQkL/bjSzYSSA8RHbuZJvW97eFvHjOmF
 jBm1n9X/vq2g==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="279916582"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="279916582"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:34:54 -0700
IronPort-SDR: xMjJbG6+Bj/f0aFCG7lh39AWXiwNlbY5kfTNgTVydBomDWne7DpJYWZOyAHM8ESec3FRxBx9mt
 ofNsBb3XR4dw==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="424652037"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:34:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <877dl6h2pr.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
 <877dl6h2pr.fsf@intel.com>
Date: Wed, 14 Apr 2021 12:34:48 +0300
Message-ID: <878s5lfbuv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915: Fix glk display version
 regressions
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxMyBBcHIgMjAyMSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6Cj4gT24gTW9uLCAxMiBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Pgo+PiBGaXggYSBjb3VwbGUgb2YgcmVn
cmVzc2lvbnMgZHVlIHRvIHRoZSBnbGsgZGlzcGxheSB2ZXJzaW9uIDktPjEwCj4+IGNoYW5nZS4g
SSAqdGhpbmsqIGFsbCB0aGUgb25lcyB0aGF0IHNsaXBwZWQgdGhyb3VnaCBpbnZvbHZlZAo+PiBl
aXRoZXIgRElTUExBWV9WRVI9PTkgb3IgRElTUExBWV9WRVI8MTAgY2hlY2tzLiBUaGVzZSB0aHJl
ZQo+PiByZWdyZXNzaW9ucyBhcmUgdGhlIG9uZXMgSSBmb3VuZCB0aHJvdWdoIGEgcXVpY2sgc2Nh
biwgYnV0IHNvbWVvbmUKPj4gc2hvdWxkIHByb2JhYmx5IGdvIHRocm91Z2ggdGhlIHdob2xlIHRy
ZWUgd2l0aCBhIGZpbmUgdG9vdGhjb21iCj4+IGluIGNhc2Ugd2UgbWlzc2VkIG1vcmUgY2FzZXMu
Cj4+Cj4+IEFsc28gdG9zc2VkIGluIGEgY291cGxlIG9mIGNsZWFudXBzLgo+Cj4gVmlsbGUsIHBs
ZWFzZSBob2xkIG9uIHdpdGggbWVyZ2luZyB0aGlzIHVudGlsIHdlIGZpZ3VyZSBvdXQgaG93IHRv
IG1lcmdlCj4gWzFdLiBJIGRvbid0IHdhbnQgdG8gY3JlYXRlIGV4dHJhIGNvbmZsaWN0cyB3aGVu
IHRoZXkgY2FuIGJlIGF2b2lkZWQuCgpQdXNoZWQgdGhlIGxvdCB0byB0b3BpYy9pbnRlbC1nZW4t
dG8tdmVyLCB0aGFua3MgZm9yIHRoZSBwYXRjaGVzLgoKQlIsCkphbmkuCgoKPgo+IEJSLAo+IEph
bmkuCj4KPgo+IFsxXSBodHRwOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMTA0MTMwNTEwMDIuOTI1
ODktMS1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KPgo+Cj4+Cj4+IENjOiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+Pgo+PiBWaWxsZSBTeXJqw6Rsw6QgKDUpOgo+PiAg
IGRybS9pOTE1OiBSZXN0b3JlIGxvc3QgZ2xrIEZCQyAxNmJwcCB3L2EKPj4gICBkcm0vaTkxNTog
UmVzdG9yZSBsb3N0IGdsayBjY3Mgdy9hCj4+ICAgZHJtL2k5MTU6IERpc2FibGUgTFRUUFIgZGV0
ZWN0aW9uIG9uIEdMSyBvbmNlIGFnYWluCj4+ICAgZHJtL2k5MTU6IERvbid0IHVzZSB7c2tsLGNu
bH1faHBkX3BpbigpIGZvciBieHQvZ2xrCj4+ICAgZHJtL2k5MTU6IFJlbW92ZSBhIGZldyByZWR1
bmRhbnQgZ2xrIGNoZWNrcwo+Pgo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYyAgICAgICAgICAgICAgfCA2ICsrKy0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgICAgICAgICAgfCAzICsrLQo+PiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAyICstCj4+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jICAgICAgICAgICAgICB8IDIgKy0K
Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jICAg
IHwgMiArLQo+PiAgNSBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6342F848DC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 11:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D2189C07;
	Wed,  7 Aug 2019 09:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D603889AAE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 09:49:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 02:49:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="192876027"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2019 02:49:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156508781641.2892.9805858219316342@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1565085691.git.jani.nikula@intel.com>
 <156508781641.2892.9805858219316342@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 12:53:44 +0300
Message-ID: <871rxxjo7r.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915: some more header juggling
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwNiBBdWcgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDgtMDYgMTE6MDc6MjEpCj4+
IFRoZSBiaWcgdGhlbWUgaGVyZSBpcyB0byBlbXBoYXNpemUgdGhhdCBpbnRlbF9kcnYuaCBpcyBh
IGRpc3BsYXkgaGVhZGVyLCBzbwo+PiByZW5hbWUgaXQgZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggYW5kIHJlZHVjZSBpdHMgdXNlIGluIG5vbi1kaXNwbGF5Cj4+IGNvZGUuIEFsc28gcmVk
dWNlIHRoZSBpbmNsdXNpb24gb2YgdGhhdCBhbmQgdGhlIG90aGVyIG1lZ2EgaGVhZGVyIGk5MTVf
ZHJ2LmgKPj4gZnJvbSBvdGhlciBoZWFkZXJzLgo+PiAKPj4gQlIsCj4+IEphbmkuCj4+IAo+PiAK
Pj4gSmFuaSBOaWt1bGEgKDEwKToKPj4gICBkcm0vaTkxNTogbW92ZSBpbnRlbF9kaXNwbGF5LmMg
ZnVuY3Rpb24gZGVjbGFyYXRpb25zCj4+ICAgZHJtL2k5MTUvc3ByaXRlOiB1bi1pbmxpbmUgaWNs
X2lzX2hkcl9wbGFuZSgpCj4+ICAgZHJtL2k5MTUvaXJxOiB1bi1pbmxpbmUgZnVuY3Rpb25zIHRv
IGF2b2lkIGk5MTVfZHJ2LmggaW5jbHVkZQo+PiAgIGRybS9pOTE1L2J3OiBtYWtlIGludGVsX2F0
b21pY19nZXRfYndfc3RhdGUoKSBzdGF0aWMKPj4gICBkcm0vaTkxNS9tc3Q6IHVuLWlubGluZSBp
bnRlbF9kcF9tc3RfZW5jb2Rlcl9hY3RpdmVfbGlua3MoKQo+PiAgIGRybS9pOTE1L3RjOiB1bi1p
bmxpbmUgaW50ZWxfdGNfcG9ydF9yZWZfaGVsZCgpCj4+ICAgZHJtL2k5MTU6IGF2b2lkIGluY2x1
ZGluZyBpbnRlbF9kcnYuaCB2aWEgaTkxNV9kcnYuaC0+aTkxNV90cmFjZS5oCj4+ICAgZHJtL2k5
MTU6IHJlbmFtZSBpbnRlbF9kcnYuaCB0byBkaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+
PiAgIGRybS9pOTE1OiByZW1vdmUgdW5uZWNlc3NhcnkgaW5jbHVkZXMgb2YgaW50ZWxfZGlzcGxh
eV90eXBlcy5oIGhlYWRlcgo+PiAgIGRybS9pOTE1OiBtb3ZlIHByb3BlcnR5IGVudW1zIHRvIGlu
dGVsX2Rpc3BsYXlfdHlwZXMuaAo+Cj4gQSBmZXcgbW9tZW50cyBvZiBleGFzcGVyYXRpb24gb2Yg
IndlIHVzZSB0aGF0IHRoZXJlIT8iLCBidXQgbG9va3MgYWxsCj4gZGFuZHkuIEkgZGlkbid0IHNw
b3QgYW55dGhpbmcgb3RoZXIgdGhhbiBtZWNoYW5pY2FsIHRyYW5zbGF0aW9ucyBhbmQgSQo+IGFn
cmVlIHdpdGggdGhlIGRpcmVjdGlvbiwKPgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KClB1c2hlZCB0aGUgbG90LCBtYW55IHRoYW5rcyBmb3Ig
cmV2aWV3aW5nIHRoZXNlIHRlZGlvdXMgcGF0Y2hlcyEKCkJSLApKYW5pLgoKCi0tIApKYW5pIE5p
a3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

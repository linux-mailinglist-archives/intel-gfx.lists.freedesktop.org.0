Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B320F12872
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 09:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B528979E;
	Fri,  3 May 2019 07:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0372D8979E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 07:07:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 00:07:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,424,1549958400"; d="scan'208";a="170192304"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 03 May 2019 00:07:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <155680989353.9023.13192841480110038083@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1556809195.git.jani.nikula@intel.com>
 <155680989353.9023.13192841480110038083@skylake-alporthouse-com>
Date: Fri, 03 May 2019 10:10:03 +0300
Message-ID: <87h8acnhdg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/13] drm/i915: the great header
 refactoring, part three
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

T24gVGh1LCAwMiBNYXkgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDUtMDIgMTY6MDI6MzQpCj4+
IENvbnRpbnVlIHRoZSBoZWFkZXIgcmVmYWN0b3Jpbmcgc3RhcnRlZCBpbiBbMV0gYW5kIFsyXS4K
Pj4gCj4+IEJSLAo+PiBKYW5pLgo+PiAKPj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNTkwMjIvCj4+IFsyXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzYwMDYwLwo+PiAKPj4gSmFuaSBOaWt1bGEgKDEzKToKPj4gICBkcm0vaTkx
NS9kdm86IG1vdmUgRFZPIGNoaXAgdHlwZXMgdG8gaW50ZWxfZHZvLmMKPj4gICBkcm0vaTkxNS9k
c2k6IG1vdmUgb3BlcmF0aW9uIG1vZGUgdHlwZXMgdG8gaW50ZWxfZHNpLmgKPj4gICBkcm0vaTkx
NTogbW92ZSByYW5nZXMgdG8gaW50ZWxfZGlzcGxheS5jCj4+ICAgZHJtL2k5MTU6IHJlbW92ZSB1
bnVzZWQvc3RhbGUgbWFjcm9zIGFuZCBjb21tZW50cyBmcm9tIGludGVsX2Rydi5oCj4+ICAgZHJt
L2k5MTUvY3NyOiBtb3ZlIENTUiB2ZXJzaW9uIG1hY3JvcyB0byBpbnRlbF9jc3IuaAo+PiAgIGRy
bS9pOTE1OiBleHRyYWN0IGludGVsX2RwaW9fcGh5LmggZnJvbSBpOTE1X2Rydi5oCj4+ICAgZHJt
L2k5MTU6IGV4dHJhY3QgaW50ZWxfbHBlX2F1ZGlvLmggZnJvbSBpOTE1X2Rydi5oCj4+ICAgZHJt
L2k5MTU6IGV4dHJhY3QgaW50ZWxfYWNwaS5oIGZyb20gaTkxNV9kcnYuaAo+PiAgIGRybS9pOTE1
OiBleHRyYWN0IGk5MTVfZGVidWdmcy5oIGZyb20gaTkxNV9kcnYuaAo+PiAgIGRybS9pOTE1OiBt
b3ZlIGk5MTVfdmdhY250cmxfcmVnKCkgd2hlcmUgbmVlZGVkCj4+ICAgZHJtL2k5MTU6IG1ha2Ug
aTkxNV91dGlscy5oIHNlbGYtY29udGFpbmVkCj4+ICAgZHJtL2k5MTU6IG1vdmUgbW9yZSBnZW5l
cmljIHV0aWxzIHRvIGk5MTVfdXRpbHMuaAo+PiAgIGRybS9pOTE1OiBleHRyYWN0IGludGVsX2dt
YnVzLmggZnJvbSBpOTE1X2Rydi5oIGFuZCByZW5hbWUgaW50ZWxfaTJjLmMKPgo+IExvdHMgb2Yg
c21hbGwgY2hhbmdlcyB0aGF0IGxvb2sgZ29vZC4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpUaGFua3MgZm9yIHRoZSByZXZpZXcsIHB1c2hl
ZCB0aGUgbG90LgoKQlIsCkphbmkuCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=

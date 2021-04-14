Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4277C35F82E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432096E92F;
	Wed, 14 Apr 2021 15:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA1A6E92F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:52:18 +0000 (UTC)
IronPort-SDR: htDegvG1Ml6goooxz/epOKJdSPy/mgx/BQSY1NVmksVEYvqwI/S2PXGi5p3xufyf6EdxGnUu0N
 dj1J+76A+CTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="181791603"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="181791603"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:12 -0700
IronPort-SDR: 0pH7jkLlIGfWsQK4eWSYpXilpMyCVENdcDW2sCHU869T7EtJDapnpdHQH1O6hd+e4rA7gpzpIX
 DGQV/9gx2u5A==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="399226501"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:52:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 18:51:57 +0300
Message-Id: <20210414155208.3161335-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/11] drm/i915/adl_p: Add support for Display
 Page Tables
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

QWxkZXIgTGFrZS1QIGFkZHMgYSBuZXcgRGlzcGxheSBQYWdlIFRhYmxlIGhhcmR3YXJlIHN0cnVj
dHVyZSwgbWFwcGluZwp0aWxlZCBmcmFtZWJ1ZmZlciBwYWdlcyB0byB0aGUgZGlzcGxheSBlbmdp
bmUsIHJlZHVjaW5nIHRoZSBhZGRyZXNzCnNwYWNlIHJlcXVpcmVkIGluIEdHVFQgZm9yIHRoZXNl
IGZyYW1lYnVmZmVycy4KClRoaXMgcGF0Y2hzZXQgYWRkcyBzdXBwb3J0IGZvciB0aGlzIHRha2lu
ZyBhIG1pbmltdW0gc2V0IG9mIGRlcGVuZGVuY3kKcGF0Y2hlcyBmcm9tIHRoZSBBRExfUCBlbmFi
bGluZyBwYXRjaHNldCBhdApodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
Lzg3ODk3LwoKQ2xpbnRvbiBUYXlsb3IgKDIpOgogIGRybS9pOTE1L2FkbF9wOiBBZGQgUENJIERl
dmljZXMgSURzCiAgZHJtL2k5MTUvYWRsX3A6IEFETF9QIGRldmljZSBpbmZvIGVuYWJsaW5nCgpJ
bXJlIERlYWsgKDQpOgogIGRybS9pOTE1OiBQYXNzIGludGVsX2ZyYW1lYnVmZmVyIGluc3RhZCBv
ZiBkcm1fZnJhbWVidWZmZXIgdG8KICAgIGludGVsX2ZpbGxfZmJfaW5mbygpCiAgZHJtL2k5MTUv
YWRsX3A6IERpc2FibGUgc3VwcG9ydCBmb3IgOTAvMjcwIEZCIHJvdGF0aW9uCiAgZHJtL2k5MTUv
YWRsX3A6IFJlcXVpcmUgYSBtaW5pbXVtIG9mIDggdGlsZXMgc3RyaWRlIGZvciBEUFQgRkJzCiAg
ZHJtL2k5MTUvYWRsX3A6IEVuYWJsZSByZW1hcHBpbmcgdG8gcGFkIERQVCBGQiBzdHJpZGVzIHRv
IFBPVAoKSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAoMik6CiAgZHJtL2k5MTUveGVscGQ6IEZhbGxi
YWNrIHRvIHBsYW5lIHN0cmlkZSBsaW1pdGF0aW9ucyB3aGVuIHVzaW5nIERQVAogIGRybS9pOTE1
L2FkbF9wOiBBZGQgc3RyaWRlIHJlc3RyaWN0aW9uIHdoZW4gdXNpbmcgRFBUCgpKdWhhLVBla2th
IEhlaWtraWzDpCAoMSk6CiAgZHJtL2k5MTUveGVscGQ6IFN1cHBvcnQgMTI4ayBwbGFuZSBzdHJp
ZGUKCk1hdHQgUm9wZXIgKDEpOgogIGRybS9pOTE1L3hlbHBkOiBhZGQgWEVfTFBEIGRpc3BsYXkg
Y2hhcmFjdGVyaXN0aWNzCgpWaWxsZSBTeXJqw6Rsw6QgKDEpOgogIGRybS9pOTE1L3hlbHBkOiBG
aXJzdCBzdGFiIGF0IERQVCBzdXBwb3J0CgogYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1aXJrcy5j
ICAgICAgICAgICAgICAgIHwgICAxICsKIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYyB8ICAgNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgIHwgMzgxICsrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgICAxICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYi5jICAgICAgIHwgIDkyICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiLmggICAgICAgfCAgIDUgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICAgICB8ICAgNiArLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3VuaXZlcnNhbF9wbGFuZS5jICAgIHwgIDY4ICsrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2dlbjhfcHBndHQuaCAgICAgICAgICB8ICAgNyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9nZ3R0LmMgICAgICAgICAgfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0dC5oICAgICAgICAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYyAgICAgICAgICAgICAgIHwgIDIyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5jICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uaCAgICAgIHwgICAxICsKIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggICAgICAgICAg
ICAgICAgICAgICB8ICAyMSArCiAxOCBmaWxlcyBjaGFuZ2VkLCA1NjcgaW5zZXJ0aW9ucygrKSwg
ODYgZGVsZXRpb25zKC0pCgotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK

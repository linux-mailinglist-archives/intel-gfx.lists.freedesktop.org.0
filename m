Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9633B6F1D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 10:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE5C89F4A;
	Tue, 29 Jun 2021 08:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6427D89F4A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jun 2021 08:13:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="208049218"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="208049218"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 01:13:08 -0700
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="408361092"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 01:13:07 -0700
Date: Tue, 29 Jun 2021 13:44:42 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Message-ID: <20210629081442.GA29108@intel.com>
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 0/4] The Following Patches are to Fix the
 Critical KclockWork Errors in i915_gem and gt
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

ZWFjaCBwYXRjaCdzIGNvbW1pdCBtZXNzYWdlIGlzIGVtcHR5IGV4Y2VwdCBmb3Igc2lnbmVkLW9m
ZiBhbmQgY2MuClBsZWFzZSBwcm92aWRlIGNvcnJlc3BvbmRpbmcgS2Nsb2NrV29yayBFcnJvcnMg
dGhhdCBpcyBnZXR0aW5nIGZpeGVkLgoKUmFtLgoKT24gMjAyMS0wNi0yOCBhdCAyMDowODoyNSAr
MDUzMCwgQm9tbXUgS3Jpc2huYWlhaCB3cm90ZToKPiBLbG9jayB3b3JrIEZpeCBmb3IgTlVMTCBk
ZXJlZmVyZW5jaW5nIGluIGk5MTVfZ2VtX3R0bS5jCj4gb3JpZ2luYWwgaXNzdWUgc3RhdGVtZW50
ICJQb2ludGVyICdzZycgcmV0dXJuZWQgZnJvbSBjYWxsIHRvIGZ1bmN0aW9uICdfX2k5MTVfZ2Vt
X29iamVjdF9nZXRfc2cnIGF0IGxpbmUgNTkyIG1heSBiZSBOVUxMIGFuZCB3aWxsIGJlIGRlcmVm
ZXJlbmNlZCBhdCBsaW5lIDU5NC4iCj4gCj4gS2xvY2sgd29yayBGaXggZm9yIE5VTEwgZGVyZWZl
cmVuY2luZyBpbiBpOTE1X2dlbV9tbWFuLmMKPiBvcmlnaW5hbCBpc3N1ZSBzdGF0ZW1lbnQgIk51
bGwgcG9pbnRlciAnbW1vJyB0aGF0IGNvbWVzIGZyb20gbGluZSA4OTIgbWF5IGJlIGRlcmVmZXJl
bmNlZCBhdCBsaW5lIDk2NC4iCj4gCj4gS2xvY2sgd29yayBGaXggZm9yIHBvc3NpYmxlIG1lbW9y
eSBsZWFrIGluIGludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uLmMKPiBvcmlnaW5hbCBpc3N1ZSBz
dGF0ZW1lbnQg4oCcUG9zc2libGUgbWVtb3J5IGxlYWsuIER5bmFtaWMgbWVtb3J5IHN0b3JlZCBp
biAndmUnIGFsbG9jYXRlZCB0aHJvdWdoIGZ1bmN0aW9uICdremFsbG9jJyBhdCBsaW5lIDM3MjEg
Y2FuIGJlIGxvc3QgYXQgbGluZSAzODUw4oCdCj4gCj4gS2xvY2sgd29yayBGaXggZm9yIHVuaW5p
dGlhbGl6ZWQgYXJyYXkgaW50ZWxfbWlncmF0ZS5jCj4gb3JpZ2luYWwgaXNzdWUgc3RhdGVtZW50
ICInZW5naW5lcycgYXJyYXkgZWxlbWVudHMgbWlnaHQgYmUgdXNlZCB1bmluaXRpYWxpemVkIGlu
IHRoaXMgZnVuY3Rpb24uIgo+IAo+IEJvbW11IEtyaXNobmFpYWggKDQpOgo+ICAgS2xvY2sgd29y
ayBGaXggZm9yIE5VTEwgZGVyZWZlcmVuY2luZyBpbiBpOTE1X2dlbV90dG0uYwo+ICAgS2xvY2sg
d29yayBGaXggZm9yIE5VTEwgZGVyZWZlcmVuY2luZyBpbiBpOTE1X2dlbV9tbWFuLmMKPiAgIEts
b2NrIHdvcmsgRml4IGZvciBwb3NzaWJsZSBtZW1vcnkgbGVhayBpbgo+ICAgICBpbnRlbF9leGVj
bGlzdHNfc3VibWlzc2lvbi5jCj4gICBLbG9jayB3b3JrIEZpeCBmb3IgdW5pbml0aWFsaXplZCBh
cnJheSBpbnRlbF9taWdyYXRlLmMKPiAKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX21tYW4uYyAgICAgICAgICAgICB8IDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3R0bS5jICAgICAgICAgICAgICB8IDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbi5jIHwgMSArCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX21pZ3JhdGUuYyAgICAgICAgICAgICAgfCA0ICsrKysKPiAgNCBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiAtLSAKPiAyLjI1LjEKPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

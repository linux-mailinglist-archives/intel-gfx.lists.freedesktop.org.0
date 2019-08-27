Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2E89EB53
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 16:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C6D28930B;
	Tue, 27 Aug 2019 14:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745E08930B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 14:42:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 07:42:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="380059645"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by fmsmga005.fm.intel.com with ESMTP; 27 Aug 2019 07:42:23 -0700
Date: Tue, 27 Aug 2019 10:59:03 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190827145903.GF28351@intel.com>
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
 <20190825233527.17841-1-prathap.kumar.valsan@intel.com>
 <156681107573.2672.9638164714564673895@skylake-alporthouse-com>
 <20190827141751.GE28351@intel.com>
 <156691651482.15406.9011761933083101122@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156691651482.15406.9011761933083101122@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add sysfs interface to
 control class-of-service
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMjcsIDIwMTkgYXQgMDM6MzU6MTRQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgS3VtYXIgVmFsc2FuLCBQcmF0aGFwICgyMDE5LTA4LTI3IDE1OjE3OjUx
KQo+ID4gV2Ugd2FudCB0byBzdXBwb3J0IHRoaXMgb24gR2VuMTEgYXMgd2VsbCwgd2hlcmUgdGhl
c2UgcmVnaXN0ZXJzCj4gPiBhcmUgY29udGV4dCBzYXZlZCBhbmQgcmVzdG9yZWQgYW5kIHdlIHBy
aW1lIHRoZSByZWdpc3RlciB2YWx1ZXMgb2YgbmV3IGNvbnRleHRzCj4gPiBmcm9tIHJlY29yZGVk
IGRlZmF1bHRzLiBXaGF0IGNvdWxkIGJlIHRoZSBjb3JyZWN0IHdheSB0byBoYW5kbGUgdGhpcywg
d3JpdGUgdG8gdGhlCj4gPiBkZWZhdWx0IG9iamVjdCBvciBzaG91bGQgYXNrIEdQVSB0byByZS1y
ZWNvcmQgYWZ0ZXIgbW9kaWZ5aW5nIHRoZQo+ID4gcmVnaXN0ZXJzLgo+IAo+IFRoYXQgZGVwZW5k
cyBvbiB3aGV0aGVyIHlvdSB3YW50IHRvIGFwcGx5IHRvIGV4aXN0aW5nIG9yIG9ubHkgdG8gbmV3
Lgo+IEZvciBPQSAvIHNzZXUsIHdlIG1vZGlmeSB0aGUgY29udGV4dCBpbWFnZXMgc28gdGhhdCBl
eGlzdGluZyBjb250ZXh0cwo+IGFyZSB1cGRhdGVkIHRvIHJlZmxlY3QgdGhlIG5ldyBkZWZhdWx0
cywgYW5kIHdlIHVwZGF0ZSB0aGUgZGVmYXVsdHMuCj4gRS5nLiBnZW44X2NvbmZpZ3VyZV9hbGxf
Y29udGV4dHMoKQoKQXBwbHlpbmcgdG8gdGhlIGV4aXN0aW5nIGNvbnRleHRzIGFzIHdlbGwgc2hv
dWxkIGJlIHRoZSByaWdodAp0aGluZyB0byBkby4gVGhhbmsgeW91ISBJIHdpbGwgbG9vayBhdCB0
aGUgZXhhbXBsZS4KClByYXRoYXAKPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4

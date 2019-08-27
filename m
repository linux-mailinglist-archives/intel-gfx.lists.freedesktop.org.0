Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 638839EA48
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 16:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB30F89B46;
	Tue, 27 Aug 2019 14:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608DF89B46
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 14:01:12 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 07:01:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="264278464"
Received: from pkumarva-server.ra.intel.com (HELO intel.com) ([10.23.184.130])
 by orsmga001.jf.intel.com with ESMTP; 27 Aug 2019 07:01:11 -0700
Date: Tue, 27 Aug 2019 10:17:51 -0400
From: "Kumar Valsan, Prathap" <prathap.kumar.valsan@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190827141751.GE28351@intel.com>
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
 <20190825233527.17841-1-prathap.kumar.valsan@intel.com>
 <156681107573.2672.9638164714564673895@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156681107573.2672.9638164714564673895@skylake-alporthouse-com>
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

T24gTW9uLCBBdWcgMjYsIDIwMTkgYXQgMTA6MTc6NTVBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgUHJhdGhhcCBLdW1hciBWYWxzYW4gKDIwMTktMDgtMjYgMDA6MzU6Mjcp
Cj4gPiBUbyBwcm92aWRlIHNoYXJlZCBsYXN0LWxldmVsLWNhY2hlIGlzb2xhdGlvbiB0byBjcHUg
d29ya2xvYWRzIHJ1bm5pbmcKPiA+IGNvbmN1cnJlbnRseSB3aXRoIGdwdSB3b3JrbG9hZHMsIHRo
ZSBncHUgYWxsb2NhdGlvbiBvZiBjYWNoZSBsaW5lcyBuZWVkcwo+ID4gdG8gYmUgcmVzdHJpY3Rl
ZCB0byBjZXJ0YWluIHdheXMuIEN1cnJlbnRseSBHUFUgaGFyZHdhcmUgc3VwcG9ydHMgZm91cgo+
ID4gY2xhc3Mtb2Ytc2VydmljZShDTE9TKSBsZXZlbHMgYW5kIHRoZXJlIGlzIGFuIGFzc29jaWF0
ZWQgd2F5LW1hc2sgZm9yCj4gPiBlYWNoIENMT1MuCj4gPiAKPiA+IEhhcmR3YXJlIHN1cHBvcnRz
IHJlYWRpbmcgc3VwcG9ydGVkIHdheS1tYXNrIGNvbmZpZ3VyYXRpb24gZm9yIEdQVSB1c2luZwo+
ID4gYSBiaW9zIHBjb2RlIGludGVyZmFjZS4gVGhlIHN1cHBvcnRlZCB3YXktbWFza3MgYW5kIHRo
ZSBvbmUgY3VycmVudGx5Cj4gPiBhY3RpdmUgaXMgY29tbXVuaWNhdGVkIHRvIHVzZXJzcGFjZSB2
aWEgYSBzeXNmcyBmaWxlLS1jbG9zY3RybC4gQWRtaW4gdXNlcgo+ID4gY2FuIHRoZW4gc2VsZWN0
IGEgbmV3IG1hc2sgYnkgd3JpdGluZyB0aGUgbWFzayB2YWx1ZSB0byB0aGUgZmlsZS4KPiAKPiBX
aGF0IGltcGFjdCBkb2VzIHRoaXMgaGF2ZSBvbiBpbmZsaWdodCB3b3JrPyBEbyB5b3UgbmVlZCB0
byBkcmFpbiB0aGUKPiBzdWJtaXNzaW9uIHF1ZXVlLCBjaGFuZ2UgdGhlIGdsb2JhbCByZWdpc3Rl
cnMsIGZvcmNlIGFuIGludmFsaWRhdGlvbiBhbmQKPiB0aGVuIHJlc3RhcnQ/IENhbiBpdCBiZSBk
b25lIGZyb20gaW5zaWRlIHRoZSBHUFUgc28gdGhhdCBpdCBpcwo+IHNlcmlhbGlzZWQgd2l0aCBv
bi1nb2luZyBzdWJtaXNzaW9uPwpJIGJlbGlldmUgdGhpcyBzaG91bGQgbm90IGJlIGltcGFjdGlu
ZyB0aGUgaW5mbGlnaHQgd29yay4gQmVjYXVzZSwgd2F5IG1hc2sKb25seSBpbmZsdW5lY2UgYSBu
ZXcgY2FjaGUgYWxsb2NhdGlvbiBvbiBjYWNoZSBtaXNzLiBDYWNoZSBoaXRzIGFyZSBub3QKcmVz
dHJpY3RlZCBieSB3YXktbWFzay4gU28gZXZlbiB0aGUgd2F5LW1hc2sgaXMgY2hhbmdlZCwgaW4t
ZmxpZ2h0CnJlcXVlc3RzIHByZXZpb3VzbHkgYWxsb2NhdGVkIGNhY2hlIGxpbmVzIGZyb20gb3Ro
ZXIgd2F5cyB3aWxsIHN0aWxsIGJlCmEgY2FjaGUgaGl0IHVudGlsIHRocmFzaGVkLgoKV2Ugd2Fu
dCB0byBzdXBwb3J0IHRoaXMgb24gR2VuMTEgYXMgd2VsbCwgd2hlcmUgdGhlc2UgcmVnaXN0ZXJz
CmFyZSBjb250ZXh0IHNhdmVkIGFuZCByZXN0b3JlZCBhbmQgd2UgcHJpbWUgdGhlIHJlZ2lzdGVy
IHZhbHVlcyBvZiBuZXcgY29udGV4dHMKZnJvbSByZWNvcmRlZCBkZWZhdWx0cy4gV2hhdCBjb3Vs
ZCBiZSB0aGUgY29ycmVjdCB3YXkgdG8gaGFuZGxlIHRoaXMsIHdyaXRlIHRvIHRoZQpkZWZhdWx0
IG9iamVjdCBvciBzaG91bGQgYXNrIEdQVSB0byByZS1yZWNvcmQgYWZ0ZXIgbW9kaWZ5aW5nIHRo
ZQpyZWdpc3RlcnMuCgpUaGFua3MsClByYXRoYXAKPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

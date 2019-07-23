Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D554715AE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 12:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F56F6E0CC;
	Tue, 23 Jul 2019 10:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85BB6E0CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 10:06:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17530189-1500050 for multiple; Tue, 23 Jul 2019 11:06:43 +0100
MIME-Version: 1.0
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 Ramalingam C <ramalingam.c@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190718233747.GA24813@intel.com>
References: <20190719055513.2089-1-anshuman.gupta@intel.com>
 <20190718233747.GA24813@intel.com>
Message-ID: <156387640110.31349.3172196007223366040@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 23 Jul 2019 11:06:41 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add HDCP capability info to
 i915_display_info.
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMDctMTkgMDA6Mzc6NDcpCj4gT24gMjAxOS0wNy0x
OSBhdCAxMToyNToxMyArMDUzMCwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6Cj4gPiBUbyBpZGVudGlm
eSB0aGUgSERDUCBjYXBhYmlsaXR5IG9mIHRoZSBkaXNwbGF5IGNvbm5lY3RlZCB0byBDSQo+ID4g
c3lzdGVtcywgd2UgbmVlZCB0byBhZGQgdGhlIGhkY3AgY2FwYWJpbGl0eSBwcm9iaW5nIGluIGk5
MTVfZGlzcGxheV9pbmZvLgo+ID4gCj4gPiBUaGlzIHdpbGwgYWxzbyBoZWxwIHRvIHBvcHVsYXRl
IHRoZSBIRENQIGNhcGFiaWxpdHkgb2YgdGhlIENJIHN5c3RlbXMKPiA+IHRvIENJIEgvVyBsb2dz
IG1haW50YWluZWQgYXQgaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL2hhcmR3YXJlLy4KPiA+
IEl0IHdpbGwgZmFjaWxpdGF0ZSB0byBkZXRlcm1pbmUgdGhlIGttc19jb250ZW50X3Byb3RlY3Rp
b24gYmVoYXZpb3Igb24KPiA+IGEgcGFydGljdWxhciBDSSBzeXN0ZW0uCj4gPiAKPiA+IHYyOiBS
ZXVzZWQgdGhlIGludGVsX2hkY3BfaW5mbygpIGluIGk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHlf
c2hvdygpLiBbUmFtXQo+ID4gICAgIFNoaWZ0ZWQgaW50ZWxfaGRjcF9pbmZvKCkgdG8gdGhlIGVu
ZCBvZiBpbnRlbF9kcF9pbmZvLiBbUmFtXQo+ID4gdjM6IHVzZWQgc2VxX3B1dHMoKSBpbnN0ZWFk
IG9mIHNlcV9wcml0bmYoKS4gW1JhbV0KPiA+IAo+ID4gQ2M6IGRhbmllbC52ZXR0ZXJAaW50ZWwu
Y29tCj4gPiBDYzogcmFtYWxpbmdhbS5jQGludGVsLmNvbQo+ID4gU2lnbmVkLW9mZi1ieTogQW5z
aHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiBMb29rcyBnb29kIHRvIG1l
Lgo+IAo+IFJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+
CgpQdXNoZWQsIHRoYW5rcyBmb3IgdGhlIHBhdGNoIGFuZCByZXZpZXcuCgpBbnkgdGFrZXJzIGZv
ciBwdXNoaW5nIGk5MTVfZGVidWdmcyBpbnRvIGxvY2FsaXNlZCBkcm1fcHJpbnRlcgpwcmV0dHkg
cHJpbnRlcnM/IEFuZCBlbmNvdXJhZ2luZyBhIHN0YW5kYXJkaXNlZCBmb3JtYXQgbGlrZSB5YW1s
IQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

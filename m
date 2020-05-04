Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EAA1C3CC2
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 16:20:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C79189EA3;
	Mon,  4 May 2020 14:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E4989EA3
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 14:20:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21107255-1500050 for multiple; Mon, 04 May 2020 15:19:45 +0100
MIME-Version: 1.0
In-Reply-To: <20200504134928.GA6112@intel.com>
References: <20200503180034.20010-1-chris@chris-wilson.co.uk>
 <20200504134928.GA6112@intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158860198201.11660.5363246925488598826@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 04 May 2020 15:19:42 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Warn if the FBC is still
 writing to stolen on removal
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDUtMDQgMTQ6NDk6MjgpCj4gT24gU3VuLCBN
YXkgMDMsIDIwMjAgYXQgMDc6MDA6MzRQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
SWYgdGhlIEZCQyBpcyBzdGlsbCB3cml0aW5nIGludG8gc3RvbGVuLCBpdCB3aWxsIG92ZXJ3cml0
ZSBhbnkgZnV0dXJlCj4gPiB1c2VycyBvZiB0aGF0IHN0b2xlbiByZWdpb24uIENoZWNrIGJlZm9y
ZSByZWxlYXNlLgo+ID4gCj4gPiBSZWZlcmVuY2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzE2MzUKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDMgKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMKPiA+IGluZGV4IGM2YWZhMTBlODE0Yy4uMzcyNDRlZDkyYWU0IDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ID4gQEAgLTU0MCw2ICs1
NDAsOSBAQCBzdGF0aWMgdm9pZCBfX2ludGVsX2ZiY19jbGVhbnVwX2NmYihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiAgewo+ID4gICAgICAgc3RydWN0IGludGVsX2ZiYyAq
ZmJjID0gJmRldl9wcml2LT5mYmM7Cj4gPiAgCj4gPiArICAgICBpZiAoV0FSTl9PTihpbnRlbF9m
YmNfaHdfaXNfYWN0aXZlKGRldl9wcml2KSkpCj4gPiArICAgICAgICAgICAgIHJldHVybjsKPiA+
ICsKPiAKPiBDYW4ndCBpbW1lZGlhdGVseSBzZWUgaG93IHRoYXQgd291bGQgaGFwb2VuLCBidXQg
bm8gaGFybSBpbiBjaGVja2luZy4KCkknbSBjbHV0Y2hpbmcgYXQgc3RyYXdzIHRvIGV4cGxhaW4g
aG93IGNvbWUgZmktYnh0LWRzaSBpcyBvdmVyd3JpdGluZwoKPDc+IFs1OTIuNzg5ODQ0XSBoZWFy
dGJlYXQgWzAwMDBdIGYwMTAxMDExIGYxMmZmMTJmIGYxMmZmMTJmIGYxMmZmMTJmIGYxMmZmMTJm
IGYxMmZmMTJmIGYxMmZmMTJmIGYxMmZmMTJmCjw3PiBbNTkyLjc4OTg1M10gaGVhcnRiZWF0IFsw
MDIwXSBmMTJmZjEyZiBmMTJmZjEyZiBmMTJmZjEyZiBmMTJmZjEyZiBmMTJmZjEyZiBmMTJmZjEy
ZiBmMTJmZjEyZiBmMTJmZjEyZgo8Nz4gWzU5Mi43ODk4NjBdIGhlYXJ0YmVhdCAqCjw3PiBbNTky
Ljc4OTg2OV0gaGVhcnRiZWF0IFswMDYwXSBmMTJmZjEyZiBmMTJmZjEyZiBmMTJmZjEyZiBmMTJm
ZjEyZiBjMTJmZjEyZiBmMTAwMDAwZiBmMTJmZjEyZiBmMTJmZjEyZgoKaW50byBzZW5zaXRpdmUg
bG9jYXRpb25zLiBNeSB0aGVvcnkgaXMgdGhhdCBpdCBpcyBzdG9sZW4gbWVtb3J5IGJlaW5nCmNs
b2JiZXJzIHdpdGggd2hhdCBsb29rcyBsaWtlIHNvbWUgb2RkIHBpeGVsIGRhdGEuIEZCQyBiZWlu
ZyBhIHN1c3BlY3QsCmhlbmNlIGdldHRpbmcgc29tZXRoaW5nIGxpa2UgdGhpcyBjaGVjayBpbiBw
bGFjZSBmb3IgdGhlIGlkbGUgcnVucyBhbmQKc2VlIHdoYXQgdHVybnMgdXAuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

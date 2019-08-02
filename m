Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B467D800F7
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 21:34:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA1C86EF59;
	Fri,  2 Aug 2019 19:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C13A6E77B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 19:34:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17825705-1500050 for multiple; Fri, 02 Aug 2019 20:34:28 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190802184055.31988-3-michal.wajdeczko@intel.com>
References: <20190802184055.31988-1-michal.wajdeczko@intel.com>
 <20190802184055.31988-3-michal.wajdeczko@intel.com>
Message-ID: <156477446608.6598.4562656062466540658@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 02 Aug 2019 20:34:26 +0100
Subject: Re: [Intel-gfx] [PATCH v7 2/6] drm/i915/uc: Do full sanitize
 instead of pure reset
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTAyIDE5OjQwOjUxKQo+IE9uIEdlbjkg
d2hlbiB3ZSB0cnkgdG8gcmVsb2FkIEh1QyBkdWUgdG8gR3VDIHVwbG9hZCBlcnJvciwgd2UgaGl0
Ogo+IAo+IDw3PiBbMjI5LjY1NjY4OF0gW2RybTppbnRlbF91Y19pbml0X2h3IFtpOTE1XV0gR3VD
IGZ3IGxvYWQgZmFpbGVkOiAtODsgd2lsbCByZXNldCBhbmQgcmV0cnkgMiBtb3JlIHRpbWUocykK
PiA8Nz4gWzIyOS42NTY3MzldIFtkcm06aW50ZWxfdWNfZndfdXBsb2FkIFtpOTE1XV0gSHVDIGZ3
IGxvYWQgaTkxNS9rYmxfaHVjX3ZlcjAyXzAwXzE4MTAuYmluCj4gPDM+IFsyMjkuNjU2NzQwXSBp
bnRlbF91Y19md191cGxvYWQ6NDI1IEdFTV9CVUdfT04oaW50ZWxfdWNfZndfaXNfbG9hZGVkKHVj
X2Z3KSkKPiAKPiBhcyB3ZSBwZXJmb3JtZWQgb25seSBwdXJlIHJlc2V0IGFuZCBkaWRuJ3Qgc2Fu
aXRpemVkIEh1QyBmdyBzdGF0dXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3pr
byA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpMb29rcyByZWFzb25hYmxlLApSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

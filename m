Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DEEC352E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 15:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0006E78B;
	Tue,  1 Oct 2019 13:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 985A56E78E
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 13:08:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18679978-1500050 for multiple; Tue, 01 Oct 2019 14:08:21 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191001094526.30083-1-chris@chris-wilson.co.uk>
 <20191001124338.12990-1-chris@chris-wilson.co.uk>
 <da0cc985-2fa0-dcfd-8db4-fef73256203b@linux.intel.com>
In-Reply-To: <da0cc985-2fa0-dcfd-8db4-fef73256203b@linux.intel.com>
Message-ID: <156993529661.1880.3667331209114794479@skylake-alporthouse-com>
Date: Tue, 01 Oct 2019 14:08:16 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Exercise potential
 false lite-restore
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0wMSAxMzo1OToxNCkKPiAKPiBPbiAwMS8x
MC8yMDE5IDEzOjQzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArICAgICAgICAgICAgIHRhc2ts
ZXRfa2lsbCgmZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7IC8qIGZsdXNoIHN1Ym1pc3Npb24g
Ki8KPiAKPiBJcyB0aGlzIHJlYWxseSBuZWVkZWQsIHdoeT8KCkluIGEgcGF0aG9sb2dpY2FsIGNh
c2Ugd2hlcmUgd2UgYXJlIHVzaW5nIHRoZSB0YXNrbGV0IChlLmcuIHByZWVtcHRpb24KYW5kIGtz
b2Z0aXJxZCBhY3RpdmUpLCBpdCB3b3VsZCB0aGVuIGJlIHBvc3NpYmxlIGZvciB0aGUgc3Bpbm5l
ciB0bwpjb21wbGV0ZSAodGhhbmtzIHRvIHRoZSBpZ3Rfc3Bpbm5lcl9lbmQgYmVsb3cpIGJlZm9y
ZSB3ZSBwcm9jZXNzIHRoZQpwcmVlbXB0aW9uIHJlcXVlc3QgKHRodXMgd2Ugd291bGQgbm90IHBl
cmZvcm0gYSBwcmVlbXB0aW9uIHJlcXVlc3QpLiBOb3cKaXQgbWF5IHN0aWxsIGNvbXBsZXRlIGJl
Zm9yZSB0aGUgSFcgaGFzIGEgY2hhbmNlIHRvIHByb2Nlc3MgdGhlIEVMU1AKc3VibWl0LCBidXQg
dGhhdCByaXNrIGZlZWxzIGxlc3MgbGlrZWx5LiAoV2Ugd291bGQgbmVlZCB0byB3YWl0IG9uCiFl
eGVjbGlzdHMtPnBlbmRpbmcgd2l0aCBhIHRpbWVvdXQgdG8gYmUgc3VyZS4pCgp0YXNrbGV0X2tp
bGwoKSBpcwoJd2hpbGUgdGFza2xldCBpcyBxdWV1ZWQgYW5kIG5vdCBydW46CgkJeWllbGQoKTsK
CkkgdGhpbmsgd2UgbmVlZCBvbmx5IHRoZSBvbmUgZmx1c2ggYXMgd2Ugb25seSByZWFsbHkgY2Fy
ZSBhYm91dCB0aGUKZmlyc3QgYXZhaWxhYmxlIGV4ZWNsaXN0c19zdWJtaXRfcG9ydCB0aGF0IGhh
cyBib3RoIEVMU1AgZmlsbGVkIHRvIGNoZWNrCmZvciBhIHBvc3NpYmxlIGxpdGUtcmVzdG9yZSBi
ZXR3ZWVuIHRoZSBkaWZmZXJlbnQgY29udGV4dHMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

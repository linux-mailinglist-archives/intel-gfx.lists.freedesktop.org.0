Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F10D4F38B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 11:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D9889017;
	Tue, 30 Apr 2019 09:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BF289012
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 09:57:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16405243-1500050 for multiple; Tue, 30 Apr 2019 10:56:57 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <cover.1556540889.git.jani.nikula@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
Message-ID: <155661821603.27886.681631146794852677@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Apr 2019 10:56:56 +0100
Subject: Re: [Intel-gfx] [PATCH 00/21] drm/i915: the great header
 refactoring, part two
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNC0yOSAxMzoyOToxOCkKPiBDb250aW51ZSB0aGUg
aGVhZGVyIHJlZmFjdG9yaW5nIHN0YXJ0ZWQgaW4gcGFydCBvbmUgWzFdLgo+IAo+IEJSLAo+IEph
bmkuCj4gCj4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTkw
MjIvCj4gCj4gCj4gSmFuaSBOaWt1bGEgKDIxKToKPiAgIGRybS9pOTE1OiBlbnN1cmUgbW9yZSBo
ZWFkZXJzIHJlbWFpbiBzZWxmLWNvbnRhaW5lZAo+ICAgZHJtL2k5MTU6IG1ha2UgaW50ZWxfYmlv
cy5oIHNlbGYtY29udGFpbmVkCj4gICBkcm0vaTkxNS9kdm86IHJlbmFtZSBkdm8uaCB0byBpbnRl
bF9kdm9fZGV2LmggYW5kIG1ha2Ugc2VsZi1jb250YWluZWQKPiAgIGRybS9pOTE1OiBtYWtlIGlu
dGVsX2RwbGxfbWdyLmggc2VsZi1jb250YWluZWQKPiAgIGRybS9pOTE1OiBtb3ZlIGRzaSBpbml0
IGZ1bmN0aW9ucyB0byBpbnRlbF9kc2kuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxfZmlm
b191bmRlcnJ1bi5oIGZyb20gaW50ZWxfZHJ2LmgKPiAgIGRybS9pOTE1OiBleHRyYWN0IGludGVs
X2RwX2xpbmtfdHJhaW5pbmcuaCBmcm9tIGludGVsX2Rydi5oCj4gICBkcm0vaTkxNTogZXh0cmFj
dCBpbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmggZnJvbSBpbnRlbF9kcnYuaAo+ICAgZHJtL2k5MTU6
IGV4dHJhY3QgaTkxNV9pcnEuaCBmcm9tIGludGVsX2Rydi5oIGFuZCBpOTE1X2Rydi5oCj4gICBk
cm0vaTkxNTogZXh0cmFjdCBpbnRlbF9ob3RwbHVnLmggZnJvbSBpbnRlbF9kcnYuaCBhbmQgaTkx
NV9kcnYuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxfYmlvcy5oIGZ1bmN0aW9ucyBmcm9t
IGk5MTVfZHJ2LmgKPiAgIGRybS9pOTE1OiBleHRyYWN0IGludGVsX3F1aXJrcy5oIGZyb20gaW50
ZWxfZHJ2LmgKPiAgIGRybS9pOTE1OiBleHRyYWN0IGludGVsX292ZXJsYXkuaCBmcm9tIGludGVs
X2Rydi5oIGFuZCBpOTE1X2Rydi5oCj4gICBkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF92ZHNjLmgg
ZnJvbSBpbnRlbF9kcnYuaCBhbmQgaTkxNV9kcnYuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaW50
ZWxfZHBfbXN0LmggZnJvbSBpbnRlbF9kcnYuaAo+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxf
ZHNpX2Rjc19iYWNrbGlnaHQuaCBmcm9tIGludGVsX2Rydi5oCj4gICBkcm0vaTkxNTogZXh0cmFj
dCBpbnRlbF9hdG9taWMuaCBmcm9tIGludGVsX2Rydi5oCj4gICBkcm0vaTkxNTogZXh0cmFjdCBp
bnRlbF9ydW50aW1lX3BtLmggZnJvbSBpbnRlbF9kcnYuaAo+ICAgZHJtL2k5MTU6IG1vdmUgc29t
ZSBsZWZ0b3ZlcnMgdG8gaW50ZWxfcG0uaCBmcm9tIGk5MTVfZHJ2LmgKPiAgIGRybS9pOTE1OiBl
eHRyYWN0IGludGVsX2NvbWJvX3BoeS5oIGZyb20gaTkxNV9kcnYuaAo+ICAgZHJtL2k5MTU6IGFk
ZCBzaW5nbGUgY29tYm8gcGh5IGluaXQvdW5pdCBmdW5jdGlvbnMKCkkgcmVhZCB0aGVtIGFsbCBh
bmQgdGhleSBsb29rIHNhbmUuIEkgdHJ1c3QgdGhlIEhEUlRFU1QgaW5mcmFzdHJ1Y3R1cmUKdG8g
c3BvdCBhbnkgdHlwb3MsIHNvCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=

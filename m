Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 177D3F1150
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 09:40:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBD16EC53;
	Wed,  6 Nov 2019 08:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597506EC53
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 08:40:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19098144-1500050 for multiple; Wed, 06 Nov 2019 08:40:27 +0000
MIME-Version: 1.0
To: Niranjan Vishwanathapura <niranjana.vishwanathapura@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191106021444.GE19940@nvishwa1-DESK.sc.intel.com>
References: <20191106000205.22480-1-niranjana.vishwanathapura@intel.com>
 <20191106000205.22480-3-niranjana.vishwanathapura@intel.com>
 <157300063402.21573.3655512947994232648@skylake-alporthouse-com>
 <20191106021444.GE19940@nvishwa1-DESK.sc.intel.com>
Message-ID: <157302962541.18566.12786289249361711097@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 06 Nov 2019 08:40:25 +0000
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Check for ips_mchdev being
 NULL
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

UXVvdGluZyBOaXJhbmphbiBWaXNod2FuYXRoYXB1cmEgKDIwMTktMTEtMDYgMDI6MTQ6NDUpCj4g
T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTI6Mzc6MTRBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID5RdW90aW5nIE5pcmFuamFuYSBWaXNod2FuYXRoYXB1cmEgKDIwMTktMTEtMDYgMDA6
MDI6MDQpCj4gPj4gR3VhcmQgYWdhaW5zdCB1bmluaXRhbGl6ZWQgKE5VTEwpIGlwc19tY2hkZXYg
YmVmb3JlCj4gPj4gZGVyZWZlcmVuY2luZy4KPiA+Cj4gPkJlY2F1c2U/Cj4gCj4gSSBhbSBzZWVp
bmcgc29tZSBleHBvcnRlZCBmdW5jdGlvbnMgbGlrZSBpOTE1X3JlYWRfbWNoX3ZhbCgpIHRoYXQg
dHJ5IHRvCj4gZGVyZWZlcmVuY2UgaXBzX21jaGRldiB2aWEgbWNoZGV2X2dldCgpLiBJIGRvbid0
IGtub3cgZnVsbCB1c2FnZSBoZXJlLAo+IGJ1dCBwcm9iYWJseSBtYWtlIHRoZXNlIEFQSXMgZmFp
bCBzYWZlPwoKQXJlIHlvdSBhbHNvIGdvaW5nIHRvIG1ha2UgdGhvc2UgZnVuY3Rpb25zIHNhZmUg
d2hlbiB0aGUgbW9kdWxlIGlzbid0CnRoZXJlPyBJZiB0aGF0IG1vZHVsZSBpbnRlcmZhY2UgaXMg
dXNlZCBvdXRzaWRlIG9mIHRoZSByZWdpc3RyYXRpb24KcGVyaW9kLCB0aGVuIHRoZSBiaW5kaW5n
IHdpdGggdGhlIGNhbGxlciB3ZW50IGhvcnJpYmx5IGFzdHJheS4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

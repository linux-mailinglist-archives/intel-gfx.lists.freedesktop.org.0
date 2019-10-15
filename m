Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94143D7AA6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A8C6E839;
	Tue, 15 Oct 2019 15:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79A56E83F
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:57:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846413-1500050 for multiple; Tue, 15 Oct 2019 16:57:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-4-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-4-mika.kuoppala@linux.intel.com>
Message-ID: <157115504723.22469.4724445425056428023@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 16:57:27 +0100
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/tgl: Add extra hdc flush
 workaround
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQyKQo+IEluIG9yZGVyIHRv
IGVuc3VyZSBjb25zdGFudCBjYWNoZXMgYXJlIGludmFsaWRhdGVkCj4gcHJvcGVybHkgd2l0aCBh
MCwgd2UgbmVlZCBleHRyYSBoZGMgZmx1c2ggYWZ0ZXIgaW52YWxpZGF0aW9uLgo+IAo+IHYyOiB1
c2UgSVNfVEdMX1JFVklEIChDaHJpcykKPiAKPiBSZWZlcmVuY2VzOiBIU0RFUyMxNjA0NTQ0ODg5
Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

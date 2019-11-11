Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2A7F7155
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501316E1F9;
	Mon, 11 Nov 2019 10:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2F46E1F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:05:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19156948-1500050 for multiple; Mon, 11 Nov 2019 10:05:40 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191111095308.2550-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20191111095308.2550-1-lionel.g.landwerlin@intel.com>
Message-ID: <157346673594.28106.4072719539305504906@skylake-alporthouse-com>
Date: Mon, 11 Nov 2019 10:05:35 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: always consider holding
 preemption a privileged op
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMS0xMSAwOTo1MzowOCkKPiBUaGUgb3Jk
ZXJpbmcgb2YgdGhlIGNoZWNrcyBpbiB0aGUgZXhpc3RpbmcgY29kZSBjYW4gbGVhZCB0byBob2xk
aW5nCj4gcHJlZW1wdGlvbiBub3QgYmVpbmcgY29uc2lkZXJlZCBhcyBwcml2aWxlZ2VkIG9wLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGlu
QGludGVsLmNvbT4KPiBGaXhlczogOWNkMjBlZjc4MDNjICgiZHJtL2k5MTUvcGVyZjogYWxsb3cg
aG9sZGluZyBwcmVlbXB0aW9uIG9uIGZpbHRlcmVkIGN0eCIpCgpPb3BzLCB0aGF0J2xsIHRlYWNo
IG1lIGZvciBub3QgbG9va2luZyBhdCB0aGUgcmVzdWx0IG1vcmUgY2FyZWZ1bGx5LgpSZXZpZXdl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

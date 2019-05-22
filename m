Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6202E26EDA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E1389A72;
	Wed, 22 May 2019 19:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F8F889A72
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:53:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16646078-1500050 for multiple; Wed, 22 May 2019 20:53:12 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522193203.23932-2-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
 <20190522193203.23932-2-michal.wajdeczko@intel.com>
Message-ID: <155855479124.28319.6585904343113687003@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 20:53:11 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/selftests: Move some reset
 testcases to separate file
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTIyIDIwOjMxOjU1KQo+IGlndF9nbG9i
YWxfcmVzZXQgYW5kIGlndF93ZWRnZWRfcmVzZXQgdGVzdGNhc2VzIGFyZSBmaXJzdCBjYW5kaWRh
dGVzLgo+IAo+IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYwo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5lZjkwMTAxYmI4N2EKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmVzZXQuYwo+IEBAIC0w
LDAgKzEsNzYgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+ICsvKgo+ICsg
KiBDb3B5cmlnaHQgwqkgMjAxOCBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiArCj4gKyNpbmNs
dWRlICJpOTE1X3NlbGZ0ZXN0LmgiCj4gKyNpbmNsdWRlICJzZWxmdGVzdHMvaWd0X3Jlc2V0Lmgi
CgpPaCwgSSBtaXNzZWQgdGhhdCBoZWxwZXIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=

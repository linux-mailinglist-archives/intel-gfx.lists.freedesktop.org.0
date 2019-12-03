Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C34B11015D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 16:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56946E9DB;
	Tue,  3 Dec 2019 15:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F9B6E9E4
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 15:37:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19444679-1500050 for multiple; Tue, 03 Dec 2019 15:37:29 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191203152631.3107653-2-chris@chris-wilson.co.uk>
References: <20191203152631.3107653-1-chris@chris-wilson.co.uk>
 <20191203152631.3107653-2-chris@chris-wilson.co.uk>
Message-ID: <157538744955.7230.5817968915188118949@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 03 Dec 2019 15:37:29 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Skip nested
 spinlock for validating pending
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTItMDMgMTU6MjY6MzEpCj4gT25seSBhbG9uZyB0
aGUgc3VibWlzc2lvbiBwYXRoIGNhbiB3ZSBndWFyYW50ZWUgdGhhdCB0aGUgbG9ja2VkIHJlcXVl
c3QKPiBpcyBpbmRlZWQgZnJvbSBhIGZvcmVpZ24gZW5naW5lLCBhbmQgc28gdGhlIG5lc3Rpbmcg
b2YgZW5naW5lL3JxIGlzCj4gcGVybWlzc2libGUuIE9uIHRoZSBzdWJtaXNzaW9uIHRhc2tsZXQg
KHByb2Nlc3NfY3NiKCkpLCB3ZSBtYXkgZmluZAo+IG91cnNlbHZlcyBjb21wZXRpbmcgd2l0aCB0
aGUgbm9ybWFsIG5lc3Rpbmcgb2YgcnEvZW5naW5lLCBpbnZhbGlkYXRpbmcKPiBvdXIgbmVzdGlu
Zy4gQXMgd2Ugb25seSB1c2UgdGhlIHNwaW5sb2NrIGZvciBkZWJ1ZyBwdXJwb3Nlcywgc2tpcCB0
aGUKPiBkZWJ1ZyBpZiB3ZSBjYW5ub3QgYWNxdWlyZSB0aGUgc3BpbmxvY2sgZm9yIHNhZmUgdmFs
aWRhdGlvbiAtIGNhdGNoaW5nCj4gOTklIG9mIHRoZSBidWdzIGlzIGJldHRlciB0aGFuIGNhdXNp
bmcgYSBoYXJkIGxvY2t1cC4KPiAKRml4ZXM6IGM5NWQzMWMzZGYxYiAoImRybS9pOTE1L2V4ZWNs
aXN0czogTG9jayB0aGUgcmVxdWVzdCB3aGlsZSB2YWxpZGF0aW5nIGl0IGR1cmluZyBwcm9tb3Rp
b24iKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

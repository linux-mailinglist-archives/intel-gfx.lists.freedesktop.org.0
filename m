Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C42B49FF7
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 592C66E181;
	Tue, 18 Jun 2019 12:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 798A66E149
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 12:00:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16939581-1500050 for multiple; Tue, 18 Jun 2019 12:59:41 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190618074153.16055-2-chris@chris-wilson.co.uk>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <20190618074153.16055-2-chris@chris-wilson.co.uk>
Message-ID: <156085918198.31375.15375873282681226112@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Jun 2019 12:59:42 +0100
Subject: Re: [Intel-gfx] [PATCH 02/26] drm/i915: Skip shrinking already
 freed pages
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTggMDg6NDE6MjkpCj4gUHJldmlvdXNseSwg
d2Ugd2FudCB0byBzaHJpbmsgdGhlIHBhZ2VzIG9mIGZyZWVkIG9iamVjdHMgYmVmb3JlIHRoZXkK
PiB3ZXJlIFJDVSBjb2xsZWN0ZWQuIEhvd2V2ZXIsIGJ5IHJlbW92aW5nIHRoZSBzdHJ1Y3RfbXV0
ZXggc2VyaWFsaXNhdGlvbgo+IGFyb3VuZCB0aGUgYWN0aXZlIHJlZmVyZW5jZSwgd2UgbmVlZCB0
byBhY3F1aXJlIGFuIGV4dHJhIHJlZmVyZW5jZQo+IGFyb3VuZCB0aGUgd2FpdC4gVW5mb3J0dW5h
dGVseSB0aGlzIG1lYW5zIHRoYXQgd2UgaGF2ZSB0byBza2lwIG9iamVjdHMKPiB0aGF0IGFyZSB3
YWl0aW5nIFJDVSBjb2xsZWN0aW9uLgo+IApCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTM3Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

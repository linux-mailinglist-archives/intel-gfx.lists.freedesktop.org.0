Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC09C27E11
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 15:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48472897BB;
	Thu, 23 May 2019 13:25:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D458897BB;
 Thu, 23 May 2019 13:25:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16655445-1500050 for multiple; Thu, 23 May 2019 14:25:49 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522155720.28723-5-tvrtko.ursulin@linux.intel.com>
References: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
 <20190522155720.28723-5-tvrtko.ursulin@linux.intel.com>
Message-ID: <155861794842.28319.15632127961597355104@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 14:25:48 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 04/15] gem_wsim: Engine map
 load balance command
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMiAxNjo1NzowOSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEEgbmV3IHdvcmtsb2Fk
IGNvbW1hbmQgZm9yIGVuYWJsaW5nIGEgbG9hZCBiYWxhbmNlZCBjb250ZXh0IG1hcCAoYWthCj4g
VmlydHVhbCBFbmdpbmUpLiBFeGFtcGxlIHVzYWdlOgo+IAo+ICAgQi4xCj4gCj4gVGhpcyB0dXJu
cyBvbiBsb2FkIGJhbGFuY2luZyBmb3IgY29udGV4dCBvbmUsIGFzc3VtaW5nIGl0IGhhcyBhbHJl
YWR5IGJlZW4KPiBjb25maWd1cmVkIHdpdGggYW4gZW5naW5lIG1hcC4gT25seSBERUZBVUxUIGVu
Z2luZSBzcGVjaWZpZXIgY2FuIGJlIHVzZWQKPiB3aXRoIGxvYWQgYmFsYW5jZWQgZW5naW5lIG1h
cHMuCj4gCj4gdjI6Cj4gICogTGlmdCByZXN0cmljdGlvbiB0byBvbmx5IHVzZSBsb2FkIGJhbGFu
Y2VyIHdoZW4gZW5hYmxlZCBpbiBjb250ZXh0IG1hcC4KPiAgICAoQ2hyaXMpCgpZb3UgZGlkbid0
IGZhbmN5IGdvaW5nIGFsbCBvdXQgYW5kIHNheToKQi4xLkRFRkFVTFQuVkNTMXxWQ1MyCj8KCklm
IHlvdSBhcmUgaGFwcHkgd2l0aCB0aGUgY3VycmVudCBjb2RlLCBpdCBsb29rcyB0byBkbyB3aGF0
IHlvdSB3YW50LApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=

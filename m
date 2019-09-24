Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB31BD2FA
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 21:46:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794B46EAF0;
	Tue, 24 Sep 2019 19:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BEB76EAF0;
 Tue, 24 Sep 2019 19:46:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18604547-1500050 for multiple; Tue, 24 Sep 2019 20:46:29 +0100
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190924193304.19569.72083@emeril.freedesktop.org>
References: <20190924173501.21956-1-chris@chris-wilson.co.uk>
 <20190924193304.19569.72083@emeril.freedesktop.org>
Message-ID: <156935438405.4979.5224205899731246170@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 24 Sep 2019 20:46:24 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Swap_engines_for_no_rc6/rps_=28gpu_powersave_and_r?=
 =?utf-8?q?eclocking=29?=
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

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDktMjQgMjA6MzM6MDQpCj4gIyMjIyBQb3NzaWJsZSBm
aXhlcyAjIyMjCj4gCj4gICAqIGlndEBnZW1fdGlsZWRfZmVuY2VfYmxpdHNAYmFzaWM6Cj4gICAg
IC0ge2ZpLXRnbC11Mn06ICAgICAgICBbU0tJUF1bOV0gKFtmZG8jMTExNzE0XSkgLT4gW1BBU1Nd
WzEwXSArMiBzaW1pbGFyIGlzc3Vlcwo+ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk1MS9maS10Z2wtdTIvaWd0QGdlbV90aWxlZF9mZW5j
ZV9ibGl0c0BiYXNpYy5odG1sCj4gICAgWzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1MTkvZmktdGdsLXUyL2lndEBnZW1fdGlsZWRfZmVu
Y2VfYmxpdHNAYmFzaWMuaHRtbAo+IAo+ICAgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5n
QGJhc2ljOgo+ICAgICAtIHtmaS10Z2wtdTJ9OiAgICAgICAgW0ZBSUxdWzEzXSAoW2ZkbyMxMTE2
MDRdKSAtPiBbUEFTU11bMTRdCj4gICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9DSV9EUk1fNjk1MS9maS10Z2wtdTIvaWd0QGttc19mcm9udGJ1ZmZlcl90
cmFja2luZ0BiYXNpYy5odG1sCj4gICAgWzE0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1MTkvZmktdGdsLXUyL2lndEBrbXNfZnJvbnRidWZm
ZXJfdHJhY2tpbmdAYmFzaWMuaHRtbAoKSSdtIHRydXN0aW5nIHRoZSBlYXJsaWVyIHJlc3VsdHMg
d2UgaGFkIGZyb20gZmktdGdsLXUgYXMgaXQgZG9lc24ndCBzZWVtCnRvIGJlIGF2YWlsYWJsZSBy
aWdodCBub3cgdG8gY29uZmlybS4gV2UnbGwga25vdyBmcm9tIHRoZSBzY3JlYW1zIGluIHRoZQpt
b3JuaW5nLi4uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E012EC11F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 11:11:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE2D6E1B4;
	Fri,  1 Nov 2019 10:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54EC06E11A;
 Fri,  1 Nov 2019 10:11:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19044316-1500050 for multiple; Fri, 01 Nov 2019 10:11:15 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191031152857.17143-4-janusz.krzysztofik@linux.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-4-janusz.krzysztofik@linux.intel.com>
Message-ID: <157260307314.17607.11810514420238462690@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 01 Nov 2019 10:11:13 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 3/4] tests/gem_exec_reloc:
 Calculate offsets from minimum GTT alignment
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMzEgMTU6Mjg6NTYpCj4gVGhlIGJh
c2ljLXJhbmdlIHN1YnRlc3QgYXNzdW1lcyA0a0IgR1RUIGFsaWdubWVudCB3aGlsZSBjYWxjdWxh
dGluZwo+IHNvZnRwaW4gb2Zmc2V0cy4gIE9uIGZ1dHVyZSBiYWNrZW5kcyB3aXRoIHBvc3NpYmx5
IGxhcmdlciBtaW5pbXVtIHBhZ2UKPiBzaXplcyB0aGUgdGVzdCB3aWxsIGZhaWwgYXMgYSBoYWxm
IG9mIGNhbGN1bGF0ZWQgb2Zmc2V0cyB0byBiZSB0ZXN0ZWQKPiB3aWxsIGJlIGluY29ycmVjdGx5
IGFsaWduZWQuCj4gCj4gUmVwbGFjZSBoYXJkY29kZWQgY29uc3RhbnRzIGNvcnJlc3BvbmRpbmcg
dG8gdGhlIGFzc3VtZWQgNGtCIEdUVAo+IGFsaWdubWVudCB3aXRoIHZhcmlhYmxlcyBpbml0aWFs
aXplZCB3aXRoIGFjdHVhbCBtaW5pbXVtIEdUVCBhbGlnbm1lbnQKPiBzaXplIGFuZCBvcmRlci4K
PiAKPiB2MjogU2ltcGxpZnkgdGhlIGNvZGUgYnkgcmV2ZXJzaW5nIHRoZSBzaXplLT5vcmRlciBj
b252ZXJzaW9uLAo+ICAgLSBkcm9wIGlycmVsZXZhbnQgbW9kaWZpY2F0aW9ucyBvZiByZXF1ZXN0
ZWQgb2JqZWN0IHNpemVzLgo+IHYzOiBSZXdvcmQgY29tbWl0IG1lc3NhZ2UgYWZ0ZXIgcmVtb3Zh
bCBvZiBwYXRjaCAiRG9uJ3QgZmlsdGVyIG91dAo+ICAgICBhZGRyZXNzZXMgb24gZnVsbCBQUEdU
VCIgZnJvbSB0aGUgc2VyaWVzLAo+ICAgLSBpbml0aWFsaXplIHBhZ2Ugc2l6ZSBvcmRlciB3aXRo
IGFuIGFjdHVhbCBtaW5pbXVtIHJldHVybmVkIGJ5IGEgbmV3Cj4gICAgIGhlbHBlciAoaW5zcGly
ZWQgYnkgQ2hyaXMpLgo+IHY0OiBVcGRhdGUgdGhlIGhlbHBlciBuYW1lLCB1c2UgdGhlIHRlcm0g
J21pbmltdW0gR1RUIGFsaWdubWVudCcgYWNyb3NzCj4gICAgIHRoZSBjaGFuZ2UsIGFkanVzdCB2
YXJpYWJsZSBuYW1lcywKPiAgIC0gcmVmcmVzaCB0aGUgY29tbWl0IG1lc3NhZ2Ugb24gdG9wIG9m
IHRoZSByZWludHJvZHVjZWQgcGF0Y2ggdGhhdAo+ICAgICBmaXhlcyBpbnZhbGlkIG9mZnNldHMg
aW5jb3JyZWN0bHkgYXNzdW1lZCBhcyBvY2N1cGllZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW51
c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gQ2M6
IEthdGFyenluYSBEZWMgPGthdGFyenluYS5kZWNAaW50ZWwuY29tPgo+IENjOiBTdHVhcnQgU3Vt
bWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4

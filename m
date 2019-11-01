Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27543EC0F5
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 11:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8196E1B9;
	Fri,  1 Nov 2019 10:03:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C646E1B9;
 Fri,  1 Nov 2019 10:03:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19044128-1500050 for multiple; Fri, 01 Nov 2019 10:02:47 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191031152857.17143-2-janusz.krzysztofik@linux.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-2-janusz.krzysztofik@linux.intel.com>
Message-ID: <157260256522.17607.15985195702419423317@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 01 Nov 2019 10:02:45 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 1/4] tests/gem_exec_reloc:
 Don't filter out invalid addresses
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMzEgMTU6Mjg6NTQpCj4gQ29tbWl0
IGEzNTViMmQ2ZWI0MiAoImlndC9nZW1fZXhlY19yZWxvYzogRmlsdGVyIG91dCB1bmF2YWlsYWJs
ZQo+IGFkZHJlc3NlcyBmb3IgIXBwZ3R0IikgaW50cm9kdWNlZCBmaWx0ZXJpbmcgb2YgYWRkcmVz
c2VzIHBvc3NpYmx5Cj4gb2NjdXBpZWQgYnkgb3RoZXIgdXNlcnMgb2Ygc2hhcmVkIEdUVC4gIFVu
Zm9ydHVuYXRlbHksIHRoYXQgZmlsdGVyaW5nCj4gZG9lc24ndCBkaXN0aW5ndWlzaCBiZXR3ZWVu
IGFjdHVhbGx5IG9jY3VwaWVkIGFkZHJlc3NlcyBhbmQgb3RoZXJ3aXNlCj4gaW52YWxpZCBzb2Z0
cGluIG9mZnNldHMuICBBcyBzb29uIGFzIGluY29ycmVjdCBHVFQgYWxpZ25tZW50IGlzIGFzc3Vt
ZWQKPiB3aGVuIHJ1bm5pbmcgb24gZnV0dXJlIGJhY2tlbmRzIHdpdGggcG9zc2libHkgbGFyZ2Vy
IG1pbmltdW0gcGFnZQo+IHNpemVzLCBhIGhhbGYgb2YgY2FsY3VsYXRlZCBvZmZzZXRzIHRvIGJl
IHRlc3RlZCB3aWxsIGJlIGluY29ycmVjdGx5Cj4gZGV0ZWN0ZWQgYXMgb2NjdXBpZWQgYnkgb3Ro
ZXIgdXNlcnMgYW5kIHNpbGVudGx5IHNraXBwZWQgaW5zdGVhZCBvZgo+IHJlcG9ydGVkIGFzIGEg
cHJvYmxlbS4gIFRoYXQgd2lsbCBzaWduaWZpY2FudGx5IGRpc3RvcnQgdGhlIGludGVuZGVkCj4g
dGVzdCBwYXR0ZXJuLgo+IAo+IEZpbHRlciBvdXQgZmFpbGluZyBhZGRyZXNzZXMgb25seSBpZiBu
b3QgcmVwb3J0ZWQgYXMgaW52YWxpZC4KPiAKPiB2MjogU2tpcCB1bmF2YWlsYWJsZSBhZGRyZXNz
ZXMgb25seSB3aGVuIG5vdCBydW5uaW5nIG9uIGZ1bGwgUFBHVFQuCj4gdjM6IFJlcGxhY2UgdGhl
IG5vdCBvbiBmdWxsIFBQR1RUIHJlcXVpcmVtZW50IGZvciBza2lwcGluZyB3aXRoIGVycm9yCj4g
ICAgIGNvZGUgY2hlY2tpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlr
IDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgdGVzdHMvaTkxNS9nZW1fZXhlY19y
ZWxvYy5jIHwgMTIgKysrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNf
cmVsb2MuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwo+IGluZGV4IDVmNTlmZTk5Li40
MjNmZWQ4YiAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMKPiArKysg
Yi90ZXN0cy9pOTE1L2dlbV9leGVjX3JlbG9jLmMKPiBAQCAtNTIwLDcgKzUyMCw3IEBAIHN0YXRp
YyB2b2lkIGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCj4gICAgICAgICB1aW50
NjRfdCBndHRfc2l6ZSA9IGdlbV9hcGVydHVyZV9zaXplKGZkKTsKPiAgICAgICAgIGNvbnN0IHVp
bnQzMl90IGJiZSA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7Cj4gICAgICAgICBpZ3Rfc3Bpbl90ICpz
cGluID0gTlVMTDsKPiAtICAgICAgIGludCBjb3VudCwgbjsKPiArICAgICAgIGludCBjb3VudCwg
biwgZXJyOwo+ICAKPiAgICAgICAgIGlndF9yZXF1aXJlKGdlbV9oYXNfc29mdHBpbihmZCkpOwo+
ICAKPiBAQCAtNTQyLDggKzU0MiwxMSBAQCBzdGF0aWMgdm9pZCBiYXNpY19yYW5nZShpbnQgZmQs
IHVuc2lnbmVkIGZsYWdzKQo+ICAgICAgICAgICAgICAgICBnZW1fd3JpdGUoZmQsIG9ialtuXS5o
YW5kbGUsIDAsICZiYmUsIHNpemVvZihiYmUpKTsKPiAgICAgICAgICAgICAgICAgZXhlY2J1Zi5i
dWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmb2JqW25dKTsKPiAgICAgICAgICAgICAgICAg
ZXhlY2J1Zi5idWZmZXJfY291bnQgPSAxOwo+IC0gICAgICAgICAgICAgICBpZiAoX19nZW1fZXhl
Y2J1ZihmZCwgJmV4ZWNidWYpKQo+ICsgICAgICAgICAgICAgICBlcnIgPSBfX2dlbV9leGVjYnVm
KGZkLCAmZXhlY2J1Zik7Cj4gKyAgICAgICAgICAgICAgIGlmIChlcnIpIHsKCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgaWd0X2Fzc2VydChlcnIgIT0gLUVJTlZBTCk7CgpJJ3ZlIGJlZW4gdGhp
bmtpbmcgYWJvdXQgdGhpcyBhbmQgSSB0aGluayB0aGUgcmlnaHQgYXBwcm9hY2ggaXMKCi8qIElm
ZiB1c2luZyBhIHNoYXJlZCBHVFQsIHNvbWUgb2YgaXQgbWF5IGJlIHJlc2VydmVkICovCmlndF9h
c3NlcnRfZXEoZXJyLCAtRU5PU1BDKTsKCj4gICAgICAgICAgICAgICAgICAgICAgICAgY29udGlu
dWU7Cj4gKyAgICAgICAgICAgICAgIH0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4

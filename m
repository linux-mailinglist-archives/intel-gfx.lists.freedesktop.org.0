Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5EE15CCFF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 22:12:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631576E415;
	Thu, 13 Feb 2020 21:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039066E3FE;
 Thu, 13 Feb 2020 21:12:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20217033-1500050 for multiple; Thu, 13 Feb 2020 21:12:10 +0000
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <12385328.eOS836VZI8@jkrzyszt-desk.ger.corp.intel.com>
References: <20200213124642.8020-1-janusz.krzysztofik@linux.intel.com>
 <20200213143731.7zejnsxhutgiqbdv@mwiniars-main.ger.corp.intel.com>
 <12385328.eOS836VZI8@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <158162832759.4660.4563737803156710932@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 13 Feb 2020 21:12:07 +0000
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t]
 tests/gem_userptr_blits: Refresh map-fixed-invalidate* subtests
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDItMTMgMTY6Mjg6NTApCj4gSGkgTWlj
aGHFgiwKPiAKPiBPbiBUaHVyc2RheSwgRmVicnVhcnkgMTMsIDIwMjAgMzozNzozMSBQTSBDRVQg
TWljaGHFgiBXaW5pYXJza2kgd3JvdGU6Cj4gPiBPbiBUaHUsIEZlYiAxMywgMjAyMCBhdCAwMTo0
Njo0MVBNICswMTAwLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gPiA+IG1hcC1maXhlZC1p
bnZhbGlkYXRlKiBzdWJ0ZXN0cyB1dGlsaXplIGdlbV9zZXRfdGlsaW5nKCkgd2hpY2ggbWF5IGZh
aWwsCj4gPiA+IGUuZy4gb24gaGFyZHdhcmUgd2l0aCBubyBtYXBwYWJsZSBhcGVydHVyZSwgZHVl
IHRvIG1pc3NpbmcgZmVuY2VzLgo+ID4gPiBTa2lwIHRob3NlIHN1YnRlc3RzIGlmIGZlbmNlcyBh
cmUgbm90IGF2YWlsYWJsZS4KPiA+ID4gCj4gPiA+IE1vcmVvdmVyLCB0aG9zZSBzdWJ0ZXN0cyB1
c2UgR0VNX01NQVBfR1RUIElPQ1RMIHdoaWNoIG1heSBhbHNvIGZhaWwsCj4gPiA+IGUuZy4gb24g
aGFyZHdhcmUgd2l0aCBubyBtYXBwYWJsZSBhcGVydHVyZS4gIFVzZSBHRU1fTU1BUF9PRkZTRVQK
PiA+ID4gaW5zdGVhZCBhbmQgaXRlcmF0ZSBNTUFQX09GRlNFVCBjb2hlcmVudCB0eXBlcyB0byBm
aW5kIG9uZSB0aGF0IHdvcmtzLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogSmFudXN6IEty
enlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+ID4gPiBDYzog
TWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+ID4gPiAtLS0K
PiA+ID4gSGkgTWljaGHFgiwKPiA+ID4gCj4gPiA+IEFzIHlvdSBhcmUgdGhlIGF1dGhvciBvZiB0
aG9zZSBzdWJ0ZXN0cywgbGV0IG1lIGFzayB5b3UgYSBmZXcgcXVlc3Rpb25zCj4gPiA+IEknbSBu
b3Qgc3VyZSBhYm91dDoKPiA+ID4gMS4gSG93IGNyaXRpY2FsIGlzIHRoZSB1c2Ugb2YgZ2VtX3Nl
dF90aWxpbmcoKSB0byB0aG9zZSBzdWJ0ZXN0cz8gIENhbgo+ID4gPiAgICB3ZSBqdXN0IHNraXAg
dGhvc2Ugb3BlcmF0aW9ucyBpZiBub3Qgc3VwcG9ydGVkPyAgSWYgbm90LCBjYW4geW91Cj4gPiA+
ICAgIHByb3Bvc2UgYSByZXBsYWNlbWVudCB0aGF0IHNob3VsZCB3b3JrIG9uIGhhcmR3YXJlIHdp
dGggbm8gbWFwcGFibGUKPiA+ID4gICAgYXBlcnR1cmU/Cj4gPiAKPiA+IEl0J3MgYSByZWdyZXNz
aW9uIHRlc3QsIHNlZToKPiA+IGU0Yjk0NmJmZTFlMyAoImRybS9pOTE1OiBGaXggdXNlcnB0ciBk
ZWFkbG9jayB3aXRoIGFsaWFzZWQgR1RUIG1tYXBwaW5ncyIpCj4gPiAKPiA+IFRoZSBpZGVhIHdh
cyB0byBjYXVzZSBhIGRlYWRsb2NrIGJ5IHRyaWdnZXJyaW5nIGk5MTVfZ2VtX29iamVjdF9yZWxl
YXNlX21tYXAKPiA+IGZyb20gc2V0X3RpbGluZyB1bmRlcm5lYXRoIHN0cnVjdF9tdXRleCwgd2hp
Y2ggd291bGQgdGhlbiBjYXVzZSBpbnZhbGlkYXRlIG9uIGEKPiA+IHN0YWxlIHVzZXJwdHIgKHdo
aWNoIHdvdWxkIGFsc28gYXR0ZW1wdCB0byBhY3F1aXJlIHN0cnVjdCBtdXRleCAtIGNsYXNzaWMK
PiA+IHJlY3Vyc2l2ZSBsb2NrKS4gT3JpZ2luYWwgdHJhY2Ugd2hpY2ggc2VydmVkIGFzIGFuIGV4
YW1wbGUgdG8gd3JpdGUgdGhlIElHVDoKPiA+IAo+ID4gWzIzMTA2LjA2NjE5Nl0gW2RybTppOTE1
X2dlbV9vcGVuXSAKPiA+IFsyMzI3OS4wMjI1OThdIElORk86IHRhc2sgdGVzdF9hcGk2NDoxMzU5
IGJsb2NrZWQgZm9yIG1vcmUgdGhhbiAxMjAgc2Vjb25kcy4KPiA+IFsyMzI3OS4wMzI0NTNdICAg
ICAgIFRhaW50ZWQ6IEcgICAgIFUgICAgICAgICAgNC4xLjAtcmM3KyAjMTYKPiA+IFsyMzI3OS4w
Mzk0NDBdICJlY2hvIDAgPiAvcHJvYy9zeXMva2VybmVsL2h1bmdfdGFza190aW1lb3V0X3NlY3Mi
IGRpc2FibGVzIHRoaXMgbWVzc2FnZS4KPiA+IFsyMzI3OS4wNDkxOTFdIHRlc3RfYXBpNjQgICAg
ICBEIGZmZmY4ODAxNDY4MzdhMTggMTI3NjAgIDEzNTkgICAgNTMwIDB4MDAwMDAwMDAKPiA+IFsy
MzI3OS4wNTgxMDFdICBmZmZmODgwMTQ2ODM3YTE4IGZmZmY4ODAxNDY4Mzc5ZDggZmZmZmZmZmY4
MTAxZWZjZCBmZmZmODgwMTQ3ZTIyZTIwCj4gPiBbMjMyNzkuMDY3MzcyXSAgZmZmZjg4MDBhMzRi
ODAwMCBmZmZmODgwMTQ2ODM3OWY4IGZmZmY4ODAxNDY4MzgwMDAgMDAwMDAwMDBmZmZmZmZmZgo+
ID4gWzIzMjc5LjA3NjU5OV0gIGZmZmY4ODAxNDU5OTExYjAgMDAwMDAwMDAwMDAwMDI0NiBmZmZm
ODgwMTQ1OTkxMWE4IGZmZmY4ODAxNDY4MzdhMzgKPiA+IFsyMzI3OS4wODU5MjNdIENhbGwgVHJh
Y2U6Cj4gPiBbMjMyNzkuMDg5NTEwXSAgWzxmZmZmZmZmZjgxMDFlZmNkPl0gPyBuYXRpdmVfc2No
ZWRfY2xvY2srMHgyZC8weDkwCj4gPiBbMjMyNzkuMDk3MjIzXSAgWzxmZmZmZmZmZjgxN2EzNGE3
Pl0gc2NoZWR1bGUrMHgzNy8weDkwCj4gPiBbMjMyNzkuMTAzNjYyXSAgWzxmZmZmZmZmZjgxN2Ez
ODllPl0gc2NoZWR1bGVfcHJlZW1wdF9kaXNhYmxlZCsweGUvMHgxMAo+ID4gWzIzMjc5LjExMTY2
NV0gIFs8ZmZmZmZmZmY4MTdhNWEwNT5dIG11dGV4X2xvY2tfbmVzdGVkKzB4MTY1LzB4M2QwCj4g
PiBbMjMyNzkuMTE5Mjg3XSAgWzxmZmZmZmZmZmEwMWY3ZmFjPl0gPyBjYW5jZWxfdXNlcnB0cisw
eDJjLzB4MTUwIFtpOTE1XQo+ID4gWzIzMjc5LjEyNzM3Nl0gIFs8ZmZmZmZmZmY4MTdhYmY4OD5d
ID8gZnRyYWNlX2dyYXBoX2NhbGxlcisweDc4LzB4YTgKPiA+IFsyMzI3OS4xMzUyMDRdICBbPGZm
ZmZmZmZmYTAxZjdmYWM+XSA/IGNhbmNlbF91c2VycHRyKzB4MmMvMHgxNTAgW2k5MTVdCj4gPiBb
MjMyNzkuMTQzMzI5XSAgWzxmZmZmZmZmZmEwMWY3ZmFjPl0gY2FuY2VsX3VzZXJwdHIrMHgyYy8w
eDE1MCBbaTkxNV0KPiA+IFsyMzI3OS4xNTEyNjNdICBbPGZmZmZmZmZmODE3YWJmYjg+XSBmdHJh
Y2VfZ3JhcGhfY2FsbGVyKzB4YTgvMHhhOAo+ID4gWzIzMjc5LjE1ODgwMV0gIFs8ZmZmZmZmZmZh
MDFmODIxMT5dIGk5MTVfZ2VtX3VzZXJwdHJfbW5faW52YWxpZGF0ZV9yYW5nZV9zdGFydCsweDE0
MS8weDIwMCBbaTkxNV0KPiA+IFsyMzI3OS4xNjk1NTldICBbPGZmZmZmZmZmYTAxZjgwZDU+XSA/
IGk5MTVfZ2VtX3VzZXJwdHJfbW5faW52YWxpZGF0ZV9yYW5nZV9zdGFydCsweDUvMHgyMDAgW2k5
MTVdCj4gPiBbMjMyNzkuMTgwMzY0XSAgWzxmZmZmZmZmZjgxN2FiZmI4Pl0gZnRyYWNlX2dyYXBo
X2NhbGxlcisweGE4LzB4YTgKPiA+IFsyMzI3OS4xODc5MTldICBbPGZmZmZmZmZmODEyMGZiYjM+
XSBfX21tdV9ub3RpZmllcl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KzB4ODMvMHhkMAo+ID4gWzIz
Mjc5LjE5NzM0Ml0gIFs8ZmZmZmZmZmY4MTIwZmIzNT5dID8gX19tbXVfbm90aWZpZXJfaW52YWxp
ZGF0ZV9yYW5nZV9zdGFydCsweDUvMHhkMAo+ID4gWzIzMjc5LjIwNjgwNF0gIFs8ZmZmZmZmZmY4
MTFlOTAzNj5dIHphcF9wYWdlX3JhbmdlX3NpbmdsZSsweGY2LzB4MTIwCj4gPiBbMjMyNzkuMjE0
NzI3XSAgWzxmZmZmZmZmZjgxMWU5MTE0Pl0gPyB1bm1hcF9tYXBwaW5nX3JhbmdlKzB4NjQvMHgx
NDAKPiA+IFsyMzI3OS4yMjI1MTVdICBbPGZmZmZmZmZmODExZTkxMTQ+XSA/IHVubWFwX21hcHBp
bmdfcmFuZ2UrMHg2NC8weDE0MAo+ID4gWzIzMjc5LjIzMDQ4OV0gIFs8ZmZmZmZmZmY4MTFlOTEx
ND5dID8gdW5tYXBfbWFwcGluZ19yYW5nZSsweDY0LzB4MTQwCj4gPiBbMjMyNzkuMjM4NDQyXSAg
WzxmZmZmZmZmZjgxMWU5MWNhPl0gdW5tYXBfbWFwcGluZ19yYW5nZSsweDExYS8weDE0MAo+ID4g
WzIzMjc5LjI0NjE0MV0gIFs8ZmZmZmZmZmZhMDFlY2JhNT5dID8gaTkxNV9nZW1fcmVsZWFzZV9t
bWFwKzB4NS8weDIwIFtpOTE1XQo+ID4gWzIzMjc5LjI1NDc1M10gIFs8ZmZmZmZmZmZhMDFlYjg2
Nj5dIGk5MTVfZ2VtX3JlbGVhc2VfbW1hcC5wYXJ0LjQ0KzB4NDYvMHg2MCBbaTkxNV0KPiA+IFsy
MzI3OS4yNjQwMDJdICBbPGZmZmZmZmZmYTAxZWNiYjk+XSA/IGk5MTVfZ2VtX3JlbGVhc2VfbW1h
cCsweDE5LzB4MjAgW2k5MTVdCj4gPiBbMjMyNzkuMjcyNzIzXSAgWzxmZmZmZmZmZjgxN2FiZmI4
Pl0gZnRyYWNlX2dyYXBoX2NhbGxlcisweGE4LzB4YTgKPiA+IFsyMzI3OS4yODAyMzldICBbPGZm
ZmZmZmZmYTAxZWNiYjk+XSBpOTE1X2dlbV9yZWxlYXNlX21tYXArMHgxOS8weDIwIFtpOTE1XQo+
ID4gWzIzMjc5LjI4ODc4MF0gIFs8ZmZmZmZmZmY4MTdhYmZiOD5dIGZ0cmFjZV9ncmFwaF9jYWxs
ZXIrMHhhOC8weGE4Cj4gPiBbMjMyNzkuMjk2MzIzXSAgWzxmZmZmZmZmZmEwMWY2ZGY0Pl0gaTkx
NV9nZW1fc2V0X3RpbGluZysweDIwNC8weDU0MCBbaTkxNV0KPiA+IFsyMzI3OS4zMDQ4NTRdICBb
PGZmZmZmZmZmODE3YWJmYjg+XSBmdHJhY2VfZ3JhcGhfY2FsbGVyKzB4YTgvMHhhOAo+ID4gWzIz
Mjc5LjMxMjU1OV0gIFs8ZmZmZmZmZmZhMDExOWE4Zj5dIGRybV9pb2N0bCsweDEyZi8weDYyMCBb
ZHJtXQo+ID4gWzIzMjc5LjMxOTk4Nl0gIFs8ZmZmZmZmZmZhMDFmNmJmMD5dID8gaTkxNV9nZW1f
ZGV0ZWN0X2JpdF82X3N3aXp6bGUrMHgyMDAvMHgyMDAgW2k5MTVdCj4gPiBbMjMyNzkuMzI5NzQ0
XSAgWzxmZmZmZmZmZjgxMWVhYzVlPl0gPyBoYW5kbGVfbW1fZmF1bHQrMHhlMWUvMHgxNzgwCj4g
PiBbMjMyNzkuMzM3MzgwXSAgWzxmZmZmZmZmZjgxMDFlZmNkPl0gPyBuYXRpdmVfc2NoZWRfY2xv
Y2srMHgyZC8weDkwCj4gPiBbMjMyNzkuMzQ1MDgxXSAgWzxmZmZmZmZmZjgxMDFmMDM5Pl0gPyBz
Y2hlZF9jbG9jaysweDkvMHgxMAo+ID4gWzIzMjc5LjM1MjAyOV0gIFs8ZmZmZmZmZmY4MTBkM2Zk
NT5dID8gbG9jYWxfY2xvY2srMHgyNS8weDMwCj4gPiBbMjMyNzkuMzU5MDU5XSAgWzxmZmZmZmZm
ZjgxMGVmMzFmPl0gPyBsb2NrX3JlbGVhc2VfaG9sZHRpbWUucGFydC4yNSsweGYvMHgxZjAKPiA+
IFsyMzI3OS4zNjc5MTRdICBbPGZmZmZmZmZmODEyNGZjOTY+XSBkb192ZnNfaW9jdGwrMHgyYzYv
MHg0ZjAKPiA+IFsyMzI3OS4zNzUwNjhdICBbPGZmZmZmZmZmODEwZWRmMTM+XSA/IHVwX3JlYWQr
MHgyMy8weDQwCj4gPiBbMjMyNzkuMzgxNzk0XSAgWzxmZmZmZmZmZjgxMDY4Y2ZjPl0gPyBfX2Rv
X3BhZ2VfZmF1bHQrMHgxYmMvMHg0NTAKPiA+IFsyMzI3OS4zODkzNTZdICBbPGZmZmZmZmZmODEy
NGZmNDE+XSBTeVNfaW9jdGwrMHg4MS8weGEwCj4gPiBbMjMyNzkuMzk2MDI1XSAgWzxmZmZmZmZm
ZjgxN2E5OTJlPl0gc3lzdGVtX2NhbGxfZmFzdHBhdGgrMHgxMi8weDc2Cj4gPiBbMjMyNzkuNDAz
ODIzXSA0IGxvY2tzIGhlbGQgYnkgdGVzdF9hcGk2NC8xMzU5Ogo+ID4gWzIzMjc5LjQwOTUwNV0g
ICMwOiAgKCZkZXYtPnN0cnVjdF9tdXRleCl7Li4uLi4ufSwgYXQ6IFs8ZmZmZmZmZmZhMDFmNmNl
Nj5dIGk5MTVfZ2VtX3NldF90aWxpbmcrMHhmNi8weDU0MCBbaTkxNV0KPiA+IFsyMzI3OS40MjE5
MzldICAjMTogICgmbWFwcGluZy0+aV9tbWFwX3J3c2VtKXsuLi4uLi59LCBhdDogWzxmZmZmZmZm
ZjgxMWU5MTE0Pl0gdW5tYXBfbWFwcGluZ19yYW5nZSsweDY0LzB4MTQwCj4gPiBbMjMyNzkuNDM0
MDcxXSAgIzI6ICAoJnNyY3Upey4uLi4uLn0sIGF0OiBbPGZmZmZmZmZmODEyMGZiMzU+XSBfX21t
dV9ub3RpZmllcl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KzB4NS8weGQwCj4gPiBbMjMyNzkuNDQ2
MTAzXSAgIzM6ICAoJmRldi0+c3RydWN0X211dGV4KXsuLi4uLi59LCBhdDogWzxmZmZmZmZmZmEw
MWY3ZmFjPl0gY2FuY2VsX3VzZXJwdHIrMHgyYy8weDE1MCBbaTkxNV0KPiA+IAo+ID4gU2luY2Ug
dGhlbiwgaTkxNSBoYXMgY2hhbmdlZCBhIGxvdC4uLiAobm8gbW9yZSBzdHJ1Y3QgbXV0ZXgpLCBz
byBpdCdzIGhhcmQgdG8KPiA+IGltbWVkaWF0ZWx5IHNheSB3aGV0aGVyIHRoZXJlJ3Mgc3RpbGwg
YW55IGRlYWRsb2NrIHBvdGVudGlhbCB0aGVyZS4KPiAKPiBMb29raW5nIGF0IENJIHJlc3VsdHMs
IHN0aWxsIHNvbWV0aGluZyBzaW1pbGFyLCB3aXRoIAo+IHVzZXJwdHJfbW5faW52YWxpZGF0ZV9y
YW5nZV9zdGFydCgpIGludm9sdmVkLCBjYW4gYmUgb2JzZXJ2ZWQsIGJ1dCBvbmx5IG9uIAoKVGhh
dCdzIHRoZSBlcXVpdmFsZW50IGN5Y2xlIHRvIHRoZSBvcmlnaW5hbCByZXBvcnQuIFdlIGF2b2lk
IGl0IG9uCmZ1bGwtcHBndHQgYnkgc2VwYXJhdGluZyB0aGUgbG9jayBjbGFzc2VzIGZvciBHR1RU
IGFuZCBwcEdUVDsgYW5kIGFzIHRoZQpjeWNsZSBpcyBvbgogIGludmFsaWRhdGVfcmFuZ2UgLT4g
b2JqZWN0X3VuYmluZCAtPiByZXZva2VfbW1hcCAtPiBpbnZhbGlkYXRlX3JhbmdlCml0IG9ubHkg
YXBwbGllcyBpZiB3ZSB0YWtlIGEgcGFnZWZhdWx0IG9uIGEgdXNlcnB0ciBmcm9tIGEgbW1hcC4K
CkkgaGF2ZW4ndCBzZWVuIGEgd2F5IHdlIGNhbiBhdm9pZCBpdCBmb3Igc25iIGFuZCBpdHMgaWxr
LCB5ZXQuCgpOb3cgc2luY2Ugd2l0aCBtbWFwX29mZnNldCB3ZSBkbyByZXZva2VfbW1hcCBvbiBu
b3QganVzdCBHR1RUIHZtYSwgYnV0CmFzIHdlIHJlbW92ZSBhbGwgdGhlIHBhZ2VzLCB3ZSBzaG91
bGQgYmUgc2VlaW5nIHRoZSBzYW1lIGxvY2tjeWNsZXMgZm9yCnVzZXJwdHIgKyBtbWFwX29mZnNl
dCBvbiBhbGwgYXMgaXQgc2hvdWxkIGN5Y2xlIHRocm91Z2ggb2JqLT5tbS5sb2NrLgooV2hpY2gg
aXMgd2h5IHdlIHRvb2sgdGhlIHByZXZlbnRhdGl2ZSBzdGVwIG9mIGRpc2FsbG93aW5nIG1peGlu
ZwptbWFwX29mZnNldCBhbmQgdXNlcnB0ciwgYW5kIHVzZXJwdHIgY2Fubm90IGZpbmQgYSBwYWdl
IGZvciBhCm1tYXBfb2Zmc2V0IG1tYXAgc28gc2hvdWxkIGJlIGZpbmUgLS0gdGhvdWdoIHRoZXJl
J3MgYSByaXNrIHdlIG1heSBoYXZlCmNvbnRhbWluYXRlZCB0aGUgbG9ja3MgYmVmb3JlIHJlamVj
dGlvbi4pCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK

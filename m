Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DAA7A5E2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 12:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6FCD6E489;
	Tue, 30 Jul 2019 10:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9875B6E489
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 10:23:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17725758-1500050 
 for multiple; Tue, 30 Jul 2019 11:23:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 11:23:08 +0100
Message-Id: <20190730102308.5904-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Always clear
 pending&inflight requests on reset
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

SWYgd2Ugc2tpcCB0aGUgcmVzZXQgYXMgd2UgZm91bmQgdGhlIGVuZ2luZSBpbmFjdGl2ZSBhdCB0
aGUgdGltZSBvZiB0aGUKcmVzZXQsIHdlIHN0aWxsIG5lZWQgdG8gY2xlYXIgdGhlIHJlc2lkdWFs
IGluZmxpZ2h0ICYgcGVuZGluZyByZXF1ZXN0CmJvb2trZWVwaW5nIHRvIHJlZmxlY3QgdGhlIGN1
cnJlbnQgc3RhdGUgb2YgSFcuCgpPdGhlcndpc2UsIHdlIG1heSBlbmQgdXAgc3R1Y2sgaW4gYSBs
b29wIGxpa2U6Cgo8Nz4gWzQxNi40OTAzNDZdIGhhbmdjaGVjayByY3MwCjw3PiBbNDE2LjQ5MDM3
MV0gaGFuZ2NoZWNrIAlBd2FrZT8gMQo8Nz4gWzQxNi40OTAzNzZdIGhhbmdjaGVjayAJSGFuZ2No
ZWNrOiA4MDAzIG1zIGFnbwo8Nz4gWzQxNi40OTAzODBdIGhhbmdjaGVjayAJUmVzZXQgY291bnQ6
IDAgKGdsb2JhbCAwKQo8Nz4gWzQxNi40OTAzODNdIGhhbmdjaGVjayAJUmVxdWVzdHM6Cjw3PiBb
NDE2LjQ5MTIxMF0gaGFuZ2NoZWNrIAlSSU5HX1NUQVJUOiAweDAwMTdiMDAwCjw3PiBbNDE2LjQ5
MTk4M10gaGFuZ2NoZWNrIAlSSU5HX0hFQUQ6ICAweDAwMDAwMDQ4Cjw3PiBbNDE2LjQ5MTk5Ml0g
aGFuZ2NoZWNrIAlSSU5HX1RBSUw6ICAweDAwMDAwMDQ4Cjw3PiBbNDE2LjQ5MjAwNl0gaGFuZ2No
ZWNrIAlSSU5HX0NUTDogICAweDAwMDAwMDAwCjw3PiBbNDE2LjQ5MjAzN10gaGFuZ2NoZWNrIAlS
SU5HX01PREU6ICAweDAwMDAwMjAwIFtpZGxlXQo8Nz4gWzQxNi40OTIwNDRdIGhhbmdjaGVjayAJ
UklOR19JTVI6IDAwMDAwMDAwCjw3PiBbNDE2LjQ5MjgwOV0gaGFuZ2NoZWNrIAlBQ1RIRDogIDB4
MDAwMDAwMDBfOWNhMDAwNDgKPDc+IFs0MTYuNDkyODI0XSBoYW5nY2hlY2sgCUJCQUREUjogMHgw
MDAwMDAwMF8wMDAwMTAwNAo8Nz4gWzQxNi40OTI4MzhdIGhhbmdjaGVjayAJRE1BX0ZBRERSOiAw
eDAwMDAwMDAwXzAwMDAwMDAwCjw3PiBbNDE2LjQ5Mjg0NV0gaGFuZ2NoZWNrIAlJUEVJUjogMHgw
MDAwMDAwMAo8Nz4gWzQxNi40OTI4NTJdIGhhbmdjaGVjayAJSVBFSFI6IDB4MDAwMDAwMDAKPDc+
IFs0MTYuNDkyODYzXSBoYW5nY2hlY2sgCUV4ZWNsaXN0IHN0YXR1czogMHgwMDAxODAwMSAwMDAw
MDAwMCwgZW50cmllcyAxMgo8Nz4gWzQxNi40OTI4NjldIGhhbmdjaGVjayAJRXhlY2xpc3QgQ1NC
IHJlYWQgMSwgd3JpdGUgMSwgdGFza2xldCBxdWV1ZWQ/IG5vIChlbmFibGVkKQo8Nz4gWzQxNi40
OTI5MzhdIGhhbmdjaGVjayAJCVBlbmRpbmdbMF0gcmluZzp7c3RhcnQ6MDAxN2IwMDAsIGh3c3A6
ZmVkZjkwMDAsIHNlcW5vOjAwMDE2ZmQ2fSwgcnE6ICAyMGZmYToxNmZkNiErICBwcmlvPS00MDk0
IEAgODMwN21zOiBzaWduYWxlZAo8Nz4gWzQxNi40OTI5NzJdIGhhbmdjaGVjayAJCVF1ZXVlIHBy
aW9yaXR5IGhpbnQ6IC00MDkzCjw3PiBbNDE2LjQ5Mjk3OV0gaGFuZ2NoZWNrIAkJUSAgMjBmZmE6
MTZmZDgtICBwcmlvPS00MDkzIEAgODMwN21zOiBbaTkxNV0KPDc+IFs0MTYuNDkyOTg1XSBoYW5n
Y2hlY2sgCQlRICAyMGZmYToxNmZkYSAgcHJpbz0tNDA5NCBAIDgzMDdtczogW2k5MTVdCjw3PiBb
NDE2LjQ5Mjk5MF0gaGFuZ2NoZWNrIAkJUSAgMjBmZmE6MTZmZGMgIHByaW89LTQwOTQgQCA4MzA3
bXM6IFtpOTE1XQo8Nz4gWzQxNi40OTI5OTZdIGhhbmdjaGVjayAJCVEgIDIwZmZhOjE2ZmRlICBw
cmlvPS00MDk0IEAgODMwN21zOiBbaTkxNV0KPDc+IFs0MTYuNDkzMDAxXSBoYW5nY2hlY2sgCQlR
ICAyMGZmYToxNmZlMCAgcHJpbz0tNDA5NCBAIDgzMDdtczogW2k5MTVdCjw3PiBbNDE2LjQ5MzAw
N10gaGFuZ2NoZWNrIAkJUSAgMjBmZmE6MTZmZTIgIHByaW89LTQwOTQgQCA4MzA3bXM6IFtpOTE1
XQo8Nz4gWzQxNi40OTMwMTNdIGhhbmdjaGVjayAJCVEgIDIwZmZhOjE2ZmU0ICBwcmlvPS00MDk0
IEAgODMwN21zOiBbaTkxNV0KPDc+IFs0MTYuNDkzMDIxXSBoYW5nY2hlY2sgCQkuLi5za2lwcGlu
ZyAyMSBxdWV1ZWQgcmVxdWVzdHMuLi4KPDc+IFs0MTYuNDkzMDI3XSBoYW5nY2hlY2sgCQlRICAy
MGZmYToxNzAxMCAgcHJpbz0tNDA5NCBAIDgzMDdtczogW2k5MTVdCjw3PiBbNDE2LjQ5MzA4MV0g
aGFuZ2NoZWNrIEhXU1A6Cjw3PiBbNDE2LjQ5MzA4OV0gaGFuZ2NoZWNrIFswMDAwXSAwMDAwMDAw
MCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAw
MDAwMDAwMAo8Nz4gWzQxNi40OTMwOTRdIGhhbmdjaGVjayAqCjw3PiBbNDE2LjQ5MzEwMF0gaGFu
Z2NoZWNrIFswMDQwXSAxMDAwODAwMiAwMDAwMDAwMCAxMDAwMDAxOCAwMDAwMDAwMCAxMDAwMDAx
OCAwMDAwMDAwMCAxMDAwMDAwMSAwMDAwMDAwMAo8Nz4gWzQxNi40OTMxMDZdIGhhbmdjaGVjayBb
MDA2MF0gMTAwMDAwMTggMDAwMDAwMDAgMTAwMDAwMDEgMDAwMDAwMDAgMTAwMDAwMTggMDAwMDAw
MDAgMTAwMDAwMDEgMDAwMDAwMDAKPDc+IFs0MTYuNDkzMTExXSBoYW5nY2hlY2sgKgo8Nz4gWzQx
Ni40OTMxMTddIGhhbmdjaGVjayBbMDBhMF0gMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAw
MDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDEKPDc+IFs0MTYuNDkzMTIz
XSBoYW5nY2hlY2sgWzAwYzBdIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAw
MDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwCjw3PiBbNDE2LjQ5MzEyN10gaGFuZ2No
ZWNrICoKPDc+IFs0MTYuNDkzMTMyXSBoYW5nY2hlY2sgSWRsZT8gbm8KPDY+IFs0MTYuNTEyMTI0
XSBpOTE1IDAwMDA6MDA6MDIuMDogR1BVIEhBTkc6IGVjb2RlIDExOjA6MHgwMDAwMDAwMCwgaGFu
ZyBvbiByY3MwCjw2PiBbNDE2LjUxMjIwNV0gW2RybV0gR1BVIGhhbmdzIGNhbiBpbmRpY2F0ZSBh
IGJ1ZyBhbnl3aGVyZSBpbiB0aGUgZW50aXJlIGdmeCBzdGFjaywgaW5jbHVkaW5nIHVzZXJzcGFj
ZS4KPDY+IFs0MTYuNTEyMjA3XSBbZHJtXSBQbGVhc2UgZmlsZSBhIF9uZXdfIGJ1ZyByZXBvcnQg
b24gYnVncy5mcmVlZGVza3RvcC5vcmcgYWdhaW5zdCBEUkkgLT4gRFJNL0ludGVsCjw2PiBbNDE2
LjUxMjIwOF0gW2RybV0gZHJtL2k5MTUgZGV2ZWxvcGVycyBjYW4gdGhlbiByZWFzc2lnbiB0byB0
aGUgcmlnaHQgY29tcG9uZW50IGlmIGl0J3Mgbm90IGEga2VybmVsIGlzc3VlLgo8Nj4gWzQxNi41
MTIyMTBdIFtkcm1dIFRoZSBncHUgY3Jhc2ggZHVtcCBpcyByZXF1aXJlZCB0byBhbmFseXplIGdw
dSBoYW5ncywgc28gcGxlYXNlIGFsd2F5cyBhdHRhY2ggaXQuCjw2PiBbNDE2LjUxMjIxMl0gW2Ry
bV0gR1BVIGNyYXNoIGR1bXAgc2F2ZWQgdG8gL3N5cy9jbGFzcy9kcm0vY2FyZDAvZXJyb3IKPDU+
IFs0MTYuNTEzNjAyXSBpOTE1IDAwMDA6MDA6MDIuMDogUmVzZXR0aW5nIHJjczAgZm9yIGhhbmcg
b24gcmNzMAo8Nz4gWzQyNC40ODkyNThdIGhhbmdjaGVjayByY3MwCjw3PiBbNDI0LjQ4OTI2M10g
aGFuZ2NoZWNrIAlBd2FrZT8gMQo8Nz4gWzQyNC40ODkyNjddIGhhbmdjaGVjayAJSGFuZ2NoZWNr
OiA1OTU0IG1zIGFnbwo8Nz4gWzQyNC40ODkyNzFdIGhhbmdjaGVjayAJUmVzZXQgY291bnQ6IDEg
KGdsb2JhbCAwKQo8Nz4gWzQyNC40ODkyNzRdIGhhbmdjaGVjayAJUmVxdWVzdHM6Cjw3PiBbNDI0
LjQ5MDEyOF0gaGFuZ2NoZWNrIAlSSU5HX1NUQVJUOiAweDAwMDAwMDAwCjw3PiBbNDI0LjQ5MDg3
MF0gaGFuZ2NoZWNrIAlSSU5HX0hFQUQ6ICAweDAwMDAwMDAwCjw3PiBbNDI0LjQ5MDg3N10gaGFu
Z2NoZWNrIAlSSU5HX1RBSUw6ICAweDAwMDAwMDAwCjw3PiBbNDI0LjQ5MDg4N10gaGFuZ2NoZWNr
IAlSSU5HX0NUTDogICAweDAwMDAwMDAwCjw3PiBbNDI0LjQ5MDg5N10gaGFuZ2NoZWNrIAlSSU5H
X01PREU6ICAweDAwMDAwMjAwIFtpZGxlXQo8Nz4gWzQyNC40OTA5MDRdIGhhbmdjaGVjayAJUklO
R19JTVI6IDAwMDAwMDAwCjw3PiBbNDI0LjQ5MDkxN10gaGFuZ2NoZWNrIAlBQ1RIRDogIDB4MDAw
MDAwMDBfMDAwMDAwMDAKPDc+IFs0MjQuNDkwOTMwXSBoYW5nY2hlY2sgCUJCQUREUjogMHgwMDAw
MDAwMF8wMDAwMDAwMAo8Nz4gWzQyNC40OTA5NDNdIGhhbmdjaGVjayAJRE1BX0ZBRERSOiAweDAw
MDAwMDAwXzAwMDAwMDAwCjw3PiBbNDI0LjQ5MDk1MF0gaGFuZ2NoZWNrIAlJUEVJUjogMHgwMDAw
MDAwMAo8Nz4gWzQyNC40OTA5NTZdIGhhbmdjaGVjayAJSVBFSFI6IDB4MDAwMDAwMDAKPDc+IFs0
MjQuNDkwOTY4XSBoYW5nY2hlY2sgCUV4ZWNsaXN0IHN0YXR1czogMHgwMDAwMDAwMSAwMDAwMDAw
MCwgZW50cmllcyAxMgo8Nz4gWzQyNC40OTA5NzJdIGhhbmdjaGVjayAJRXhlY2xpc3QgQ1NCIHJl
YWQgMTEsIHdyaXRlIDExLCB0YXNrbGV0IHF1ZXVlZD8gbm8gKGVuYWJsZWQpCjw3PiBbNDI0LjQ5
MDk4M10gaGFuZ2NoZWNrIAkJUGVuZGluZ1swXSByaW5nOntzdGFydDowMDE3YjAwMCwgaHdzcDpm
ZWRmOTAwMCwgc2Vxbm86MDAwMTZmZDZ9LCBycTogIDIwZmZhOjE2ZmQ2ISsgIHByaW89LTQwOTQg
QCAxNjMwNW1zOiBzaWduYWxlZAo8Nz4gWzQyNC40OTA5ODldIGhhbmdjaGVjayAJCVF1ZXVlIHBy
aW9yaXR5IGhpbnQ6IC00MDkzCjw3PiBbNDI0LjQ5MDk5Nl0gaGFuZ2NoZWNrIAkJUSAgMjBmZmE6
MTZmZDgtICBwcmlvPS00MDkzIEAgMTYzMDVtczogW2k5MTVdCjw3PiBbNDI0LjQ5MTAwMV0gaGFu
Z2NoZWNrIAkJUSAgMjBmZmE6MTZmZGEgIHByaW89LTQwOTQgQCAxNjMwNW1zOiBbaTkxNV0KPDc+
IFs0MjQuNDkxMDA2XSBoYW5nY2hlY2sgCQlRICAyMGZmYToxNmZkYyAgcHJpbz0tNDA5NCBAIDE2
MzA1bXM6IFtpOTE1XQo8Nz4gWzQyNC40OTEwMTFdIGhhbmdjaGVjayAJCVEgIDIwZmZhOjE2ZmRl
ICBwcmlvPS00MDk0IEAgMTYzMDVtczogW2k5MTVdCjw3PiBbNDI0LjQ5MTAxNl0gaGFuZ2NoZWNr
IAkJUSAgMjBmZmE6MTZmZTAgIHByaW89LTQwOTQgQCAxNjMwNW1zOiBbaTkxNV0KPDc+IFs0MjQu
NDkxMDIyXSBoYW5nY2hlY2sgCQlRICAyMGZmYToxNmZlMiAgcHJpbz0tNDA5NCBAIDE2MzA1bXM6
IFtpOTE1XQo8Nz4gWzQyNC40OTEwNDhdIGhhbmdjaGVjayAJCVEgIDIwZmZhOjE2ZmU0ICBwcmlv
PS00MDk0IEAgMTYzMDVtczogW2k5MTVdCjw3PiBbNDI0LjQ5MTA1N10gaGFuZ2NoZWNrIAkJLi4u
c2tpcHBpbmcgMjEgcXVldWVkIHJlcXVlc3RzLi4uCjw3PiBbNDI0LjQ5MTA2M10gaGFuZ2NoZWNr
IAkJUSAgMjBmZmE6MTcwMTAgIHByaW89LTQwOTQgQCAxNjMwNW1zOiBbaTkxNV0KPDc+IFs0MjQu
NDkxMDk1XSBoYW5nY2hlY2sgSFdTUDoKPDc+IFs0MjQuNDkxMTAyXSBoYW5nY2hlY2sgWzAwMDBd
IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAw
MDAwMDAwIDAwMDAwMDAwCjw3PiBbNDI0LjQ5MTEwNl0gaGFuZ2NoZWNrICoKPDc+IFs0MjQuNDkx
MTEzXSBoYW5nY2hlY2sgWzAwNDBdIDEwMDA4MDAyIDAwMDAwMDAwIDEwMDAwMDE4IDAwMDAwMDAw
IDEwMDAwMDE4IDAwMDAwMDAwIDEwMDAwMDAxIDAwMDAwMDAwCjw3PiBbNDI0LjQ5MTExOF0gaGFu
Z2NoZWNrIFswMDYwXSAxMDAwMDAxOCAwMDAwMDAwMCAxMDAwMDAwMSAwMDAwMDAwMCAxMDAwMDAx
OCAwMDAwMDAwMCAxMDAwMDAwMSAwMDAwMDAwMAo8Nz4gWzQyNC40OTExMjJdIGhhbmdjaGVjayAq
Cjw3PiBbNDI0LjQ5MTEyN10gaGFuZ2NoZWNrIFswMGEwXSAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwYgo8Nz4gWzQy
NC40OTExMzNdIGhhbmdjaGVjayBbMDBjMF0gMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAw
MDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKPDc+IFs0MjQuNDkxMTM2
XSBoYW5nY2hlY2sgKgo8Nz4gWzQyNC40OTExNDFdIGhhbmdjaGVjayBJZGxlPyBubwo8NT4gWzQy
NC40OTE4MzRdIGk5MTUgMDAwMDowMDowMi4wOiBSZXNldHRpbmcgcmNzMCBmb3IgaGFuZyBvbiBy
Y3MwCgpXaGVyZSBub3QgaGF2aW5nIGNsZWFyZWQgdGhlIHBlbmRpbmcgYXJyYXkgb24gcmVzZXQs
IGl0IHBlcnNpc3RzCmluZGVmaW5pdGVseS4KCkZpeGVzOiBmZmY4MTAyYWFlZDUgKCJkcm0vaTkx
NS9leGVjbGlzdHM6IFByb2Nlc3MgaW50ZXJydXB0ZWQgY29udGV4dCBvbiByZXNldCIpClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlr
YSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jIHwgMTMgKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CmluZGV4IDg4NGRmYzFjYjAzMy4uODIwNzY0NTdhYjE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwpAQCAtMjI4NCwxOCArMjI4NCw2IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3Rz
X3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQogCUdF
TV9CVUdfT04oaTkxNV9hY3RpdmVfaXNfaWRsZSgmY2UtPmFjdGl2ZSkpOwogCUdFTV9CVUdfT04o
IWk5MTVfdm1hX2lzX3Bpbm5lZChjZS0+c3RhdGUpKTsKIAlycSA9IGFjdGl2ZV9yZXF1ZXN0KHJx
KTsKLQotCS8qCi0JICogQ2F0Y2ggdXAgd2l0aCBhbnkgbWlzc2VkIGNvbnRleHQtc3dpdGNoIGlu
dGVycnVwdHMuCi0JICoKLQkgKiBJZGVhbGx5IHdlIHdvdWxkIGp1c3QgcmVhZCB0aGUgcmVtYWlu
aW5nIENTQiBlbnRyaWVzIG5vdyB0aGF0IHdlCi0JICoga25vdyB0aGUgZ3B1IGlzIGlkbGUuIEhv
d2V2ZXIsIHRoZSBDU0IgcmVnaXN0ZXJzIGFyZSBzb21ldGltZXNeVwotCSAqIG9mdGVuIHRyYXNo
ZWQgYWNyb3NzIGEgR1BVIHJlc2V0ISBJbnN0ZWFkIHdlIGhhdmUgdG8gcmVseSBvbgotCSAqIGd1
ZXNzaW5nIHRoZSBtaXNzZWQgY29udGV4dC1zd2l0Y2ggZXZlbnRzIGJ5IGxvb2tpbmcgYXQgd2hh
dAotCSAqIHJlcXVlc3RzIHdlcmUgY29tcGxldGVkLgotCSAqLwotCWV4ZWNsaXN0c19jYW5jZWxf
cG9ydF9yZXF1ZXN0cyhleGVjbGlzdHMpOwotCiAJaWYgKCFycSkgewogCQljZS0+cmluZy0+aGVh
ZCA9IGNlLT5yaW5nLT50YWlsOwogCQlnb3RvIG91dF9yZXBsYXk7CkBAIC0yMzU3LDYgKzIzNDUs
NyBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKIAogdW53aW5kOgogCS8qIFB1c2ggYmFjayBhbnkgaW5j
b21wbGV0ZSByZXF1ZXN0cyBmb3IgcmVwbGF5IGFmdGVyIHRoZSByZXNldC4gKi8KKwlleGVjbGlz
dHNfY2FuY2VsX3BvcnRfcmVxdWVzdHMoZXhlY2xpc3RzKTsKIAlfX3Vud2luZF9pbmNvbXBsZXRl
X3JlcXVlc3RzKGVuZ2luZSk7CiB9CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 334FEC09A7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 18:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9696E149;
	Fri, 27 Sep 2019 16:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1894F6E149
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 16:34:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18642464-1500050 
 for multiple; Fri, 27 Sep 2019 17:34:03 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 17:34:00 +0100
Message-Id: <20190927163400.22767-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/userptr: Never allow userptr into the
 mappable GGTT
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGFuaWVsIFZldHRlciB1bmNvdmVyZWQgYSBuYXN0eSBjeWNsZSBpbiB1c2luZyB0aGUgbW11LW5v
dGlmaWVycyB0bwppbnZhbGlkYXRlIHVzZXJwdHIgb2JqZWN0cyB3aGljaCBhbHNvIGhhcHBlbiB0
byBiZSBwdWxsZWQgaW50byBHR1RUCm1tYXBzLiBUaGF0IGlzIHdoZW4gd2UgdW5iaW5kIHRoZSB1
c2VycHRyIG9iamVjdCAob24gbW11IGludmFsaWRhdGlvbiksCndlIHJldm9rZSBhbGwgQ1BVIG1t
YXBzLCB3aGljaCBtYXkgdGhlbiByZWN1cnNlIGludG8gbW11IGludmFsaWRhdGlvbi4KCldlIGxv
b2tlZCBmb3Igd2F5cyBvZiBicmVha2luZyB0aGUgY3ljbGUsIGJ1dCB0aGUgcmV2b2NhdGlvbiBv
bgppbnZhbGlkYXRpb24gaXMgcmVxdWlyZWQgYW5kIGNhbm5vdCBiZSBhdm9pZGVkLiBUaGUgb25s
eSBzb2x1dGlvbiB3ZQpjb3VsZCBzZWUgd2FzIHRvIG5vdCBhbGxvdyBzdWNoIEdHVFQgYmluZGlu
Z3Mgb2YgdXNlcnB0ciBvYmplY3RzIGluIHRoZQpmaXJzdCBwbGFjZS4gSW4gcHJhY3RpY2UsIG5v
IG9uZSByZWFsbHkgd2FudHMgdG8gdXNlIGEgR0dUVCBtbWFwcGluZyBvZgphIENQVSBwb2ludGVy
Li4uCgpKdXN0IGJlZm9yZSBEYW5pZWwncyBleHBsb3NpdmUgbG9ja2RlcCBwYXRjaGVzIGxhbmQg
aW4gcmMxLCB3ZSBnb3QgYQpnZW51aW5lIGJsaXAgZnJvbSBDSToKCjw0PlsgIDI0Ni43OTM5NThd
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo8
ND5bICAyNDYuNzkzOTcyXSBXQVJOSU5HOiBwb3NzaWJsZSBjaXJjdWxhciBsb2NraW5nIGRlcGVu
ZGVuY3kgZGV0ZWN0ZWQKPDQ+WyAgMjQ2Ljc5Mzk4OV0gNS4zLjAtZ2JkNmM1NmY1MGQxNS1kcm10
aXBfMzcyKyAjMSBUYWludGVkOiBHICAgICBVCjw0PlsgIDI0Ni43OTQwMDNdIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo8ND5bICAyNDYuNzk0
MDE3XSBrc3dhcGQwLzE0NSBpcyB0cnlpbmcgdG8gYWNxdWlyZSBsb2NrOgo8ND5bICAyNDYuNzk0
MDMwXSAwMDAwMDAwMDNmNTY1YmU2ICgmZGV2LT5zdHJ1Y3RfbXV0ZXgvMSl7Ky4rLn0sIGF0OiB1
c2VycHRyX21uX2ludmFsaWRhdGVfcmFuZ2Vfc3RhcnQrMHgxOGYvMHgyMjAgW2k5MTVdCjw0Plsg
IDI0Ni43OTQyNTBdCiAgICAgICAgICAgICAgICAgIGJ1dCB0YXNrIGlzIGFscmVhZHkgaG9sZGlu
ZyBsb2NrOgo8ND5bICAyNDYuNzk0MjYzXSAwMDAwMDAwMDE3OTljZWY5ICgmYW5vbl92bWEtPnJ3
c2VtKXsrKysrfSwgYXQ6IHBhZ2VfbG9ja19hbm9uX3ZtYV9yZWFkKzB4ZTYvMHgyYTAKPDQ+WyAg
MjQ2Ljc5NDI5MV0KICAgICAgICAgICAgICAgICAgd2hpY2ggbG9jayBhbHJlYWR5IGRlcGVuZHMg
b24gdGhlIG5ldyBsb2NrLgoKPDQ+WyAgMjQ2Ljc5NDMwN10KICAgICAgICAgICAgICAgICAgdGhl
IGV4aXN0aW5nIGRlcGVuZGVuY3kgY2hhaW4gKGluIHJldmVyc2Ugb3JkZXIpIGlzOgo8ND5bICAy
NDYuNzk0MzIyXQogICAgICAgICAgICAgICAgICAtPiAjMyAoJmFub25fdm1hLT5yd3NlbSl7Kysr
K306Cjw0PlsgIDI0Ni43OTQzNDRdICAgICAgICBkb3duX3dyaXRlKzB4MzMvMHg3MAo8ND5bICAy
NDYuNzk0MzU3XSAgICAgICAgX192bWFfYWRqdXN0KzB4M2Q5LzB4N2IwCjw0PlsgIDI0Ni43OTQz
NzBdICAgICAgICBfX3NwbGl0X3ZtYSsweDE2YS8weDE4MAo8ND5bICAyNDYuNzk0Mzg1XSAgICAg
ICAgbXByb3RlY3RfZml4dXArMHgyYTUvMHgzMjAKPDQ+WyAgMjQ2Ljc5NDM5OV0gICAgICAgIGRv
X21wcm90ZWN0X3BrZXkrMHgyMDgvMHgyZTAKPDQ+WyAgMjQ2Ljc5NDQxM10gICAgICAgIF9feDY0
X3N5c19tcHJvdGVjdCsweDE2LzB4MjAKPDQ+WyAgMjQ2Ljc5NDQyOV0gICAgICAgIGRvX3N5c2Nh
bGxfNjQrMHg1NS8weDFjMAo8ND5bICAyNDYuNzk0NDQzXSAgICAgICAgZW50cnlfU1lTQ0FMTF82
NF9hZnRlcl9od2ZyYW1lKzB4NDkvMHhiZQo8ND5bICAyNDYuNzk0NDU2XQogICAgICAgICAgICAg
ICAgICAtPiAjMiAoJm1hcHBpbmctPmlfbW1hcF9yd3NlbSl7KysrK306Cjw0PlsgIDI0Ni43OTQ0
NzhdICAgICAgICBkb3duX3dyaXRlKzB4MzMvMHg3MAo8ND5bICAyNDYuNzk0NDkzXSAgICAgICAg
dW5tYXBfbWFwcGluZ19wYWdlcysweDQ4LzB4MTMwCjw0PlsgIDI0Ni43OTQ1MTldICAgICAgICBp
OTE1X3ZtYV9yZXZva2VfbW1hcCsweDgxLzB4MWIwIFtpOTE1XQo8ND5bICAyNDYuNzk0NTE5XSAg
ICAgICAgaTkxNV92bWFfdW5iaW5kKzB4MTFkLzB4NGEwIFtpOTE1XQo8ND5bICAyNDYuNzk0NTE5
XSAgICAgICAgaTkxNV92bWFfZGVzdHJveSsweDMxLzB4MzAwIFtpOTE1XQo8ND5bICAyNDYuNzk0
NTE5XSAgICAgICAgX19pOTE1X2dlbV9mcmVlX29iamVjdHMrMHhiOC8weDRiMCBbaTkxNV0KPDQ+
WyAgMjQ2Ljc5NDUxOV0gICAgICAgIGRybV9maWxlX2ZyZWUucGFydC4wKzB4MWU2LzB4MjkwCjw0
PlsgIDI0Ni43OTQ1MTldICAgICAgICBkcm1fcmVsZWFzZSsweGE2LzB4ZTAKPDQ+WyAgMjQ2Ljc5
NDUxOV0gICAgICAgIF9fZnB1dCsweGMyLzB4MjUwCjw0PlsgIDI0Ni43OTQ1MTldICAgICAgICB0
YXNrX3dvcmtfcnVuKzB4ODIvMHhiMAo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgZG9fZXhpdCsw
eDM1Yi8weGRiMAo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgZG9fZ3JvdXBfZXhpdCsweDM0LzB4
YjAKPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIF9feDY0X3N5c19leGl0X2dyb3VwKzB4Zi8weDEw
Cjw0PlsgIDI0Ni43OTQ1MTldICAgICAgICBkb19zeXNjYWxsXzY0KzB4NTUvMHgxYzAKPDQ+WyAg
MjQ2Ljc5NDUxOV0gICAgICAgIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ5LzB4
YmUKPDQ+WyAgMjQ2Ljc5NDUxOV0KICAgICAgICAgICAgICAgICAgLT4gIzEgKCZ2bS0+bXV0ZXgp
eysuKy59Ogo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgaTkxNV9nZW1fc2hyaW5rZXJfdGFpbnRz
X211dGV4KzB4NmQvMHhlMCBbaTkxNV0KPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIGk5MTVfYWRk
cmVzc19zcGFjZV9pbml0KzB4OWYvMHgxNjAgW2k5MTVdCjw0PlsgIDI0Ni43OTQ1MTldICAgICAg
ICBpOTE1X2dndHRfaW5pdF9odysweDU1LzB4MTcwIFtpOTE1XQo8ND5bICAyNDYuNzk0NTE5XSAg
ICAgICAgaTkxNV9kcml2ZXJfcHJvYmUrMHhjOWYvMHgxNjIwIFtpOTE1XQo8ND5bICAyNDYuNzk0
NTE5XSAgICAgICAgaTkxNV9wY2lfcHJvYmUrMHg0My8weDFiMCBbaTkxNV0KPDQ+WyAgMjQ2Ljc5
NDUxOV0gICAgICAgIHBjaV9kZXZpY2VfcHJvYmUrMHg5ZS8weDEyMAo8ND5bICAyNDYuNzk0NTE5
XSAgICAgICAgcmVhbGx5X3Byb2JlKzB4ZWEvMHgzZDAKPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAg
IGRyaXZlcl9wcm9iZV9kZXZpY2UrMHgxMGIvMHgxMjAKPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAg
IGRldmljZV9kcml2ZXJfYXR0YWNoKzB4NGEvMHg1MAo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAg
X19kcml2ZXJfYXR0YWNoKzB4OTcvMHgxMzAKPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIGJ1c19m
b3JfZWFjaF9kZXYrMHg3NC8weGMwCjw0PlsgIDI0Ni43OTQ1MTldICAgICAgICBidXNfYWRkX2Ry
aXZlcisweDEzZi8weDIxMAo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgZHJpdmVyX3JlZ2lzdGVy
KzB4NTYvMHhlMAo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgZG9fb25lX2luaXRjYWxsKzB4NTgv
MHgzMDAKPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIGRvX2luaXRfbW9kdWxlKzB4NTYvMHgxZjYK
PDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIGxvYWRfbW9kdWxlKzB4MjViZC8weDJhNDAKPDQ+WyAg
MjQ2Ljc5NDUxOV0gICAgICAgIF9fc2Vfc3lzX2Zpbml0X21vZHVsZSsweGQzLzB4ZjAKPDQ+WyAg
MjQ2Ljc5NDUxOV0gICAgICAgIGRvX3N5c2NhbGxfNjQrMHg1NS8weDFjMAo8ND5bICAyNDYuNzk0
NTE5XSAgICAgICAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDkvMHhiZQo8ND5b
ICAyNDYuNzk0NTE5XQogICAgICAgICAgICAgICAgICAtPiAjMCAoJmRldi0+c3RydWN0X211dGV4
LzEpeysuKy59Ogo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgX19sb2NrX2FjcXVpcmUrMHgxNWQ4
LzB4MWU5MAo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgbG9ja19hY3F1aXJlKzB4YTYvMHgxYzAK
PDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIF9fbXV0ZXhfbG9jaysweDlkLzB4OWIwCjw0PlsgIDI0
Ni43OTQ1MTldICAgICAgICB1c2VycHRyX21uX2ludmFsaWRhdGVfcmFuZ2Vfc3RhcnQrMHgxOGYv
MHgyMjAgW2k5MTVdCjw0PlsgIDI0Ni43OTQ1MTldICAgICAgICBfX21tdV9ub3RpZmllcl9pbnZh
bGlkYXRlX3JhbmdlX3N0YXJ0KzB4ODUvMHgxMTAKPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIHRy
eV90b191bm1hcF9vbmUrMHg3NmIvMHg4NjAKPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIHJtYXBf
d2Fsa19hbm9uKzB4MTA0LzB4MjgwCjw0PlsgIDI0Ni43OTQ1MTldICAgICAgICB0cnlfdG9fdW5t
YXArMHhjMC8weGYwCjw0PlsgIDI0Ni43OTQ1MTldICAgICAgICBzaHJpbmtfcGFnZV9saXN0KzB4
NTYxLzB4YzEwCjw0PlsgIDI0Ni43OTQ1MTldICAgICAgICBzaHJpbmtfaW5hY3RpdmVfbGlzdCsw
eDIyMC8weDQ0MAo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgc2hyaW5rX25vZGVfbWVtY2crMHgz
NmUvMHg3NDAKPDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIHNocmlua19ub2RlKzB4Y2IvMHg0OTAK
PDQ+WyAgMjQ2Ljc5NDUxOV0gICAgICAgIGJhbGFuY2VfcGdkYXQrMHgyNDEvMHg1ODAKPDQ+WyAg
MjQ2Ljc5NDUxOV0gICAgICAgIGtzd2FwZCsweDE2Yy8weDUzMAo8ND5bICAyNDYuNzk0NTE5XSAg
ICAgICAga3RocmVhZCsweDExOS8weDEzMAo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgcmV0X2Zy
b21fZm9yaysweDI0LzB4NTAKPDQ+WyAgMjQ2Ljc5NDUxOV0KICAgICAgICAgICAgICAgICAgb3Ro
ZXIgaW5mbyB0aGF0IG1pZ2h0IGhlbHAgdXMgZGVidWcgdGhpczoKCjw0PlsgIDI0Ni43OTQ1MTld
IENoYWluIGV4aXN0cyBvZjoKICAgICAgICAgICAgICAgICAgICAmZGV2LT5zdHJ1Y3RfbXV0ZXgv
MSAtLT4gJm1hcHBpbmctPmlfbW1hcF9yd3NlbSAtLT4gJmFub25fdm1hLT5yd3NlbQoKPDQ+WyAg
MjQ2Ljc5NDUxOV0gIFBvc3NpYmxlIHVuc2FmZSBsb2NraW5nIHNjZW5hcmlvOgoKPDQ+WyAgMjQ2
Ljc5NDUxOV0gICAgICAgIENQVTAgICAgICAgICAgICAgICAgICAgIENQVTEKPDQ+WyAgMjQ2Ljc5
NDUxOV0gICAgICAgIC0tLS0gICAgICAgICAgICAgICAgICAgIC0tLS0KPDQ+WyAgMjQ2Ljc5NDUx
OV0gICBsb2NrKCZhbm9uX3ZtYS0+cndzZW0pOwo8ND5bICAyNDYuNzk0NTE5XSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgbG9jaygmbWFwcGluZy0+aV9tbWFwX3J3c2VtKTsKPDQ+WyAg
MjQ2Ljc5NDUxOV0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvY2soJmFub25fdm1h
LT5yd3NlbSk7Cjw0PlsgIDI0Ni43OTQ1MTldICAgbG9jaygmZGV2LT5zdHJ1Y3RfbXV0ZXgvMSk7
Cjw0PlsgIDI0Ni43OTQ1MTldCiAgICAgICAgICAgICAgICAgICAqKiogREVBRExPQ0sgKioqCgpC
dWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
NzQ0ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgICAg
IHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlw
ZXMuaCB8IDMgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5j
ICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAg
ICAgICB8IDMgKysrCiA0IGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5kZXgg
MjliOWVkZGM0YzdmLi5hZWMwNWY5NjdkOWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmgKQEAgLTE1Miw2ICsxNTIsMTIgQEAgaTkxNV9nZW1fb2JqZWN0X2lz
X3Byb3h5KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJcmV0dXJuIG9i
ai0+b3BzLT5mbGFncyAmIEk5MTVfR0VNX09CSkVDVF9JU19QUk9YWTsKIH0KIAorc3RhdGljIGlu
bGluZSBib29sCitpOTE1X2dlbV9vYmplY3RfbmV2ZXJfYmluZF9nZ3R0KGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit7CisJcmV0dXJuIG9iai0+b3BzLT5mbGFncyAmIEk5
MTVfR0VNX09CSkVDVF9OT19HR1RUOworfQorCiBzdGF0aWMgaW5saW5lIGJvb2wKIGk5MTVfZ2Vt
X29iamVjdF9uZWVkc19hc3luY19jYW5jZWwoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaikKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3RfdHlwZXMuaAppbmRleCBkNjk1ZjE4N2I3OTAuLmUxYWFiMmZkMWNkOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaApAQCAtMzIsNyAr
MzIsOCBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgewogI2RlZmluZSBJOTE1X0dF
TV9PQkpFQ1RfSEFTX1NUUlVDVF9QQUdFCUJJVCgwKQogI2RlZmluZSBJOTE1X0dFTV9PQkpFQ1Rf
SVNfU0hSSU5LQUJMRQlCSVQoMSkKICNkZWZpbmUgSTkxNV9HRU1fT0JKRUNUX0lTX1BST1hZCUJJ
VCgyKQotI2RlZmluZSBJOTE1X0dFTV9PQkpFQ1RfQVNZTkNfQ0FOQ0VMCUJJVCgzKQorI2RlZmlu
ZSBJOTE1X0dFTV9PQkpFQ1RfTk9fR0dUVAkJQklUKDMpCisjZGVmaW5lIEk5MTVfR0VNX09CSkVD
VF9BU1lOQ19DQU5DRUwJQklUKDQpCiAKIAkvKiBJbnRlcmZhY2UgYmV0d2VlbiB0aGUgR0VNIG9i
amVjdCBhbmQgaXRzIGJhY2tpbmcgc3RvcmFnZS4KIAkgKiBnZXRfcGFnZXMoKSBpcyBjYWxsZWQg
b25jZSBwcmlvciB0byB0aGUgdXNlIG9mIHRoZSBhc3NvY2lhdGVkIHNldApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKaW5kZXggMTFiMjMxYzE4N2M1Li42YjNi
NTBmMGY2ZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91
c2VycHRyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIu
YwpAQCAtNzAyLDYgKzcwMiw3IEBAIGk5MTVfZ2VtX3VzZXJwdHJfZG1hYnVmX2V4cG9ydChzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV91c2VycHRyX29wcyA9IHsKIAkuZmxhZ3MgPSBJOTE1
X0dFTV9PQkpFQ1RfSEFTX1NUUlVDVF9QQUdFIHwKIAkJIEk5MTVfR0VNX09CSkVDVF9JU19TSFJJ
TktBQkxFIHwKKwkJIEk5MTVfR0VNX09CSkVDVF9OT19HR1RUIHwKIAkJIEk5MTVfR0VNX09CSkVD
VF9BU1lOQ19DQU5DRUwsCiAJLmdldF9wYWdlcyA9IGk5MTVfZ2VtX3VzZXJwdHJfZ2V0X3BhZ2Vz
LAogCS5wdXRfcGFnZXMgPSBpOTE1X2dlbV91c2VycHRyX3B1dF9wYWdlcywKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jCmluZGV4IGUyODk3YTY2NjIyNS4uYjhmY2YzNTc1YTZkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKQEAgLTk3MCw2ICs5NzAsOSBAQCBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4o
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAogCWxvY2tkZXBfYXNzZXJ0X2hlbGQo
Jm9iai0+YmFzZS5kZXYtPnN0cnVjdF9tdXRleCk7CiAKKwlpZiAoaTkxNV9nZW1fb2JqZWN0X25l
dmVyX2JpbmRfZ2d0dChvYmopKQorCQlyZXR1cm4gRVJSX1BUUigtRU5PREVWKTsKKwogCWlmIChm
bGFncyAmIFBJTl9NQVBQQUJMRSAmJgogCSAgICAoIXZpZXcgfHwgdmlldy0+dHlwZSA9PSBJOTE1
X0dHVFRfVklFV19OT1JNQUwpKSB7CiAJCS8qIElmIHRoZSByZXF1aXJlZCBzcGFjZSBpcyBsYXJn
ZXIgdGhhbiB0aGUgYXZhaWxhYmxlCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677789D2C7
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 17:30:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A606E245;
	Mon, 26 Aug 2019 15:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A5346E245;
 Mon, 26 Aug 2019 15:30:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18267662-1500050 for multiple; Mon, 26 Aug 2019 16:29:58 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190826152000.23394-1-chris@chris-wilson.co.uk>
References: <20190826152000.23394-1-chris@chris-wilson.co.uk>
Message-ID: <156683339636.14306.4775367661928407875@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 26 Aug 2019 16:29:56 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Race mmap offset
 generation against closure
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjYgMTY6MjA6MDApCj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEFiZGllbCBK
YW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KClRoYXQgaG9uZXN0bHkg
d29ya2VkIGJldHRlciB0aGFuIEkgd2FzIGFudGljaXBhdGluZywKClsgICAzNi40MTM2NTZdIFtJ
R1RdIGdlbV9tbWFwX2d0dDogZXhlY3V0aW5nClsgICAzNi40MjU5MDZdIFtJR1RdIGdlbV9tbWFw
X2d0dDogc3RhcnRpbmcgc3VidGVzdCBjbG9zZS1yYWNlClsgICAzNi40NDgxNzldIC0tLS0tLS0t
LS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQpbICAgMzYuNDQ4NDE0XSByZWZjb3VudF90OiBp
bmNyZW1lbnQgb24gMDsgdXNlLWFmdGVyLWZyZWUuClsgICAzNi40NDg1NDhdIFdBUk5JTkc6IENQ
VTogMyBQSUQ6IDgwMiBhdCBsaWIvcmVmY291bnQuYzoxNTYgcmVmY291bnRfaW5jX2NoZWNrZWQr
MHgyYi8weDMwClsgICAzNi40NDg2NjddIE1vZHVsZXMgbGlua2VkIGluOiBpOTE1IGludGVsX2d0
dCBpb3NmX21iaSBwcmltZV9udW1iZXJzIGRybV9rbXNfaGVscGVyIGRybSBkcm1fcGFuZWxfb3Jp
ZW50YXRpb25fcXVpcmtzClsgICAzNi40NDg4MjBdIENQVTogMyBQSUQ6IDgwMiBDb21tOiBnZW1f
bW1hcF9ndHQgTm90IHRhaW50ZWQgNS4zLjAtcmM2KyAjMTg3ClsgICAzNi40NDg5MjddIEhhcmR3
YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIDIwMTIgQ2xpZW50IFBsYXRmb3JtL0VtZXJhbGQg
TGFrZSAyLCBCSU9TIEFDUlZNQlkxLjg2Qy4wMDc4LlAwMC4xMjAxMTYxMDAyIDAxLzE2LzIwMTIK
WyAgIDM2LjQ0OTA3Nl0gUklQOiAwMDEwOnJlZmNvdW50X2luY19jaGVja2VkKzB4MmIvMHgzMApb
ICAgMzYuNDQ5MTcwXSBDb2RlOiA0OCA4OSBlNSBlOCBlNyBmZSBmZiBmZiA4NCBjMCA3NCAwMiA1
ZCBjMyA4MCAzZCA5MyBkZSBmYyAwMCAwMCA3NSBmNSA0OCBjNyBjNyA4MCA4OCBmMiA4MSBjNiAw
NSA4MyBkZSBmYyAwMCAwMSBlOCBiNiA4ZSBiNCBmZiA8MGY+IDBiIDVkIGMzIDkwIDQ4IGI4IDAw
IDAwIDAwIDAwIDAwIGZjIGZmIGRmIDU1IDQ4IDg5IGU1IDQxIDU3IDQ5ClsgICAzNi40NDkzNzNd
IFJTUDogMDAxODpmZmZmODg4MjAzMzNmYzAwIEVGTEFHUzogMDAwMTAyODIKWyAgIDM2LjQ0OTQ2
N10gUkFYOiAwMDAwMDAwMDAwMDAwMDAwIFJCWDogZmZmZjg4ODIwMzYxNjllOCBSQ1g6IDAwMDAw
MDAwMDAwMDAwMDAKWyAgIDM2LjQ0OTUzMV0gUkRYOiAwMDAwMDAwMDAwMDAwMDAxIFJTSTogMDAw
MDAwMDAwMDAwMDAwOCBSREk6IGZmZmZlZDEwNDA2NjdmNzYKWyAgIDM2LjQ0OTYwNV0gUkJQOiBm
ZmZmODg4MjAzMzNmYzAwIFIwODogMDAwMDAwMDAwMDAwMDAwMSBSMDk6IGZmZmZlZDEwNDJiNWJl
YzUKWyAgIDM2LjQ0OTY2MV0gUjEwOiBmZmZmZWQxMDQyYjViZWM0IFIxMTogZmZmZjg4ODIxNWFk
ZjYyNyBSMTI6IGZmZmY4ODgxZmY4YjMyYTgKWyAgIDM2LjQ0OTcxM10gUjEzOiBmZmZmODg4MjAz
NjE2YTM4IFIxNDogZmZmZjg4ODIwMzYxNmEzMCBSMTU6IDAwMDAwMDAwMDAwMDAwMDAKWyAgIDM2
LjQ0OTc2Nl0gRlM6ICAwMDAwN2Y1ZDIzNGVmZDQwKDAwMDApIEdTOmZmZmY4ODgyMTVhYzAwMDAo
MDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMApbICAgMzYuNDQ5ODI3XSBDUzogIDAwMTAgRFM6
IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzClsgICAzNi40NDk4NzhdIENSMjog
MDAwMDdmNWQyNDM2NjAyMCBDUjM6IDAwMDAwMDAxZmY3NTgwMDEgQ1I0OiAwMDAwMDAwMDAwMTYw
NmUwClsgICAzNi40NDk5MjldIENhbGwgVHJhY2U6ClsgICAzNi40NTAxMTVdICBpOTE1X2dlbV9t
bWFwKzB4MzQ2LzB4M2EwIFtpOTE1XQpbICAgMzYuNDUwMjk1XSAgPyBpOTE1X2dlbV92bV9jbG9z
ZSsweDkwLzB4OTAgW2k5MTVdClsgICAzNi40NTAzNTBdICA/IG1lbXNldCsweDMyLzB4NDAKWyAg
IDM2LjQ1MDM4OV0gIG1tYXBfcmVnaW9uKzB4NjQ2LzB4YTIwClsgICAzNi40NTA0MzBdICA/IF9f
eDY0X3N5c19icmsrMHgzOTAvMHgzOTAKWyAgIDM2LjQ1MDQ3NF0gID8gYXJjaF9nZXRfdW5tYXBw
ZWRfYXJlYSsweDM3MC8weDM3MApbICAgMzYuNDUwNTE4XSAgZG9fbW1hcCsweDNlNC8weDZkMApb
ICAgMzYuNDUwNTU2XSAgdm1fbW1hcF9wZ29mZisweGY5LzB4MTUwClsgICAzNi40NTA1OTldICA/
IHZtYV9pc19zdGFja19mb3JfY3VycmVudCsweDYwLzB4NjAKWyAgIDM2LjQ1MDY0M10gIGtzeXNf
bW1hcF9wZ29mZisweDk0LzB4YzAKWyAgIDM2LjQ1MDY4M10gIF9feDY0X3N5c19tbWFwKzB4ODgv
MHhhMApbICAgMzYuNDUwNzIzXSAgZG9fc3lzY2FsbF82NCsweDcyLzB4ZTAKWyAgIDM2LjQ1MDc2
NV0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ5LzB4YmUKWyAgIDM2LjQ1MDgx
MV0gUklQOiAwMDMzOjB4N2Y1ZDIzYzc0MTMzClsgICAzNi40NTA4NTRdIENvZGU6IDU0IDQxIDg5
IGQ0IDU1IDQ4IDg5IGZkIDUzIDRjIDg5IGNiIDQ4IDg1IGZmIDc0IDU2IDQ5IDg5IGQ5IDQ1IDg5
IGY4IDQ1IDg5IGYyIDQ0IDg5IGUyIDRjIDg5IGVlIDQ4IDg5IGVmIGI4IDA5IDAwIDAwIDAwIDBm
IDA1IDw0OD4gM2QgMDAgZjAgZmYgZmYgNzcgN2QgNWIgNWQgNDEgNWMgNDEgNWQgNDEgNWUgNDEg
NWYgYzMgNjYgMmUgMGYKWyAgIDM2LjQ1MDk1Ml0gUlNQOiAwMDJiOjAwMDA3ZmZmYjgwOGRhNjgg
RUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAwOQpbICAgMzYuNDUxMDEx
XSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwMDAwMTAwMDA2MDAwIFJDWDogMDAwMDdm
NWQyM2M3NDEzMwpbICAgMzYuNDUxMDY5XSBSRFg6IDAwMDAwMDAwMDAwMDAwMDEgUlNJOiAwMDAw
MDAwMDAwMDAxMDAwIFJESTogMDAwMDAwMDAwMDAwMDAwMApbICAgMzYuNDUxMTIxXSBSQlA6IDAw
MDAwMDAwMDAwMDAwMDAgUjA4OiAwMDAwMDAwMDAwMDAwMDAzIFIwOTogMDAwMDAwMDEwMDAwNjAw
MApbICAgMzYuNDUxMTk0XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDEgUjExOiAwMDAwMDAwMDAwMDAw
MjQ2IFIxMjogMDAwMDAwMDAwMDAwMDAwMQpbICAgMzYuNDUxMzA0XSBSMTM6IDAwMDAwMDAwMDAw
MDEwMDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAxIFIxNTogMDAwMDAwMDAwMDAwMDAwMwpbICAgMzYu
NDUxNDE0XSBpcnEgZXZlbnQgc3RhbXA6IDUxNTgKWyAgIDM2LjQ1MTQ5M10gaGFyZGlycXMgbGFz
dCAgZW5hYmxlZCBhdCAoNTE1Nyk6IFs8ZmZmZmZmZmY4MTEyZDU3NT5dIGNvbnNvbGVfdW5sb2Nr
KzB4NTQ1LzB4NmYwClsgICAzNi40NTE2MjddIGhhcmRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDUx
NTgpOiBbPGZmZmZmZmZmODEwMDI2Y2E+XSB0cmFjZV9oYXJkaXJxc19vZmZfdGh1bmsrMHgxYS8w
eDIwClsgICAzNi40NTE3NTZdIHNvZnRpcnFzIGxhc3QgIGVuYWJsZWQgYXQgKDQ3NTIpOiBbPGZm
ZmZmZmZmODFjMDA0NDE+XSBfX2RvX3NvZnRpcnErMHg0NDEvMHg1NzUKWyAgIDM2LjQ1MTg3OV0g
c29mdGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoNDc0Nyk6IFs8ZmZmZmZmZmY4MTA5YjgwZT5dIGly
cV9leGl0KzB4MTRlLzB4MTYwClsgICAzNi40NTIwMDBdIFdBUk5JTkc6IENQVTogMyBQSUQ6IDgw
MiBhdCBsaWIvcmVmY291bnQuYzoxNTYgcmVmY291bnRfaW5jX2NoZWNrZWQrMHgyYi8weDMwClsg
ICAzNi40NTIxMjVdIC0tLVsgZW5kIHRyYWNlIDFhN2JlM2NmNWMwMTM1ODAgXS0tLQpbICAgMzYu
NDUyMzQwXSA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KWyAgIDM2LjQ1Mjg0OV0gQlVHOiBLQVNBTjogdXNlLWFmdGVyLWZy
ZWUgaW4gaTkxNV9nZW1fdm1fY2xvc2UrMHgzNS8weDkwIFtpOTE1XQpbICAgMzYuNDUyOTYwXSBS
ZWFkIG9mIHNpemUgOCBhdCBhZGRyIGZmZmY4ODgxZmY4YjMzOTAgYnkgdGFzayBnZW1fbW1hcF9n
dHQvODAyClsgICAzNi40NTMwNjRdClsgICAzNi40NTMxMjldIENQVTogMyBQSUQ6IDgwMiBDb21t
OiBnZW1fbW1hcF9ndHQgVGFpbnRlZDogRyAgICAgICAgVyAgICAgICAgIDUuMy4wLXJjNisgIzE4
NwpbICAgMzYuNDUzMjQ4XSBIYXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3JhdGlvbiAyMDEyIENs
aWVudCBQbGF0Zm9ybS9FbWVyYWxkIExha2UgMiwgQklPUyBBQ1JWTUJZMS44NkMuMDA3OC5QMDAu
MTIwMTE2MTAwMiAwMS8xNi8yMDEyClsgICAzNi40NTMzOTVdIENhbGwgVHJhY2U6ClsgICAzNi40
NTM0NjldICBkdW1wX3N0YWNrKzB4ODYvMHhjYQpbICAgMzYuNDUzNTUyXSAgcHJpbnRfYWRkcmVz
c19kZXNjcmlwdGlvbisweDZlLzB4MzI0ClsgICAzNi40NTM5MTNdICA/IGk5MTVfZ2VtX3ZtX2Ns
b3NlKzB4MzUvMHg5MCBbaTkxNV0KWyAgIDM2LjQ1NDAwNl0gIF9fa2FzYW5fcmVwb3J0LmNvbGQr
MHgxYi8weDM3ClsgICAzNi40NTQzMzJdICA/IGk5MTVfZ2VtX3ZtX2Nsb3NlKzB4MzUvMHg5MCBb
aTkxNV0KWyAgIDM2LjQ1NDQyM10gIGthc2FuX3JlcG9ydCsweGMvMHhlClsgICAzNi40NTQ1MDBd
ICBfX2FzYW5fbG9hZDgrMHg1NC8weDkwClsgICAzNi40NTQ4MjFdICBpOTE1X2dlbV92bV9jbG9z
ZSsweDM1LzB4OTAgW2k5MTVdClsgICAzNi40NTQ5MDddICByZW1vdmVfdm1hKzB4NWUvMHg5MApb
ICAgMzYuNDU0OTgzXSAgX19kb19tdW5tYXArMHgzMTUvMHg2NzAKWyAgIDM2LjQ1NTA2Ml0gIF9f
dm1fbXVubWFwKzB4YTkvMHhmMApbICAgMzYuNDU1MTM5XSAgPyBfX2RvX211bm1hcCsweDY3MC8w
eDY3MApbICAgMzYuNDU1MjE4XSAgPyBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg0
OS8weGJlClsgICAzNi40NTUzMDddICA/IGxvY2tkZXBfaGFyZGlycXNfb24rMHgxODUvMHgyNjAK
WyAgIDM2LjQ1NTM5M10gIF9feDY0X3N5c19tdW5tYXArMHgzMS8weDQwClsgICAzNi40NTU0NzVd
ICBkb19zeXNjYWxsXzY0KzB4NzIvMHhlMApbICAgMzYuNDU1NTU0XSAgZW50cnlfU1lTQ0FMTF82
NF9hZnRlcl9od2ZyYW1lKzB4NDkvMHhiZQpbICAgMzYuNDU1NjQ1XSBSSVA6IDAwMzM6MHg3ZjVk
MjNjNzQxZDcKWyAgIDM2LjQ1NTczMF0gQ29kZTogMTAgZTkgNjcgZmYgZmYgZmYgMGYgMWYgNDQg
MDAgMDAgNDggOGIgMTUgYjEgNmMgMGMgMDAgZjcgZDggNjQgODkgMDIgNDggYzcgYzAgZmYgZmYg
ZmYgZmYgZTkgNmIgZmYgZmYgZmYgYjggMGIgMDAgMDAgMDAgMGYgMDUgPDQ4PiAzZCAwMSBmMCBm
ZiBmZiA3MyAwMSBjMyA0OCA4YiAwZCA4OSA2YyAwYyAwMCBmNyBkOCA2NCA4OSAwMSA0OApbICAg
MzYuNDU1OTY1XSBSU1A6IDAwMmI6MDAwMDdmZmZiODA4ZGE5OCBFRkxBR1M6IDAwMDAwMjEzIE9S
SUdfUkFYOiAwMDAwMDAwMDAwMDAwMDBiClsgICAzNi40NTYwODFdIFJBWDogZmZmZmZmZmZmZmZm
ZmZkYSBSQlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiAwMDAwN2Y1ZDIzYzc0MWQ3ClsgICAzNi40
NTYxODhdIFJEWDogMDAwMDAwMDAwMDAwMDAwMSBSU0k6IDAwMDAwMDAwMDAwMDEwMDAgUkRJOiAw
MDAwN2Y1ZDI0MzY1MDAwClsgICAzNi40NTYyOThdIFJCUDogMDAwMDdmNWQyNDM2NjAwMCBSMDg6
IDAwMDAwMDAwMDAwMDAwMDMgUjA5OiAwMDAwMDAwMTAwMDA2MDAwClsgICAzNi40NTY0MDddIFIx
MDogMDAwMDAwMDAwMDAwMDAwMSBSMTE6IDAwMDAwMDAwMDAwMDAyMTMgUjEyOiAwMDAwMDAwMDAw
MDAwMDAzClsgICAzNi40NTY1MTRdIFIxMzogMDAwMDAwMDAwMDAwMDAwMiBSMTQ6IDAwMDAwMDAw
MDAwMDAwMDggUjE1OiAwMDAwMDAwMDAwMDAwMDAwClsgICAzNi40NTY2MjNdClsgICAzNi40NTY2
ODJdIEFsbG9jYXRlZCBieSB0YXNrIDgwMjoKWyAgIDM2LjQ1Njc2Ml0gIHNhdmVfc3RhY2srMHgy
My8weDkwClsgICAzNi40NTY4MzhdICBfX2thc2FuX2ttYWxsb2MuY29uc3Rwcm9wLjArMHhjZi8w
eGUwClsgICAzNi40NTY5MjZdICBrYXNhbl9rbWFsbG9jKzB4OS8weDEwClsgICAzNi40NTcwMDRd
ICBrbWVtX2NhY2hlX2FsbG9jX3RyYWNlKzB4MTFjLzB4MmYwClsgICAzNi40NTczNThdICBfX2Fz
c2lnbl9nZW1fb2JqZWN0X21tYXBfZGF0YSsweDEwMy8weDI1MCBbaTkxNV0KWyAgIDM2LjQ1Nzcx
N10gIGk5MTVfZ2VtX21tYXBfZ3R0X2lvY3RsKzB4NWMvMHgxMDAgW2k5MTVdClsgICAzNi40NTc4
NjRdICBkcm1faW9jdGxfa2VybmVsKzB4MTI2LzB4MTcwIFtkcm1dClsgICAzNi40NTgwMTNdICBk
cm1faW9jdGwrMHgzMzEvMHg1NTAgW2RybV0KWyAgIDM2LjQ1ODA5OF0gIGRvX3Zmc19pb2N0bCsw
eDc2Ny8weGEzMApbICAgMzYuNDU4MTc2XSAga3N5c19pb2N0bCsweDNjLzB4ODAKWyAgIDM2LjQ1
ODI1Ml0gIF9feDY0X3N5c19pb2N0bCsweDNlLzB4NTAKWyAgIDM2LjQ1ODI2MV0gQlVHOiBrZXJu
ZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLCBhZGRyZXNzOiAwMDAwMDAwMDAwMDAwMDAwClsg
ICAzNi40NTgzMDRdICBkb19zeXNjYWxsXzY0KzB4NzIvMHhlMApbICAgMzYuNDU4MzY0XSAjUEY6
IHN1cGVydmlzb3IgcmVhZCBhY2Nlc3MgaW4ga2VybmVsIG1vZGUKWyAgIDM2LjQ1ODQxMF0gIGVu
dHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ5LzB4YmUKWyAgIDM2LjQ1ODQ1OF0gI1BG
OiBlcnJvcl9jb2RlKDB4MDAwMCkgLSBub3QtcHJlc2VudCBwYWdlClsgICAzNi40NTg1MDhdClsg
ICAzNi40NTg1NjddIFBHRCAwIFA0RCAwClsgICAzNi40NTg2MThdIEZyZWVkIGJ5IHRhc2sgODAz
OgpbICAgMzYuNDU4NjY3XSBPb3BzOiAwMDAwIFsjMV0gU01QIERFQlVHX1BBR0VBTExPQyBLQVNB
TgpbICAgMzYuNDU4NzE2XSAgc2F2ZV9zdGFjaysweDIzLzB4OTAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

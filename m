Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C360531519
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 21:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03198982C;
	Fri, 31 May 2019 19:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B62B8982C;
 Fri, 31 May 2019 19:12:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16753290-1500050 
 for multiple; Fri, 31 May 2019 20:12:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Fri, 31 May 2019 20:12:15 +0100
Message-Id: <20190531191215.25332-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531171615.32269-1-chris@chris-wilson.co.uk>
References: <20190531171615.32269-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm: Flush output polling on shutdown
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

V2UgbmVlZCB0byBtYXJrIHRoZSBvdXRwdXQgcG9sbGluZyBhcyBkaXNhYmxlZCB0byBwcmV2ZW50
IGNvbmN1cnJlbnQKaXJxcyBmcm9tIHF1ZXVpbmcgbmV3IHdvcmsgYXMgc2h1dGRvd24gdGhlIHBy
b2JlIC0tIGNhdXNpbmcgdGhhdCB3b3JrIHRvCmV4ZWN1dGUgYWZ0ZXIgd2UgaGF2ZSBmcmVlZCB0
aGUgc3RydWN0czoKCjw0PiBbMzQxLjg0NjQ5MF0gREVCVUdfTE9DS1NfV0FSTl9PTihtdXRleF9p
c19sb2NrZWQobG9jaykpCjw0PiBbMzQxLjg0NjQ5N10gV0FSTklORzogQ1BVOiAzIFBJRDogMzMw
MCBhdCBrZXJuZWwvbG9ja2luZy9tdXRleC1kZWJ1Zy5jOjEwMyBtdXRleF9kZXN0cm95KzB4NDkv
MHg1MAo8ND4gWzM0MS44NDY1MDhdIE1vZHVsZXMgbGlua2VkIGluOiBpOTE1KC0pIHZnZW0gdGh1
bmRlcmJvbHQgc25kX2hkYV9jb2RlY19oZG1pIHNuZF9oZGFfY29kZWNfcmVhbHRlayBzbmRfaGRh
X2NvZGVjX2dlbmVyaWMgbWVpX2hkY3AgeDg2X3BrZ190ZW1wX3RoZXJtYWwgY29yZXRlbXAgY3Jj
dDEwZGlmX3BjbG11bCBjcmMzMl9wY2xtdWwgZ2hhc2hfY2xtdWxuaV9pbnRlbCBzbmRfaGRhX2Nv
ZGVjIHNuZF9od2RlcCBzbmRfaGRhX2NvcmUgc25kX3BjbSBtY3M3ODMwIGJ0dXNiIHVzYm5ldCBi
dHJ0bCBtaWkgYnRiY20gYnRpbnRlbCBibHVldG9vdGggZWNkaF9nZW5lcmljIGVjYyBtZWlfbWUg
bWVpIHByaW1lX251bWJlcnMgaTJjX2hpZCBwaW5jdHJsX3N1bnJpc2Vwb2ludCBwaW5jdHJsX2lu
dGVsIFtsYXN0IHVubG9hZGVkOiBpOTE1XQo8ND4gWzM0MS44NDY1NDZdIENQVTogMyBQSUQ6IDMz
MDAgQ29tbTogaTkxNV9tb2R1bGVfbG9hIFRhaW50ZWQ6IEcgICAgIFUgICAgICAgICAgICA1LjIu
MC1yYzItQ0ktQ0lfRFJNXzYxNzUrICMxCjw0PiBbMzQxLjg0NjU1M10gSGFyZHdhcmUgbmFtZTog
RGVsbCBJbmMuIFhQUyAxMyA5MzYwLzA4MjNWVywgQklPUyAyLjkuMCAwNy8wOS8yMDE4Cjw0PiBb
MzQxLjg0NjU2MF0gUklQOiAwMDEwOm11dGV4X2Rlc3Ryb3krMHg0OS8weDUwCjw0PiBbMzQxLjg0
NjU2NV0gQ29kZTogMDAgMDAgNWIgYzMgZTggYTggOWYgM2IgMDAgODUgYzAgNzQgZWQgOGIgMDUg
M2UgNTUgMjMgMDEgODUgYzAgNzUgZTMgNDggYzcgYzYgMDAgZDAgMDggODIgNDggYzcgYzcgYTgg
YWEgMDcgODIgZTggZTcgMDggZmEgZmYgPDBmPiAwYiBlYiBjYyAwZiAxZiAwMCA0OCBiOCAxMSAx
MSAxMSAxMSAxMSAxMSAxMSAxMSA0OCA4OSA3NiAyMCA0OAo8ND4gWzM0MS44NDY1NzhdIFJTUDog
MDAxODpmZmZmYzkwMDAwNmNmZGIwIEVGTEFHUzogMDAwMTAyODYKPDQ+IFszNDEuODQ2NTgzXSBS
QVg6IDAwMDAwMDAwMDAwMDAwMDAgUkJYOiBmZmZmODg4MjY3NTlhMTY4IFJDWDogMDAwMDAwMDAw
MDAwMDAwMAo8ND4gWzM0MS44NDY1ODldIFJEWDogMDAwMDAwMDAwMDAwMDAwMiBSU0k6IDAwMDAw
MDAwMDAwMDAwMDAgUkRJOiBmZmZmZmZmZjgxMTI4NDRjCjw0PiBbMzQxLjg0NjU5NV0gUkJQOiBm
ZmZmODg4MjcwOGZhNTQ4IFIwODogMDAwMDAwMDAwMDAwMDAwMCBSMDk6IDAwMDAwMDAwMDAwMzk2
MDAKPDQ+IFszNDEuODQ2NjAxXSBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAwMDAw
MDAwY2U0IFIxMjogZmZmZmZmZmZhMDdkZTFlMAo8ND4gWzM0MS44NDY2MDddIFIxMzogMDAwMDAw
MDAwMDAwMDAwMCBSMTQ6IDAwMDAwMDAwMDAwMDAwMDAgUjE1OiBmZmZmZmZmZmEwN2RlMmQwCjw0
PiBbMzQxLjg0NjYxM10gRlM6ICAwMDAwN2Y2MmI1YWUwZTQwKDAwMDApIEdTOmZmZmY4ODgyNzYz
ODAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo8ND4gWzM0MS44NDY2MjBdIENTOiAg
MDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKPDQ+IFszNDEuODQ2
NjI2XSBDUjI6IDAwMDA1NWE0ZTA2NGY0YTAgQ1IzOiAwMDAwMDAwMjY2YjE2MDA2IENSNDogMDAw
MDAwMDAwMDM2MDZlMAo8ND4gWzM0MS44NDY2MzJdIENhbGwgVHJhY2U6Cjw0PiBbMzQxLjg0NjYz
OV0gIGRybV9mYl9oZWxwZXJfZmluaS5wYXJ0LjE3KzB4YjMvMHgxMDAKPDQ+IFszNDEuODQ2Njgy
XSAgaW50ZWxfZmJkZXZfZmluaSsweDIwLzB4ODAgW2k5MTVdCjw0PiBbMzQxLjg0NjcyMl0gIGlu
dGVsX21vZGVzZXRfY2xlYW51cCsweDlhLzB4MTQwIFtpOTE1XQo8ND4gWzM0MS44NDY3NTBdICBp
OTE1X2RyaXZlcl91bmxvYWQrMHhhMy8weDEwMCBbaTkxNV0KPDQ+IFszNDEuODQ2Nzc4XSAgaTkx
NV9wY2lfcmVtb3ZlKzB4MTkvMHgzMCBbaTkxNV0KPDQ+IFszNDEuODQ2Nzg0XSAgcGNpX2Rldmlj
ZV9yZW1vdmUrMHgzNi8weGIwCjw0PiBbMzQxLjg0Njc5MF0gIGRldmljZV9yZWxlYXNlX2RyaXZl
cl9pbnRlcm5hbCsweGQzLzB4MWIwCjw0PiBbMzQxLjg0Njc5NV0gIGRyaXZlcl9kZXRhY2grMHgz
Zi8weDgwCjw0PiBbMzQxLjg0NjgwMF0gIGJ1c19yZW1vdmVfZHJpdmVyKzB4NTMvMHhkMAo8ND4g
WzM0MS44NDY4MDVdICBwY2lfdW5yZWdpc3Rlcl9kcml2ZXIrMHgyNS8weGEwCjw0PiBbMzQxLjg0
Njg0M10gIGk5MTVfZXhpdCsweDE2LzB4MWMgW2k5MTVdCjw0PiBbMzQxLjg0Njg0OV0gIF9fc2Vf
c3lzX2RlbGV0ZV9tb2R1bGUrMHgxNjIvMHgyMTAKPDQ+IFszNDEuODQ2ODU1XSAgPyB0cmFjZV9o
YXJkaXJxc19vZmZfdGh1bmsrMHgxYS8weDFjCjw0PiBbMzQxLjg0Njg1OV0gID8gZG9fc3lzY2Fs
bF82NCsweGQvMHgxYzAKPDQ+IFszNDEuODQ2ODY0XSAgZG9fc3lzY2FsbF82NCsweDU1LzB4MWMw
Cjw0PiBbMzQxLjg0Njg2OV0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ5LzB4
YmUKPDQ+IFszNDEuODQ2ODc1XSBSSVA6IDAwMzM6MHg3ZjYyYjUxODcxYjcKPDQ+IFszNDEuODQ2
ODgxXSBDb2RlOiA3MyAwMSBjMyA0OCA4YiAwZCBkMSA4YyAyYyAwMCBmNyBkOCA2NCA4OSAwMSA0
OCA4MyBjOCBmZiBjMyA2NiAyZSAwZiAxZiA4NCAwMCAwMCAwMCAwMCAwMCAwZiAxZiA0NCAwMCAw
MCBiOCBiMCAwMCAwMCAwMCAwZiAwNSA8NDg+IDNkIDAxIGYwIGZmIGZmIDczIDAxIGMzIDQ4IDhi
IDBkIGExIDhjIDJjIDAwIGY3IGQ4IDY0IDg5IDAxIDQ4Cjw0PiBbMzQxLjg0Njg5N10gUlNQOiAw
MDJiOjAwMDA3ZmZlN2EyMjcxMzggRUZMQUdTOiAwMDAwMDIwNiBPUklHX1JBWDogMDAwMDAwMDAw
MDAwMDBiMAo8ND4gWzM0MS44NDY5MDRdIFJBWDogZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDA3
ZmZlN2EyMjcyYjAgUkNYOiAwMDAwN2Y2MmI1MTg3MWI3Cjw0PiBbMzQxLjg0NjkxMF0gUkRYOiAw
MDAwMDAwMDAwMDAwMDAxIFJTSTogMDAwMDAwMDAwMDAwMDgwMCBSREk6IDAwMDA1NTdjZDZiNTU5
NDgKPDQ+IFszNDEuODQ2OTE2XSBSQlA6IDAwMDA1NTdjZDZiNTU4ZTAgUjA4OiAwMDAwNTU3Y2Q2
YjU1OTRjIFIwOTogMDAwMDdmZmU3YTIyNzE2MAo8ND4gWzM0MS44NDY5MjJdIFIxMDogMDAwMDdm
ZmU3YTIyNjEzNCBSMTE6IDAwMDAwMDAwMDAwMDAyMDYgUjEyOiAwMDAwMDAwMDAwMDAwMDAwCjw0
PiBbMzQxLjg0NjkyN10gUjEzOiAwMDAwN2ZmZTdhMjI3ODIwIFIxNDogMDAwMDAwMDAwMDAwMDAw
MCBSMTU6IDAwMDAwMDAwMDAwMDAwMDAKPDQ+IFszNDEuODQ2OTM2XSBpcnEgZXZlbnQgc3RhbXA6
IDM1NDc4NDcKPDQ+IFszNDEuODQ2OTQwXSBoYXJkaXJxcyBsYXN0ICBlbmFibGVkIGF0ICgzNTQ3
ODQ3KTogWzxmZmZmZmZmZjgxOWFhZDJjPl0gX3Jhd19zcGluX3VubG9ja19pcnFyZXN0b3JlKzB4
NGMvMHg2MAo8ND4gWzM0MS44NDY5NDldIGhhcmRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDM1NDc4
NDYpOiBbPGZmZmZmZmZmODE5YWFiOWQ+XSBfcmF3X3NwaW5fbG9ja19pcnFzYXZlKzB4ZC8weDUw
Cjw0PiBbMzQxLjg0Njk1N10gc29mdGlycXMgbGFzdCAgZW5hYmxlZCBhdCAoMzU0NzM3Nik6IFs8
ZmZmZmZmZmY4MWMwMDMzYT5dIF9fZG9fc29mdGlycSsweDMzYS8weDRiOQo8ND4gWzM0MS44NDY5
NjZdIHNvZnRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDM1NDczNjcpOiBbPGZmZmZmZmZmODEwYjYz
Nzk+XSBpcnFfZXhpdCsweGE5LzB4YzAKPDQ+IFszNDEuODQ2OTczXSBXQVJOSU5HOiBDUFU6IDMg
UElEOiAzMzAwIGF0IGtlcm5lbC9sb2NraW5nL211dGV4LWRlYnVnLmM6MTAzIG11dGV4X2Rlc3Ry
b3krMHg0OS8weDUwCjw0PiBbMzQxLjg0Njk4MF0gLS0tWyBlbmQgdHJhY2UgYmE5NGNhODk1MmJh
OTcwZSBdLS0tCjw3PiBbMzQxLjg2NjU0N10gW2RybTppbnRlbF9kcF9kZXRlY3QgW2k5MTVdXSBN
U1Qgc3VwcG9ydD8gcG9ydCBBOiBubywgc2luazogbm8sIG1vZHBhcmFtOiB5ZXMKPDc+IFszNDEu
ODkwNDgwXSBbZHJtOmRybV9hZGRfZGlzcGxheV9pbmZvXSBub25fZGVza3RvcCBzZXQgdG8gMAo8
Nz4gWzM0MS44OTA1MzBdIFtkcm06ZHJtX2FkZF9lZGlkX21vZGVzXSBFTEQ6IG5vIENFQSBFeHRl
bnNpb24gZm91bmQKPDc+IFszNDEuODkwNTM3XSBbZHJtOmRybV9hZGRfZGlzcGxheV9pbmZvXSBu
b25fZGVza3RvcCBzZXQgdG8gMAo8Nz4gWzM0MS44OTA1NzhdIFtkcm06ZHJtX2hlbHBlcl9wcm9i
ZV9zaW5nbGVfY29ubmVjdG9yX21vZGVzXSBbQ09OTkVDVE9SOjg2OmVEUC0xXSBwcm9iZWQgbW9k
ZXMgOgo8Nz4gWzM0MS44OTA1ODldIFtkcm06ZHJtX21vZGVfZGVidWdfcHJpbnRtb2RlbGluZV0g
TW9kZWxpbmUgIjMyMDB4MTgwMCI6IDYwIDM3MzI1MCAzMjAwIDMyNDggMzI4MCAzMzYwIDE4MDAg
MTgwMyAxODA4IDE4NTIgMHg0OCAweGEKPDc+IFszNDEuODkwNjAyXSBbZHJtOmRybV9tb2RlX2Rl
YnVnX3ByaW50bW9kZWxpbmVdIE1vZGVsaW5lICIzMjAweDE4MDAiOiA0OCAyOTg2MDAgMzIwMCAz
MjQ4IDMyODAgMzM2MCAxODAwIDE4MDMgMTgwOCAxODUyIDB4NDAgMHhhCjw0PiBbMzQxLjg5MDYy
OF0gZ2VuZXJhbCBwcm90ZWN0aW9uIGZhdWx0OiAwMDAwIFsjMV0gUFJFRU1QVCBTTVAgUFRJCjw0
PiBbMzQxLjg5MDYzNl0gQ1BVOiAwIFBJRDogNTA4IENvbW06IGt3b3JrZXIvMDo0IFRhaW50ZWQ6
IEcgICAgIFUgIFcgICAgICAgICA1LjIuMC1yYzItQ0ktQ0lfRFJNXzYxNzUrICMxCjw0PiBbMzQx
Ljg5MDY0Nl0gSGFyZHdhcmUgbmFtZTogRGVsbCBJbmMuIFhQUyAxMyA5MzYwLzA4MjNWVywgQklP
UyAyLjkuMCAwNy8wOS8yMDE4Cjw0PiBbMzQxLjg5MDY1NV0gV29ya3F1ZXVlOiBldmVudHMgb3V0
cHV0X3BvbGxfZXhlY3V0ZQo8ND4gWzM0MS44OTA2NjNdIFJJUDogMDAxMDpkcm1fc2V0dXBfY3J0
Y3MrMHgxM2UvMHhiZTAKPDQ+IFszNDEuODkwNjY5XSBDb2RlOiAwMCA0MSA4YiA0NCAyNCA1OCA4
NSBjMCAwZiA4ZSBmOSAwMSAwMCAwMCA0NCA4YiA2YyAyNCAyMCA0NCA4YiA3NCAyNCAyOCAzMSBk
YiAzMSBlZCA0OSA4YiA0NCAyNCA2MCA0OCA2MyBkNSA0NCA4OSBlZSA4MyBjNSAwMSA8NDg+IDhi
IDA0IGQwIDQ0IDg5IGYyIDQ4IDhiIDM4IDQ4IDhiIDg3IDg4IDAxIDAwIDAwIDQ4IDhiIDQwIDIw
IGU4Cjw0PiBbMzQxLjg5MDY4Nl0gUlNQOiAwMDE4OmZmZmZjOTAwMDAzM2ZkNDAgRUZMQUdTOiAw
MDAxMDIwMgo8ND4gWzM0MS44OTA2OTJdIFJBWDogNmI2YjZiNmI2YjZiNmI2YiBSQlg6IDAwMDAw
MDAwMDAwMDAwMDIgUkNYOiAwMDAwMDAwMDAwMDAwMDAwCjw0PiBbMzQxLjg5MDcwMF0gUkRYOiAw
MDAwMDAwMDAwMDAwMDAxIFJTSTogMDAwMDAwMDAwMDAwMGM4MCBSREk6IDAwMDAwMDAwZmZmZmZm
ZmYKPDQ+IFszNDEuODkwNzA3XSBSQlA6IDAwMDAwMDAwMDAwMDAwMDIgUjA4OiAwMDAwMDAwMDAw
MDAwMDAwIFIwOTogMDAwMDAwMDAwMDAwMDAwMAo8ND4gWzM0MS44OTA3MTVdIFIxMDogMDAwMDAw
MDAwMDAwMGM4MCBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiBmZmZmODg4MjY3NTk5ZmU4Cjw0
PiBbMzQxLjg5MDcyMl0gUjEzOiAwMDAwMDAwMDAwMDAwYzgwIFIxNDogMDAwMDAwMDAwMDAwMDcw
OCBSMTU6IDAwMDAwMDAwMDAwMDAwMDcKPDQ+IFszNDEuODkwNzMwXSBGUzogIDAwMDAwMDAwMDAw
MDAwMDAoMDAwMCkgR1M6ZmZmZjg4ODI3NjIwMDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAw
MDAwCjw0PiBbMzQxLjg5MDczOV0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAw
MDAwMDA4MDA1MDAzMwo8ND4gWzM0MS44OTA3NDVdIENSMjogMDAwMDU1YTRlMDY0ZjRhMCBDUjM6
IDAwMDAwMDAyNmQyMzQwMDMgQ1I0OiAwMDAwMDAwMDAwMzYwNmYwCjw0PiBbMzQxLjg5MDc1Ml0g
Q2FsbCBUcmFjZToKPDQ+IFszNDEuODkwNzYwXSAgZHJtX2ZiX2hlbHBlcl9ob3RwbHVnX2V2ZW50
LnBhcnQuMjQrMHg4OS8weGIwCjw0PiBbMzQxLjg5MDc2OF0gIGRybV9rbXNfaGVscGVyX2hvdHBs
dWdfZXZlbnQrMHgyMS8weDMwCjw0PiBbMzQxLjg5MDc3NF0gIG91dHB1dF9wb2xsX2V4ZWN1dGUr
MHg5ZC8weDFhMAo8ND4gWzM0MS44OTA3ODJdICBwcm9jZXNzX29uZV93b3JrKzB4MjQ1LzB4NjEw
Cjw0PiBbMzQxLjg5MDc5MF0gIHdvcmtlcl90aHJlYWQrMHgzNy8weDM4MAo8ND4gWzM0MS44OTA3
OTZdICA/IHByb2Nlc3Nfb25lX3dvcmsrMHg2MTAvMHg2MTAKPDQ+IFszNDEuODkwODAyXSAga3Ro
cmVhZCsweDExOS8weDEzMAo8ND4gWzM0MS44OTA4MDhdICA/IGt0aHJlYWRfcGFyaysweDgwLzB4
ODAKPDQ+IFszNDEuODkwODE1XSAgcmV0X2Zyb21fZm9yaysweDNhLzB4NTAKCkJ1Z3ppbGxhOiBo
dHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDk5NjQKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYyB8IDkgKysrKysrKystCiAxIGZpbGUgY2hh
bmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJvYmVf
aGVscGVyLmMKaW5kZXggNDNjODVlMWI0NjdlLi4wMWUyNDNmMWVhOTQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fcHJvYmVfaGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ry
bV9wcm9iZV9oZWxwZXIuYwpAQCAtNTc1LDYgKzU3NSw5IEBAIHN0YXRpYyB2b2lkIG91dHB1dF9w
b2xsX2V4ZWN1dGUoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCWVudW0gZHJtX2Nvbm5lY3Rv
cl9zdGF0dXMgb2xkX3N0YXR1czsKIAlib29sIHJlcG9sbCA9IGZhbHNlLCBjaGFuZ2VkOwogCisJ
aWYgKCFkZXYtPm1vZGVfY29uZmlnLnBvbGxfZW5hYmxlZCkKKwkJcmV0dXJuOworCiAJLyogUGlj
ayB1cCBhbnkgY2hhbmdlcyBkZXRlY3RlZCBieSB0aGUgcHJvYmUgZnVuY3Rpb25zLiAqLwogCWNo
YW5nZWQgPSBkZXYtPm1vZGVfY29uZmlnLmRlbGF5ZWRfZXZlbnQ7CiAJZGV2LT5tb2RlX2NvbmZp
Zy5kZWxheWVkX2V2ZW50ID0gZmFsc2U7CkBAIC03MjksNyArNzMyLDExIEBAIEVYUE9SVF9TWU1C
T0woZHJtX2ttc19oZWxwZXJfcG9sbF9pbml0KTsKICAqLwogdm9pZCBkcm1fa21zX2hlbHBlcl9w
b2xsX2Zpbmkoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIHsKLQlkcm1fa21zX2hlbHBlcl9wb2xs
X2Rpc2FibGUoZGV2KTsKKwlpZiAoIWRldi0+bW9kZV9jb25maWcucG9sbF9lbmFibGVkKQorCQly
ZXR1cm47CisKKwlkZXYtPm1vZGVfY29uZmlnLnBvbGxfZW5hYmxlZCA9IGZhbHNlOworCWNhbmNl
bF9kZWxheWVkX3dvcmtfc3luYygmZGV2LT5tb2RlX2NvbmZpZy5vdXRwdXRfcG9sbF93b3JrKTsK
IH0KIEVYUE9SVF9TWU1CT0woZHJtX2ttc19oZWxwZXJfcG9sbF9maW5pKTsKIAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

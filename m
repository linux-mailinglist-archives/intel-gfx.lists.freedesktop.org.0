Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A2E16397A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 02:42:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6F46EAF5;
	Wed, 19 Feb 2020 01:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0430B6E03E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 01:41:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 17:41:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="408278159"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.232])
 by orsmga005.jf.intel.com with ESMTP; 18 Feb 2020 17:41:53 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:42:28 -0800
Message-Id: <20200219014230.145601-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Deactive FBC in
 fastsets when disabled by parameter
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9zdCBvZiB0aGUga21zX2Zyb250YnVmZmVyX3RyYWNraW5nIHRlc3RzIGRpc2FibGVzIHRoZSBm
ZWF0dXJlIGJlaW5nCnRlc3RlZCwgZHJhdywgZ2V0IHRoZSBDUkMgdGhlbiBlbmFibGUgdGhlIGZl
YXR1cmUsIGRyYXcgYWdhaW4sIGdldCB0aGUKQ1JDIGFuZCBjaGVjayBpZiBpdCBtYXRjaGVzLgpT
b21lIHRpbWVzIGl0IGlzIGFibGUgdG8gZG8gdGhhdCB3aXRoIGEgZmFzdHNldCwgc28KaW50ZWxf
cHJlX3BsYW5lX3VwZGF0ZSgpIGlzIGV4ZWN1dGVkIGJ1dCBpbnRlbF9mYmNfY2FuX2ZsaXBfbnVr
ZSgpIHdhcwpub3QgY2hlY2tpbmcgaWYgRkJDIGlzIG5vdyBlbmFibGVkIGluIHRoaXMgQ1JUQyBs
ZWF2aW5nIEZCQyBhY3RpdmUgYW5kCmNhdXNpbmcgdGhlIHdhcm5pbmcgYmVsbG93IGluIF9faW50
ZWxfZmJjX2Rpc2FibGUoKQoKW0lHVF0ga21zX2Zyb250YnVmZmVyX3RyYWNraW5nOiBzdGFydGlu
ZyBzdWJ0ZXN0IGZiYy0xcC1wcmktaW5kZmItbXVsdGlkcmF3ClNldHRpbmcgZGFuZ2Vyb3VzIG9w
dGlvbiBlbmFibGVfZmJjIC0gdGFpbnRpbmcga2VybmVsCmk5MTUgMDAwMDowMDowMi4wOiBbZHJt
Omk5MTVfZWRwX3Bzcl9kZWJ1Z19zZXQgW2k5MTVdXSBTZXR0aW5nIFBTUiBkZWJ1ZyB0byBmCmk5
MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX3Bzcl9kZWJ1Z19zZXQgW2k5MTVdXSBJbnZhbGlk
IGRlYnVnIG1hc2sgZgppOTE1IDAwMDA6MDA6MDIuMDogW2RybTppOTE1X2VkcF9wc3JfZGVidWdf
c2V0IFtpOTE1XV0gU2V0dGluZyBQU1IgZGVidWcgdG8gMQppOTE1IDAwMDA6MDA6MDIuMDogW2Ry
bTppbnRlbF9hdG9taWNfY2hlY2sgW2k5MTVdXSBbQ09OTkVDVE9SOjIxNTplRFAtMV0gTGltaXRp
bmcgZGlzcGxheSBicHAgdG8gMjQgaW5zdGVhZCBvZiBFRElEIGJwcCAyNCwgcmVxdWVzdGVkIGJw
cCAzNiwgbWF4IHBsYXRmb3JtIGJwcCAzNgpbZHJtOmludGVsX2RwX2NvbXB1dGVfY29uZmlnIFtp
OTE1XV0gRFAgbGluayBjb21wdXRhdGlvbiB3aXRoIG1heCBsYW5lIGNvdW50IDIgbWF4IHJhdGUg
MjcwMDAwIG1heCBicHAgMjQgcGl4ZWwgY2xvY2sgMTM4MTIwS0h6Cltkcm06aW50ZWxfZHBfY29t
cHV0ZV9jb25maWcgW2k5MTVdXSBGb3JjZSBEU0MgZW4gPSAwCltkcm06aW50ZWxfZHBfY29tcHV0
ZV9jb25maWcgW2k5MTVdXSBEUCBsYW5lIGNvdW50IDIgY2xvY2sgMjcwMDAwIGJwcCAyNApbZHJt
OmludGVsX2RwX2NvbXB1dGVfY29uZmlnIFtpOTE1XV0gRFAgbGluayByYXRlIHJlcXVpcmVkIDQx
NDM2MCBhdmFpbGFibGUgNTQwMDAwCmk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX2F0b21p
Y19jaGVjayBbaTkxNV1dIGh3IG1heCBicHA6IDI0LCBwaXBlIGJwcDogMjQsIGRpdGhlcmluZzog
MAppOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9kdW1wX3BpcGVfY29uZmlnIFtpOTE1XV0g
W0NSVEM6OTE6cGlwZSBBXSBlbmFibGU6IHllcyBbZmFzdHNldF0KaTkxNSAwMDAwOjAwOjAyLjA6
IFtkcm06aW50ZWxfZHVtcF9waXBlX2NvbmZpZyBbaTkxNV1dIGFjdGl2ZTogeWVzLCBvdXRwdXRf
dHlwZXM6IEVEUCAoMHgxMDApLCBvdXRwdXQgZm9ybWF0OiBSR0IKaTkxNSAwMDAwOjAwOjAyLjA6
IFtkcm06aW50ZWxfZHVtcF9waXBlX2NvbmZpZyBbaTkxNV1dIGNwdV90cmFuc2NvZGVyOiBFRFAs
IHBpcGUgYnBwOiAyNCwgZGl0aGVyaW5nOiAwCmk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVs
X2R1bXBfcGlwZV9jb25maWcgW2k5MTVdXSBkcCBtX246IGxhbmVzOiAyOyBnbWNoX206IDY0MzY4
NTgsIGdtY2hfbjogODM4ODYwOCwgbGlua19tOiAyNjgyMDIsIGxpbmtfbjogNTI0Mjg4LCB0dTog
NjQKaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aW50ZWxfZHVtcF9waXBlX2NvbmZpZyBbaTkxNV1d
IGF1ZGlvOiAwLCBpbmZvZnJhbWVzOiAwLCBpbmZvZnJhbWVzIGVuYWJsZWQ6IDB4MAppOTE1IDAw
MDA6MDA6MDIuMDogW2RybTppbnRlbF9kdW1wX3BpcGVfY29uZmlnIFtpOTE1XV0gcmVxdWVzdGVk
IG1vZGU6Cltkcm06ZHJtX21vZGVfZGVidWdfcHJpbnRtb2RlbGluZV0gTW9kZWxpbmUgIjE5MjB4
MTA4MCI6IDYwIDEzODEyMCAxOTIwIDE5NjggMjAxOCAyMDUyIDEwODAgMTA4NCAxMDg2IDExMjIg
MHg0OCAweGEKaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aW50ZWxfZHVtcF9waXBlX2NvbmZpZyBb
aTkxNV1dIGFkanVzdGVkIG1vZGU6Cltkcm06ZHJtX21vZGVfZGVidWdfcHJpbnRtb2RlbGluZV0g
TW9kZWxpbmUgIjE5MjB4MTA4MCI6IDYwIDEzODEyMCAxOTIwIDE5NjggMjAxOCAyMDUyIDEwODAg
MTA4NCAxMDg2IDExMjIgMHg0OCAweGEKW2RybTppbnRlbF9kdW1wX3BpcGVfY29uZmlnIFtpOTE1
XV0gY3J0YyB0aW1pbmdzOiAxMzgxMjAgMTkyMCAxOTY4IDIwMTggMjA1MiAxMDgwIDEwODQgMTA4
NiAxMTIyLCB0eXBlOiAweDQ4IGZsYWdzOiAweGEKaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aW50
ZWxfZHVtcF9waXBlX2NvbmZpZyBbaTkxNV1dIHBvcnQgY2xvY2s6IDI3MDAwMCwgcGlwZSBzcmMg
c2l6ZTogMTkyMHgxMDgwLCBwaXhlbCByYXRlIDEzODEyMAppOTE1IDAwMDA6MDA6MDIuMDogW2Ry
bTppbnRlbF9kdW1wX3BpcGVfY29uZmlnIFtpOTE1XV0gbGluZXRpbWU6IDExOSwgaXBzIGxpbmV0
aW1lOiAwCmk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX2R1bXBfcGlwZV9jb25maWcgW2k5
MTVdXSBudW1fc2NhbGVyczogMiwgc2NhbGVyX3VzZXJzOiAweDAsIHNjYWxlcl9pZDogLTEKaTkx
NSAwMDAwOjAwOjAyLjA6IFtkcm06aW50ZWxfZHVtcF9waXBlX2NvbmZpZyBbaTkxNV1dIHBjaCBw
Zml0OiBwb3M6IDB4MDAwMDAwMDAsIHNpemU6IDB4MDAwMDAwMDAsIGRpc2FibGVkLCBmb3JjZSB0
aHJ1OiBubwppOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9kdW1wX3BpcGVfY29uZmlnIFtp
OTE1XV0gaXBzOiAwLCBkb3VibGUgd2lkZTogMApbZHJtOmljbF9kdW1wX2h3X3N0YXRlIFtpOTE1
XV0gZHBsbF9od19zdGF0ZTogY2ZnY3IwOiAweDFjMDAxYTUsIGNmZ2NyMTogMHg4YiwgbWdfcmVm
Y2xraW5fY3RsOiAweDAsIGhnX2Nsa3RvcDJfY29yZWNsa2N0bDE6IDB4MCwgbWdfY2xrdG9wMl9o
c2Nsa2N0bDogMHgwLCBtZ19wbGxfZGl2MDogMHgwLCBtZ19wbGxfZGl2MjogMHgwLCBtZ19wbGxf
bGY6IDB4MCwgbWdfcGxsX2ZyYWNfbG9jazogMHgwLCBtZ19wbGxfc3NjOiAweDAsIG1nX3BsbF9i
aWFzOiAweDAsIG1nX3BsbF90ZGNfY29sZHN0X2JpYXM6IDB4MAppOTE1IDAwMDA6MDA6MDIuMDog
W2RybTppbnRlbF9kdW1wX3BpcGVfY29uZmlnIFtpOTE1XV0gY3NjX21vZGU6IDB4MCBnYW1tYV9t
b2RlOiAweDAgZ2FtbWFfZW5hYmxlOiAwIGNzY19lbmFibGU6IDAKaTkxNSAwMDAwOjAwOjAyLjA6
IFtkcm06aW50ZWxfZHVtcF9waXBlX2NvbmZpZyBbaTkxNV1dIE1TVCBtYXN0ZXIgdHJhbnNjb2Rl
cjogPGludmFsaWQ+Cmk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX2R1bXBfcGlwZV9jb25m
aWcgW2k5MTVdXSBbUExBTkU6MzE6cGxhbmUgMUFdIGZiOiBbRkI6MjYyXSAxOTIweDEwODAgZm9y
bWF0ID0gWFIyNCBsaXR0bGUtZW5kaWFuICgweDM0MzI1MjU4KSwgdmlzaWJsZTogeWVzCmk5MTUg
MDAwMDowMDowMi4wOiBbZHJtOmludGVsX2R1bXBfcGlwZV9jb25maWcgW2k5MTVdXSAJcm90YXRp
b246IDB4MSwgc2NhbGVyOiAtMQppOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9kdW1wX3Bp
cGVfY29uZmlnIFtpOTE1XV0gCXNyYzogMTkyMC4wMDAwMDB4MTA4MC4wMDAwMDArMC4wMDAwMDAr
MC4wMDAwMDAgZHN0OiAxOTIweDEwODArMCswCmk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVs
X3Bzcl9kaXNhYmxlX2xvY2tlZCBbaTkxNV1dIERpc2FibGluZyBQU1IxCmk5MTUgMDAwMDowMDow
Mi4wOiBbZHJtOmludGVsX2RkaV91cGRhdGVfcGlwZSBbaTkxNV1dIFBhbmVsIGRvZXNuJ3Qgc3Vw
cG9ydCBEUlJTCi0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQppOTE1IDAwMDA6
MDA6MDIuMDogZHJtX1dBUk5fT04oZmJjLT5hY3RpdmUpCldBUk5JTkc6IENQVTogNCBQSUQ6IDEx
NzUgYXQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYzo5NzMgX19pbnRl
bF9mYmNfZGlzYWJsZSsweGE1LzB4MTMwIFtpOTE1XQpNb2R1bGVzIGxpbmtlZCBpbjogc25kX2hk
YV9jb2RlY19oZG1pIHNuZF9oZGFfY29kZWNfcmVhbHRlayBzbmRfaGRhX2NvZGVjX2dlbmVyaWMg
aTkxNSBtZWlfaGRjcCB4ODZfcGtnX3RlbXBfdGhlcm1hbCBjb3JldGVtcCBjcmN0MTBkaWZfcGNs
bXVsIHNuZF9oZGFfaW50ZWwgY3JjMzJfcGNsbXVsIHNuZF9pbnRlbF9kc3BjZmcgc25kX2hkYV9j
b2RlYyBnaGFzaF9jbG11bG5pX2ludGVsIHNuZF9od2RlcCBzbmRfaGRhX2NvcmUgY2RjX2V0aGVy
IGUxMDAwZSB1c2JuZXQgbWlpIHNuZF9wY20gcHRwIG1laV9tZSBwcHNfY29yZSBtZWkgdGh1bmRl
cmJvbHQgaW50ZWxfbHBzc19wY2kgcHJpbWVfbnVtYmVycwpDUFU6IDQgUElEOiAxMTc1IENvbW06
IGttc19mcm9udGJ1ZmZlciBUYWludGVkOiBHICAgICBVICAgICAgICAgICAgNS41LjAtQ0ktVHJ5
Ym90XzU2NTErICMxCkhhcmR3YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIEljZSBMYWtlIENs
aWVudCBQbGF0Zm9ybS9JY2VMYWtlIFUgRERSNCBTT0RJTU0gUEQgUlZQIFRMQywgQklPUyBJQ0xT
RldSMS5SMDAuMzIzNC5BMDEuMTkwNjE0MTc1MCAwNi8xNC8yMDE5ClJJUDogMDAxMDpfX2ludGVs
X2ZiY19kaXNhYmxlKzB4YTUvMHgxMzAgW2k5MTVdCkNvZGU6IDhiIDY3IDUwIDRkIDg1IGU0IDBm
IDg0IDhmIDAwIDAwIDAwIGU4IDQ0IDMzIDMwIGUxIDQ4IGM3IGMxIDcyIGY2IDRjIGEwIDRjIDg5
IGUyIDQ4IDg5IGM2IDQ4IGM3IGM3IDQyIGY2IDRjIGEwIGU4IDBiIDlkIGNlIGUwIDwwZj4gMGIg
ZWIgOTAgNDggOGIgN2IgMTggNGMgOGIgNjcgNTAgNGQgODUgZTQgNzQgNmQgZTggMTUgMzMgMzAg
ZTEKUlNQOiAwMDE4OmZmZmZjOTAwMDA2MTNiNjggRUZMQUdTOiAwMDAxMDI4MgpSQVg6IDAwMDAw
MDAwMDAwMDAwMDAgUkJYOiBmZmZmODg4NDc5OWQwMDAwIFJDWDogMDAwMDAwMDAwMDAwMDAwNgpS
RFg6IDAwMDAwMDAwMDAwMDE5MDUgUlNJOiBmZmZmODg4NDk1ZGFjOTcwIFJESTogZmZmZmZmZmY4
MjM3MzFhMQpSQlA6IGZmZmY4ODg0N2MwNWQwMDAgUjA4OiBmZmZmODg4NDk1ZGFjOTcwIFIwOTog
MDAwMDAwMDAwMDAwMDAwMApSMTA6IGZmZmZjOTAwMDA2MTNiODggUjExOiAwMDAwMDAwMDAwMDAw
MDAwIFIxMjogZmZmZjg4ODQ5YmJhN2U0MApSMTM6IGZmZmY4ODg0Nzk5ZDAwMDAgUjE0OiBmZmZm
ODg4NDk4NTY0MDAwIFIxNTogMDAwMDAwMDAwMDAwMDAwMApGUzogIDAwMDA3ZjgxNTdmMDgzMDAo
MDAwMCkgR1M6ZmZmZjg4ODRhMDAwMDAwMCgwMDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCkNT
OiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKQ1IyOiAwMDAw
N2ZmZGJmZWEyZWI4IENSMzogMDAwMDAwMDQ5ZDFjYzAwMSBDUjQ6IDAwMDAwMDAwMDA3NjBlZTAK
UEtSVTogNTU1NTU1NTQKQ2FsbCBUcmFjZToKIGludGVsX2ZiY19kaXNhYmxlKzB4NGEvMHg1MCBb
aTkxNV0KIGludGVsX3VwZGF0ZV9jcnRjKzB4MTJjLzB4MWQwIFtpOTE1XQogc2tsX2NvbW1pdF9t
b2Rlc2V0X2VuYWJsZXMrMHgxNGQvMHg2MDAgW2k5MTVdCiBpbnRlbF9hdG9taWNfY29tbWl0X3Rh
aWwrMHgzMGQvMHgxNDgwIFtpOTE1XQogPyBxdWV1ZV93b3JrX29uKzB4MzEvMHg3MAogPyBpbnRl
bF9hdG9taWNfY29tbWl0X3JlYWR5KzB4M2YvMHg0OCBbaTkxNV0KID8gX19pOTE1X3N3X2ZlbmNl
X2NvbXBsZXRlKzB4MWEwLzB4MjUwIFtpOTE1XQogaW50ZWxfYXRvbWljX2NvbW1pdCsweDMxMi8w
eDM5MCBbaTkxNV0KIGludGVsX3Bzcl9mYXN0c2V0X2ZvcmNlKzB4MTE5LzB4MTUwIFtpOTE1XQog
aTkxNV9lZHBfcHNyX2RlYnVnX3NldCsweDUzLzB4NzAgW2k5MTVdCiBzaW1wbGVfYXR0cl93cml0
ZSsweGIwLzB4ZDAKIGZ1bGxfcHJveHlfd3JpdGUrMHg1MS8weDgwCiB2ZnNfd3JpdGUrMHhiOS8w
eDFkMAoga3N5c193cml0ZSsweDlmLzB4ZTAKIGRvX3N5c2NhbGxfNjQrMHg0Zi8weDIyMAogZW50
cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDkvMHhiZQpSSVA6IDAwMzM6MHg3ZjgxNTcy
NDAyODEKQ29kZTogYzMgMGYgMWYgODQgMDAgMDAgMDAgMDAgMDAgNDggOGIgMDUgNTkgOGQgMjAg
MDAgYzMgMGYgMWYgODQgMDAgMDAgMDAgMDAgMDAgOGIgMDUgOGEgZDEgMjAgMDAgODUgYzAgNzUg
MTYgYjggMDEgMDAgMDAgMDAgMGYgMDUgPDQ4PiAzZCAwMCBmMCBmZiBmZiA3NyA1NyBmMyBjMyAw
ZiAxZiA0NCAwMCAwMCA0MSA1NCA1NSA0OSA4OSBkNCA1MwpSU1A6IDAwMmI6MDAwMDdmZmRiZmVh
NTlkOCBFRkxBR1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAwMDAwMDAwMDAwMDAwMDAxClJBWDogZmZm
ZmZmZmZmZmZmZmZkYSBSQlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiAwMDAwN2Y4MTU3MjQwMjgx
ClJEWDogMDAwMDAwMDAwMDAwMDAwMyBSU0k6IDAwMDA3ZjgxNTc5MDExNTIgUkRJOiAwMDAwMDAw
MDAwMDAwMDA4ClJCUDogMDAwMDAwMDAwMDAwMDAwMyBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5
OiAwMDAwMDAwMDAwMDAwMDAwClIxMDogMDAwMDAwMDAwMDAwMDAwMCBSMTE6IDAwMDAwMDAwMDAw
MDAyNDYgUjEyOiAwMDAwN2Y4MTU3OTAxMTUyClIxMzogMDAwMDAwMDAwMDAwMDAwOCBSMTQ6IDAw
MDA1NTg5ZDI5OGRjZTAgUjE1OiAwMDAwMDAwMDAwMDAwMDAwCmlycSBldmVudCBzdGFtcDogNTUy
MDgKaGFyZGlycXMgbGFzdCAgZW5hYmxlZCBhdCAoNTUyMDcpOiBbPGZmZmZmZmZmODExMmYzZmM+
XSB2cHJpbnRrX2VtaXQrMHhjYy8weDMzMApoYXJkaXJxcyBsYXN0IGRpc2FibGVkIGF0ICg1NTIw
OCk6IFs8ZmZmZmZmZmY4MTAwMWNhMD5dIHRyYWNlX2hhcmRpcnFzX29mZl90aHVuaysweDFhLzB4
MWMKc29mdGlycXMgbGFzdCAgZW5hYmxlZCBhdCAoNTQ5MjYpOiBbPGZmZmZmZmZmODFlMDAzODU+
XSBfX2RvX3NvZnRpcnErMHgzODUvMHg0N2YKc29mdGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoNTQ5
MTUpOiBbPGZmZmZmZmZmODEwYmExNWE+XSBpcnFfZXhpdCsweGJhLzB4YzAKLS0tWyBlbmQgdHJh
Y2UgYWZhNTBjNTJlNWE1MTJiYiBdLS0tCltkcm06X19pbnRlbF9mYmNfZGlzYWJsZSBbaTkxNV1d
IERpc2FibGluZyBGQkMgb24gcGlwZSBBCmk5MTUgMDAwMDowMDowMi4wOiBbZHJtOnZlcmlmeV9j
b25uZWN0b3Jfc3RhdGUgW2k5MTVdXSBbQ09OTkVDVE9SOjIxNTplRFAtMV0KaTkxNSAwMDAwOjAw
OjAyLjA6IFtkcm06aW50ZWxfYXRvbWljX2NvbW1pdF90YWlsIFtpOTE1XV0gW0NSVEM6OTE6cGlw
ZSBBXQpbZHJtOmludGVsX2RkaV9nZXRfY29uZmlnIFtpOTE1XV0gW0VOQ09ERVI6MjE0OkRESSBB
XSBGZWMgc3RhdHVzOiAwCmk5MTUgMDAwMDowMDowMi4wOiBbZHJtOnZlcmlmeV9zaW5nbGVfZHBs
bF9zdGF0ZS5pc3JhLjE1MCBbaTkxNV1dIERQTEwgMAoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IGRkZjhk
M2JiN2E3ZC4uYTYwMzhmZTc0ZjYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMKQEAgLTg1Niw2ICs4NTYsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2Zs
aXBfbnVrZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlpZiAo
ZHJtX2F0b21pY19jcnRjX25lZWRzX21vZGVzZXQoJmNydGNfc3RhdGUtPnVhcGkpKQogCQlyZXR1
cm4gZmFsc2U7CiAKKwlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9mYmMpCisJCXJldHVybiBmYWxz
ZTsKKwogCWlmICghcGFyYW1zLT5wbGFuZV92aXNpYmxlKQogCQlyZXR1cm4gZmFsc2U7CiAKLS0g
CjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==

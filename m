Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E1C48288
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 14:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C53A89186;
	Mon, 17 Jun 2019 12:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA5E89186
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 12:34:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 05:34:06 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 17 Jun 2019 05:34:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Jun 2019 15:34:03 +0300
Date: Mon, 17 Jun 2019 15:34:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190617123402.GH5942@intel.com>
References: <20190614103941.15399-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614103941.15399-1-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check visibility in
 icl_build_plane_wm
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

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMTI6Mzk6NDFQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gV2hlbiBhIHBsYW5hciBZVVYgcGxhbmUgaXMgY29uZmlndXJlZCwgYnV0IHRo
ZSBjcnRjIGlzCj4gbWFya2VkIGluYWN0aXZlLCB3ZSBjYW4gZW5kIHVwIHdpdGggYSBsaW5rZWQg
cGxhbmUgd2l0aG91dAo+IHZpc2liaWxpdHkuCgpIb3cgaXMgdGhhdCBwb3NzaWJsZT8gSSBkb24n
dCB0aGluayB3ZSBzaG91bGQgYmUgYWRkaW5nIHRoZSBzbGF2ZSBwbGFuZQppZiB0aGUgbWFzdGVy
IGlzIG5vdCB2aXNpYmxlLgoKPiBIYW5kbGUgdGhpcyBieSBjaGVja2luZyBmb3IgdmlzaWJpbGl0
eSBlYXJseSwKPiBpbnN0ZWFkIG9mIGRvaW5nIGEgV0FSTi4KPiAKPiA8ND4gWzIwMS43NDI5MTld
IC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+IDw0PiBbMjAxLjc0MjkyMF0g
V0FSTl9PTighaW50ZWxfd21fcGxhbmVfdmlzaWJsZShjcnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSkp
Cj4gPDQ+IFsyMDEuNzQyOTQ3XSBXQVJOSU5HOiBDUFU6IDcgUElEOiAxMjY4IGF0IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmM6NTA2OCBza2xfY29tcHV0ZV93bSsweDJiZS8weDEwYTAg
W2k5MTVdCj4gPDQ+IFsyMDEuNzQyOTQ4XSBNb2R1bGVzIGxpbmtlZCBpbjogc25kX2hkYV9jb2Rl
Y19oZG1pIHNuZF9oZGFfY29kZWNfcmVhbHRlayBzbmRfaGRhX2NvZGVjX2dlbmVyaWMgaTkxNSB4
ODZfcGtnX3RlbXBfdGhlcm1hbCBzbmRfaGRhX2ludGVsIGNvcmV0ZW1wIHNuZF9oZGFfY29kZWMg
bWVpX2hkY3Agc25kX2h3ZGVwIHNuZF9oZGFfY29yZSBjcmN0MTBkaWZfcGNsbXVsIGNkY19ldGhl
ciB1c2JuZXQgY3JjMzJfcGNsbXVsIG1paSBzbmRfcGNtIGdoYXNoX2NsbXVsbmlfaW50ZWwgbWVp
X21lIG1laSBwcmltZV9udW1iZXJzCj4gPDQ+IFsyMDEuNzQyOTU4XSBDUFU6IDcgUElEOiAxMjY4
IENvbW06IGttc19jaGFtZWxpdW0gVGFpbnRlZDogRyAgICAgVSAgICAgICAgICAgIDUuMi4wLXJj
My1DSS1DSV9EUk1fNjIxNisgIzEKPiA8ND4gWzIwMS43NDI5NjBdIEhhcmR3YXJlIG5hbWU6IElu
dGVsIENvcnBvcmF0aW9uIEljZSBMYWtlIENsaWVudCBQbGF0Zm9ybS9JY2VMYWtlIFUgRERSNCBT
T0RJTU0gUEQgUlZQIFRMQywgQklPUyBJQ0xTRldSMS5SMDAuMzE4My5BMDAuMTkwNTAyMDQxMSAw
NS8wMi8yMDE5Cj4gPDQ+IFsyMDEuNzQyOTc4XSBSSVA6IDAwMTA6c2tsX2NvbXB1dGVfd20rMHgy
YmUvMHgxMGEwIFtpOTE1XQo+IDw0PiBbMjAxLjc0Mjk4MF0gQ29kZTogMjQgMTAgOGIgOTIgZmMg
MDIgMDAgMDAgMGYgODUgYmEgMDQgMDAgMDAgNDggYzcgYzYgZTAgMzggMmUgYTAgNDggYzcgYzcg
OTMgOTkgMzEgYTAgODkgNTQgMjQgMjAgNDggODkgNDQgMjQgMDggZTggODIgYTIgZjUgZTAgPDBm
PiAwYiA4YiA1NCAyNCAyMCA0OCA4YiA0NCAyNCAwOCA0OCA4YiA0MCA0OCA4MCA3OCAxMiAwMCAw
ZiA4NSA3Ngo+IDw0PiBbMjAxLjc0Mjk4MV0gUlNQOiAwMDE4OmZmZmZjOTAwMDA2NGY5YTggRUZM
QUdTOiAwMDAxMDI4Mgo+IDw0PiBbMjAxLjc0Mjk4M10gUkFYOiAwMDAwMDAwMDAwMDAwMDAwIFJC
WDogMDAwMDAwMDAwMDAwMDAwMCBSQ1g6IDAwMDAwMDAwMDAwMDAwMDcKPiA8ND4gWzIwMS43NDI5
ODRdIFJEWDogMDAwMDAwMDAwMDAwMTc1YyBSU0k6IGZmZmY4ODg0OTM0ZDQ4ZTAgUkRJOiBmZmZm
ZmZmZjgyMTJkZjQ5Cj4gPDQ+IFsyMDEuNzQyOTg1XSBSQlA6IGZmZmY4ODg0OTM0MDg1NTggUjA4
OiAwMDAwMDAwMGI1NmRhYjQ0IFIwOTogMDAwMDAwMDAwMDAwMDAwMAo+IDw0PiBbMjAxLjc0Mjk4
Nl0gUjEwOiBmZmZmODg4NDhiZTAwMDAwIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IGZmZmY4
ODg0OWFmZDg5ZjgKPiA8ND4gWzIwMS43NDI5ODddIFIxMzogZmZmZjg4ODQ3ZWFmNjdlOCBSMTQ6
IGZmZmY4ODg0OGMzNDRhODggUjE1OiBmZmZmODg4NDhiZTAwMDAwCj4gPDQ+IFsyMDEuNzQyOTg4
XSBGUzogIDAwMDA3ZjRkOWI2MGI3MDAoMDAwMCkgR1M6ZmZmZjg4ODQ5ZmY4MDAwMCgwMDAwKSBr
bmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gPDQ+IFsyMDEuNzQyOTg5XSBDUzogIDAwMTAgRFM6IDAw
MDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4gPDQ+IFsyMDEuNzQyOTkxXSBDUjI6
IDAwMDA3ZjRkOWI2MDlmZjggQ1IzOiAwMDAwMDAwNDhjMzI2MDA2IENSNDogMDAwMDAwMDAwMDc2
MGVlMAo+IDw0PiBbMjAxLjc0Mjk5Ml0gUEtSVTogNTU1NTU1NTQKPiA8ND4gWzIwMS43NDI5OTNd
IENhbGwgVHJhY2U6Cj4gPDQ+IFsyMDEuNzQzMDIxXSAgPyBpbnRlbF9hdG9taWNfY2hlY2srMHg3
YjIvMHgxNDQwIFtpOTE1XQo+IDw0PiBbMjAxLjc0MzAyNl0gID8gX19tdXRleF91bmxvY2tfc2xv
d3BhdGgrMHg0Ni8weDJiMAo+IDw0PiBbMjAxLjc0MzA1Ml0gIGludGVsX2F0b21pY19jaGVjaysw
eDdjYS8weDE0NDAgW2k5MTVdCj4gPDQ+IFsyMDEuNzQzMDYwXSAgZHJtX2F0b21pY19jaGVja19v
bmx5KzB4NTVhLzB4N2YwCj4gPDQ+IFsyMDEuNzQzMDY0XSAgZHJtX2F0b21pY19jb21taXQrMHhl
LzB4NTAKPiA8ND4gWzIwMS43NDMwNjddICBkcm1fYXRvbWljX2Nvbm5lY3Rvcl9jb21taXRfZHBt
cysweGUwLzB4ZjAKPiA8ND4gWzIwMS43NDMwNjldICBzZXRfcHJvcGVydHlfYXRvbWljKzB4YmEv
MHgxNDAKPiA8ND4gWzIwMS43NDMwNzVdICBkcm1fbW9kZV9vYmpfc2V0X3Byb3BlcnR5X2lvY3Rs
KzB4MTExLzB4MWQwCj4gPDQ+IFsyMDEuNzQzMDc3XSAgPyBkcm1fZGV2X2V4aXQrMHg4LzB4NDAK
PiA8ND4gWzIwMS43NDMwODBdICA/IGRybV9jb25uZWN0b3Jfc2V0X29ial9wcm9wKzB4NzAvMHg3
MAo+IDw0PiBbMjAxLjc0MzA4Ml0gIGRybV9jb25uZWN0b3JfcHJvcGVydHlfc2V0X2lvY3RsKzB4
MzkvMHg2MAo+IDw0PiBbMjAxLjc0MzA4NF0gIGRybV9pb2N0bF9rZXJuZWwrMHg4My8weGYwCj4g
PDQ+IFsyMDEuNzQzMDg3XSAgZHJtX2lvY3RsKzB4MmYzLzB4M2IwCj4gPDQ+IFsyMDEuNzQzMDkw
XSAgPyBkcm1fY29ubmVjdG9yX3NldF9vYmpfcHJvcCsweDcwLzB4NzAKPiA8ND4gWzIwMS43NDMw
OTZdICA/IGxvY2tfYWNxdWlyZSsweGE2LzB4MWMwCj4gPDQ+IFsyMDEuNzQzMTAwXSAgZG9fdmZz
X2lvY3RsKzB4YTAvMHg2ZTAKPiA8ND4gWzIwMS43NDMxMDNdICA/IF9fZmdldCsweDEwZi8weDIw
MAo+IDw0PiBbMjAxLjc0MzEwNV0gIGtzeXNfaW9jdGwrMHgzNS8weDYwCj4gPDQ+IFsyMDEuNzQz
MTA4XSAgX194NjRfc3lzX2lvY3RsKzB4MTEvMHgyMAo+IDw0PiBbMjAxLjc0MzExMF0gIGRvX3N5
c2NhbGxfNjQrMHg1NS8weDFjMAo+IDw0PiBbMjAxLjc0MzExMl0gIGVudHJ5X1NZU0NBTExfNjRf
YWZ0ZXJfaHdmcmFtZSsweDQ5LzB4YmUKPiA8ND4gWzIwMS43NDMxMTRdIFJJUDogMDAzMzoweDdm
NGRhNmM4ZDVkNwo+IDw0PiBbMjAxLjc0MzExNV0gQ29kZTogYjMgNjYgOTAgNDggOGIgMDUgYjEg
NDggMmQgMDAgNjQgYzcgMDAgMjYgMDAgMDAgMDAgNDggYzcgYzAgZmYgZmYgZmYgZmYgYzMgNjYg
MmUgMGYgMWYgODQgMDAgMDAgMDAgMDAgMDAgYjggMTAgMDAgMDAgMDAgMGYgMDUgPDQ4PiAzZCAw
MSBmMCBmZiBmZiA3MyAwMSBjMyA0OCA4YiAwZCA4MSA0OCAyZCAwMCBmNyBkOCA2NCA4OSAwMSA0
OAo+IDw0PiBbMjAxLjc0MzExNl0gUlNQOiAwMDJiOjAwMDA3ZjRkOWI2MGFiYTggRUZMQUdTOiAw
MDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAxMAo+IDw0PiBbMjAxLjc0MzExOF0gUkFY
OiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDdmNGQ5NDAwMWFjMCBSQ1g6IDAwMDA3ZjRkYTZj
OGQ1ZDcKPiA8ND4gWzIwMS43NDMxMTldIFJEWDogMDAwMDdmNGQ5YjYwYWJlMCBSU0k6IDAwMDAw
MDAwYzAxMDY0YWIgUkRJOiAwMDAwMDAwMDAwMDAwMDA1Cj4gPDQ+IFsyMDEuNzQzMTIwXSBSQlA6
IDAwMDA3ZjRkOWI2MGFiZTAgUjA4OiAwMDAwN2Y0ZDk0MDAxNWMwIFIwOTogMDAwMDdmNGQ5NDAw
MTVmMAo+IDw0PiBbMjAxLjc0MzEyMV0gUjEwOiAwMDAwMDAwMDAwMDAwMDU1IFIxMTogMDAwMDAw
MDAwMDAwMDI0NiBSMTI6IDAwMDAwMDAwYzAxMDY0YWIKPiA8ND4gWzIwMS43NDMxMjJdIFIxMzog
MDAwMDAwMDAwMDAwMDAwNSBSMTQ6IDAwMDAwMDAwMDAwMDAwMDUgUjE1OiAwMDAwN2Y0ZGE3YTJj
MGM3Cj4gPDQ+IFsyMDEuNzQzMTU2XSBpcnEgZXZlbnQgc3RhbXA6IDM2Mgo+IDw0PiBbMjAxLjc0
MzE2Ml0gaGFyZGlycXMgbGFzdCAgZW5hYmxlZCBhdCAoMzYxKTogWzxmZmZmZmZmZjgxMTI4NjJj
Pl0gdnByaW50a19lbWl0KzB4Y2MvMHgzNDAKPiA8ND4gWzIwMS43NDMxNjhdIGhhcmRpcnFzIGxh
c3QgZGlzYWJsZWQgYXQgKDM2Mik6IFs8ZmZmZmZmZmY4MTAwMTllMD5dIHRyYWNlX2hhcmRpcnFz
X29mZl90aHVuaysweDFhLzB4MWMKPiA8ND4gWzIwMS43NDMxNzRdIHNvZnRpcnFzIGxhc3QgIGVu
YWJsZWQgYXQgKDApOiBbPGZmZmZmZmZmODEwYWJmNzg+XSBjb3B5X3Byb2Nlc3MucGFydC42KzB4
NGU4LzB4MWRjMAo+IDw0PiBbMjAxLjc0MzE3OF0gc29mdGlycXMgbGFzdCBkaXNhYmxlZCBhdCAo
MCk6IFs8MDAwMDAwMDAwMDAwMDAwMD5dIDB4MAo+IDw0PiBbMjAxLjc0MzI0M10gV0FSTklORzog
Q1BVOiA3IFBJRDogMTI2OCBhdCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jOjUwNjgg
c2tsX2NvbXB1dGVfd20rMHgyYmUvMHgxMGEwIFtpOTE1XQo+IDw0PiBbMjAxLjc0MzI0Nl0gLS0t
WyBlbmQgdHJhY2UgMzNlNjcwMzA4NzM3NmVmYSBdLS0tCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBCdWd6
aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODk1
Cj4gVGVzdGNhc2U6IGttc19jaGFtZWxpdW1AaGRtaS1jbXAtbnYxMgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgOCArKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
Ywo+IGluZGV4IDRlNTJkYWQ4NGQ2NC4uZTBlNTdkZTIyMzg4IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCj4gQEAgLTUwNjAsMTUgKzUwNjAsMTUgQEAgc3RhdGljIGludCBpY2xfYnVpbGRf
cGxhbmVfd20oc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAllbnVtIHBs
YW5lX2lkIHBsYW5lX2lkID0gdG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtPmJhc2UucGxhbmUp
LT5pZDsKPiAgCWludCByZXQ7Cj4gIAo+IC0JLyogV2F0ZXJtYXJrcyBjYWxjdWxhdGVkIGluIG1h
c3RlciAqLwo+IC0JaWYgKHBsYW5lX3N0YXRlLT5zbGF2ZSkKPiArCS8qIFdhdGVybWFya3MgYXJl
IGNhbGN1bGF0ZWQgaW4gbWFzdGVyICovCj4gKwlpZiAocGxhbmVfc3RhdGUtPnNsYXZlIHx8Cj4g
KwkgICAgIWludGVsX3dtX3BsYW5lX3Zpc2libGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpKQo+
ICAJCXJldHVybiAwOwo+ICAKPiAgCWlmIChwbGFuZV9zdGF0ZS0+bGlua2VkX3BsYW5lKSB7Cj4g
IAkJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+YmFzZS5m
YjsKPiAgCQllbnVtIHBsYW5lX2lkIHlfcGxhbmVfaWQgPSBwbGFuZV9zdGF0ZS0+bGlua2VkX3Bs
YW5lLT5pZDsKPiAgCj4gLQkJV0FSTl9PTighaW50ZWxfd21fcGxhbmVfdmlzaWJsZShjcnRjX3N0
YXRlLCBwbGFuZV9zdGF0ZSkpOwo+ICAJCVdBUk5fT04oIWZiLT5mb3JtYXQtPmlzX3l1diB8fAo+
ICAJCQlmYi0+Zm9ybWF0LT5udW1fcGxhbmVzID09IDEpOwo+ICAKPiBAQCAtNTA4MSw3ICs1MDgx
LDcgQEAgc3RhdGljIGludCBpY2xfYnVpbGRfcGxhbmVfd20oc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCj4gIAkJCQkJCXBsYW5lX2lkLCAxKTsKPiAgCQlpZiAocmV0KQo+ICAJ
CQlyZXR1cm4gcmV0Owo+IC0JfSBlbHNlIGlmIChpbnRlbF93bV9wbGFuZV92aXNpYmxlKGNydGNf
c3RhdGUsIHBsYW5lX3N0YXRlKSkgewo+ICsJfSBlbHNlIHsKPiAgCQlyZXQgPSBza2xfYnVpbGRf
cGxhbmVfd21fc2luZ2xlKGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlLAo+ICAJCQkJCQlwbGFuZV9p
ZCwgMCk7Cj4gIAkJaWYgKHJldCkKPiAtLSAKPiAyLjIwLjEKPiAKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QK
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QK
SW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4036A708B1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 20:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0385389DAB;
	Mon, 22 Jul 2019 18:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1253 seconds by postgrey-1.36 at gabe;
 Mon, 22 Jul 2019 18:33:40 UTC
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com
 [192.185.145.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A3189DAB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 18:33:40 +0000 (UTC)
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway30.websitewelcome.com (Postfix) with ESMTP id 592E2765E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 13:12:46 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id pcnmhH1ei2qH7pcnmhKjXL; Mon, 22 Jul 2019 13:12:46 -0500
X-Authority-Reason: nr=8
Received: from cablelink149-185.telefonia.intercable.net
 ([201.172.149.185]:46522 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hpcnk-002AEO-VS; Mon, 22 Jul 2019 13:12:45 -0500
Date: Mon, 22 Jul 2019 13:12:44 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20190722181244.GA2085@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.freedesktop.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.172.149.185
X-Source-L: No
X-Exim-ID: 1hpcnk-002AEO-VS
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cablelink149-185.telefonia.intercable.net (embeddedor)
 [201.172.149.185]:46522
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 6
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Subject: [Intel-gfx] [PATCH] drm/i915: Mark expected switch fall-throughs
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
Cc: Kees Cook <keescook@chromium.org>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gcHJlcGFyYXRpb24gdG8gZW5hYmxpbmcgLVdpbXBsaWNpdC1mYWxsdGhyb3VnaCwgbWFyayBz
d2l0Y2gKY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2guCgpUaGlz
IHBhdGNoIGZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZ3M6Cgpkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fbW1hbi5jOiBJbiBmdW5jdGlvbiDigJhpOTE1X2dlbV9mYXVsdOKAmToK
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYzozNDI6Njogd2FybmluZzog
dGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1d
CiAgIGlmICghaTkxNV90ZXJtaW5hbGx5X3dlZGdlZChpOTE1KSkKICAgICAgXgpkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jOjM0NToyOiBub3RlOiBoZXJlCiAgY2FzZSAt
RUFHQUlOOgogIF5+fn4KCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5j
OiBJbiBmdW5jdGlvbiDigJhpOTE1X2dlbV9vYmplY3RfbWFw4oCZOgouL2luY2x1ZGUvbGludXgv
Y29tcGlsZXIuaDo3ODoyMjogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3Vn
aCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAjIGRlZmluZSB1bmxpa2VseSh4KSBfX2J1aWx0
aW5fZXhwZWN0KCEhKHgpLCAwKQogICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4KLi9pbmNsdWRlL2FzbS1nZW5lcmljL2J1Zy5oOjEzNjoyOiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8g4oCYdW5saWtlbHnigJkKICB1bmxpa2VseShfX3JldF93YXJuX29u
KTsgICAgIFwKICBefn5+fn5+fgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmg6NDk6
MjU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhXQVJO4oCZCiAjZGVmaW5lIE1JU1NJ
TkdfQ0FTRSh4KSBXQVJOKDEsICJNaXNzaW5nIGNhc2UgKCVzID09ICVsZClcbiIsIFwKICAgICAg
ICAgICAgICAgICAgICAgICAgIF5+fn4KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3BhZ2VzLmM6MjcwOjM6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhNSVNTSU5HX0NB
U0XigJkKICAgTUlTU0lOR19DQVNFKHR5cGUpOwogICBefn5+fn5+fn5+fn4KZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmM6MjcyOjI6IG5vdGU6IGhlcmUKICBjYXNlIEk5
MTVfTUFQX1dCOgogIF5+fn4KCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmM6
IEluIGZ1bmN0aW9uIOKAmGVycm9yX3JlY29yZF9lbmdpbmVfcmVnaXN0ZXJz4oCZOgouL2luY2x1
ZGUvbGludXgvY29tcGlsZXIuaDo3ODoyMjogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZh
bGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAjIGRlZmluZSB1bmxpa2VseSh4
KSBfX2J1aWx0aW5fZXhwZWN0KCEhKHgpLCAwKQogICAgICAgICAgICAgICAgICAgICAgXn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn4KLi9pbmNsdWRlL2FzbS1nZW5lcmljL2J1Zy5oOjEzNjoyOiBu
b3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYdW5saWtlbHnigJkKICB1bmxpa2VseShfX3Jl
dF93YXJuX29uKTsgICAgIFwKICBefn5+fn5+fgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0
aWxzLmg6NDk6MjU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhXQVJO4oCZCiAjZGVm
aW5lIE1JU1NJTkdfQ0FTRSh4KSBXQVJOKDEsICJNaXNzaW5nIGNhc2UgKCVzID09ICVsZClcbiIs
IFwKICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn4KZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9ncHVfZXJyb3IuYzoxMTk2OjU6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhNSVNT
SU5HX0NBU0XigJkKICAgICBNSVNTSU5HX0NBU0UoZW5naW5lLT5pZCk7CiAgICAgXn5+fn5+fn5+
fn5+CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmM6MTE5Nzo0OiBub3RlOiBo
ZXJlCiAgICBjYXNlIFJDUzA6CiAgICBefn5+Cgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmM6IEluIGZ1bmN0aW9uIOKAmGludGVsX2RwX2dldF9maWFfc3VwcG9ydGVkX2xh
bmVfY291bnTigJk6Ci4vaW5jbHVkZS9saW51eC9jb21waWxlci5oOjc4OjIyOiB3YXJuaW5nOiB0
aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0K
ICMgZGVmaW5lIHVubGlrZWx5KHgpIF9fYnVpbHRpbl9leHBlY3QoISEoeCksIDApCiAgICAgICAg
ICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgouL2luY2x1ZGUvYXNtLWdl
bmVyaWMvYnVnLmg6MTM2OjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJh1bmxpa2Vs
eeKAmQogIHVubGlrZWx5KF9fcmV0X3dhcm5fb24pOyAgICAgXAogIF5+fn5+fn5+CmRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaDo0OToyNTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1h
Y3JvIOKAmFdBUk7igJkKICNkZWZpbmUgTUlTU0lOR19DQVNFKHgpIFdBUk4oMSwgIk1pc3Npbmcg
Y2FzZSAoJXMgPT0gJWxkKVxuIiwgXAogICAgICAgICAgICAgICAgICAgICAgICAgXn5+fgpkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmM6MjMzOjM6IG5vdGU6IGluIGV4cGFu
c2lvbiBvZiBtYWNybyDigJhNSVNTSU5HX0NBU0XigJkKICAgTUlTU0lOR19DQVNFKGxhbmVfaW5m
byk7CiAgIF5+fn5+fn5+fn5+fgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmM6MjM0OjI6IG5vdGU6IGhlcmUKICBjYXNlIDE6CiAgXn5+fgoKZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmM6IEluIGZ1bmN0aW9uIOKAmGNoZWNrX2RpZ2l0YWxf
cG9ydF9jb25mbGljdHPigJk6CiAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9udmtt
L2VuZ2luZS9kaXNwL2N1cnNndjEwMC5vCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jOjEyMDQzOjc6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRo
cm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICAgaWYgKFdBUk5fT04oIUhBU19EREko
dG9faTkxNShkZXYpKSkpCiAgICAgICBeCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jOjEyMDQ2OjM6IG5vdGU6IGhlcmUKICAgY2FzZSBJTlRFTF9PVVRQVVRfRFA6
CiAgIF5+fn4KCkFsc28sIG5vdGljZSB0aGF0IHRoZSBNYWtlZmlsZSBpcyBtb2RpZmllZCBpbiBv
cmRlciB0byBzdG9wCmlnbm9yaW5nIGZhbGwtdGhyb3VnaCB3YXJuaW5ncy4gVGhlIC1XaW1wbGlj
aXQtZmFsbHRocm91Z2gKb3B0aW9uIHdpbGwgYmUgZW5hYmxlZCBnbG9iYWxseSBpbiB2NS4zLgoK
V2FybmluZyBsZXZlbCAzIHdhcyB1c2VkOiAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoPTMKClRoaXMg
cGF0Y2ggaXMgcGFydCBvZiB0aGUgb25nb2luZyBlZmZvcnRzIHRvIGVuYWJsZQotV2ltcGxpY2l0
LWZhbGx0aHJvdWdoLgoKU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2YSA8Z3VzdGF2
b0BlbWJlZGRlZG9yLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAg
ICAgICAgICAgICB8IDEgLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAg
ICB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyAgICAgfCAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICB8IDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAgIHwgMSArCiA2IGZp
bGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlCmluZGV4IDkxMzU1YzJlYThhNS4uOGNhY2U2NWY1MGNlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZQpAQCAtMTYsNyArMTYsNiBAQCBzdWJkaXItY2NmbGFncy15IDo9IC1XYWxsIC1XZXh0cmEK
IHN1YmRpci1jY2ZsYWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUtd2FybmluZywgdW51c2VkLXBh
cmFtZXRlcikKIHN1YmRpci1jY2ZsYWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUtd2FybmluZywg
dHlwZS1saW1pdHMpCiBzdWJkaXItY2NmbGFncy15ICs9ICQoY2FsbCBjYy1kaXNhYmxlLXdhcm5p
bmcsIG1pc3NpbmctZmllbGQtaW5pdGlhbGl6ZXJzKQotc3ViZGlyLWNjZmxhZ3MteSArPSAkKGNh
bGwgY2MtZGlzYWJsZS13YXJuaW5nLCBpbXBsaWNpdC1mYWxsdGhyb3VnaCkKIHN1YmRpci1jY2Zs
YWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUtd2FybmluZywgdW51c2VkLWJ1dC1zZXQtdmFyaWFi
bGUpCiAjIGNsYW5nIHdhcm5pbmdzCiBzdWJkaXItY2NmbGFncy15ICs9ICQoY2FsbCBjYy1kaXNh
YmxlLXdhcm5pbmcsIHNpZ24tY29tcGFyZSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggODU5MmE3ZDQyMmRlLi4zMGI5N2RlZDZmZGQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMjA0Miw3
ICsxMjA0Miw3IEBAIHN0YXRpYyBib29sIGNoZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCWNhc2UgSU5URUxfT1VUUFVUX0RESToK
IAkJCWlmIChXQVJOX09OKCFIQVNfRERJKHRvX2k5MTUoZGV2KSkpKQogCQkJCWJyZWFrOwotCQkJ
LyogZWxzZTogZmFsbCB0aHJvdWdoICovCisJCQkvKiBlbHNlLCBmYWxsIHRocm91Z2ggKi8KIAkJ
Y2FzZSBJTlRFTF9PVVRQVVRfRFA6CiAJCWNhc2UgSU5URUxfT1VUUFVUX0hETUk6CiAJCWNhc2Ug
SU5URUxfT1VUUFVUX0VEUDoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpp
bmRleCA0MzM2ZGY0NmZlNzguLmQwZmMzNDgyNjc3MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwpAQCAtMjMxLDYgKzIzMSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBf
Z2V0X2ZpYV9zdXBwb3J0ZWRfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQog
CXN3aXRjaCAobGFuZV9pbmZvKSB7CiAJZGVmYXVsdDoKIAkJTUlTU0lOR19DQVNFKGxhbmVfaW5m
byk7CisJCS8qIGZhbGwgdGhyb3VnaCAqLwogCWNhc2UgMToKIAljYXNlIDI6CiAJY2FzZSA0Ogpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKaW5kZXggMzkxNjIxZWUzY2Ji
Li4zOWE2NjE5MjdkOGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
YwpAQCAtMzQxLDcgKzM0MSw3IEBAIHZtX2ZhdWx0X3QgaTkxNV9nZW1fZmF1bHQoc3RydWN0IHZt
X2ZhdWx0ICp2bWYpCiAJCSAqLwogCQlpZiAoIWk5MTVfdGVybWluYWxseV93ZWRnZWQoaTkxNSkp
CiAJCQlyZXR1cm4gVk1fRkFVTFRfU0lHQlVTOwotCQkvKiBlbHNlOiBmYWxsIHRocm91Z2ggKi8K
KwkJLyogZWxzZSwgZmFsbCB0aHJvdWdoICovCiAJY2FzZSAtRUFHQUlOOgogCQkvKgogCQkgKiBF
QUdBSU4gbWVhbnMgdGhlIGdwdSBpcyBodW5nIGFuZCB3ZSdsbCB3YWl0IGZvciB0aGUgZXJyb3IK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKaW5kZXggYjM2YWQyNjlm
NGVhLi42NWViNDMwY2VkYmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9wYWdlcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9w
YWdlcy5jCkBAIC0yNjgsNyArMjY4LDcgQEAgc3RhdGljIHZvaWQgKmk5MTVfZ2VtX29iamVjdF9t
YXAoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlzd2l0Y2ggKHR5cGUp
IHsKIAlkZWZhdWx0OgogCQlNSVNTSU5HX0NBU0UodHlwZSk7Ci0JCS8qIGZhbGx0aHJvdWdoIHRv
IHVzZSBQQUdFX0tFUk5FTCBhbnl3YXkgKi8KKwkJLyogZmFsbHRocm91Z2ggLSB0byB1c2UgUEFH
RV9LRVJORUwgYW55d2F5ICovCiAJY2FzZSBJOTE1X01BUF9XQjoKIAkJcGdwcm90ID0gUEFHRV9L
RVJORUw7CiAJCWJyZWFrOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
cHVfZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5kZXgg
YjdlOWZkZGVmMjcwLi40MWE1MTFkNTI2N2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVf
ZXJyb3IuYwpAQCAtMTE5NCw2ICsxMTk0LDcgQEAgc3RhdGljIHZvaWQgZXJyb3JfcmVjb3JkX2Vu
Z2luZV9yZWdpc3RlcnMoc3RydWN0IGk5MTVfZ3B1X3N0YXRlICplcnJvciwKIAkJCXN3aXRjaCAo
ZW5naW5lLT5pZCkgewogCQkJZGVmYXVsdDoKIAkJCQlNSVNTSU5HX0NBU0UoZW5naW5lLT5pZCk7
CisJCQkJLyogZmFsbCB0aHJvdWdoICovCiAJCQljYXNlIFJDUzA6CiAJCQkJbW1pbyA9IFJFTkRF
Ul9IV1NfUEdBX0dFTjc7CiAJCQkJYnJlYWs7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

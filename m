Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D18ED38863
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 13:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B2E89BBD;
	Fri,  7 Jun 2019 11:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F5A89BBD;
 Fri,  7 Jun 2019 11:02:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 04:02:17 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2019 04:02:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  7 Jun 2019 14:05:13 +0300
Message-Id: <20190607110513.12072-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607110513.12072-1-jani.nikula@intel.com>
References: <20190607110513.12072-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm: add fallback override/firmware EDID
 modes workaround
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>,
 stable@vger.kernel.org, Paul Wise <pabs3@bonedaddy.net>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@cs.helsinki.fi>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UndmUgbW92ZWQgdGhlIG92ZXJyaWRlIGFuZCBmaXJtd2FyZSBFRElEIChzaW1wbHkgIm92ZXJy
aWRlIEVESUQiIGZyb20Kbm93IG9uKSBoYW5kbGluZyB0byB0aGUgbG93IGxldmVsIGRybV9kb19n
ZXRfZWRpZCgpIGZ1bmN0aW9uIGluIG9yZGVyIHRvCnRyYW5zcGFyZW50bHkgdXNlIHRoZSBvdmVy
cmlkZSB0aHJvdWdob3V0IHRoZSBzdGFjay4gVGhlIGlkZWEgaXMgdGhhdAp5b3UgZ2V0IHRoZSBv
dmVycmlkZSBFRElEIHZpYSB0aGUgLT5nZXRfbW9kZXMoKSBob29rLgoKVW5mb3J0dW5hdGVseSwg
dGhlcmUgYXJlIHNjZW5hcmlvcyB3aGVyZSB0aGUgRERDIHByb2JlIGluIGRybV9nZXRfZWRpZCgp
CmNhbGxlZCB2aWEgLT5nZXRfbW9kZXMoKSBmYWlscywgYWx0aG91Z2ggdGhlIHByZWNlZGluZyAt
PmRldGVjdCgpCnN1Y2NlZWRzLgoKSW4gdGhlIGNhc2UgcmVwb3J0ZWQgYnkgUGF1bCBXaXNlLCB0
aGUgLT5kZXRlY3QoKSBob29rLAppbnRlbF9jcnRfZGV0ZWN0KCksIHJlbGllcyBvbiBob3RwbHVn
IGRldGVjdCwgYnlwYXNzaW5nIHRoZSBEREMuIEluIHRoZQpjYXNlIHJlcG9ydGVkIGJ5IElscG8g
SsOkcnZpbmVuLCB0aGVyZSBpcyBubyAtPmRldGVjdCgpIGhvb2ssIHdoaWNoIGlzCmludGVycHJl
dGVkIGFzIGNvbm5lY3RlZC4gVGhlIHN1YnNlcXVlbnQgRERDIHByb2JlIHJlYWNoZWQgdmlhCi0+
Z2V0X21vZGVzKCkgZmFpbHMsIGFuZCB3ZSBkb24ndCBldmVuIGxvb2sgYXQgdGhlIG92ZXJyaWRl
IEVESUQsCnJlc3VsdGluZyBpbiBubyBtb2RlcyBiZWluZyBhZGRlZC4KCkJlY2F1c2UgZHJtX2dl
dF9lZGlkKCkgaXMgdXNlZCB2aWEgLT5kZXRlY3QoKSBhbGwgb3ZlciB0aGUgcGxhY2UsIHdlCmNh
bid0IHRyaXZpYWxseSByZW1vdmUgdGhlIEREQyBwcm9iZSwgYXMgaXQgbGVhZHMgdG8gb3ZlcnJp
ZGUgRURJRAplZmZlY3RpdmVseSBtZWFuaW5nIGNvbm5lY3RvciBmb3JjaW5nLiBUaGUgZ29hbCBp
cyB0aGF0IGNvbm5lY3Rvcgpmb3JjaW5nIGFuZCBvdmVycmlkZSBFRElEIHJlbWFpbiBvcnRob2dv
bmFsLgoKR2VuZXJhbGx5LCB0aGUgdW5kZXJseWluZyBwcm9ibGVtIGhlcmUgaXMgdGhlIGNvbmZs
YXRpb24gb2YgLT5kZXRlY3QoKQphbmQgLT5nZXRfbW9kZXMoKSB2aWEgZHJtX2dldF9lZGlkKCku
IFRoZSBmb3JtZXIgc2hvdWxkIGp1c3QgZGV0ZWN0LCBhbmQKdGhlIGxhdHRlciBzaG91bGQganVz
dCBnZXQgdGhlIG1vZGVzLCB0eXBpY2FsbHkgdmlhIHJlYWRpbmcgdGhlIEVESUQuIEFzCmxvbmcg
YXMgZHJtX2dldF9lZGlkKCkgaXMgdXNlZCBpbiAtPmRldGVjdCgpLCBpdCBuZWVkcyB0byByZXRh
aW4gdGhlIEREQwpwcm9iZS4gT3Igc3VjaCB1c2VycyBuZWVkIHRvIGhhdmUgYSBzZXBhcmF0ZSBE
REMgcHJvYmUgc3RlcCBmaXJzdC4KCldvcmsgYXJvdW5kIHRoZSByZWdyZXNzaW9uIGJ5IGZhbGxp
bmcgYmFjayB0byBhIHNlcGFyYXRlIGF0dGVtcHQgYXQKZ2V0dGluZyB0aGUgb3ZlcnJpZGUgRURJ
RCBhdCBkcm1faGVscGVyX3Byb2JlX3NpbmdsZV9jb25uZWN0b3JfbW9kZXMoKQpsZXZlbC4gV2l0
aCBhIHdvcmtpbmcgRERDIGFuZCBvdmVycmlkZSBFRElELCBpdCdsbCBuZXZlciBiZSBjYWxsZWQ7
IHRoZQpvdmVycmlkZSBFRElEIHdpbGwgY29tZSB2aWEgLT5nZXRfbW9kZXMoKS4gVGhlcmUgd2ls
bCBzdGlsbCBiZSBhIGZhaWxpbmcKRERDIHByb2JlIGF0dGVtcHQgaW4gdGhlIGNhc2VzIHRoYXQg
cmVxdWlyZSB0aGUgZmFsbGJhY2suCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9w
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA3NTgzClJlcG9ydGVkLWJ5OiBQYXVsIFdpc2UgPHBhYnMz
QGJvbmVkYWRkeS5uZXQ+CkNjOiBQYXVsIFdpc2UgPHBhYnMzQGJvbmVkYWRkeS5uZXQ+ClJlZmVy
ZW5jZXM6IGh0dHA6Ly9taWQubWFpbC1hcmNoaXZlLmNvbS9hbHBpbmUuREVCLjIuMjAuMTkwNTI2
MjIxMTI3MC4yNDM5MEB3aHMtMTguY3MuaGVsc2lua2kuZmkKUmVwb3J0ZWQtYnk6IElscG8gSsOk
cnZpbmVuIDxpbHBvLmphcnZpbmVuQGNzLmhlbHNpbmtpLmZpPgpDYzogSWxwbyBKw6RydmluZW4g
PGlscG8uamFydmluZW5AY3MuaGVsc2lua2kuZmk+ClJlZmVyZW5jZXM6IDE1ZjA4MGYwOGQ0OCAo
ImRybS9lZGlkOiByZXNwZWN0IGNvbm5lY3RvciBmb3JjZSBmb3IgZHJtX2dldF9lZGlkIGRkYyBw
cm9iZSIpCkZpeGVzOiA1M2ZkNDBhOTBmM2MgKCJkcm06IGhhbmRsZSBvdmVycmlkZSBhbmQgZmly
bXdhcmUgRURJRCBhdCBkcm1fZG9fZ2V0X2VkaWQoKSBsZXZlbCIpCkNjOiA8c3RhYmxlQHZnZXIu
a2VybmVsLm9yZz4gIyB2NC4xNSsKQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpDYzogSGFyaXNoIENoZWdvbmRpIDxoYXJpc2guY2hlZ29uZGlAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9kcm1fZWRpZC5jICAgICAgICAgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwogZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYyB8ICA3ICsrKysrKysKIGlu
Y2x1ZGUvZHJtL2RybV9lZGlkLmggICAgICAgICAgICAgfCAgMSArCiAzIGZpbGVzIGNoYW5nZWQs
IDM3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IGM1OWExZThjNWFkYS4uNzgwMTQ2
YmZjMjI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwpAQCAtMTU4Nyw2ICsxNTg3LDM1IEBAIHN0YXRpYyBzdHJ1
Y3QgZWRpZCAqZHJtX2dldF9vdmVycmlkZV9lZGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IpCiAJcmV0dXJuIElTX0VSUihvdmVycmlkZSkgPyBOVUxMIDogb3ZlcnJpZGU7CiB9CiAK
Ky8qKgorICogZHJtX2FkZF9vdmVycmlkZV9lZGlkX21vZGVzIC0gYWRkIG1vZGVzIGZyb20gb3Zl
cnJpZGUvZmlybXdhcmUgRURJRAorICogQGNvbm5lY3RvcjogY29ubmVjdG9yIHdlJ3JlIHByb2Jp
bmcKKyAqCisgKiBBZGQgbW9kZXMgZnJvbSB0aGUgb3ZlcnJpZGUvZmlybXdhcmUgRURJRCwgaWYg
YXZhaWxhYmxlLiBPbmx5IHRvIGJlIHVzZWQgZnJvbQorICogZHJtX2hlbHBlcl9wcm9iZV9zaW5n
bGVfY29ubmVjdG9yX21vZGVzKCkgYXMgYSBmYWxsYmFjayBmb3Igd2hlbiBEREMgcHJvYmUKKyAq
IGZhaWxlZCBkdXJpbmcgZHJtX2dldF9lZGlkKCkgYW5kIGNhdXNlZCB0aGUgb3ZlcnJpZGUvZmly
bXdhcmUgRURJRCB0byBiZQorICogc2tpcHBlZC4KKyAqCisgKiBSZXR1cm46IFRoZSBudW1iZXIg
b2YgbW9kZXMgYWRkZWQgb3IgMCBpZiB3ZSBjb3VsZG4ndCBmaW5kIGFueS4KKyAqLworaW50IGRy
bV9hZGRfb3ZlcnJpZGVfZWRpZF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9y
KQoreworCXN0cnVjdCBlZGlkICpvdmVycmlkZTsKKwlpbnQgbnVtX21vZGVzID0gMDsKKworCW92
ZXJyaWRlID0gZHJtX2dldF9vdmVycmlkZV9lZGlkKGNvbm5lY3Rvcik7CisJaWYgKG92ZXJyaWRl
KSB7CisJCW51bV9tb2RlcyA9IGRybV9hZGRfZWRpZF9tb2Rlcyhjb25uZWN0b3IsIG92ZXJyaWRl
KTsKKwkJa2ZyZWUob3ZlcnJpZGUpOworCisJCURSTV9ERUJVR19LTVMoIltDT05ORUNUT1I6JWQ6
JXNdIGFkZGluZyAlZCBtb2RlcyB2aWEgZmFsbGJhY2sgb3ZlcnJpZGUvZmlybXdhcmUgRURJRFxu
IiwKKwkJCSAgICAgIGNvbm5lY3Rvci0+YmFzZS5pZCwgY29ubmVjdG9yLT5uYW1lLCBudW1fbW9k
ZXMpOworCX0KKworCXJldHVybiBudW1fbW9kZXM7Cit9CitFWFBPUlRfU1lNQk9MKGRybV9hZGRf
b3ZlcnJpZGVfZWRpZF9tb2Rlcyk7CisKIC8qKgogICogZHJtX2RvX2dldF9lZGlkIC0gZ2V0IEVE
SUQgZGF0YSB1c2luZyBhIGN1c3RvbSBFRElEIGJsb2NrIHJlYWQgZnVuY3Rpb24KICAqIEBjb25u
ZWN0b3I6IGNvbm5lY3RvciB3ZSdyZSBwcm9iaW5nCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX3Byb2JlX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9wcm9iZV9oZWxwZXIu
YwppbmRleCAwMWUyNDNmMWVhOTQuLmVmMmM0NjgyMDVhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2RybV9wcm9iZV9oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3Byb2Jl
X2hlbHBlci5jCkBAIC00ODAsNiArNDgwLDEzIEBAIGludCBkcm1faGVscGVyX3Byb2JlX3Npbmds
ZV9jb25uZWN0b3JfbW9kZXMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAogCWNv
dW50ID0gKCpjb25uZWN0b3JfZnVuY3MtPmdldF9tb2RlcykoY29ubmVjdG9yKTsKIAorCS8qCisJ
ICogRmFsbGJhY2sgZm9yIHdoZW4gRERDIHByb2JlIGZhaWxlZCBpbiBkcm1fZ2V0X2VkaWQoKSBh
bmQgdGh1cyBza2lwcGVkCisJICogb3ZlcnJpZGUvZmlybXdhcmUgRURJRC4KKwkgKi8KKwlpZiAo
Y291bnQgPT0gMCAmJiBjb25uZWN0b3ItPnN0YXR1cyA9PSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5l
Y3RlZCkKKwkJY291bnQgPSBkcm1fYWRkX292ZXJyaWRlX2VkaWRfbW9kZXMoY29ubmVjdG9yKTsK
KwogCWlmIChjb3VudCA9PSAwICYmIGNvbm5lY3Rvci0+c3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0
dXNfY29ubmVjdGVkKQogCQljb3VudCA9IGRybV9hZGRfbW9kZXNfbm9lZGlkKGNvbm5lY3Rvciwg
MTAyNCwgNzY4KTsKIAljb3VudCArPSBkcm1faGVscGVyX3Byb2JlX2FkZF9jbWRsaW5lX21vZGUo
Y29ubmVjdG9yKTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9lZGlkLmggYi9pbmNsdWRl
L2RybS9kcm1fZWRpZC5oCmluZGV4IDg4YjYzODAxZjlkYi4uYjk3MTk0MThjM2QyIDEwMDY0NAot
LS0gYS9pbmNsdWRlL2RybS9kcm1fZWRpZC5oCisrKyBiL2luY2x1ZGUvZHJtL2RybV9lZGlkLmgK
QEAgLTQ3OCw2ICs0NzgsNyBAQCBzdHJ1Y3QgZWRpZCAqZHJtX2dldF9lZGlkX3N3aXRjaGVyb28o
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJCQkgICAgIHN0cnVjdCBpMmNfYWRh
cHRlciAqYWRhcHRlcik7CiBzdHJ1Y3QgZWRpZCAqZHJtX2VkaWRfZHVwbGljYXRlKGNvbnN0IHN0
cnVjdCBlZGlkICplZGlkKTsKIGludCBkcm1fYWRkX2VkaWRfbW9kZXMoc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3Rvciwgc3RydWN0IGVkaWQgKmVkaWQpOworaW50IGRybV9hZGRfb3ZlcnJp
ZGVfZWRpZF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsKIAogdTggZHJt
X21hdGNoX2NlYV9tb2RlKGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICp0b19tYXRjaCk7
CiBlbnVtIGhkbWlfcGljdHVyZV9hc3BlY3QgZHJtX2dldF9jZWFfYXNwZWN0X3JhdGlvKGNvbnN0
IHU4IHZpZGVvX2NvZGUpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=

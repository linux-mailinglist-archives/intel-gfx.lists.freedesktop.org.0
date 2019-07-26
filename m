Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1F777066
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 19:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B636E874;
	Fri, 26 Jul 2019 17:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C1836E874
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 17:39:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="161372541"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2019 10:39:31 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190726155805.2736-1-michal.wajdeczko@intel.com>
 <20190726155805.2736-2-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ac17a10f-70ea-eeef-f6f7-20bbca2a074c@intel.com>
Date: Fri, 26 Jul 2019 10:39:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726155805.2736-2-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/uc: Remove redundant ucode
 offset definition
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzI2LzE5IDg6NTggQU0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4gQWNjb3JkaW5n
IHRvIEZpcm13YXJlIGxheW91dCBkZWZpbml0aW9uLCB1Q29kZSBpcyBsb2NhdGVkIHJpZ2h0Cj4g
YWZ0ZXIgQ1NTIGhlYWRlciwgc28gdWNvZGUgb2Zmc2V0IGlzIGFsd2F5cyBzYW1lIGFzIGhlYWRl
ciBzaXplLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpk
ZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuYyB8IDggKysrLS0tLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX3VjX2Z3LmggfCAxIC0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWNfZncuYwo+IGluZGV4IDY2YmRhMGM1MTRhMy4uMDUwNzljNTlhZTA0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gQEAgLTIyOSw3ICsyMjksNiBAQCB2
b2lkIGludGVsX3VjX2Z3X2ZldGNoKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsIHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCX0KPiAgIAo+ICAgCS8qIEZpcm13YXJlIGJsb2Ig
YWx3YXlzIHN0YXJ0cyB3aXRoIHRoZSBoZWFkZXIsIHRoZW4gdUNvZGUgKi8KClRoaXMgY29tbWVu
dCBzaG91bGQgYmUgdXBkYXRlZCAob3IgcmVtb3ZlZCkgYXMgd2VsbC4gV2l0aCB0aGF0OgoKUmV2
aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0Bp
bnRlbC5jb20+CgpEYW5pZWxlCgo+IC0JdWNfZnctPnVjb2RlX29mZnNldCA9IHNpemVvZihzdHJ1
Y3QgdWNfY3NzX2hlYWRlcik7Cj4gICAJdWNfZnctPnVjb2RlX3NpemUgPSAoY3NzLT5zaXplX2R3
IC0gY3NzLT5oZWFkZXJfc2l6ZV9kdykgKiBzaXplb2YodTMyKTsKPiAgIAo+ICAgCS8qIG5vdyBS
U0EgKi8KPiBAQCAtMjM5LDcgKzIzOCw3IEBAIHZvaWQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0
IGludGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gICAJ
CWVyciA9IC1FTk9FWEVDOwo+ICAgCQlnb3RvIGZhaWw7Cj4gICAJfQo+IC0JdWNfZnctPnJzYV9v
ZmZzZXQgPSB1Y19mdy0+dWNvZGVfb2Zmc2V0ICsgdWNfZnctPnVjb2RlX3NpemU7Cj4gKwl1Y19m
dy0+cnNhX29mZnNldCA9IHNpemVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRlcikgKyB1Y19mdy0+dWNv
ZGVfc2l6ZTsKPiAgIAl1Y19mdy0+cnNhX3NpemUgPSBjc3MtPmtleV9zaXplX2R3ICogc2l6ZW9m
KHUzMik7Cj4gICAKPiAgIAkvKiBBdCBsZWFzdCwgaXQgc2hvdWxkIGhhdmUgaGVhZGVyLCB1Q29k
ZSBhbmQgUlNBLiBTaXplIG9mIGFsbCB0aHJlZS4gKi8KPiBAQCAtMzgyLDcgKzM4MSw3IEBAIHN0
YXRpYyBpbnQgdWNfZndfeGZlcihzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgaW50
ZWxfZ3QgKmd0LAo+ICAgCSAqIHZpYSBETUEsIGV4Y2x1ZGluZyBhbnkgb3RoZXIgY29tcG9uZW50
cwo+ICAgCSAqLwo+ICAgCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIERNQV9DT1BZX1NJ
WkUsCj4gLQkJCSAgICAgIHVjX2Z3LT51Y29kZV9vZmZzZXQgKyB1Y19mdy0+dWNvZGVfc2l6ZSk7
Cj4gKwkJCSAgICAgIHNpemVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRlcikgKyB1Y19mdy0+dWNvZGVf
c2l6ZSk7Cj4gICAKPiAgIAkvKiBTdGFydCB0aGUgRE1BICovCj4gICAJaW50ZWxfdW5jb3JlX3dy
aXRlX2Z3KHVuY29yZSwgRE1BX0NUUkwsCj4gQEAgLTUzNiw4ICs1MzUsNyBAQCB2b2lkIGludGVs
X3VjX2Z3X2R1bXAoY29uc3Qgc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgc3RydWN0IGRybV9w
cmludGVyICpwKQo+ICAgCWRybV9wcmludGYocCwgIlx0dmVyc2lvbjogd2FudGVkICV1LiV1LCBm
b3VuZCAldS4ldVxuIiwKPiAgIAkJICAgdWNfZnctPm1ham9yX3Zlcl93YW50ZWQsIHVjX2Z3LT5t
aW5vcl92ZXJfd2FudGVkLAo+ICAgCQkgICB1Y19mdy0+bWFqb3JfdmVyX2ZvdW5kLCB1Y19mdy0+
bWlub3JfdmVyX2ZvdW5kKTsKPiAtCWRybV9wcmludGYocCwgIlx0dUNvZGU6IG9mZnNldCAldSwg
c2l6ZSAldVxuIiwKPiAtCQkgICB1Y19mdy0+dWNvZGVfb2Zmc2V0LCB1Y19mdy0+dWNvZGVfc2l6
ZSk7Cj4gKwlkcm1fcHJpbnRmKHAsICJcdHVDb2RlOiAldSBieXRlc1xuIiwgdWNfZnctPnVjb2Rl
X3NpemUpOwo+ICAgCWRybV9wcmludGYocCwgIlx0UlNBOiBvZmZzZXQgJXUsIHNpemUgJXVcbiIs
Cj4gICAJCSAgIHVjX2Z3LT5yc2Ffb2Zmc2V0LCB1Y19mdy0+cnNhX3NpemUpOwo+ICAgfQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAo+IGluZGV4IGE4MDQ4ZjkxZjBk
YS4uNmEwNGJjNmQ0MTlmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5oCj4gQEAgLTc3LDcgKzc3LDYgQEAgc3RydWN0IGludGVsX3VjX2Z3IHsKPiAgIAl1MzIg
cnNhX3NpemU7Cj4gICAJdTMyIHJzYV9vZmZzZXQ7Cj4gICAJdTMyIHVjb2RlX3NpemU7Cj4gLQl1
MzIgdWNvZGVfb2Zmc2V0Owo+ICAgfTsKPiAgIAo+ICAgc3RhdGljIGlubGluZQo+IApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

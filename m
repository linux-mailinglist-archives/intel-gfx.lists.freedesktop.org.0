Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 705EE58EE4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 02:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF026E855;
	Fri, 28 Jun 2019 00:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D3C6E855
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 00:08:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050894-1500050 for multiple; Fri, 28 Jun 2019 01:08:20 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-29-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-29-matthew.auld@intel.com>
Message-ID: <156168049800.21955.15183580345470345538@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 01:08:18 +0100
Subject: Re: [Intel-gfx] [PATCH v2 28/37] drm/i915: Allow i915 to manage the
 vma offset nodes instead of drm core
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MjQpCj4gK2ludCBpOTE1X2dl
bV9tbWFwKHN0cnVjdCBmaWxlICpmaWxwLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiAr
ewo+ICsgICAgICAgc3RydWN0IGRybV92bWFfb2Zmc2V0X25vZGUgKm5vZGU7Cj4gKyAgICAgICBz
dHJ1Y3QgZHJtX2ZpbGUgKnByaXYgPSBmaWxwLT5wcml2YXRlX2RhdGE7Cj4gKyAgICAgICBzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2ID0gcHJpdi0+bWlub3ItPmRldjsKPiArICAgICAgIHN0cnVjdCBp
OTE1X21tYXBfb2Zmc2V0ICptbW87Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9i
aiA9IE5VTEw7Cj4gKwo+ICsgICAgICAgaWYgKGRybV9kZXZfaXNfdW5wbHVnZ2VkKGRldikpCj4g
KyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+ICsKPiArICAgICAgIGRybV92bWFfb2Zm
c2V0X2xvY2tfbG9va3VwKGRldi0+dm1hX29mZnNldF9tYW5hZ2VyKTsKPiArICAgICAgIG5vZGUg
PSBkcm1fdm1hX29mZnNldF9leGFjdF9sb29rdXBfbG9ja2VkKGRldi0+dm1hX29mZnNldF9tYW5h
Z2VyLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dm1hLT52bV9wZ29mZiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHZtYV9wYWdlcyh2bWEpKTsKPiArICAgICAgIGlmIChsaWtlbHkobm9kZSkpIHsK
PiArICAgICAgICAgICAgICAgbW1vID0gY29udGFpbmVyX29mKG5vZGUsIHN0cnVjdCBpOTE1X21t
YXBfb2Zmc2V0LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm1hX25vZGUp
Owo+ICsKPiArICAgICAgICAgICAgICAgLyogVGFrZSBhIHJlZiBmb3Igb3VyIG1tYXBfb2Zmc2V0
IGFuZCBnZW0gb2JqZWN0cy4gVGhlIHJlZmVyZW5jZSBpcyBjbGVhbmVkCgovKgogKiBUYWtlCgo+
ICsgICAgICAgICAgICAgICAgKiB1cCB3aGVuIHRoZSB2bWEgaXMgY2xvc2VkLgo+ICsgICAgICAg
ICAgICAgICAgKgo+ICsgICAgICAgICAgICAgICAgKiBTa2lwIDAtcmVmY250ZWQgb2JqZWN0cyBh
cyBpdCBpcyBpbiB0aGUgcHJvY2VzcyBvZiBiZWluZyBkZXN0cm95ZWQKPiArICAgICAgICAgICAg
ICAgICogYW5kIHdpbGwgYmUgaW52YWxpZCB3aGVuIHRoZSB2bWEgbWFuYWdlciBsb2NrIGlzIHJl
bGVhc2VkLgo+ICsgICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgaWYgKGtyZWZf
Z2V0X3VubGVzc196ZXJvKCZtbW8tPnJlZikpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBv
YmogPSAmbW1vLT5vYmotPmJhc2U7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKCFrcmVm
X2dldF91bmxlc3NfemVybygmb2JqLT5yZWZjb3VudCkpCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBvYmogPSBOVUxMOwo+ICsgICAgICAgICAgICAgICB9Cj4gKyAgICAgICB9Cj4g
KyAgICAgICBkcm1fdm1hX29mZnNldF91bmxvY2tfbG9va3VwKGRldi0+dm1hX29mZnNldF9tYW5h
Z2VyKTsKPiArCj4gKyAgICAgICBpZiAoIW9iaikKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1F
SU5WQUw7CgpQbGVhc2UgY2hlY2sgdGhlIGVycm9yIHBhdGhzIGZvciByZWZlcmVuY2UgbGVha3Mu
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

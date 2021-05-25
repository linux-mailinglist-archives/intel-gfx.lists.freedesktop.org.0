Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A66F3908ED
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 20:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7EB6EA9C;
	Tue, 25 May 2021 18:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD7789FA5;
 Tue, 25 May 2021 17:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds202012;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:Subject:References:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zmoLsFOrzQDEdiV5XVjjW7fW8PfWEsE+4/phaTnnNd4=; b=XF5ttKXYKr1qN7YE0Frd4A+b3i
 efyuHSAnRS6oyytUeN0cM+PV1Rbrvb1PVxK165Z2Dyf48pucFlicJMryShYcnXZ6PWWhGYjwf5h45
 zsQQvpAs2XP0WOvbIhuuCY+A2T3KVPGpKYMPhdZEcYdunZlOF4cYkqY2aiFCUSQq57OTAU12jsHVK
 6UIdLmlKTK6liXp+tNiASQEJ05ZAGwzzO+FkySlqQZjlWWeBQeoL28BsyJXRdPS0+txcPsbZ47YIf
 KX5p4Z5J2MjwKDPbKaZoITp1B4P0pSAJ/iQ01wm/AwMBL2cwfApNBwXkLm2XCR/qnro8KsS0oH55J
 8dAcOdWQ==;
Received: from [2a01:799:95f:4600:cca0:57ac:c55d:a485] (port=64708)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1llbA9-0003uA-GQ; Tue, 25 May 2021 19:48:17 +0200
To: daniel.vetter@ffwll.ch
References: <20210521090959.1663703-10-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <9d855dc6-5825-4666-6d70-e5f3f880c592@tronnes.org>
Date: Tue, 25 May 2021 19:48:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210521090959.1663703-10-daniel.vetter@ffwll.ch>
X-Mailman-Approved-At: Tue, 25 May 2021 18:26:02 +0000
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/simple-helper:
 drm_gem_simple_display_pipe_prepare_fb as default
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
Cc: airlied@linux.ie, daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org,
 tzimmermann@suse.de, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBJdCdzIHRlZGlvdXMgdG8gcmV2aWV3IHRoaXMgYWxsIHRoZSB0aW1lLCBhbmQgbXkgYXVkaXQg
c2hvd2VkIHRoYXQKPiBhcmNwZ3UgYWN0dWFsbHkgZm9yZ290IHRvIHNldCB0aGlzLgo+Cj4gTWFr
ZSB0aGlzIHRoZSBkZWZhdWx0IGFuZCBzdG9wIHdvcnJ5aW5nLgo+Cj4gQWdhaW4gSSBzcHJpbmts
ZWQgV0FSTl9PTl9PTkNFIG9uIHRvcCB0byBtYWtlIHN1cmUgd2UgZG9uJ3QgaGF2ZQo+IHN0cmFu
Z2UgY29tYmluYXRpb25zIG9mIGhvb2tzOiBjbGVhbnVwX2ZiIHdpdGhvdXQgcHJlcGFyZV9mYiBk
b2Vzbid0Cj4gbWFrZSBzZW5zZSwgYW5kIHNpbmNlIHNpbXBsZXIgZHJpdmVycyBhcmUgYWxsIG5l
dyB0aGV5IGJldHRlciBiZSBHRU0KPiBiYXNlZCBkcml2ZXJzLgo+Cj4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1heGltZSBS
aXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1t
ZXJtYW5uQHN1c2UuZGU+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBD
YzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmMgfCAxMiArKysrKysrKysrLS0KPiAgaW5jbHVkZS9k
cm0vZHJtX3NpbXBsZV9rbXNfaGVscGVyLmggICAgIHwgIDcgKysrKystLQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9zaW1wbGVfa21zX2hlbHBlci5jCmIvZHJpdmVycy9ncHUvZHJt
L2RybV9zaW1wbGVfa21zX2hlbHBlci5jCj4gaW5kZXggMGIwOTVhMzEzYzQ0Li4xYTk3NTcxZDk3
ZDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zaW1wbGVfa21zX2hlbHBlci5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9zaW1wbGVfa21zX2hlbHBlci5jCj4gQEAgLTks
NiArOSw4IEBACj4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pYy5oPgo+ICAjaW5jbHVkZSA8ZHJt
L2RybV9hdG9taWNfaGVscGVyLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX2JyaWRnZS5oPgo+ICsj
aW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KPiArI2luY2x1ZGUgPGRybS9kcm1fZ2VtX2F0b21pY19o
ZWxwZXIuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fbWFuYWdlZC5oPgo+ICAjaW5jbHVkZSA8ZHJt
L2RybV9wbGFuZV9oZWxwZXIuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fcHJvYmVfaGVscGVyLmg+
Cj4gQEAgLTIyNSw4ICsyMjcsMTQgQEAgc3RhdGljIGludCBkcm1fc2ltcGxlX2ttc19wbGFuZV9w
cmVwYXJlX2ZiKHN0cnVjdApkcm1fcGxhbmUgKnBsYW5lLAo+ICAJc3RydWN0IGRybV9zaW1wbGVf
ZGlzcGxheV9waXBlICpwaXBlOwo+Cj4gIAlwaXBlID0gY29udGFpbmVyX29mKHBsYW5lLCBzdHJ1
Y3QgZHJtX3NpbXBsZV9kaXNwbGF5X3BpcGUsIHBsYW5lKTsKPiAtCWlmICghcGlwZS0+ZnVuY3Mg
fHwgIXBpcGUtPmZ1bmNzLT5wcmVwYXJlX2ZiKQo+IC0JCXJldHVybiAwOwo+ICsJaWYgKCFwaXBl
LT5mdW5jcyB8fCAhcGlwZS0+ZnVuY3MtPnByZXBhcmVfZmIpIHsKPiArCQlpZiAoV0FSTl9PTl9P
TkNFKGRybV9jb3JlX2NoZWNrX2ZlYXR1cmUocGxhbmUtPmRldiwgRFJJVkVSX0dFTSkpKQoKU2hv
dWxkbid0IHRoaXMgY2hlY2sgYmUgaW52ZXJ0ZWQ/IExvb2tzIGxpa2UgaXQgd2FybnMgb24gR0VN
IGRyaXZlcnMuCgpXaXRoIHRoYXQgY29uc2lkZXJlZDoKCkFja2VkLWJ5OiBOb3JhbGYgVHLDuG5u
ZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KCkhvcGVmdWxseSB0aGlzIHJlcGx5IHdpbGwgdGhyZWFk
IGNvcnJlY3RseSwgSSBoYWQgdG8gcmVwbHkgZnJvbSBsb3JlIChJCndhc24ndCBjYydlZCkgYW5k
IEkgZG9uJ3Qga25vdyBpZiBUaHVuZGVyYmlyZCBzZXRzIEluLVJlcGx5LVRvLiBJJ20gbm90CnN1
YnNjcmliZWQgdG8gZHJpLWRldmVsIGFueW1vcmUgc2luY2UgSSdtIHdpbmRpbmcgZG93biBteSBM
aW51eCB3b3JrIGFuZApkcmktZGV2ZWwgaXMgc3VjaCBhIGhpZ2ggdm9sdW1lIGxpc3QuCgpOb3Jh
bGYKCj4gKwkJCXJldHVybiAwOwo+ICsKPiArCQlXQVJOX09OX09OQ0UocGlwZS0+ZnVuY3MgJiYg
cGlwZS0+ZnVuY3MtPmNsZWFudXBfZmIpOwo+ICsKPiArCQlyZXR1cm4gZHJtX2dlbV9zaW1wbGVf
ZGlzcGxheV9waXBlX3ByZXBhcmVfZmIocGlwZSwgc3RhdGUpOwo+ICsJfQo+Cj4gIAlyZXR1cm4g
cGlwZS0+ZnVuY3MtPnByZXBhcmVfZmIocGlwZSwgc3RhdGUpOwo+ICB9Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

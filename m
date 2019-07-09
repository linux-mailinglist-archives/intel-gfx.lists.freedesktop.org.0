Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7022F633DE
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 12:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C72B8975F;
	Tue,  9 Jul 2019 10:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3E538975F
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 10:03:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17181455-1500050 for multiple; Tue, 09 Jul 2019 11:03:00 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-12-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190709093208.20470-12-lionel.g.landwerlin@intel.com>
Message-ID: <156266657826.9375.60632268806953517@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 11:02:58 +0100
Subject: Re: [Intel-gfx] [PATCH v7 11/12] drm/i915/perf: execute OA
 configuration from command stream
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMDozMjowNykKPiArc3RhdGlj
IGludCBlbWl0X29hX2NvbmZpZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4g
IHsKPiAtICAgICAgIHUzMiBpOwo+ICsgICAgICAgc3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9j
b25maWcgPSBzdHJlYW0tPm9hX2NvbmZpZzsKPiArICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxID0gc3RyZWFtLT5pbml0aWFsX2NvbmZpZ19ycTsKPiArICAgICAgIHN0cnVjdCBpOTE1X3Zt
YSAqdm1hOwo+ICsgICAgICAgdTMyICpjczsKPiArICAgICAgIGludCBlcnI7Cj4gIAo+IC0gICAg
ICAgZm9yIChpID0gMDsgaSA8IG5fcmVnczsgaSsrKSB7Cj4gLSAgICAgICAgICAgICAgIGNvbnN0
IHN0cnVjdCBpOTE1X29hX3JlZyAqcmVnID0gcmVncyArIGk7Cj4gKyAgICAgICB2bWEgPSBpOTE1
X3ZtYV9pbnN0YW5jZShvYV9jb25maWctPm9iaiwgJmk5MTUtPmdndHQudm0sIE5VTEwpOwo+ICsg
ICAgICAgaWYgKHVubGlrZWx5KElTX0VSUih2bWEpKSkKPiArICAgICAgICAgICAgICAgcmV0dXJu
IFBUUl9FUlIodm1hKTsKPiArCj4gKyAgICAgICBlcnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAw
LCBQSU5fR0xPQkFMKTsKPiArICAgICAgIGlmIChlcnIpCj4gKyAgICAgICAgICAgICAgIHJldHVy
biBlcnI7CgpIbW0sIHN0aWxsIGEgbG9jayBpbnZlcnNpb24gaGVyZSBhcyB3ZSB3aWxsIG5vdCBi
ZSBhbGxvd2VkIHRvIHBpbiBmcm9tCnVuZGVybmVhdGggcnEtPnRpbWVsaW5lLT5tdXRleC4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

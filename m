Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FBD65294
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 09:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629686E141;
	Thu, 11 Jul 2019 07:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7FD96E141
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 07:40:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17215578-1500050 for multiple; Thu, 11 Jul 2019 08:40:04 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <156283080229.12757.310790219675360261@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 11 Jul 2019 08:40:02 +0100
Subject: Re: [Intel-gfx] [PATCH v2 0/5] drm/i915: Rename functions to match
 their entry points
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

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMDg6MzE6NTIpCj4gTmVlZCBm
b3IgdGhpcyB3YXMgaWRlbnRpZmllZCB3aGlsZSB3b3JraW5nIG9uIHNwbGl0IG9mIGRyaXZlciB1
bmJpbmQKPiBwYXRoIGludG8gX3JlbW92ZSgpIGFuZCBfcmVsZWFzZSgpIHBhcnRzLiAgQ29uc2lz
dGVuY3kgaW4gZnVuY3Rpb24KPiBuYW1pbmcgaGFzIGJlZW4gcmVjb2duaXplZCBhcyBoZWxwZnVs
IHdoZW4gdHJ5aW5nIHRvIHdvcmsgb3V0IHdoaWNoCj4gcGhhc2UgdGhlIGNvZGUgaXMgaW4uCj4g
Cj4gdjI6ICogZWFybHlfcHJvYmUgcGFpcnMgYmV0dGVyIHdpdGggbGF0ZV9yZWxlYXNlIChDaHJp
cyksCj4gICAgICogZXhjbHVkZSBwYXRjaCA2LzYgImRybS9pOTE1OiBSZW5hbWUgImluamVjdF9s
b2FkX2ZhaWx1cmUiIG1vZHVsZQo+ICAgICAgIHBhcmFtZXRlciIgZm9yIG5vdywgaXQgcmVxdWly
ZXMgdXBkYXRlcyBvbiB1c2VyIChJR1QpIHNpZGUKPiAgICAgKiByZWJhc2Ugb24gdG9wIG9mICJk
cm0vaTkxNTogRHJvcCBleHRlcm4gcXVhbGlmaWVycyBmcm9tIGhlYWRlcgo+ICAgICAgIGZ1bmN0
aW9uIHByb3RvdHlwZXMiCj4gCj4gSmFudXN6IEtyenlzenRvZmlrICg1KToKPiAgIGRybS9pOTE1
OiBSZW5hbWUgIl9sb2FkIi8iX3VubG9hZCIgdG8gbWF0Y2ggUENJIGVudHJ5IHBvaW50cwo+ICAg
ZHJtL2k5MTU6IFJlcGxhY2UgIl9sb2FkIiB3aXRoICJfcHJvYmUiIGNvbnNlcXVlbnRseQo+ICAg
ZHJtL2k5MTU6IFByb3BhZ2F0ZSAiX3JlbGVhc2UiIGZ1bmN0aW9uIG5hbWUgc3VmZml4IGRvd24K
PiAgIGRybS9pOTE1OiBQcm9wYWdhdGUgIl9yZW1vdmUiIGZ1bmN0aW9uIG5hbWUgc3VmZml4IGRv
d24KPiAgIGRybS9pOTE1OiBQcm9wYWdhdGUgIl9wcm9iZSIgZnVuY3Rpb24gbmFtZSBzdWZmaXgg
ZG93bgoKSSdtIGhhcHB5IHdpdGggdGhlIGNob3NlbiBuYW1lcyBhbmQgbXkgbWFpbiBjb25jZXJu
IGlzIGZvciBpbXByb3ZpbmcKY29uc2lzdGVuY3kgZm9yIGVhc2Ugb2YgZGlzY292ZXJhYmlsaXR5
LCBzbwoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgoKQSBmZXcgb2YgdGhlIHVzdWFsIHN1c3BlY3RzIHNob3VsZCBjaGltZSBpbiBhcyB3ZWxsLi4u
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

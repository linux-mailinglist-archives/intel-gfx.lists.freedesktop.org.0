Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFE288C24
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 18:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 521AD6E435;
	Sat, 10 Aug 2019 16:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20EC6E435
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Aug 2019 16:10:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17954268-1500050 for multiple; Sat, 10 Aug 2019 17:08:23 +0100
MIME-Version: 1.0
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190808004935.1787-2-jose.souza@intel.com>
References: <20190808004935.1787-1-jose.souza@intel.com>
 <20190808004935.1787-2-jose.souza@intel.com>
Message-ID: <156545330130.2301.11174283577376324658@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 10 Aug 2019 17:08:21 +0100
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/tgl: Fix the read of the
 DDI that transcoder is attached to
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyMDE5LTA4LTA4IDAxOjQ5OjM1KQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGQ3NjA4MzBjZmQ3Yi4uM2QxYzMwYTgyMzAyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTk0MzIsNiArOTQzMiw4IEBAIGVudW0g
c2tsX3Bvd2VyX2dhdGUgewo+ICAjZGVmaW5lICBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSyAgICAg
ICAoMHhmIDw8IFRHTF9UUkFOU19ERElfUE9SVF9TSElGVCkKPiAgI2RlZmluZSAgVFJBTlNfRERJ
X1NFTEVDVF9QT1JUKHgpICAgICAgKCh4KSA8PCBUUkFOU19ERElfUE9SVF9TSElGVCkKPiAgI2Rl
ZmluZSAgVEdMX1RSQU5TX0RESV9TRUxFQ1RfUE9SVCh4KSAgKCgoeCkgKyAxKSA8PCBUR0xfVFJB
TlNfRERJX1BPUlRfU0hJRlQpCj4gKyNkZWZpbmUgIFRSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9f
UE9SVCh2YWwpICAgICgoKHZhbCkgJiBUUkFOU19ERElfUE9SVF9NQVNLKSA+PiBUUkFOU19ERElf
UE9SVF9TSElGVCkKPiArI2RlZmluZSAgVEdMX1RSQU5TX0RESV9GVU5DX0NUTF9WQUxfVE9fUE9S
VCh2YWwpICgoKHZhbCkgJiBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSyA+PiBUR0xfVFJBTlNfRERJ
X1BPUlRfU0hJRlQpIC0gMSkKCmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jOjEwMzYxIGhhc3dlbGxfZ2V0X2RkaV9wb3J0X3N0YXRlKCkgd2Fybjogc2hpZnQgaGFz
IGhpZ2hlciBwcmVjZWRlbmNlIHRoYW4gbWFzawoKSSBwcmVzdW1lIHlvdSB3YW50ZWQgKCgodmFs
KSAmIG1hc2spID4+IHNoaWZ0KSAtIDEpIGJ1dCBJJ20gbm90IHN1cmUuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=

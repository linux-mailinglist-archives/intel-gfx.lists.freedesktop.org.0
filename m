Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD41232DA3D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 20:20:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD056E105;
	Thu,  4 Mar 2021 19:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB4D6E105
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 19:20:26 +0000 (UTC)
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C41964F4E;
 Thu,  4 Mar 2021 19:20:24 +0000 (UTC)
Date: Thu, 4 Mar 2021 14:20:22 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210304142022.5d266e3b@gandalf.local.home>
In-Reply-To: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
References: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Silence pipe tracepoint WARNs
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAgNCBNYXIgMjAyMSAxOTowNDoxNyArMDIwMApWaWxsZSBTeXJqYWxhIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSSBiZWxpZXZlIHRoaXMgc2hvdWxk
IHNpbGVuY2UgdGhlIFdBUk4gc3BldyBmcm9tIHRoZQo+IHBpcGUgZGlzYWJsZSB0cmFjZXBvaW50
IFN0ZXZlIHJlcG9ydGVkLiBBbmQgSSB0b3NzZWQgaW4KPiBhIGZldyBvdGhlciBtaW5vciBpbXBy
b3ZlbWVudHMgYXMgd2VsbC4KPiAKPiBDYzogU3RldmVuIFJvc3RlZHQgPHJvc3RlZHRAZ29vZG1p
cy5vcmc+CgpJdCBzZWVtZWQgdG8gaGF2ZSBzdG9wcGVkIHRoZSBnZW5lcmFsIHByb3RlY3Rpb24g
ZmF1bHRzIHdoZW4gdHJhY2luZyBhbGwKZXZlbnRzIG9uIG15IG1hY2hpbmUuCgpSZXBvcnRlZC1i
eTogU3RldmVuIFJvc3RlZHQgKFZNd2FyZSkgPHJvc3RlZHRAZ29vZG1pcy5vcmc+ClRlc3RlZC1i
eTogU3RldmVuIFJvc3RlZHQgKFZNd2FyZSkgPHJvc3RlZHRAZ29vZG1pcy5vcmc+CgotLSBTdGV2
ZQoKPiAKPiBWaWxsZSBTeXJqw6Rsw6QgKDQpOgo+ICAgZHJtL2k5MTU6IE1vdmUgcGlwZSBlbmFi
bGUvZGlzYWJsZSB0cmFjZXBvaW50cyB0bwo+ICAgICBpbnRlbF9jcnRjX3ZibGFua197b24sb2Zm
fSgpCj4gICBkcm0vaTkxNTogRG9uJ3QgdHJ5IHRvIHF1ZXJ5IHRoZSBmcmFtZSBjb3VudGVyIGZv
ciBkaXNhYmxlZCBwaXBlcwo+ICAgZHJtL2k5MTU6IFJldHVybiB6ZXJvIGFzIHRoZSBzY2FubGlu
ZSBjb3VudGVyIGZvciBkaXNhYmxlZCBwaXBlcwo+ICAgZHJtL2k5MTU6IEZpeCBEU0kgVEUgbWF4
X3ZibGFua19jb3VudCBoYW5kbGluZwo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NydGMuYyAgICB8IDI0ICsrKysrKysrKysrKysrKysrLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgIDggKy0tLS0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICB8ICAyICstCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK

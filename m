Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90818CE52A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 16:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B326E128;
	Mon,  7 Oct 2019 14:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379C66E10E
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 14:24:40 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id 60so11135916otu.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Oct 2019 07:24:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qzbcgLGBlRhmfof0dicg/i6k0q4FC7x91GFjGkN0Z/c=;
 b=N3MQ0zwM3VSd2w0abF+OmCXqYZ/M80LhPMbZzukfpQ3s8sH51nLqxveBYrUJElLnsf
 IBDxJ84+YE3aZLichZjSnA45+Z/sHON4k5wc+z+k9CaUv2XydUVoxcpj37Rfmk3onR5k
 aa2UVBCkH/ySh+Sq/tJlJNON/LT3vyvioF5snn0NmInh7tQjuHRZzyvLz+RQlOcJZIPv
 /WXpLMsT3IT/govLXXgzNDWaBVO1s8s9kaTsyWPVK6i5ohtzLevj1NaaQhI7SQjKdZdy
 ptvN3RNNowPKedAyhze9J48ami/+JNQwK+XPYhY/VEtJzRnd9r+s9ihaplMBRJLudb/I
 gHpw==
X-Gm-Message-State: APjAAAUljI0Ik3QF5cGh30xqCqC/o4KTSUFNlSu2dj+O0bND99Yq1Tbe
 43sWqGV5NzZWb7moglfvF41oT2DbX5pxx/Z4BGTQ/w==
X-Google-Smtp-Source: APXvYqzxrzTgPIHlZqMZjvgmER/h8JCeyVJBDdM/LWY46sLUBMZ+TqctW8Dtkc7Uv2WAuinK+W25z6gorQ45vatiT6o=
X-Received: by 2002:a05:6830:17c1:: with SMTP id
 p1mr21866589ota.188.1570458279368; 
 Mon, 07 Oct 2019 07:24:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191002200604.gjae7xjtdaj3j3ga@gilmour>
 <20191003072638.anj5dc435y2s3ybn@gilmour>
In-Reply-To: <20191003072638.anj5dc435y2s3ybn@gilmour>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 7 Oct 2019 16:24:28 +0200
Message-ID: <CAKMK7uEZS=f=Md9tU58pknhEERRpMHy5CHCAS4MNT9nkw5f7qA@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=qzbcgLGBlRhmfof0dicg/i6k0q4FC7x91GFjGkN0Z/c=;
 b=brfYCQcmpceORgVGrwxL+YZdCK93v7r6Dx549UfBiHtlDyLtexfhksSSMqK4mhcnAJ
 qPolKIJwRXbKa5fVFcgzXaUpi/jquSsh0qagCoULz/nw4mP02ir69vz3yRthP6r8Dq0T
 TlANHo9Pr8Kq4Tm/5dfjsHKUcAqM/sqh03mDI=
Subject: Re: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: "DRM maintainer tools announcements, discussion,
 and development" <dim-tools@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMywgMjAxOSBhdCA5OjI2IEFNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFdlZCwgT2N0IDAyLCAyMDE5IGF0IDEwOjA2
OjA0UE0gKzAyMDAsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4gPiBIaSBEYXZlLCBEYW5pZWwsCj4g
Pgo+ID4gSSBob3BlIHRoYXQgeW91IGVuam95IFhEQyBpZiB5b3UgY291bGQgbWFrZSBpdCB0aGlz
IHllYXIgOikKPiA+Cj4gPiBIZXJlJ3MgdGhlIGZpcnN0IHJvdW5kIG9mIGZpeGVzIGZvciBkcm0t
bWlzYwo+ID4KPiA+IE1heGltZQo+ID4KPiA+IGRybS1taXNjLWZpeGVzLTIwMTktMTAtMDI6Cj4g
PiAgLSBPbmUgaW5jbHVkZSBmaXggZm9yIHRpbGNkYwo+ID4gIC0gQSBtZW1vcnkgbGVhayBmaXgg
Zm9yIEtvbWVkYQo+ID4gIC0gU29tZSBmaXhlcyBmb3IgcmVzb3VyY2VzIGNsZWFudXBzIHdpdGgg
d3JpdGViYWNrCj4KPiBTbyBpdCB0dXJucyBvdXQgdGhhdCB3aGlsZSB0aGF0IHRhZyB3YXMgcHVz
aGVkLCBJIGZvcmdvdCB0byBwdXNoIHRoZQo+IGJyYW5jaCBmaXJzdCwgYW5kIG5vdyB3ZSBoYXZl
IGEgY29uZmxpY3QuCj4KPiBMZXQncyBkcm9wIHRoaXMgUFIsIEknbGwgZG8gYW5vdGhlciBvbmUu
CgpIbSwgZG9lcyBkaW0gbm90IGNoZWNrIGZvciB0aGF0PyBDYW4gSSB2b2x1bnRlZXIgeW91IGZv
ciBhIHBhdGNoPwotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJ
bnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xs
LmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

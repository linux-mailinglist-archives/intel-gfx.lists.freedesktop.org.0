Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5F93B258
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 11:44:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F71B88FA1;
	Mon, 10 Jun 2019 09:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8293388FA1
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 09:44:29 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id q64so4928543vsd.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 02:44:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=23nwxlr+cHrPt01iXkJw3XmMCMkaSs/JWYjCA0KTx00=;
 b=GEPvNmJbxug687sWZ4Umk73YOJ3wbUoXhUf+TUnMHae9UFpi69U8QPhj4LxjyLwqEr
 0BmAcxuI4xQ6uqMhhkiY3O8dQw20itfIh0VewI234ujNt+X4UGtxLS1yIm9iOB7A6dB/
 /4DdydTaLJPypFi6bcabGjqJo3N8lrsDqS4wkwWKk/zNdBvQyYIyMo88gW1zzjIYKoFL
 DgU+SwDbPK73VHR1FqUi3baF9GV2djjTVIp9GCCi3tQOfpQmrUjf1LlOBMdbfnKdPQy6
 TyVBLIPzUgkr6maHuxTSX2wcl0NTDfRrbDZMreeoUslqZZB13szE7YPUpkXhbkaCU5Qf
 scSQ==
X-Gm-Message-State: APjAAAUy9SwociDJCSpYt+Gt2BDnHdwelTF8xC9/Fsemn+5/0GSiK6mV
 YPK2PmJKFbg+4WwEuy2jwMns+kHt3SdVWXGOF1Y=
X-Google-Smtp-Source: APXvYqxLH/t2qm/XtBHweU9ybRCvGdAVsb4jYvCj/ut1H8z+52qsJCKYJSZWEWq/Oo6UaAMI/SRlyxIm3Z5/DCKOq+k=
X-Received: by 2002:a67:dc1:: with SMTP id 184mr2619454vsn.164.1560159868558; 
 Mon, 10 Jun 2019 02:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190610072126.6355-1-chris@chris-wilson.co.uk>
 <20190610072126.6355-5-chris@chris-wilson.co.uk>
In-Reply-To: <20190610072126.6355-5-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 10 Jun 2019 10:44:02 +0100
Message-ID: <CAM0jSHMe8so-gs-WW+VtvdtjcYjgkatfW0qK_+vnoiNMBg8CdA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=23nwxlr+cHrPt01iXkJw3XmMCMkaSs/JWYjCA0KTx00=;
 b=snJszGsFbkUEgFT9oY3z6yrDg29hp4LWRW8cNq1u4b4Xq3WZG9pSIJ1+NICDJUSN4o
 JJre0RqpdAPQYDn9kk7gLZPTqvHQQdjuTGo8gX5u2iX6IRrIcghk+rAn64LTKPq0gxjY
 7RPQ1YD3qieomhAG0nf8CZhoGvZHvXys6cf9oiLJMOE9PXjucLsXtDo8HGnLrHPUbZvG
 BBg85TAAxFkneXfPqSi9HtzyAXk6w+lI0y8+PzB8NUdHKQd/nWFvJoojlpPVeetm/QFg
 0YMFzZF8V1HxDZGcp+u3U/yyDto2pZ+Wmr0vgcZ3gdquBjeB1krca5e3EIolGo11rYCU
 tJbg==
Subject: Re: [Intel-gfx] [PATCH 04/28] drm/i915: Promote i915->mm.obj_lock
 to be irqsafe
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMCBKdW4gMjAxOSBhdCAwODoyMSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gVGhlIGludGVudCBpcyB0byBiZSB1cGRhdGUgdGhlIG1t
Lmxpc3RzIGZyb20gaW5zaWRlIGEgaXJxc29mZiBzZWN0aW9uCj4gKGUuZy4gZnJvbSBhIHNvZnRp
cnEgcmN1IHdvcmtxdWV1ZSksIGVyZ28gd2UgbmVlZCB0byBtYWtlIHRoZSBtbS5vYmpfbG9jawo+
IGlycXNhZmUuCj4KPiBGaXhlczogM2I0ZmE5NjQwY2NkICgiZHJtL2k5MTU6IFRyYWNrIHRoZSBw
dXJnZWFibGUgb2JqZWN0cyBvbiBhIHNlcGFyYXRlIGV2aWN0aW9uIGxpc3QiKQo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogTWF0
dGhldyBBdWxkIDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5jb20+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

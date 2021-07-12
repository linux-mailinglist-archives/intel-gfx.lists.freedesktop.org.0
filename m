Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F133C609A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 18:29:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F11789D44;
	Mon, 12 Jul 2021 16:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5596289D44
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 16:29:45 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id j184so18547894qkd.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 09:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8B+ort0ukxhxnJfV/xZfuw0mDd8vwugYzjcJsqy9EiE=;
 b=W6FjWVEFsbJEOA/xyx8N+hIiQFgm5euyrzzUYBw6Cv9MHy/eO4Z7NXOf3/FiOhaF4v
 cVzbXBXDu2G+97u/esOmWfHhqbDnFx0jb6W/bYrHA7mLNUE3PiXr9bBpPZt2HEtt0xMt
 /zwY7KZfwTni6DvLU1GcbaBBMBZ9NgzMi/gkhU9LbWBPDEMu2bc7V0Bxn7L3ebnSk4B6
 0/Sb4qnwxdxZNgz6d1li0HNJyzH0/NPOnniEkGuc0uM67VvXjTeJKH5bc22uvS/p8RVx
 /ZeT3SVPwrfh1X29rQrXqTWOfiHhI7rIu52740i30z9+IOy1CPNji3qec+kDbBO8fiIr
 TcgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8B+ort0ukxhxnJfV/xZfuw0mDd8vwugYzjcJsqy9EiE=;
 b=QdctzxWbUdDfdFvtpEdi1Pe9Pp9kFjy2zU0ZNaUl+zXnkaAZlVi2HMl6Bh6bGQFrYi
 Y3Yi35fbjVKTlFlhpZefgQXULML8LXOalXb8Xl73kjBIbH572EGvdadHgWgRr/Y1x/OK
 eVvHMoe1VYsxOhtkcM28gQ/SSnDZBGVgm28o+v312FsIpSghAnonuf0wgQlmVazYr1t5
 It9/iZ3sSTp1zuaHSTUm+Y+WDoeCtE+IUNceN1kdPccdRdPStw4C5icOnnzwZpfwxQAo
 LA6SHRxeym2RvR2hwVmCRRBjAfRZwaEPov5zQpx6De916XpgczNwBrSX8GVTp9gONl1I
 iDag==
X-Gm-Message-State: AOAM531r+M+DaF2rZVcMhQAtlO7ipcWCmKnx0D1Fobfmu87BBMnV/IoY
 ZNOgrxRba3wWHV4ExXoZncvxzJR2R+Ds+V0PQ7U=
X-Google-Smtp-Source: ABdhPJzSlSM4wjnmw3Ru543DKIgSIVr/IL80yYtLaCukG2mrm9NggxkVbmX8YCmHeDI8wuvSHxiunXmOEQ8DwOF3qos=
X-Received: by 2002:a05:620a:1581:: with SMTP id
 d1mr7053573qkk.327.1626107384604; 
 Mon, 12 Jul 2021 09:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210712161815.24776-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210712161815.24776-1-ville.syrjala@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 12 Jul 2021 17:29:16 +0100
Message-ID: <CAM0jSHPDCyQoBKbx8s10AJNaJr_dJeAK3s3v8CUqktbM7wCrhQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Silence __iomem sparse warn
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMiBKdWwgMjAyMSBhdCAxNzoxOCwgVmlsbGUgU3lyamFsYQo8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFdlIGRvbid0IGNhcmUgYWJvdXQgX19pb21l
bSBtaXNtYXRjaCB3aGVuIGRlYWxpbmcgd2l0aCBlcnJvcgo+IHBvaW50ZXJzLiBTaWxlbmNlIGl0
IHdpdGggRVJSX0NBU1QoKS4KPgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jOjE4OTY6MjE6ICAgIGV4cGVjdGVkIHN0cnVjdCBpOTE1X3ZtYSAqW2Fzc2lnbmVk
XSB2bWEKPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzoxODk2
OjIxOiAgICBnb3Qgdm9pZCBbbm9kZXJlZl0gX19pb21lbSAqW2Fzc2lnbmVkXSBpb21lbQo+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jOjE4OTY6MjE6IHdhcm5p
bmc6IGluY29ycmVjdCB0eXBlIGluIGFzc2lnbm1lbnQgKGRpZmZlcmVudCBhZGRyZXNzIHNwYWNl
cykKPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=

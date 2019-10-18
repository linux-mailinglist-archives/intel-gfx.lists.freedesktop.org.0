Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB38FDCA6C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 18:11:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED446EAA5;
	Fri, 18 Oct 2019 16:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2401B6EAA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 16:11:04 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id d3so4406968vsr.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 09:11:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nWePQ5rK2T8TvobsvgIk1PaCy6oUQvQhSjBfX/GJpj4=;
 b=aYUZ+R6t2/RZLV1ipgIbmXfw+O8TinWAehK04/nh3QJlHI50QPrb76YNauxuuO/vLW
 2yUro7xMI52E43Y0JHChUDNjD3UqlwEKxWOai9TlpJM1yO/uxQvYTATnaY5sqoNe+GrB
 5ew+WQjZCH/0WpQu37F7SskSyFj6XYAoRR4B30UwSL5o/vxBzHHwrbkPFIAT9s0lvs/5
 JB0BfO0Qa6dnoulmTVn2t6fSxpreUn1kJIjSut3MauzU3+zs86gGl1v2m09q1wsomvql
 0aozye3W12BPN3IqjMD7TR2XhESs7iYV1TVERK3QPyiaDLQ0iaYe2IQ0dfX/mbbyKsMt
 cOrQ==
X-Gm-Message-State: APjAAAVJXdfZ6+zDnmXqxQTuK53U4xAonFkJVn8QhRZ0/ZXpfSPvWVLL
 iKaBu2q/bfOTcRb/4/iL5zLqWHaTHhhbyU249Rs=
X-Google-Smtp-Source: APXvYqzGobjNTLbO12oYewsokogG+/KV0SXpLhhD14XqLSAjzhEd+RRnHx0KzRnsrEB+ejjinQ6llWnvEnOW4DXSQWs=
X-Received: by 2002:a67:f401:: with SMTP id p1mr4220228vsn.178.1571415063077; 
 Fri, 18 Oct 2019 09:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191018124840.30977-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191018124840.30977-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 18 Oct 2019 17:10:35 +0100
Message-ID: <CAM0jSHOKHkfD7nZyVM1eAsmFSB4tx7RKq2rqc8sHY9aNS8NHyQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=nWePQ5rK2T8TvobsvgIk1PaCy6oUQvQhSjBfX/GJpj4=;
 b=kBHjT0b6bqO9V9vgZzqrASu7FOuYFTCIvQ5kQ2jYYyRBzcqf4BuQEH6oPQa7Z96IRk
 vGWSRZamIE2JMaWn6vnoTiu45cg2+MWG6PxnptbckooOqc+uWqIm7HCnmTpBP2qxeIC2
 1laUUzTLpjeIMxQeHonZgV14jZK40X7RyVVtQtRGD8E4GuaYVng7VJGhUoTfbijqle13
 sUm6YLRlh0BzODxAhCgOYN6UmwBS9byX0kgcyR9RNEol1lKS4ZdY/LO/yCt2dy9zV1GB
 U2eNb6Rz53/xvrPmLKT1lJw1ICb6Ac7W5tXkTvB9nQ75nuqL3aJzOo0Y6YM1ZonkL9DB
 qO1g==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Split memory_region
 initialisation into its own file
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxOCBPY3QgMjAxOSBhdCAxMzo0OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gUHVsbCB0aGUgbWVtb3J5IHJlZ2lvbiBib29ra2VlcGlu
ZyBpbnRvIGl0cyBmaWxlLiBMZXQncyBzdGFydCBjbGVhbiBhbmQKPiBzZWUgaG93IGxvbmcgaXQg
bGFzdHMhCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKTXVj
aCBiZXR0ZXIsClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E448B430D22
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 02:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35DFE6E8E9;
	Mon, 18 Oct 2021 00:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C879C6E8E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 00:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634517829;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Jclwnqz62MhBIz4LKz8fxKk0+KHtSrNn2dMhNTtgRqU=;
 b=YFtOvLWq+pObKUHfSSJKSCqWAUh4zpLT6N8W8PkcCh+oZ7WlRcXaPYysrGGjYndyZg/B3G
 AhwQbyimGOrU0cvpoOilzSKngy53azTjL9594LUguvk6eNXxzBq680lbIhdJSjjAEo3zX9
 dbHe5dTu4RRHO9pUosSvVrK5Nf939D8=
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-570-Qbr4yMBpPzmHDHDPPmYKWg-1; Sun, 17 Oct 2021 20:43:47 -0400
X-MC-Unique: Qbr4yMBpPzmHDHDPPmYKWg-1
Received: by mail-oo1-f69.google.com with SMTP id
 k3-20020a4a3103000000b002b733cd21e6so6003153ooa.19
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 17:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Jclwnqz62MhBIz4LKz8fxKk0+KHtSrNn2dMhNTtgRqU=;
 b=KPvjSgVwZRzgl+UwB5QYB6rdGcNEcYG/WIxgrvhKW3qhzvla9ReFwU/Yklrq2ArK9r
 WuCZwUVkZTs2260jghLAvFShkoruqXrjsj03hVRvNWwlSOsZaqL1OCQ73PYM/lQnwlHd
 OkTFOaHnWbHzxd3tkiHgjgFIcIkZ/1VnQdX428bNIUEaHA6fyPc0302Vt6LhnbrA1b7f
 kxIvYj01HoQWbOvFmjcfix1KmGZdUZbbqAFSA6YY/OPbHmQ7F4dc8biUGMhS5TYVQaTZ
 Eu1+wNrmaNFqmWcPzvt0exKjxI9rKp0p2JyZy0GWmTaOkwaYHWFUyvGp70sPYZegpfUL
 Hd0g==
X-Gm-Message-State: AOAM530KXCPU3aynDqzRLETFykDqCKdCYNbXTPY85U1nITDwEgqSsLlS
 Z26kioGFpcfZbuj5v1tjzS2HeM4wwshytiE2aAhxFWxfBBKQtUhGdQerYQVa7t85f1xx+PESmjB
 UVyOYMod5aBEb8z+LfCSnQNRBqcKC8MCAhOOksINYLJ2X
X-Received: by 2002:a9d:189:: with SMTP id e9mr19295512ote.243.1634517826907; 
 Sun, 17 Oct 2021 17:43:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzI+klkPzyd7vVJqFPpV52EioPoPBZ16qRWpef/jIqzcgYNgEZ/OpjQ2qg2NPI4Oc22qYpn0pqKfX6yI6cVAW4=
X-Received: by 2002:a9d:189:: with SMTP id e9mr19295501ote.243.1634517826770; 
 Sun, 17 Oct 2021 17:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-9-ville.syrjala@linux.intel.com>
From: David Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 10:43:35 +1000
Message-ID: <CAMwc25qET8cH5iMcuvOXU0RA7FUOfpiosT1CxH=NoaZ6coTYKw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915: Move
 intel_ddi_fdi_post_disable() to fdi code
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 15, 2021 at 5:17 PM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reanme intel_ddi_fdi_post_disable() to hsw_fdi_disable() and
> relocate it next to all the other code dealing with FDI_RX.
> intel_ddi.c has now been cleansed of FDI_RX.
>
> In order to avoid exposing intel_disable_ddi_buf() outside
> intel_ddi.c we can just open code the DDI_BUF_CTL write. The
> enable side already has all that stuff open coded so
> this actually is more symmetric. But we do need to remeber
> to bring the intel_wait_ddi_buf_idle() call over from
> inside intel_disable_ddi_buf().
>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Dave Airlie <airlied@redhat.com>


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C38F430D24
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 02:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CBA86E8E5;
	Mon, 18 Oct 2021 00:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E9E6E8E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 00:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634517878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pMwbQqtjysa/a2wo85zJBfmotDNJSUUEt+LxTn5Npkg=;
 b=e5C5BJwNjEGkm3vuqntzc9r7hbXUS5yRGZ4jjR7GzLhK1TyDIQnSbZhWAArQTweGBrnbPn
 Ryi/s4M/RzRmmQIi3OaUhdaNZV7t1BuvAnZVYrwjuxyHwniIiI73aIB9ipRkIeYUTbyja1
 5PhdB/wivvBpOA0dQkSez8pcS0k2g7c=
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com
 [209.85.210.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-BQjUUg4_MoyujsrRSjMAYQ-1; Sun, 17 Oct 2021 20:44:37 -0400
X-MC-Unique: BQjUUg4_MoyujsrRSjMAYQ-1
Received: by mail-ot1-f71.google.com with SMTP id
 x25-20020a9d6d99000000b0051bf9bfc12fso9712775otp.8
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 17:44:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pMwbQqtjysa/a2wo85zJBfmotDNJSUUEt+LxTn5Npkg=;
 b=XyJRJUM/THjC+K39/Gpep/VueIjcrq5yuLJ1mg5y7Pc/+OAYdH8haOxFMLHtKPKpKL
 cPFDyQcgN3NhNpOiBLjDjNwZz/GO6RSQtDNn66CL1DWgT8aNDWvdILrConKbI6/8zVxC
 sT+TcNuBkS1OQofW26aWrLNOIAcqPj92SpdSRHsQa7mFeQ0tv+udJHpiZBHynemyl69F
 qHHwfEM3CZo5rPKtsufSszWHuLFmHGasyuMCMo7k+vVelZ5P52O5GD1txBE4LWE/cLqw
 F3A9OXXZ6W1UeRyF0mhVCbO3dXLTuRS/SdxFZbvHkeGMz+R/VVIqq0YFJYYOBeqhK+7Q
 8Lvw==
X-Gm-Message-State: AOAM531069u+/bz5eJZD3wV+eplkdo2Z/PPhK0IGd5d77DHK/zz4P/wI
 1K2FaFNgh6BifFa7bYoDLvt1mIAycxvMlPHh7/Qzh9/6eGqyd60llS9/OCtkfnq3JOwQzW7sJ2c
 6zej4SlBupiylKb8YkeRiCX4b+HCTKQdoojwq7awiPqlN
X-Received: by 2002:a05:6808:14d6:: with SMTP id
 f22mr2969154oiw.152.1634517876821; 
 Sun, 17 Oct 2021 17:44:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxrGGEzfBJVqB4dLObH8U5WiVqstfhDHqkpmpfQs4WvbqhmlYWItrASa5o4n6sRo+NcJ4Ka1F5Y5fPZJHgQb5I=
X-Received: by 2002:a05:6808:14d6:: with SMTP id
 f22mr2969146oiw.152.1634517876700; 
 Sun, 17 Oct 2021 17:44:36 -0700 (PDT)
MIME-Version: 1.0
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-10-ville.syrjala@linux.intel.com>
From: David Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 10:44:25 +1000
Message-ID: <CAMwc25rHzPh5bnWDwxBGE1K9ZXmSybO3eH6z4Z9n8XV51+3hAA@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Introduce lpt_pch_disable()
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
> Let's add lpt_pch_disable() as the counterpart to
> lpt_pch_enable().
>
> Note that unlike the ilk+ code the fdi_link_train()
> and fdi_disable() calls are still left directly in
> intel_crt.c. If we wanted to move those we'd need to
> add lpt_pch_pre_enable(). But the two fdi direct fdi
> calls are pretry symmetric so it doesn't seem too bad
> to just keep them as is.
>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

apart from krobot suggestions.


Reviewed-by: Dave Airlie <airlied@redhat.com>


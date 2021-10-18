Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5E7430D21
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 02:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841CA6E8E4;
	Mon, 18 Oct 2021 00:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE586E8E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 00:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634517811;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fIcHej/2wAUjMYD4ahhqQNJTZw4ZKDxjIJ6sNJKpaCo=;
 b=IpGWzWyJQ3P/T9AD+ld+/8NU8LBOB4eJztoNHHndvsiErxa4YFNGKXP8Gj/je27sgh3RxL
 2ZRGJgiFiB/fS1euJeq5lAu9Tq9u2nmS0igCwPXDCqi8pHEG/RNgU3XL958ow9z1/II4Iy
 /J07G7tGRTvArbzFydEOa2pw+qC9omg=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-vuXEurBsNm2wAdDjJFishw-1; Sun, 17 Oct 2021 20:43:30 -0400
X-MC-Unique: vuXEurBsNm2wAdDjJFishw-1
Received: by mail-oo1-f71.google.com with SMTP id
 k1-20020a4a8501000000b0029ac7b9dc82so6604530ooh.17
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 17:43:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fIcHej/2wAUjMYD4ahhqQNJTZw4ZKDxjIJ6sNJKpaCo=;
 b=KEdVpEv3VsskMtRrchWmdzczt0aRzHR2y7gRiJRRZhUXqMm7o6vI+s/U7Mlt2pORtz
 OE1a+4Maft3fx2OEA6hY1SjOjKPisyspQzAxIgv7iRxwdN38qvcLmd4TCqY9vj/8XJu+
 Du+0p0/gbI+HiSh0y1J90zFz2khCX3GLn7KQQVCRxf8KJdW0Bn+8tAbBdwEJy7DAMTe5
 3/tmTWWsN5472jOFI8//wiZfW+hIUdx9eAlaIWk4Wd6teddCE16wX+1MrlnUX+47bC8B
 kIN85yMk9L7RT3kSEoE2cnYMzHFbcKx5rC8Z5Qk6HFBk1H//ot1vo8qn+POFz7DyMHoL
 k+vw==
X-Gm-Message-State: AOAM533GrvZ29zj/i5m9aSUaTV7RlGqBUO0xKtb14PoTSBOnXGx42SWu
 /Wra1nx4EgmN4XR2gHgrexSn4yeHLYZmvw/AqaXOHG6CjHVSAhqwEhOSUxY3NJSy6b9j0dNXsrK
 qa+J6GcyD9jyZSA9h33W+lfHbkhEW6hlFEhgJHiklAP86
X-Received: by 2002:a05:6808:14d6:: with SMTP id
 f22mr2966726oiw.152.1634517809928; 
 Sun, 17 Oct 2021 17:43:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyMsS715bAR+beGP2kkr/FqAWSQfXig2OG7xwwuPXOHiaDBL3xLb0dXNNeY8Uyd9RNphSBXUJ8rS9hma6f6s+A=
X-Received: by 2002:a05:6808:14d6:: with SMTP id
 f22mr2966721oiw.152.1634517809772; 
 Sun, 17 Oct 2021 17:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-8-ville.syrjala@linux.intel.com>
From: David Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 10:43:18 +1000
Message-ID: <CAMwc25r2df1PV0w1sD2kvE5=wocwcuNvHv9nmDRMYzGXbo34Bw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Introduce ilk_pch_disable()
 and ilk_pch_post_disable()
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
> Hoover the remaining open coded PCH modeset sequence bits
> out from ilk_crtc_disable(). Somewhat annoyingly the
> enable vs. disable is a bit asymmetric so we need two
> functions for the disable case.
>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Dave Airlie <airlied@redhat.com>


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0E54AE32C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 23:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D09E10E504;
	Tue,  8 Feb 2022 22:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D20A10E27B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 22:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644357745;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v+/tNcBi1hqQ3zAZ+kreP8zrjRNSZd5An8aAqUlnWDs=;
 b=WfbEXzv9w0RgLT4gJfNoog46HXLBPXthn+0AmOvqfKHvgnYsuool06jHRRyU8UP6jdJccJ
 1OoeZjUmYDkpDlzmPwfhAHc/SPw8ngTCygc90HD5BLAClOcZp7XDwGIzV7d1d0m8Qw9MOa
 VtJVPsdGVGToHDGh9qAY+xrZmI3wH3o=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-_cSXUBf4MBWZdPYtiJw95A-1; Tue, 08 Feb 2022 17:02:21 -0500
X-MC-Unique: _cSXUBf4MBWZdPYtiJw95A-1
Received: by mail-qk1-f197.google.com with SMTP id
 u12-20020a05620a0c4c00b00475a9324977so134207qki.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 14:02:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=v+/tNcBi1hqQ3zAZ+kreP8zrjRNSZd5An8aAqUlnWDs=;
 b=6NDQWi3DQ3EkdTfTaW96DyirLW3t9iln4K8XB2Vs0XAl8wc4hbcILKDzTv/F7g3TQ1
 LHNNJ/+VDaDSZDWzS/+PSKV2VgUTJwXD0Z7wqDFn4Jr01HCLfEL7BGOl2KpUSMovL4fZ
 fOY6rWtRly6HdWK4Vd1+it9TS59gHte26zsyVNKplqQ6nbGW7PegiZHo2dG0hnrpr6lk
 PV2z72BX5e98iks1q2FUMUeoKMut3gRLkw1ZCW4SJSWgiWfm6v3mn4bwO/Tn2ll38lrb
 jOGnMbi630ou4QVNan6QT+9LJMIbhOC6KC2SBYd6qtuXAOclfpF15Cjx9tHHMPwpxgam
 HpLA==
X-Gm-Message-State: AOAM533JjgFWo6YCv9LljK0kBWSNB+jvu3IgcbgdPFstMOXKCWrQIYxU
 rXI02j/mHIiUingY/OevRiEKGlur+BVgATX/9EJ3CtcJITb5R72rIkCnV9KFBZpYcdcq/tEgnxg
 ZzC6NDcSmOEC67mdtSOHZBl8wS/AP
X-Received: by 2002:a05:6214:62b:: with SMTP id
 a11mr4576793qvx.99.1644357741258; 
 Tue, 08 Feb 2022 14:02:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxzDmob0mRw3m+J1LeJvrujTFW2KQpp8qCWQ71N6Q6IhmpZwPecRLzOaHkQFsysr2sKjwHqKQ==
X-Received: by 2002:a05:6214:62b:: with SMTP id
 a11mr4576772qvx.99.1644357741022; 
 Tue, 08 Feb 2022 14:02:21 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15])
 by smtp.gmail.com with ESMTPSA id d6sm8080823qtb.55.2022.02.08.14.02.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 14:02:20 -0800 (PST)
Message-ID: <10bfefe40b9cb82610d4f1e8d3e7293824fac03b.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Souza, Jose" <jose.souza@intel.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 08 Feb 2022 17:02:18 -0500
In-Reply-To: <47eed687da699a6abbfd7726439fd307786c9d93.camel@intel.com>
References: <20220207213923.3605-1-lyude@redhat.com>
 <47eed687da699a6abbfd7726439fd307786c9d93.camel@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Disable PSR2 selective fetch
 for all TGL steps
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
Cc: "airlied@linux.ie" <airlied@linux.ie>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Opened the issue at https://gitlab.freedesktop.org/drm/intel/-/issues/5077 ,
included dmesg + video. Feel free to let me know if you need any more info, or
need me to try any patches

On Tue, 2022-02-08 at 13:06 +0000, Souza, Jose wrote:
> On Mon, 2022-02-07 at 16:38 -0500, Lyude Paul wrote:
> > As we've unfortunately started to come to expect from PSR on Intel
> > platforms, PSR2 selective fetch is not at all ready to be enabled on
> > Tigerlake as it results in severe flickering issues - at least on this
> > ThinkPad X1 Carbon 9th generation. The easiest way I've found of
> > reproducing these issues is to just move the cursor around the left border
> > of the screen (suspicious…).
> 
> Where is the bug for that? Where is the logs?
> We can't go from enabled to disabled without any debug and because of a
> single device.
> In the mean time you have the option to set the i915 parameter to disable
> it.
> 
> > 
> > So, fix people's displays again and turn PSR2 selective fetch off for all
> > steppings of Tigerlake. This can be re-enabled again if someone from Intel
> > finds the time to fix this functionality on OEM machines.
> > 
> > Signed-off-by: Lyude Paul <lyude@redhat.com>
> > Fixes: 7f6002e58025 ("drm/i915/display: Enable PSR2 selective fetch by
> > default")
> > Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: José Roberto de Souza <jose.souza@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Cc: <stable@vger.kernel.org> # v5.16+
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index a1a663f362e7..25c16abcd9cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -737,10 +737,14 @@ static bool intel_psr2_sel_fetch_config_valid(struct
> > intel_dp *intel_dp,
> >                 return false;
> >         }
> >  
> > -       /* Wa_14010254185 Wa_14010103792 */
> > -       if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > +       /*
> > +        * There's two things stopping this from being enabled on TGL:
> > +        * For steps A0-C0: workarounds Wa_14010254185 Wa_14010103792 are
> > missing
> > +        * For all steps: PSR2 selective fetch causes screen flickering
> > +        */
> > +       if (IS_TIGERLAKE(dev_priv)) {
> >                 drm_dbg_kms(&dev_priv->drm,
> > -                           "PSR2 sel fetch not enabled, missing the
> > implementation of WAs\n");
> > +                           "PSR2 sel fetch not enabled, currently broken
> > on TGL\n");
> >                 return false;
> >         }
> >  
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat


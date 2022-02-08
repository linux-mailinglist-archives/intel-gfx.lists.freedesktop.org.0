Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8364AE05B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 19:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470BF10E971;
	Tue,  8 Feb 2022 18:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D74C10E97B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 18:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644343754;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=D/59mzxAxGpcuRuvJCsAZqxLYdHzeJaGwUP97h2Fvxg=;
 b=G+vBbN1Ad5W7S2gaofDNJZGFiX1+NbQkgaNjrjUmhWt7a9GnwPw8QXfgWPdD976fDMc/jv
 yOpTKdraI79lQE6Kp8CfB3OsFtvd6vZayR0fIIZZEGEhysYqsxvTGW2+N14VswbhI+2mdE
 ry+Ok+jOey+VWiJUl/+imYBorEbARz4=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-245-FEK74v2vN6i_qkX6Y4cg0g-1; Tue, 08 Feb 2022 13:09:14 -0500
X-MC-Unique: FEK74v2vN6i_qkX6Y4cg0g-1
Received: by mail-qt1-f197.google.com with SMTP id
 a28-20020ac84d9c000000b002d05c958a84so14235766qtw.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 10:09:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=D/59mzxAxGpcuRuvJCsAZqxLYdHzeJaGwUP97h2Fvxg=;
 b=Gr9PXxel2nw1PqAMy0mZkVfYsWJAtEhMLJUU/ccKN8pL+1TT1RCCymnQv+LWm88MSA
 P4Tbv7/DbFj5OBN4B+DGSdruo3TkGjkhPzjU+iGpJPlgnkLF56Pu3K04shJ4k4zErsEO
 CQSnBAdQu+bZQTwhZ7/uY+HsLO2SEkyr3vMEK60/jFZqKh4174EzDLo0tQc7S/hqOo1b
 hjLcMa1vCVN1f8LOSbZyDhVuCqBbCfnyElMV04xgSyfUSjakCESral9q2hVFeBVgtBeb
 VJc6HnutgMZgbiDfDptSUetvGe0fQpeleLL3b0AJ4Q3iWmnqqa5k15X2xIH1cEUJpwsy
 nzDA==
X-Gm-Message-State: AOAM533FmIWUo7sXJ0muxauAazQJ2ust3aBwmn7UmrMWBMcE4+ljxbgZ
 Yq2wzyWGBWb87tEGdRvKKuu/8dL6deA2P51CfQjc3M2jIuPHyRgVPj5rYxzpOET0aXdaN0avPfx
 G55ZLgrJpC+7CQ0UPBVB5Mb6+cgZJ
X-Received: by 2002:a05:6214:2aad:: with SMTP id
 js13mr4206752qvb.32.1644343753177; 
 Tue, 08 Feb 2022 10:09:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx6hYcmhpCrfUjUFKNHPDOzALofgJurmeN1dJb255nAGw0T7FIS2Qoz5AwnzSFbBkPqC8/MWw==
X-Received: by 2002:a05:6214:2aad:: with SMTP id
 js13mr4206733qvb.32.1644343752985; 
 Tue, 08 Feb 2022 10:09:12 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15])
 by smtp.gmail.com with ESMTPSA id s2sm7006656qks.60.2022.02.08.10.09.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 10:09:12 -0800 (PST)
Message-ID: <eaaeecd5c0c80c8bf2ac81c48f603920b0c12248.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "Souza, Jose" <jose.souza@intel.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 08 Feb 2022 13:09:10 -0500
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

I'm happy to open up a bug and include some logs, will do it in just a moment

> We can't go from enabled to disabled without any debug and because of a
> single device.
> In the mean time you have the option to set the i915 parameter to disable
> it.

I mean - I totally understand the hesistance with the lack of debug info, I'll
go open up an issue with said info in a bit. FWIW is a machine currently being
sold with Linux pre-installs which is expected to work out of the box, so it's
not exactly an uncommon laptop to be running Linux. Also I don't have any
problem with us trying to fix the issue before flat out disabling things - I
sent the revert hoping that would happen, and also because I needed to write
the revert anyway since I had to disable this in Fedora's kernel.

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


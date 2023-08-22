Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81521784424
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 16:28:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C0210E377;
	Tue, 22 Aug 2023 14:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE80E10E381
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 14:28:51 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-9a1b952e2e1so18647166b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 07:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1692714530; x=1693319330;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=x1z3oj15aWVBfA1AbgwNk3JNTKQtrQ1wLjBwqO7l50k=;
 b=iWIvBDyvyaYh0WH9CS3AxO3LBKjLUTKjK/CuwnyMCdcgxo50ue6QG2Umui7oAKbXst
 5Pb59KgG3E1hQcU7SWoh7EQTY4jXHVlntQU3/Mnvu6HzuzoI3c5z+ICqOuxTlnYBWd+s
 eL5NwTYK45a0uVx04sQ6pvo+uClK81Ir3tdI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692714530; x=1693319330;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=x1z3oj15aWVBfA1AbgwNk3JNTKQtrQ1wLjBwqO7l50k=;
 b=i1Bb7zQWmijCJsXScz+TWG9vhZPeisZ4Zu97tcQxtHVKYEMDVyXXjzhKy0BIi+BYbD
 IYPzdUCk7qkKqSplNlC6V+nvcluMzoYx6YEaf5tNMWu1PyMaBOlZSVaxCmSOzF1hK5Kl
 PlOzmvhJcK1Yt5Z/WpD46jRpWhycHa5coTzoaeeqaxo2/HSZPxRo0t5uJcjakZ3Z2Hnu
 r1q+IolY6ZXQDQprbB1T4FN4LerSAe8xYFlO/7ESEY3DCPFazYa3MdiISGHJNjeqzvio
 F2RAiDR8yISX96MvfXp02dW3zXEBtTz/95gKAt3dNC0HytSYWiV/+IoFNr4NXdr5aeLU
 Vm4A==
X-Gm-Message-State: AOJu0YwwhafCN1mr/Fx6ZXPZNqVo9J0F2GXV0CK8kiIDEIDBrW+BBI56
 kS4fMQbeQKu9ASGBkIprAtAxKQ==
X-Google-Smtp-Source: AGHT+IHCX0NsokHSCnMwwATqRGa9GSMwVHb7gwwK45CLkQrFK+GM3NJs0CfPvMOt2fTBtjHAvKkqcA==
X-Received: by 2002:a17:906:10cc:b0:9a1:c4ce:65b8 with SMTP id
 v12-20020a17090610cc00b009a1c4ce65b8mr577913ejv.4.1692714530381; 
 Tue, 22 Aug 2023 07:28:50 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 f26-20020a170906391a00b0099d798a6bb5sm8249289eje.67.2023.08.22.07.28.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Aug 2023 07:28:49 -0700 (PDT)
Date: Tue, 22 Aug 2023 16:28:47 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Dong, Zhanjun" <zhanjun.dong@intel.com>
Message-ID: <ZOTGH4yg0/wvvws1@phenom.ffwll.local>
References: <20230811182011.546026-1-zhanjun.dong@intel.com>
 <ZOS9NURIoBK1lyi8@phenom.ffwll.local>
 <SN6PR11MB26223C5DDEE01B6CF285532C8F1FA@SN6PR11MB2622.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SN6PR11MB26223C5DDEE01B6CF285532C8F1FA@SN6PR11MB2622.namprd11.prod.outlook.com>
X-Operating-System: Linux phenom 6.3.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Avoid circular locking
 dependency when flush delayed work on gt reset
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 22, 2023 at 02:14:28PM +0000, Dong, Zhanjun wrote:
> 
> 
> > -----Original Message-----
> > From: Daniel Vetter <daniel@ffwll.ch>
> > Sent: August 22, 2023 9:51 AM
> > To: Dong, Zhanjun <zhanjun.dong@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; Harrison,
> > John C <john.c.harrison@intel.com>; Andi Shyti <andi.shyti@linux.intel.com>;
> > Daniel Vetter <daniel@ffwll.ch>
> > Subject: Re: [PATCH v5] drm/i915: Avoid circular locking dependency when
> > flush delayed work on gt reset
> > 
> > On Fri, Aug 11, 2023 at 11:20:11AM -0700, Zhanjun Dong wrote:
> > > This attempts to avoid circular locking dependency between flush delayed
> > > work and intel_gt_reset.
> > > When intel_gt_reset was called, task will hold a lock.
> > > To cacel delayed work here, the _sync version will also acquire a lock,
> > > which might trigger the possible cirular locking dependency warning.
> > > When intel_gt_reset called, reset_in_progress flag will be set, add code
> > > to check the flag, call async verion if reset is in progress.
> > >
> > > Signed-off-by: Zhanjun Dong <zhanjun.dong@intel.com>
> > > Cc: John Harrison <John.C.Harrison@Intel.com>
> > > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > ---
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 11 ++++++++++-
> > >  1 file changed, 10 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index a0e3ef1c65d2..600388c849f7 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -1359,7 +1359,16 @@ static void guc_enable_busyness_worker(struct
> > intel_guc *guc)
> > >
> > >  static void guc_cancel_busyness_worker(struct intel_guc *guc)
> > >  {
> > > -	cancel_delayed_work_sync(&guc->timestamp.work);
> > > +	/*
> > > +	 * When intel_gt_reset was called, task will hold a lock.
> > > +	 * To cacel delayed work here, the _sync version will also acquire a lock,
> > which might
> > > +	 * trigger the possible cirular locking dependency warning.
> > 
> > This is not even close to a locking bugfix. Consider this a formal nack,
> > because the issue here is not even close to "needs more comments to
> > explain what's going on".
> > -Daniel
> 
> The purpose of the comment here it is to explain locking issue condition
> > 
> > > +	 * Check the reset_in_progress flag, call async verion if reset is in
> > progress.
> 
> 
> The comment here explains check with the flag to avoid locking condition.
> The reset process is not considered to be complete in short time, other than that, do we missed anything?

Either the _sync is not needed at all, in case you need to explain why.
Which this patch doesn't. And if the _sync isn't needed, then it's
probably not needed in all/most cases?

Or the _sync is needed, and in that case you just replace a potential
deadlock scenario with a potential race condition.

In neither case should this patch here be merged.
-Daniel

> 
> > > +	 */
> > > +	if (guc_to_gt(guc)->uc.reset_in_progress)
> > > +		cancel_delayed_work(&guc->timestamp.work);
> > > +	else
> > > +		cancel_delayed_work_sync(&guc->timestamp.work);
> > >  }
> > >
> > >  static void __reset_guc_busyness_stats(struct intel_guc *guc)
> > > --
> > > 2.34.1
> > >
> > 
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60121843140
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8A0113723;
	Tue, 30 Jan 2024 23:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F5C113723
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:28:51 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id
 6a1803df08f44-6869233d472so32236196d6.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706657270; x=1707262070;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Pl0ZhX+iLz/X6gNYRyJAaFxE17vuP0ChN6QqCUewRdw=;
 b=BvVxRyNE3XXxhNB0hOkVm3kQEJDnay0W8CGkVp2/M+cj+SSCWiryCY6WCXeCSrfT3/
 QJ2KQCCmCG9LJEUR5fXicbYoSb+I15vvGg3rPouichlj7Zrv0ZdxWTzwjrk4epCoUprh
 Z4slN7wlRJ3KHLeWAQKguS0jxdKGe4tqzzaLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706657270; x=1707262070;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Pl0ZhX+iLz/X6gNYRyJAaFxE17vuP0ChN6QqCUewRdw=;
 b=FFR+OTOrLdIsCeCtROUgroufOUont6Kgb0v2uNUhu5kmcGBanppSAbrD+5/Qg/Esz+
 fIZwWI261oeXpDlKcI/coz2TU2EwOqen4GZ53CllNYAzh/gqYvlerFdF9fwL8k58umGQ
 Ix+NltmevDyxRVvUWFcZb/zX9o8LaJ8mo92BVbyHku2cZmOCHGOev5o3BH6XDmAQcGWl
 lc/Oy51/DgaLIPGrPpLJ6X2r3uvxbiABNZQB8gpiV6hueTTpsAu1emiBKzi3NWmamJhZ
 B8q/vGWYX9kCzmxUwqKrLgYXR5/Yu2X2TOaVusE1E5Oh9CVT77B0UH/PQrXb1BH5rgQi
 XPUg==
X-Gm-Message-State: AOJu0YzJYj1l4PC27nCML+uFAtAvMSy2kBNhYxz5BRfh1gLB3+ZxTGKQ
 ohG/r0VGctsI8GM1HmJfLQYdDABM7dzjasOzqGRHyUpyRnWj0zUUDfdLyBn6Mw==
X-Google-Smtp-Source: AGHT+IFc2QmiwDQPSWusNSbZHblbkOAwUWKXokltQIAFYgKp3H5P0pP638KwTCFjF2CSjp8zle0Few==
X-Received: by 2002:a05:6214:d44:b0:685:97e7:afce with SMTP id
 4-20020a0562140d4400b0068597e7afcemr64951qvr.10.1706657270564; 
 Tue, 30 Jan 2024 15:27:50 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 oo29-20020a056214451d00b0068c373857edsm4515942qvb.73.2024.01.30.15.27.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:27:50 -0800 (PST)
Date: Tue, 30 Jan 2024 23:27:49 +0000
From: Paz Zcharya <pazz@chromium.org>
To: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH v3 16/16] drm/i915: Annotate more of the BIOS fb takeover
 failure paths
Message-ID: <ZbmF9YMEDAivx6jF@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-17-ville.syrjala@linux.intel.com>
 <CY5PR11MB6344E9E8201862F7489FF4A6F4752@CY5PR11MB6344.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY5PR11MB6344E9E8201862F7489FF4A6F4752@CY5PR11MB6344.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 22, 2024 at 03:12:01PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Tuesday, January 16, 2024 1:27 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH v3 16/16] drm/i915: Annotate more of the BIOS fb takeover
> > failure paths
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Annotate a few more of the failure paths on the initial BIOS fb takeover to avoid
> > having to guess why things aren't working the way we expect.
> 
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>


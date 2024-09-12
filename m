Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B85E97691F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 14:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0008F10E218;
	Thu, 12 Sep 2024 12:28:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="kyiG2kXI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A518710E218
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 12:28:13 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id
 38308e7fff4ca-2f75c6ed397so10234541fa.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 05:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1726144091; x=1726748891; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Nl/pzHbhLOzz441VrKGLN3ifLEKBri2nTyCnIIMSwgg=;
 b=kyiG2kXIcFuXClckflsiuYwTAe0XYyqckRmb8mUVnVkAIcFbGN+EQOm0hAXI228Ey5
 FyxNgTktjb41XGaGI4L9je99+ydgvMy+ZaVTy/7hb6D6dHOtnckBzfi4y38abI//p4jT
 ExxXcrjuGv4x/VHmBEjL9nCzvfZO7+o+uOE/upqn+p4gSTdYVJ5q6NtsqqYjD/H89CsQ
 gKeeB9KkoEwVXbJ6hZS8bKw1plDNBsb7N/iaXbrQzHQlNiThSfmGEz4adfKJVyHJUbye
 EarDsblHWui7fjJZJXjOHjv8h6ozVB+4OYVnc+zRWv7+iBTdAKktzINkxfY0gqhbhOLX
 SvSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726144091; x=1726748891;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Nl/pzHbhLOzz441VrKGLN3ifLEKBri2nTyCnIIMSwgg=;
 b=BjtrGtHBXkhMGcduDsYYkQiubQvOSQ2m+Ywn6lUGLgltjFHK0PNS1pLoaTzJhTYqP0
 yRP4QqKE+bzlogP+Rd8LzlGrctFhaiWDlaaIMmGlni6q99OtHDskv8CBL3+SFJ9O9AdX
 oLS8PHhd9zQZX1zGVRW6CLifxooFBgRx4lsMiEtmez69CXwpA7qNbeMUZFJWud5vFPwN
 ORbJizLBl4dvQqENy45simMlHbOm5gYFiNEIZC+bWgf1KQK2ZpgE9GvBt0pdf4wuHW6Q
 GUF0ATuHgaWMrDYM7udyLz40yW+sabLzvkZ+HxNKQwcWtz1J0NkUDV90kfW6tZoY1Uvi
 1lLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWIZXhsziKnfwqds3Abr/PxDaPBhiqnPTdMEsg84fRYmeuuWfnHPh04KVMxgE2iuxhITj428xySMyk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzg88PI0qpvZru8EVrnaIasuvyk0jLAxEKvCxk+ks/0WfbxOisH
 nrGbnpaePQn8uncxA21CkmrC9YHQQtTVRnXxkZewA7UvKSjZrY7m48HGuTZBFmw=
X-Google-Smtp-Source: AGHT+IFeeErHHjfyvJWyQ+cnrtXNl0pyMGb74TL8Cog6G87KqqxNaP9uq5woHyEWVmAwe2h9OjT+/A==
X-Received: by 2002:a2e:be22:0:b0:2f6:63d1:166e with SMTP id
 38308e7fff4ca-2f787da0b93mr16054701fa.3.1726144090794; 
 Thu, 12 Sep 2024 05:28:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-2f75c07c830sm18225791fa.100.2024.09.12.05.28.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2024 05:28:10 -0700 (PDT)
Date: Thu, 12 Sep 2024 15:28:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Jani Nikula <jani.nikula@intel.com>, Arnaud Vrac <avrac@freebox.fr>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 
 Nathan Chancellor <nathan@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 7/8] drm/msmi: annotate pll_cmp_to_fdata() with
 __maybe_unused
Message-ID: <uosenmxvixug7yfakpbynbltryvvxqc2hxtagby362c2lvps22@kce4vsbi7xql>
References: <cover.1725962479.git.jani.nikula@intel.com>
 <3553b1db35665e6ff08592e35eb438a574d1ad65.1725962479.git.jani.nikula@intel.com>
 <4ag2efwiizn5bnskauekqwfhgl4gioafcvetpvsmbdgg37bdja@3g6tt4rlfwcb>
 <19ac4e25-7609-4d92-8687-585c6ea00c79@freebox.fr>
 <878qvyjxpg.fsf@intel.com>
 <9028f858-8c6d-4292-a6aa-27eedff3ac8b@freebox.fr>
 <87ed5pgm2i.fsf@intel.com>
 <c2ed3380-82c3-43a3-9c01-534b08333f95@freebox.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c2ed3380-82c3-43a3-9c01-534b08333f95@freebox.fr>
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

On Thu, Sep 12, 2024 at 02:14:10PM GMT, Marc Gonzalez wrote:
> On 12/09/2024 13:15, Jani Nikula wrote:
> > On Thu, 12 Sep 2024, Marc Gonzalez wrote:
> >> On 11/09/2024 12:23, Jani Nikula wrote:
> >>> On Tue, 10 Sep 2024, Marc Gonzalez wrote:
> >>>> On 10/09/2024 16:51, Dmitry Baryshkov wrote:
> >>>>> On Tue, Sep 10, 2024 at 01:03:43PM GMT, Jani Nikula wrote:
> >>>>>> See also commit 6863f5643dd7 ("kbuild: allow Clang to find unused static
> >>>>>> inline functions for W=1 build").
> > 
> > [snip]
> > 
> >>> GCC doesn't catch unused static inlines, while Clang does.
> >>
> >> It makes no sense to me that adding "inline" would prevent
> >> GCC from diagnosing the issue... GCC should simply ignore
> >> the "inline" keyword when definition is not in a header file
> >> (maybe they don't store "origin").
> > 
> > Please just read the commit message for the commit I reference above for
> > details. There's not much more I could say about it.
> 
> OK, I read 6863f5643dd7.
> 
> My remark still stands.
> 
> GCC's decision to not warn for unused static inline functions
> in source files (not headers) is questionable at best.

What's the difference between source file and a header after the CPP
run?

> (For the record, I think clang is the devil's spawn.)
> 
> Regards
> 

-- 
With best wishes
Dmitry

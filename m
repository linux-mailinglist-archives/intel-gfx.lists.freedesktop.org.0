Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC698921C2
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 17:39:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B16710E1CB;
	Fri, 29 Mar 2024 16:39:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="cdH6AYm6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44E1010E2E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 16:39:20 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-a4715d4c2cbso291768266b.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 09:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1711730295; x=1712335095; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/4IJgRGM06NOviqS943q0eoM+jAFUKDZuGKLG3uqcdw=;
 b=cdH6AYm6rHQBX4CzOWSz7GkLLeLyyFw8NJanc1TF1bMnURbwwaDI1ccOsvnECVHCsU
 rxT8YZOSC7oPnU8b+CZ5crvpr7wOrqBYfnNBkHDRqKqPSqdYHaV+wbfCMszBocIsqSkb
 8c1sZ9MZi0btm+odXpE8F0v08vualh4ZptGcz7YWiUWQWyaTRFMBrwN9vIb7MYSPPxlR
 NzvlhADdmjSAktB+WIg/IGrajU85Yc3Aw0LjC/ZTDXe3u40sXEoAAEy0a/l3M0ZyKP/p
 HW03UeiOTLxMLK9LBw4EUc3XSd9tqG2RMvNwAjVm+C8gIaCRBHWyQF7S4gFIUg5Bz4Uh
 sc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711730295; x=1712335095;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/4IJgRGM06NOviqS943q0eoM+jAFUKDZuGKLG3uqcdw=;
 b=WrN+0DLtsll+h1n7886/VWQV2ElZA6XDujEjyLrZbdkAFoA1MaTHTQRSxWrGS0AkcU
 u6UZCTIiGkFHtMOSjTgosUBwS4H0bIHDwE8GVszjxcJa1JEjntNBKW17VR/rAG0MEbfG
 IB/RAFocfoxNzXc+Lty6op7wZ0LTdhMfNvH866pma9s96aIXpfZpSv1A0ji+Jtq8TM3C
 BZeLtrYZnE6Osjk1fzIRW6gD+PFct8gs835gRltBF6I4GMfUC0b3tayvxFu3SfRJZDk+
 lglStQF+K2bEIWsWLf9TyAxH5DR3uBUBLEmXt8hGJn1/XGKWNEzfy9Fl1Xao9aCEkVIU
 uZ4A==
X-Forwarded-Encrypted: i=1;
 AJvYcCW8FS0uUxjH9RCrxcnzdo3fU7v4Rcs4Eb5I/1a4T1HyuTPAiaH4f9RGow4ra0PzxgtusM4KLOOFGgAhvGfniXfG2ejHKeQS1QhYPA7gLWCH
X-Gm-Message-State: AOJu0Yyxsgrmm9DTLiCq+4TvnKwbzc+/bP3P7TbpUiTrxhwVKhUaciNp
 63GfydgJf4q8XG4L7Srx/mJglF7yoI4nx1iGqjfjz4fp7aSygXg+jrQ32EpidBE=
X-Google-Smtp-Source: AGHT+IGYuc9/4Rd5s4bvjKY6D6/3RDP02G8Rc6Pnj7PlYLgc7O2MR9Y5UWQFhq2c29iCcrj6VQSzLg==
X-Received: by 2002:a17:907:7204:b0:a4e:3890:615d with SMTP id
 dr4-20020a170907720400b00a4e3890615dmr1596557ejc.45.1711730295271; 
 Fri, 29 Mar 2024 09:38:15 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 cd1-20020a170906b34100b00a4a396ba54asm2128596ejb.93.2024.03.29.09.38.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Mar 2024 09:38:15 -0700 (PDT)
Date: Fri, 29 Mar 2024 19:38:11 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 kernel test robot <lkp@intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 John Harrison <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/guc: Remove bogus null check
Message-ID: <daa13e1c-d75d-4fbb-b400-4d6a633103bd@moroto.mountain>
References: <20240328213107.90632-1-rodrigo.vivi@intel.com>
 <ZgXkI8tw91z_2RYL@ashyti-mobl2.lan> <ZgYbxYoSChiVRDM2@intel.com>
 <ZgZpMvmRBIBZD4uN@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgZpMvmRBIBZD4uN@ashyti-mobl2.lan>
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

On Fri, Mar 29, 2024 at 08:09:38AM +0100, Andi Shyti wrote:
> Hi Rodrigo,
> 
> On Thu, Mar 28, 2024 at 09:39:17PM -0400, Rodrigo Vivi wrote:
> > On Thu, Mar 28, 2024 at 10:41:55PM +0100, Andi Shyti wrote:
> > > On Thu, Mar 28, 2024 at 05:31:07PM -0400, Rodrigo Vivi wrote:
> > > > This null check is bogus because we are already using 'ce' stuff
> > > > in many places before this function is called.
> > > > 
> > > > Having this here is useless and confuses static analyzer tools
> > > > that can see:
> > > > 
> > > > struct intel_engine_cs *engine = ce->engine;
> > > > 
> > > > before this check, in the same function.
> > > > 
> > > > Fixes: cec82816d0d0 ("drm/i915/guc: Use context hints for GT frequency")
> > > 
> > > there is no need to have the Fixes tag here.
> > 
> > why not? I imagine distros that have this commit cec82816d0d0 and use
> > static analyzers would also want this patch ported to silent those, no?!
> 
> Still... it's not a bug. The tag "Fixes:" should be used when a
> bug is fixed, but not for harmless static analyzer reports.
> 
> Besides, if we want to keep the Fixes tag we should also Cc
> stable, i guess checkpatch.pl complains about it.
> 
> (BTW, Cc'ed in this mail we have the inventor of the tag and he
> can confirm after having had his morning coffee :-) ).
> 

Good.  I keep reminding people that I invented the Fixes tag because it
is my proudest achievement.  :)

No.  Only use Fixes tags for bug fixes.

regards,
dan carpenter


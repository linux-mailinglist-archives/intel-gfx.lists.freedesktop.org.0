Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D09E1DA5E2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 01:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E946E45E;
	Tue, 19 May 2020 23:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A706E45E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 23:57:40 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id 50so1239975wrc.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 16:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3IVjLuF1pQZ0weED//GY3xwIzkFFebcdevr/PKP6Y2o=;
 b=aQT9DdlrSQ02hsQKdM49JsY+muoHrd5P7NMn+uLKdFLtFa2W53dVhok12/5TJqQE1L
 CXF6x9Mh8QihjVEPpldKjVzYyHM1i/qup5T60xiBqO+BiFE+f9kDC+SM/glC9Bjdah6t
 f8XLELS7x1LM1lRz2gQFYj/HrWcTe/ohL6sEa02wJX6mNjCNebDALHie+H86Rmx9Dmcx
 Zb99t7L37HcknL2BulQO18szCft/PuW4Bf2rDKi83ynrcQP5f+VmiU/UKlpHnbTpyalx
 55Q5gY73otVOxbYyY71Z80Nnf+HAGSHXTf4z4Fi0k3iys1elW1tplAdxeaRZicJwPnxg
 GjPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3IVjLuF1pQZ0weED//GY3xwIzkFFebcdevr/PKP6Y2o=;
 b=ZVdJT4cIXss6z5OcQSF3zPB4Yg2lpLDdCNE1PQIr0yVUhjOMYx3p7VwzrWFKhNU0T+
 qSJegUzS9APq29vYptRYEijn0jrCMwJBSh/9TtBTsmoYT77jkMWzxFJ6hm6sTVqW/zM4
 X+G4uJ/Pt5krh4f23UNAcCBxMzf9QK+ptFuCFyaBGWG/uUQM0jVFK+b0o7IYac+ysEsV
 c/1Jt0Mk7wZb4VjWrPpxOASBbOYNkreAQ+QTtnb052X0wVLgJiwfLMQcTpcAbS5ovvB0
 Laaus1h0o0w7YcjnlhIJnPjEsoaHdY9uNhILETl8FLfnJ8Z+lBQlnKQTD3S62HmgSJi7
 lYKw==
X-Gm-Message-State: AOAM533UVgvC65I/Ul5f8XHwgu15lDqYxpXJvP7ko3mzkBlz6+/Q0jQM
 /Vpst7TGtTI1XaABmsHjylgeobX3hXmr9qjvxNs=
X-Google-Smtp-Source: ABdhPJwt/WPFZJMdNK8sNjaYtf0FczVaPeQm6q2Fy8skAhhinBuWkxQxvPbiDxERSm1GsuVs3c4SSgakgjDIVs/BduE=
X-Received: by 2002:adf:ea09:: with SMTP id q9mr1353625wrm.399.1589932659071; 
 Tue, 19 May 2020 16:57:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-3-matthew.d.roper@intel.com>
 <83F5C7385F545743AD4FB2A62F75B073482C132A@ORSMSX108.amr.corp.intel.com>
In-Reply-To: <83F5C7385F545743AD4FB2A62F75B073482C132A@ORSMSX108.amr.corp.intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 19 May 2020 16:57:27 -0700
Message-ID: <CAKi4VA+wnY7eY-fLxcfQ1x2nsxg2=z7MRetOF02djtDDo3ENxQ@mail.gmail.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 02/22] x86/gpu: add RKL stolen memory
 support
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
 x86@kernel.org, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cc'ing x86@kernel.org and maintainers

On Wed, May 6, 2020 at 4:52 AM Srivatsa, Anusha
<anusha.srivatsa@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> > Roper
> > Sent: Tuesday, May 5, 2020 4:22 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> > Subject: [Intel-gfx] [PATCH v2 02/22] x86/gpu: add RKL stolen memory support
> >
> > RKL re-uses the same stolen memory registers as TGL and ICL.
> >
> > Bspec: 52055
> > Bspec: 49589
> > Bspec: 49636
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>
> Confirmed with Spec.
> Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>
> > ---
> >  arch/x86/kernel/early-quirks.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> > index 2f9ec14be3b1..a4b5af03dcc1 100644
> > --- a/arch/x86/kernel/early-quirks.c
> > +++ b/arch/x86/kernel/early-quirks.c
> > @@ -550,6 +550,7 @@ static const struct pci_device_id intel_early_ids[]
> > __initconst = {
> >       INTEL_ICL_11_IDS(&gen11_early_ops),
> >       INTEL_EHL_IDS(&gen11_early_ops),
> >       INTEL_TGL_12_IDS(&gen11_early_ops),
> > +     INTEL_RKL_IDS(&gen11_early_ops),

Trying to apply to drm-intel-next-queued checkpatch rightfully complain:

35aad4f58736 (HEAD -> drm-intel-next-queued) x86/gpu: add RKL stolen
memory support
The following files are outside of i915 maintenance scope:
arch/x86/kernel/early-quirks.c

Can we get an ack?  Going forward, for simple changes like this, do
you prefer to still ack on it
or should we just apply to our tree?

thanks
Lucas De Marchi

> >  };
> >
> >  struct resource intel_graphics_stolen_res __ro_after_init =
> > DEFINE_RES_MEM(0, 0);
> > --
> > 2.24.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

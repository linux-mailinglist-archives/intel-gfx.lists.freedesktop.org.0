Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0154A4D5FD2
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473CB10E8E2;
	Fri, 11 Mar 2022 10:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC7E510E8E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 10:38:13 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id j5so6616744qvs.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 02:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g2O3SIJKKORl0CcxjzZgjWcVX9MTHjQ5cFd+Q2ZrlnA=;
 b=fOh/Yk5W36R9hmynUKr11/BoyCBChrT5sa1Ez+3VdpzLlKUkgXWQqlrO2DxGG6p1G9
 3ITZ6LyO8npH1a8vZE4vPYHr/FJDiv5mNLp/yGrmwiCUudCJ59FlvGO2x6wz8IWmf740
 E+0oGzoo060eIpZk86o0jvMUL3MSPsp7jVEeXX8+r2uFF9C76gfRG125wTvK/gA4CyTL
 prwln8Emyr6bW+2A/CSNf8CSS39XPJFOOglVzAOcXcPeQOwF7HPSaPgStTAyXWQP4HBo
 C6DsQ2dacQR/m4JGmgfUwSSJdxdTT/xrv6v7Fs7H4BWpMJAWkXbj0GvWMnH9V/aCizlc
 yN3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g2O3SIJKKORl0CcxjzZgjWcVX9MTHjQ5cFd+Q2ZrlnA=;
 b=c5JTdsi0i1QdXxrdMq1HvoDOZTWy9lc/vqH1RF0CBRsQOpAWGYF/xjKbIuD+l533zz
 Cq0VK/SKIk+xXhVWa97U+GcewQHVW71BW5n247z4ID79pASamxJBUKClwLGSFqGQU3ll
 mQTKH0NqErVO6xeAAxP44JwX640ph7oJ9HSDDkUalXsXzrJBEd/fS5xMPrQs74dEguKT
 H3YJ2UgHXuTvobfTHa40MLShuHyfznxYknoaY/GqHCBdPhGzflkU4QSh9rNlYdK1ubwd
 ZcINRbKPV4f8oPIms6+zq2t5pXAs3Li6zPMJnRlPh7dy04kJ95nCq2RawXtZRctoARID
 TVVw==
X-Gm-Message-State: AOAM532aYBst02KuhDyQTzHxmQWfLcgNVCyf99pYKie9hVavpMx5HpVd
 +vyBPHMGSi/q0em4H8C09+ZTUs4VovVgDXXBZHzgqrMfaho=
X-Google-Smtp-Source: ABdhPJxq2SOwz/h9omIJqTa59kgllQ2jVAiIRNYWH+C6pdpz6jyJiIAUtT8TGeEeEjMAUqQD2Xr//sTxN666WgU+JaE=
X-Received: by 2002:a05:6214:2486:b0:435:31ba:7b3c with SMTP id
 gi6-20020a056214248600b0043531ba7b3cmr7000617qvb.54.1646995093036; Fri, 11
 Mar 2022 02:38:13 -0800 (PST)
MIME-Version: 1.0
References: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
 <1715f90c-6790-cbd7-9e8f-ac371d61b5dd@linux.intel.com>
 <0b84c114-35a1-3a0b-1ef5-80cdb79f1f92@intel.com>
 <BN9PR11MB52901044F528E28982D92C04970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
 <BN9PR11MB52907A11A35628AD277F8D27970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
 <9becc9d1-a44c-7c8a-1fac-5fe140298ffe@intel.com>
In-Reply-To: <9becc9d1-a44c-7c8a-1fac-5fe140298ffe@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 11 Mar 2022 10:37:46 +0000
Message-ID: <CAM0jSHMVZDJ25go+JiYtxm=9AisW+XmporfmTLnHhErW5m9dzg@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
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
Cc: "Katragadda, MastanX" <mastanx.katragadda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 9 Mar 2022 at 11:46, Matthew Auld <matthew.auld@intel.com> wrote:
>
> On 09/03/2022 11:19, Katragadda, MastanX wrote:
> > Hi,
> >
> > can we have ack? or we need to do anything further to get r-o-b.
>
> There was just the potential strangeness around len <= 0, and exactly
> how we are meant to handle that, but if you are confident that is
> already covered in a sane way, then feel free to add,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Pushed to drm-intel-gt-next, with the commit message fixed up. Thanks
for the fix.

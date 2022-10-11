Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F525FB06F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 12:28:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D48D10E7F0;
	Tue, 11 Oct 2022 10:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4075910E3E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 10:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665484115; x=1697020115;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WaEoykk4C0XmdiXagASiPWy+x5bddvkC5IL2hlG4e90=;
 b=JcP0Qil4LrD/GEPwy94pIxPN1mUb376SoAWZXCwr3+zHyRXcRVCv2w4j
 qQApZABEJD7Ll33LWXPwMGZJLY/l4EQ+uEzK33yHs1PyNYkGaI5Fg06x/
 T/Y5oyR1bQG6+3Uz+UoMRmp1pR5frYpiR4pYZO2bywIEtqDVQnW+5EFIW
 tV/2n3jNCf/Ud6ILFyrjK/hr2ER1/w2zWoH1pOBrmru3BAlfosr1yEgPe
 WRPyNGyLCIT9J+MlZrGEO0idrdqJFTSpQA2RKm7URI91xS4LoVFE0ppWM
 8lmHN+7VYh8S5omj2bY8SmoWF8IW0LK4aGb1IT3MouiyOXi8VWDxv3EG0 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302077511"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302077511"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 03:28:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="715465664"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="715465664"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.106])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2022 03:28:32 -0700
Date: Tue, 11 Oct 2022 12:28:30 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y0VFTocM2EI1IfSV@ashyti-mobl2.lan>
References: <Yz8FHapUF8BD7kkw@intel.com>
 <20221006204844.2831303-1-andrzej.hajda@intel.com>
 <Y0QswEzRwwv9Vops@ashyti-mobl2.lan>
 <Y0VAyikdFVTl0YhX@ashyti-mobl2.lan> <87h70ay8fr.fsf@intel.com>
 <87edvey88w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87edvey88w.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915/display: remove drm_device
 aliases
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
Cc: Ville Syrjala <ville.syrjala@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Tue, Oct 11, 2022 at 01:17:35PM +0300, Jani Nikula wrote:
> On Tue, 11 Oct 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Tue, 11 Oct 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> >> On Mon, Oct 10, 2022 at 04:31:28PM +0200, Andi Shyti wrote:
> >>> On Thu, Oct 06, 2022 at 10:48:44PM +0200, Andrzej Hajda wrote:
> >>> > drm_device pointers are unwelcome.
> >>> > 
> >>> > Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> >>> 
> >>> Acked-by: Andi Shyti <andi.shyti@linux.intel.com>
> >>
> >> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> >>
> >> Only this first patch is strictly related to display, I'm taking
> >> the series in intel-gt-next. Anyone against?
> >
> > Absolutely against. That logic is backwards.
> >
> > drm-intel-gt-next is for stuff that's strictly about gt/gem. Everything
> > else, especially stuff touching common code, needs to go through
> > drm-intel-next.
> >
> > There's nothing here that's gt/gem specific.
> 
> To elaborate on this, we can do drm-intel-next -> drm-intel-gt-next
> cross-merges. Not vice versa.
> 
> If you merge code to drm-intel-gt-next that other work in drm-intel-next
> depends on, we'll need a drm-intel-gt-next pull request to drm-next and
> a backmerge from drm-next to drm-intel-next. And that creates a
> dependency outside of drm-intel.git, as well as potentially several
> weeks' delay when drm-next is not open for pull requests.

Thanks for the explanation... I'm still learning here :)

Will push in drm-intel-next, then.

Thanks,
Andi

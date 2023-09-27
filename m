Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA83A7B05CE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 15:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1045310E52D;
	Wed, 27 Sep 2023 13:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 055E310E52D
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 13:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695822637; x=1727358637;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yF2q/3jBYQ8b5J5GzUdJqvUbrlcpFsNxsTRviitKz20=;
 b=WJNw6/Ecmg++6ZHwaFRpN6PPaYS2IsQFnvZAA6yTjGj4bY9DyQlcg6AB
 W6XWG+0wsTtHKpn76piiiN0rUPMFx5MaOUqejx4W/3L/+0bkW7X9mXt/D
 XFF9kaw8lF3Qtneolum3huehUZvcZzq9wKHTo7JZufdJXYTTLjCvdjwTD
 TqOVVRBRr3EyM2aizEPSuVsqYEEO3xBw43rG6Jt7Xdfo8DOEfGK8tTo63
 PkJDEk/pvBioMFQNqMPta9yDXasEi9+bUEQkE07W67+zzCT+b7UTCLGwa
 hRWMHpYsnsFObNHAOfXCeTlaJzXsu9rW4QzpDcNtSYbWGuV3oRORhb+wV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="468111279"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="468111279"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 06:50:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="784333515"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="784333515"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 27 Sep 2023 06:50:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Sep 2023 16:50:33 +0300
Date: Wed, 27 Sep 2023 16:50:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZRQzKU1ePbiqDtUJ@intel.com>
References: <20230922193518.723664-1-animesh.manna@intel.com>
 <87lecumo4z.fsf@intel.com>
 <BL1PR11MB59796856C4C80FE3461F13B9F9C3A@BL1PR11MB5979.namprd11.prod.outlook.com>
 <87v8bxl1lg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v8bxl1lg.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
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

On Tue, Sep 26, 2023 at 12:34:35PM +0300, Jani Nikula wrote:
> On Tue, 26 Sep 2023, "Manna, Animesh" <animesh.manna@intel.com> wrote:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Monday, September 25, 2023 6:00 PM
> >> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
> >> 
> >> On Sat, 23 Sep 2023, Animesh Manna <animesh.manna@intel.com> wrote:
> >> > Refactor DSB implementation to be compatible with Xe driver.
> >> 
> >> Sad trombone.
> >> 
> >> struct intel_dsb should remain an opaque type. I put effort into hiding its
> >> definition, so its guts wouldn't be accessed nilly-willy all over the place. If it's
> >> not hidden, it just will get accessed.
> >
> > Hi Jani,
> >
> > Xe driver need access to intel_dsb structure, so I can create a new header file intel_dsb_ops.h and keep intel_dsb structure in it. Is it ok?
> 
> I just think you need to find a different abstraction level that doesn't
> involve exposing struct intel_dsb.

I hate the fact that we seem to be adding these ad-hoc wrappers all
over the place. Someone should just fix xe to give us the same API as
i915, or a single wrapper should do whatever conversion is needed.

-- 
Ville Syrjälä
Intel

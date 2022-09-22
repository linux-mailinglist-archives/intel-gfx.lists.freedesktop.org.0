Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F915E5D38
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 10:17:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECAF710EA7E;
	Thu, 22 Sep 2022 08:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CEE110EA7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 08:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663834640; x=1695370640;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UJKhNdetuslP8OBWAx8PlFUSS91YM5leLVpyy9iT4PA=;
 b=WKO1+fyHHU60qnvikzdaDYIb2iYo2nUBOVBoQyK6RphgZocq7k/RB5Dx
 aF7CXy2PGPTpqiWm5834lOfgLn5IkcfxIESzsG/qJTmsRTifCSS33KulG
 MZtsQhaourcL47yHsNvKeWRHI8h1icMgzXhhMLyupTAJiH+WWPRVpZhQl
 mDxaxrKHZnDnrHlG3zRwG2eHWsQdM1nUVKxap3nuWxgHGWtC1FDQiQ1oI
 YG/ToYDTrVss7MvnhX8uVf1Ayt8BOCwUs2L7k/LMI3lxBYDVH1DicSy3j
 AQbMJ6hPY43qrNn2ftLcVzj1lR6+k6gUwj6QSuJdZJf34ABHOtoG2ByBy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="386523628"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="386523628"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:17:19 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="652876310"
Received: from akoska-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.156])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:17:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921120508.ze4w5bqkxutarqru@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <87v8pio6li.fsf@intel.com> <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
 <87zget6sur.fsf@intel.com> <20220921120508.ze4w5bqkxutarqru@gjsousa-mobl2>
Date: Thu, 22 Sep 2022 11:17:01 +0300
Message-ID: <87o7v77ria.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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

On Wed, 21 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> On Wed, Sep 21, 2022 at 11:21:00AM +0300, Jani Nikula wrote:
>> On Tue, 20 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> > Hi, Jani.
>> >
>> > On Tue, Sep 20, 2022 at 10:19:53AM +0300, Jani Nikula wrote:
>> >> On Mon, 19 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> >> > Make the code more readable, which will be more apparent as new
>> >> > platforms with different hotplug inversion needs are added.
>> >> >
>> >> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
>> >> >  1 file changed, 16 insertions(+), 9 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> >> > index de06f293e173..c53d21ae197f 100644
>> >> > --- a/drivers/gpu/drm/i915/i915_irq.c
>> >> > +++ b/drivers/gpu/drm/i915/i915_irq.c
>> >> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>> >> >  	spin_unlock_irq(&dev_priv->irq_lock);
>> >> >  }
>> >> >  
>> >> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
>> >> > +{
>> >> > +	u32 invert_bits;
>> >> > +
>> >> > +	if (HAS_PCH_DG1(dev_priv))
>> >> > +		invert_bits = INVERT_DDIA_HPD |
>> >> > +			      INVERT_DDIB_HPD |
>> >> > +			      INVERT_DDIC_HPD |
>> >> > +			      INVERT_DDID_HPD;
>> >> 
>> >> Nitpick, the indentation will be off compared to automated indentation.
>> >
>> > What do you mean by automated indentation?
>> 
>> For example, hit TAB on the lines using a smart enough editor, which has
>> been configured to follow kernel coding style. ;)
>> 
>
> I'm not sure I completely understand the issue. Could you provide an example of
> such a configuration?

I never indent anything manually. If I hit TAB in emacs (or run M-x
indent-region), it'll indent the current line (or region) using the
built-in "linux" style [1].

[1] https://www.gnu.org/software/emacs/manual/html_node/ccmode/Built_002din-Styles.html

> Is the problem here the spaces after the tabs to align each INVERT_DDI*? Would
> you suggest I just use tabs and do not align them to the first one?

If a parenthesized element in round brackets is split to multiple lines,
the indent is usually tabs first and then spaces to align everything
after the open parenthesis. If there are no parenthesis, the indent is
just tabs.

Guess why the original dg1_hpd_irq_setup() has round brackets in the
statement. ;) Though not everyone likes superfluous parenthesis for
style.

> E.g.:
>
>                 invert_bits = INVERT_DDIA_HPD |
>                                 INVERT_DDIB_HPD |
>                                 INVERT_DDIC_HPD |
>                                 INVERT_DDID_HPD;
>
> Another one:
>
>                 invert_bits = INVERT_DDIA_HPD |
>                         INVERT_DDIB_HPD |
>                         INVERT_DDIC_HPD |
>                         INVERT_DDID_HPD;

Your patch applied, re-indented, and tabs converted to spaces for visual
here:

        if (HAS_PCH_DG1(dev_priv))
                invert_bits = INVERT_DDIA_HPD |
                        INVERT_DDIB_HPD |
                        INVERT_DDIC_HPD |
                        INVERT_DDID_HPD;

Anyway, indentation isn't a very fruitful conversation in itself. The
original nitpick was an off the cuff remark. I'm mostly trying to
suggest to use tools that will do indentation and other things for you,
so you don't have to worry about getting it right.


BR,
Jani.

>
>
> Note: I'm using 8 spaces for instead tabs in the above examples for proper
> visual, but they would be tab characters in the source.
>
> --
> Gustavo Sousa

-- 
Jani Nikula, Intel Open Source Graphics Center

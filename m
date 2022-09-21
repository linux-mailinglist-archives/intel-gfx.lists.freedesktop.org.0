Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B07D35BF8F2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 10:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4491B10E8E2;
	Wed, 21 Sep 2022 08:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39E3A10E8E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 08:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663748479; x=1695284479;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1EFOcCaMeF2bNX0rtzCnvL2Sdgwgf0q/u1SDPwL/1c8=;
 b=EMFnUsDbNmuD7sP37VCHmUDQUJNPAjbUU03abkOvQQ0KKOnl62ZCFo6I
 +ksLGhfTpeutBzMU84eXARN4fmb1mqmgT1dpla8/WpsK1Ect414xDsnyx
 xvkIBeVGIgcrVjGn4C7PGzHoDZOOn4COVkmrqgZicW6wihKr1ggCswUYm
 ABxOGy85EhFiI4qSJlZfa0lEqkXfSHgAwfL7b4a9nECamVIBJrdI+1GSC
 b13QaVywZ8X0/GvCv2bXxA1hJD76mYQAzfJX+sFcBwpyM/eZGKrLhrT/7
 t8/GM50rheth/tmXXYajxuwb9ucj2MCelXC9OaL8rIQA/zjuQR1FV28kc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="386223662"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="386223662"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 01:21:18 -0700
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="708346977"
Received: from skam-mobl.amr.corp.intel.com (HELO localhost) ([10.252.35.114])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2022 01:21:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <87v8pio6li.fsf@intel.com> <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
Date: Wed, 21 Sep 2022 11:21:00 +0300
Message-ID: <87zget6sur.fsf@intel.com>
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Hi, Jani.
>
> On Tue, Sep 20, 2022 at 10:19:53AM +0300, Jani Nikula wrote:
>> On Mon, 19 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> > Make the code more readable, which will be more apparent as new
>> > platforms with different hotplug inversion needs are added.
>> >
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
>> >  1 file changed, 16 insertions(+), 9 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> > index de06f293e173..c53d21ae197f 100644
>> > --- a/drivers/gpu/drm/i915/i915_irq.c
>> > +++ b/drivers/gpu/drm/i915/i915_irq.c
>> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>> >  	spin_unlock_irq(&dev_priv->irq_lock);
>> >  }
>> >  
>> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
>> > +{
>> > +	u32 invert_bits;
>> > +
>> > +	if (HAS_PCH_DG1(dev_priv))
>> > +		invert_bits = INVERT_DDIA_HPD |
>> > +			      INVERT_DDIB_HPD |
>> > +			      INVERT_DDIC_HPD |
>> > +			      INVERT_DDID_HPD;
>> 
>> Nitpick, the indentation will be off compared to automated indentation.
>
> What do you mean by automated indentation?

For example, hit TAB on the lines using a smart enough editor, which has
been configured to follow kernel coding style. ;)


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 789A648D44A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 10:07:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1516610E28C;
	Thu, 13 Jan 2022 09:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569A010E770
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 09:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642064819; x=1673600819;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tsWMGJvZiOZwuUKEA9URk1VtWJ5iJ20qXflW8X8U6ks=;
 b=KuYdSnbvqFfx8gsHuAtNuaqEIfIFE4Roi4GRbKjikXSCtdRaQ9co7FVT
 8Mvvxft1XEV7S81ZzW0ZFp1YI1y6uAcktiFfCQIvbhZnu1wmGD4hsEClj
 wzR4UfbBtypW34zYamXdM7C3w09Op3w2nWThMDA59XBj3KAigOYeG07/M
 aDAqhT6BBVnc4mqIR5xqlcfDvkPdjyVcXm66bqvrIVIikoA5HBQxmdIVk
 019o8XzsJMHdhzC+I4rC3or279B1/r0cvE+NF1QjNx67CGdbikuGzWn6w
 ccvrmhvTdMsNPcXRyqHe0/oogAjoG7Wna9RD9txJLTulJB3F7CuOnruVE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="224658542"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="224658542"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 01:06:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="491067835"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 01:06:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <Yd+nHsmm9oKzzVDJ@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <20220111051600.3429104-4-matthew.d.roper@intel.com>
 <Yd7vQ3uSLisEwnxq@intel.com>
 <Yd+nHsmm9oKzzVDJ@mdroper-desk1.amr.corp.intel.com>
Date: Thu, 13 Jan 2022 11:06:51 +0200
Message-ID: <87k0f46m38.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 03/11] drm/i915: Parameterize ECOSKPD
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Wed, Jan 12, 2022 at 05:09:55PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Mon, Jan 10, 2022 at 09:15:52PM -0800, Matt Roper wrote:
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i9=
15_reg.h
>> > index 3ef332833c4c..a4c9d2005c46 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -2858,10 +2858,12 @@ static inline bool i915_mmio_reg_valid(i915_re=
g_t reg)
>> >  #define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
>> >  #define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
>> >  #define   GFX_FLSH_CNTL_EN	(1 << 0)
>> > -#define ECOSKPD		_MMIO(0x21d0)
>> > -#define   ECO_CONSTANT_BUFFER_SR_DISABLE REG_BIT(4)
>> > -#define   ECO_GATING_CX_ONLY	(1 << 3)
>> > -#define   ECO_FLIP_DONE		(1 << 0)
>> > +#define ECOSKPD(base)		_MMIO((base) + 0x1d0)
>> > +#define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
>> > +#define   ECO_GATING_CX_ONLY			REG_BIT(3)
>> > +#define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
>> > +#define   ECO_FLIP_DONE				REG_BIT(0)
>> > +#define   GEN6_BLITTER_LOCK_SHIFT		16
>>=20
>> This looks messy. The register contents are (mostly?) unique for
>> each engine, so this is making it rather hard to see which register
>> takes which bits. I think we should at least group the bits clearly
>> based on which engine they belong to.
>
> Makes sense.  I'll send a follow-up patch tomorrow that reorganizes this
> a bit.

For things that you're rearranging in the series, sure, please clean it
up. But for stuff already in i915_reg.h, let's not let those block this
work. Split up the file, and IMO the cleanup will be easier in the
smaller files with follow-up patches.

BR,
Jani.



--=20
Jani Nikula, Intel Open Source Graphics Center

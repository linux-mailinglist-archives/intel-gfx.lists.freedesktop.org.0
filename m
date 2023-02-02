Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0E06879DD
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 11:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E8510E4D4;
	Thu,  2 Feb 2023 10:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF5010E4D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 10:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675332695; x=1706868695;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=68mC9rjxEXn7wNgHLreugt5mKQvWAcIdnuqIWdC9F3s=;
 b=oKsBsJwV2dUH41ukdEj7V9119izzIu7hnF1nXo2vcEtcYTBOCOA2xKsT
 pYnCvWHSNV3zFiXcF/CKA1Cw3OiHrbUvoHN/uNxYONIXCQGeoX181KOjk
 UilWvY65pY6qjYvvvfa3s7HJM+1u3lLefo7FzX/LnXiq1tA53jzs6lqLg
 R7NVGkmZi7cJHqKwEl3lG1L2p95Vr5io4G9CBkr5aZt6hfDtDzZwnnRFz
 ZDLVsbFn2kMG4QaTlqkWH37jpdiqQUjVkBzzKWSUWMKbuaH8lYJfFHS38
 Y7keeQsZ9Vn5u+5iFYX7TcNtv7hnFT8kgjmHH/JR3s5u72LmW0ocCrM4V Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="329699773"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="329699773"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 02:11:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="994020916"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="994020916"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 02:11:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Lucas De
 Marchi <lucas.demarchi@intel.com>
In-Reply-To: <Y9qjyrbuO8bWJgzv@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230131191542.1695398-1-lucas.demarchi@intel.com>
 <20230131191542.1695398-2-lucas.demarchi@intel.com>
 <878rhh3dvs.fsf@intel.com> <Y9pWkvjdZUqre5Pk@intel.com>
 <20230201172629.mfhwzwxcaiu7ylze@ldmartin-desk2>
 <Y9qjyrbuO8bWJgzv@intel.com>
Date: Thu, 02 Feb 2023 12:11:29 +0200
Message-ID: <87lelg1ini.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Move common mmio base out of
 private macros
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 01 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 01, 2023 at 09:26:29AM -0800, Lucas De Marchi wrote:
>> On Wed, Feb 01, 2023 at 02:09:54PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> >On Wed, Feb 01, 2023 at 11:59:19AM +0200, Jani Nikula wrote:
>> >> On Tue, 31 Jan 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> >> > -#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
>> >> > -						       _DPA_AUX_CH_CTL, \
>> >> > -						       _DPB_AUX_CH_CTL, \
>> >> > -						       0, /* port/aux_ch C is non-existent */ \
>> >> > -						       _XELPDP_USBC1_AUX_CH_CTL, \
>> >> > -						       _XELPDP_USBC2_AUX_CH_CTL, \
>> >> > -						       _XELPDP_USBC3_AUX_CH_CTL, \
>> >> > -						       _XELPDP_USBC4_AUX_CH_CTL))
>> >> > +#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(DISPLAY_MMIO_BASE(dev_=
priv) + \
>> >>
>> >> Note that only VLV and CHV have DISPLAY_MMIO_BASE() !=3D 0.
>> >>
>> >> This is an XELPDP specific macro. Just drop the DISPLAY_MMIO_BASE() p=
art
>> >> altogether, and you've removed an implicit dev_priv. Yay.
>> >>
>> >> This also makes me think we should probably add VLV/CHV specific
>> >> DP_AUX_CH_CTL and DP_AUX_CH_DATA macros that just add VLV_DISPLAY_BASE
>> >> directly, and use that to ditch the implicit dev_priv there too. This
>> >> approach doesn't work for everything, but the aux channel stuff is bo=
th
>> >> fairly limited use and already has if ladders to pick the
>> >> registers. Handling VLV/CHV separately is not a big deal.
>> >>
>> >> (DPLL on the other hand seems much harder to deal that way.)
>> >
>> >Most of the DPLL code should be have vlv/chv vs. rest specific
>> >codepaths. A quick scan says readout is perhaps the only exception.
>>=20
>> and then remove display.mmio_offset since vlv/chv are the only ones
>> using it?
>
> There should tons of other registers still using it.

Yeah. It's just that DISPLAY_MMIO_BASE() was sprinkled around
gratuitously, when separate VLV/CHV specific macros would have been
better options. This is really case by case. Remove the requirement for
drm_i915_private access where it makes sense, and pass the pointer
explicitly elsewhere.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center

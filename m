Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 825604B1283
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 17:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5BE10E8A8;
	Thu, 10 Feb 2022 16:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32DFD10E8A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 16:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644509856; x=1676045856;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=9tk0ot1SxjI3p1+uAzpR0PmfHopudRcZQufroeGa2iY=;
 b=l+WTreqvNvtHuimRtjNmqKLN55RsNMnLufsZ9s70jF+uYvj21WIiW+Iw
 DDWxtlehW13dphLyh5vfa+bKJfvLRm532/ucAUHhICJ8thwVJ2dN/giqU
 bDuQPE1qtue1Dl6bTHy7E7vYL57THHUXvu6/yr/fhpkkTCK6olK97711r
 MQcAGWYwO+7y7aiyxwElxjP5pxih8zY4HmEaoaotIlc2EDXs3yGCKgWRr
 4AsByKjXIOe/f5rPT4FG4cUSHTWzbHtI9gUBrLsKz3MQpXtjY8t7PLTIe
 5qRjsSK5smugczGsZePIVdZ3ND0dsWZL7Ux8O0XLGd13ojqARX1Kt4mIW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249476799"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249476799"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 08:17:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="526550893"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 08:17:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YgTxYxPJ9LHjTS2v@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1644489329.git.jani.nikula@intel.com>
 <42fd9cd777c5cc9a8d48db9dd8306924c735918e.1644489329.git.jani.nikula@intel.com>
 <YgTxYxPJ9LHjTS2v@intel.com>
Date: Thu, 10 Feb 2022 18:17:30 +0200
Message-ID: <8735kq8zmt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/opregion: debug log about
 Mailbox #2 for backlight
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

On Thu, 10 Feb 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Feb 10, 2022 at 12:36:46PM +0200, Jani Nikula wrote:
>> Start debug logging about the presence of the new Mailbox #2 for
>> backlight. Actual support is to be added later.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_opregion.c | 13 +++++++++----
>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu=
/drm/i915/display/intel_opregion.c
>> index 6e32ed6bbf4e..b1ad11b2ebb3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> @@ -47,10 +47,11 @@
>>  #define OPREGION_ASLE_EXT_OFFSET	0x1C00
>>=20=20
>>  #define OPREGION_SIGNATURE "IntelGraphicsMem"
>> -#define MBOX_ACPI      (1<<0)
>> -#define MBOX_SWSCI     (1<<1)
>> -#define MBOX_ASLE      (1<<2)
>> -#define MBOX_ASLE_EXT  (1<<4)
>> +#define MBOX_ACPI		BIT(0)	/* Mailbox #1 */
>> +#define MBOX_SWSCI		BIT(1)	/* Mailbox #2 (obsolete from v2.x) */
>> +#define MBOX_ASLE		BIT(2)	/* Mailbox #3 */
>> +#define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
>> +#define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
>
> Opregion is such a lovely turd.

Tell me about it. I had to send v2 of patch 4/5 demoting the warn to dbg
because CI apparently has swsci mbox & version combos that supposedly
shouldn't exist. *sigh*.

> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks,
Jani.

>
>>=20=20
>>  struct opregion_header {
>>  	u8 signature[16];
>> @@ -957,6 +958,10 @@ int intel_opregion_setup(struct drm_i915_private *d=
ev_priv)
>>  		opregion->asle_ext =3D base + OPREGION_ASLE_EXT_OFFSET;
>>  	}
>>=20=20
>> +	if (mboxes & MBOX_BACKLIGHT) {
>> +		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
>> +	}
>> +
>>  	if (intel_load_vbt_firmware(dev_priv) =3D=3D 0)
>>  		goto out;
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center

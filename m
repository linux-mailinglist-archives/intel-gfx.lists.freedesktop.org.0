Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 363876621FC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 10:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9097610E39E;
	Mon,  9 Jan 2023 09:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E128610E39E
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 09:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673257637; x=1704793637;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=NbS2D3xqUhtYhngafBSOw+m3xuP82FT+beucxKYmEHo=;
 b=JT4ksSok1yn4YlWySsAS8JUA9zcHDD5KX5Elhz6MznxsHeuX2X9eHMYI
 V6ZOzHpI8d0zlJgR5pmpg28Lzg7VMbJVaKs4sjHVAjEfpGW7dC43vSmPR
 0mR9h6q2zRmW5gn7NxYQ/Pe7agGBMV+ZG6PBoD+NWQgTIVX/zj6nUCit6
 yuYch3Yd0zQMKrGa12n+Y18OrTBMPdGOLd2bA3K/hVHhSKoeE9w9XSypm
 g/c60VwULjRTGioHSlAlfb3Fn4cUR7GoNnxdC1jdQEBDBMBotjLnmTXZ6
 nCxnKWQjtTA+Ts9+fClepJuyQ0UDaRkiv0C8HB0otWzBtJJC7PwmV78cw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="310628163"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="310628163"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 01:47:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="649968211"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="649968211"
Received: from gtmcgeac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.217])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 01:47:15 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <PH7PR11MB5981EE9597D82331ABD7472AF9FA9@PH7PR11MB5981.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-12-ville.syrjala@linux.intel.com>
 <PH7PR11MB5981EE9597D82331ABD7472AF9FA9@PH7PR11MB5981.namprd11.prod.outlook.com>
Date: Mon, 09 Jan 2023 11:47:13 +0200
Message-ID: <871qo42g66.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Add mode DSB opcodes
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

On Thu, 05 Jan 2023, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of V=
ille
>> Syrjala
>> Sent: Friday, December 16, 2022 6:08 AM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Add mode DSB opcodes
>>=20
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Add all the know DSB instruction opcodes.
>>=20
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
>> b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index 7c593ec84d41..96bc117fd6a0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -67,8 +67,16 @@ struct intel_dsb {
>>=20
>>  /* DSB opcodes. */
>>  #define DSB_OPCODE_SHIFT		24
>> +#define DSB_OPCODE_NOOP			0x0
>>  #define DSB_OPCODE_MMIO_WRITE		0x1
>> +#define DSB_OPCODE_WAIT_USEC		0x2
>> +#define DSB_OPCODE_WAIT_LINES		0x3
>> +#define DSB_OPCODE_WAIT_VBLANKS		0x4
>> +#define DSB_OPCODE_WAIT_DSL_IN		0x5
>> +#define DSB_OPCODE_WAIT_DSL_OUT		0x6
>> +#define DSB_OPCODE_INTERRUPT		0x7
>>  #define DSB_OPCODE_INDEXED_WRITE	0x9
>> +#define DSB_OPCODE_POLL			0xA
>>  #define DSB_BYTE_EN			0xF
>>  #define DSB_BYTE_EN_SHIFT		20
>>  #define DSB_REG_VALUE_MASK		0xfffff
>
> Not sure if we can check-in the above macros without its usage.

It depends on the case. Here, I think we can and we should.

BR,
Jani.



>
> Regards,
> Animesh
>
>> --
>> 2.37.4
>

--=20
Jani Nikula, Intel Open Source Graphics Center

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1033A614CFB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 15:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F043F10E3DA;
	Tue,  1 Nov 2022 14:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308BF10E3DA
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 14:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667313998; x=1698849998;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=i9hCukubMOTpcOWKfxgExArAeGrc1hpfrVYS/54q/qc=;
 b=B3qYuoGJi7eg/5V4/S0aUnc0ILpa3bhXc9FF7Y6/IVLKEEniVsIFhhPM
 Nx8eT5jnA6hpVEjfpSMbhsyp0SH1IVyd88tezvw2qkxxURY1AG+pC44SP
 FgucG2Lu3r2LeAPQPP9OxDdxJpm/EAHgX+1Izq0bzVH8a6RPhcmtH68wT
 5CsueVU8w8yfYGEhOPW/ORGrEdMLjW806fBfdnNaJg31x21Def0/Nut2G
 01FI2iULBJn/uyyxtW4IU0jsM40nLaS+ruqMo6TzBoftemC2tTYqIvcXA
 /4RoRudWis8iQRjjr31/SFKhB3d01hKQTniIqHE6/4WT9udyCwQ9npElV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="395460880"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="395460880"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 07:40:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="611860613"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="611860613"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 01 Nov 2022 07:40:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 07:40:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 07:40:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 07:40:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBbQbGCaEYhnALKcfkzVQfdFjWbAGE9/txIHDGqiYPQZ/8fLovnQbbx9CpWOuKzgLNZ2Ro51XMqX0hBobyfcjXpyW33amG/Iuv1DsdHF2jO8Kv18KnH7/ps8DwUHSXWBgFNLgen56KEyKI0kiaqzKmHxLzP8R+qowUf/x5JuklIHjTRVVVZBg3HqjbTp+Ji5uLyjB50J6R+z8urP8+ZJAPvTHVKjHmFIIyh9zZDG16emAKr8uet07nELz5/pCQ3iL8TSsonHHYKQlOBPEajshk2uV4qQGdlGHI1Qg90/CG3avaTRPFQm1nf8LpyMdYJWHF89IUL4sffvoXMf2ceSWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E6oU3y7mCK+/3Dqa8zrcipHhqfrE4ChX6hIivo5YqsQ=;
 b=M999J5LfUJH9XKmkcgPtio8GDbZO5KQSTpZB9Ic5zwJKN88D9ZRuDsttyCdDqeIV1Wlh89hHmK8X/SAqDUY79SLjXMm1NnWbfJNMLJ26tfEhd3YrZwPgVgpiN8dNOX1/0HuKpYT/tiQTRJBuarw4Arpo3sfTEMH76e+U5CE3lpFbxDeopQQKvWDaGfYlI+/ybtoWclKkAv6TYzJpZ8FPbrpx93YcX0ABYXzDgyqLONFKHM/BqMeOfHU0NJWV5IUptngDYxlUVRCxWbFq3K4IZu54xS2JoJD9Xpvif7bN8wwEUm4vxK6p8OYzTNA7F4fJeFRsaUjGQ12xtNxSZZKNbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by CH0PR11MB5441.namprd11.prod.outlook.com (2603:10b6:610:d0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Tue, 1 Nov
 2022 14:40:24 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda%7]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 14:40:24 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "20221024140607.25271-1-shawn.c.lee@intel.com"
 <20221024140607.25271-1-shawn.c.lee@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/pps: improve eDP power on flow
Thread-Index: AQHY57HqolpnXXEub0yKH9NOK4pvt64p4CMAgAAGsxCAAEQhYA==
Date: Tue, 1 Nov 2022 14:40:24 +0000
Message-ID: <BYAPR11MB271068423A910909E404D5D4A3369@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221024140607.25271-1-shawn.c.lee@intel.com> <87sfj380hf.fsf@intel.com>
 <DM6PR11MB27155735D30508F850923FF4A3369@DM6PR11MB2715.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB27155735D30508F850923FF4A3369@DM6PR11MB2715.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|CH0PR11MB5441:EE_
x-ms-office365-filtering-correlation-id: d718d487-ac01-48ed-c4b3-08dabc1702e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t7fy9sLQoLsazP9gkfc/9jFnoAk8cw/aJm4ATzbjSGtQr6rbrNnoLRsBeiFZ2sMUPuUJFS8lQ0zb1BbdS8xnZKbyIjo3cdlJm72XtBCOD4JHhdTqoT7DDsuE08cDW07iPk1BQcrRxLnXTUK1sDMQQUDRLd/Johb7WzxkhmgKOaH85sd1WNVKz6w8TkJUrPVcgdjYBA88jAw9HB71FmmTcv6aLQ12Sr0F8VqQvOkKaTv+O1OWyLfjK3ik9oNBKviBR9Ny8WwBC4IfPtNeMHAjERmou4UHUZzLmK7L6SQwGKtYVRilHUUufLZnz+5F6/UpaamL6lO2rus7JfsPviU1W+XWVdLQ0fAWEaaARZkpkmnZfvKvg8yqGoBmW88TSzPL4K3ZWLGs9x1DsUGYy1mDE4tWL7qEgTCPDvR2EPXcJ8SSXpnXfDoRkzI/VVV1mb1wIxcjUgN54lZkZMGfaQiktEbS+Z1bLJ4NJ9CnWKr3CCrSYH8o6a6JOgPXMnMBiHUIaEXIgW8IT6TTD1OqMLK696R9Uq4dAij5LjLfEweHOvF64g2JXlMgPtyzBf/VxXLi+HS1AAp2IMSF8uBl3fM2JDgAzYBgudv1EjMeb6l1Zy4K+dcsHwIR8GcrdCJztDUDN32qS0AUr+CY3KZIbbhsGXW7IqXIazTbHH2fsb5VvnrNV3W05YIuW0jO4PFuqvxcxHTGs7s3fe1xGsXr/+vSVES3cnQ7zRTriR47ceGjTpB/iaqcpCOhQ0lKGhYKndrxavG0U77aJQSYYZYod1mmb8RForK7bepMAhgne97sVmU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(39860400002)(136003)(346002)(451199015)(54906003)(38070700005)(316002)(66574015)(76116006)(110136005)(122000001)(9686003)(55016003)(41300700001)(26005)(5660300002)(86362001)(38100700002)(52536014)(8796002)(8936002)(8676002)(2906002)(4326008)(66446008)(7696005)(6506007)(64756008)(33656002)(66556008)(66946007)(66476007)(55236004)(53546011)(83380400001)(82960400001)(186003)(478600001)(71200400001)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?uKwEMyoyZ2YyXyr7BM+5U/es4Y/k1uKROxq65NQ0gKL3CQ9ZUWefLetjgn?=
 =?iso-8859-1?Q?53GYPo1z8aiEMgVspfAWsX8975VkiySgtIl7VoYGVdOE4ZVFhWt6MP8Q63?=
 =?iso-8859-1?Q?1XjccWxdsnvwA0PrHaARvS55AnuZf6aSduRtqB675LdL+pOKGFL7iPvfqu?=
 =?iso-8859-1?Q?Al2qyhvjIuSbQoG8XoJsS0h43EkyelbcOLQNTdL/OnpypF3ZddjGoFISgW?=
 =?iso-8859-1?Q?P0o4tOvmeFpcaI/uMGLPJ3Uuci40LHYg7E3I9nCOSZhN+VtbI1EKqboK1c?=
 =?iso-8859-1?Q?ELlLmWU1B3flNOCfizTtJTHfUCryRAgWBc23WT0LudxuOvMgFKABz6vHoC?=
 =?iso-8859-1?Q?X/5PV+FwieAWnfZiDeF7e9Jd4pewD/cb4BCazBH5KXbfYHp+1auTncjcXO?=
 =?iso-8859-1?Q?dwKiCog37CKb8VrLuSjBwi+uAudZhS0RUt3vfvg+5l15jmF+7WwHE6Vcbm?=
 =?iso-8859-1?Q?36yzMAVd+YQ0AU6kekn+arzDK5U9EENVt0gOyxHC6xXM+Lt6pUdc/znh4w?=
 =?iso-8859-1?Q?qLmvFXzf+qEHtX3Dl7xKjpx2qmlJKXt8cjmIuFGslyd35p9JtEu6+gpDw+?=
 =?iso-8859-1?Q?/e5QaMN5qCmFXdYZAIxc/OzE/6JZxyV2rBArX/g6pfBL97fOExrcehnyw0?=
 =?iso-8859-1?Q?Vd5HiJYkpAYAkncgI8h4yHedSDJpWPNCK2RHENDu5r1lLeY1DoseLlhM4Z?=
 =?iso-8859-1?Q?ajMVle2Wl4JEz6X3SvYewgf2hJ+FW1W+mPT0e4nAIwD1ewd5a/fGAgsm1K?=
 =?iso-8859-1?Q?BljolyLcprDRqh/itNgo/caApTYx3CdlrCTzDi6xkwYTJ2F18ISp9bkFF6?=
 =?iso-8859-1?Q?xbUtwcnWmOZoPSYXGQl0DCNtSAO4iT7V+rN8iy1WQ+N5VXPR6RhI8lWSQ5?=
 =?iso-8859-1?Q?lyAXHnC1qVKR88VFEFsrcLzVD59PSkr7dBFMg8/8dLNkwi3h+GPGKAM3Uh?=
 =?iso-8859-1?Q?VOHlhbHhZXzUIkDZ1E3ggBVUz2iVhbJD72dhkKr+sLx0vzPzRKmIkzHArp?=
 =?iso-8859-1?Q?MDgk08glzvqOEEjVTJ84xAeenHr+ajdtDmhbDIpJAQ0sJoP8Z+FFY7pvXP?=
 =?iso-8859-1?Q?0jWeeQo+0tNA9T63pvyTSrOtFr5dX2iO5i9CCwnSdACWlF1xct23zxYJEe?=
 =?iso-8859-1?Q?FCyuc+dncRpYqVEApmjqgO3/0qiBaCzHWyPWQpdZGws1oPu/lwg+vI/w2P?=
 =?iso-8859-1?Q?clqMx7Wi8DbEmWlt11JiDhuDKXj7DLaUBRFnn29RV/XU73KUIsnDsTjtrl?=
 =?iso-8859-1?Q?xJ5sbixNg6iBMvBf/v8Mqf4fjUdqri7UPQRRMtOEXIgXlOp29Ufu0PjE/f?=
 =?iso-8859-1?Q?gBJeTYfMvgmpLioQFjLxZ4Hqtf/eR4l8kjVi/s0mAE2BA5iPzAE2Q610k7?=
 =?iso-8859-1?Q?5D0Y3GZzpkjaGsfQsO5W1EMBBp8/2kVRlujjojzyyAsXeKqqbirxTcq2r6?=
 =?iso-8859-1?Q?U4BUQN9eL6EP6WsJJA61F5lgbpePY9xeOjnOSEBRK4bXQpMMJHIA0VGR5q?=
 =?iso-8859-1?Q?kC8mFmMsZVU0S398Cnxug2IFslfTEnF+fTONZ4F6rLG3OxxVGrNcPKvpb7?=
 =?iso-8859-1?Q?f7tSariTQE/r5gYBztPd6IDLg2wVNMqvUNghFHeKIX9vQm4v7xhv2ltufk?=
 =?iso-8859-1?Q?M9gvaNYMHpRjfo4qRIKJ75mUmXAqdHd2tK?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d718d487-ac01-48ed-c4b3-08dabc1702e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 14:40:24.4603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QT+XR5juiIn87BghCw20BjVsynR1TConFa/JDcKBPTdN+AMdJxk+rBw+0KmMNI6FdaOr1fp3qXupoVdjkqQxfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5441
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/pps: improve eDP power on flow
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
Reply-To: "20221024140607.25271-1-shawn.c.lee@intel.com"
 <20221024140607.25271-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov. 1, 2022, 1:43 p.m, Jani Nikula <jani.nikula@linux.intel.com> w=
rote:
>On Tue, 01 Nov 2022, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>> On Tuesday, November 1, 2022 5:53 PM, Jani Nikula <jani.nikula@linux.int=
el.com> wrote:
>>>On Mon, 24 Oct 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>>>> A panel power off cycle delay always append before turn eDP on.
>>>> Driver should check last_power_on and last_backlight_off before insert=
=20
>>>> this delay. If these values are the same, it means eDP was off until=20
>>>> now and driver can bypass power off cycle delay to save some times to=
=20
>>>> speed up eDP power on sequence.
>>>>
>>>> v2: fix commit messages
>>>
>>>There are more changes here than what the changelog says, but the previo=
us review comments were not answered [1].
>>>
>>
>> I'm sorry that lose the question in [1].=20
>>
>> "But someone else may have turned it off just before we were handed cont=
rol, we have no idea."
>> This is the situation from Ville's comment. Agree that we don't know whe=
n panel will be powered off.
>> In my opinion, eDP panel should not be turned off before i915 take it ov=
er. If it was turned on or off by standard contorl (ex: modeset).
>> last_power_on and last_backlight_off would not be the same. So this chan=
ge should be safe.
>
>I think it's pretty much a hard requirement we respect the panel delays
>at i915 probe. If we don't know, we don't know, and we can't make
>assumptions.
>
>If the goal is to speed up boot, you should ensure 1) the pre-os enables
>the display, and 2) i915 can take over the display without a modeset and
>a panel power cycle.
>

After boot into kernel. It seems there are two cases we will see.=20
1) If eDP display did not enable at pre-os stage, this patch can save power=
 cycle time.=20
2) If eDP display was enabled at pre-os, because of cdclk was setting to ma=
x freq always.
   i915 driver will trigger modeset to reduce cdclk freq and run power off/=
on cycle.
   At this case power cycle delay will not be ignored.

So this patch can only benefit at case #1 (eDP did not enable at pre-os sta=
ge). And it is what we need. :)

Best regards,
Shawn

>
>BR,
>Jani.
>
>
>>
>> Best regards,
>> Shawn
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>
>>>[1] https://lore.kernel.org/r/Y1afUdAwfVTACJoK@intel.com
>>>
>>>>
>>>> Cc: Shankar Uma <uma.shankar@intel.com>
>>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>>>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c=20
>>>> b/drivers/gpu/drm/i915/display/intel_pps.c
>>>> index 21944f5bf3a8..290473ec70d5 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>>> @@ -509,6 +509,13 @@ static void wait_panel_power_cycle(struct intel_d=
p *intel_dp)
>>>>  	ktime_t panel_power_on_time;
>>>>  	s64 panel_power_off_duration;
>>>> =20
>>>> +	/* When last_power_on equal to last_backlight_off, it means driver d=
id not
>>>> +	 * turn on or off eDP panel so far. So we can bypass power cycle del=
ay to
>>>> +	 * save some times here.
>>>> +	 */
>>>> +	if (intel_dp->pps.last_power_on =3D=3D intel_dp->pps.last_backlight_=
off)
>>>> +		return;
>>>> +
>>>>  	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>>>> =20
>>>>  	/* take the difference of current time and panel power off time @@=20
>>>> -1100,7 +1107,7 @@ static void pps_init_timestamps(struct intel_dp=20
>>>> *intel_dp)  {
>>>>  	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>>>>  	intel_dp->pps.last_power_on =3D jiffies;
>>>> -	intel_dp->pps.last_backlight_off =3D jiffies;
>>>> +	intel_dp->pps.last_backlight_off =3D intel_dp->pps.last_power_on;
>>>>  }
>>>> =20
>>>>  static void
>>>
>>>--
>>>Jani Nikula, Intel Open Source Graphics Center

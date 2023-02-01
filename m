Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C9E686DA7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 19:07:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B4EB10E43A;
	Wed,  1 Feb 2023 18:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9DC10E43A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 18:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675274874; x=1706810874;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OuwlP+DshtdTf+1x3UdH4iefwW+M3/O+Lyzp5REJCX8=;
 b=X5JJh8ZA37k3r52RqBw8KWdEocogBW/sdf1H8R65oPZuNdeb2FETWhVV
 NNXLvGEi1Ft1UdoLCntaw17kTqWnVft8dNV9JGqyegchNgAb//kJ7/VHJ
 FkGMAVqMHAsTSK+7IUh0xwUpo81Q2M1laFsLcWd+u/nQzxMG4Ja6ipYxZ
 ws/oYBofSUzxaslwaPRV4GVKpfM5seyWzm9QvKmAKDaU/TxKdbn7qUTM+
 RVRVoFZYef6FruLHwZpNDXUWbFJb+XBK0Q11PGRrXR++pfBH9e99bfz2V
 p7G0F9mmOcLyY7julWmIbpu3YRsu92ZLxuwEHl1zZj5tIj39xDMsmhGHI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="311868431"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="311868431"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 10:07:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="728515690"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="728515690"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 01 Feb 2023 10:07:11 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 10:07:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 10:07:11 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 10:07:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cgvmb13kFPPx3Aa0xQtNVGnBbx+eMRsj9rQmxkiBieYO2GCbAwdlHHZDv/3Kul3j8vnp4z+y8Xq4S/yTTjXrxJpnrt29V0m58Ol/jm3TpML/v+Ct4PpkgXa5wqDfFjtkTNqtbTHV25iTnGVLhln4GC0iR/3ukjLNI7/aZop9ZpPXnI0MVJSqNWGRNUWQlgMY84G4bb3E/CK9TKXkFqchl2cz5wDhy7VAmSkdKTpKlngHhH0tWxzphXvfDruGzK1IHA8QulOtmg7KiGFVeM5G8QFxifmMKCSS5roCDPsTFlFGdwuU5fSxHy741lnaMtY8I4DrL3Rxgp515pBj6bKIfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=od3dYRJYPNhaUf3He/cmVtn9rgyX0HRaORMqsvEgTC0=;
 b=DKA47CMNhTskug0MjHEZnqGWgG0Y8t0bT7fBAlJyXzP5aar19fToSw4b7Jis5+ID1kIxJxLd+cV3oxW0wrqjYmDTfQaIKA+AuZdtZYQRECjQq+CzK2shm327SE2Bro+R1xc1KjeOPlEa4QZw9BQG/QqKZZ/nuaIQJj20m2uREltPOMwkspeFpcbzfoJbpqB5RkNBmWD/aH07x7reG/yuAW6QRRt882nbZSOMJf6jeY/maxw6mc1VoGkAZPYlGqttDDChI+IR3ZkerJKGZ1tlSRLFFSfbXeBWbDH9GDaCLA/T8rFceC7wCRaCq0Z8So4mTmc9yk2BDu5q2NYUp8+nhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.39; Wed, 1 Feb
 2023 18:07:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%6]) with mapi id 15.20.6043.038; Wed, 1 Feb 2023
 18:07:09 +0000
Date: Wed, 1 Feb 2023 10:07:05 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Message-ID: <20230201180705.i3ghhomhnsl6kba3@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20230201135329.514677-1-luciano.coelho@intel.com>
 <87zg9x1fev.fsf@intel.com>
 <4ec970306dfec2c9b4aa6dd8ec642649293aa371.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <4ec970306dfec2c9b4aa6dd8ec642649293aa371.camel@intel.com>
X-ClientProxiedBy: SJ0PR03CA0098.namprd03.prod.outlook.com
 (2603:10b6:a03:333::13) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB5185:EE_
X-MS-Office365-Filtering-Correlation-Id: d4013dda-a392-467b-4070-08db047f2234
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yjkXrFvnaCkruESqAETdgwm392m8lDRjzGUMGsAdOIGLi94zg3RVTN0UTnRi4idqT8WyxMsfPDMeNkpqUcERx98Un4c3LT6kEqwkWYUdLlsY2Omuc7uUp0nbeOjvIvk/dxnpquQC4JXrm/S/XxgxZM3G6s3fQ9nKAE1T3Sogfz5Vn3MgfKwR6jBuAh7jzzF8Jic0GOkgxuCe9pSACuf8UB9cj0belG6tHGsbMWFvjSB5tavK5zrpii6TZGJG7vv8kTmUcxn1RBSV2EBXLWqLK6/9vwKDIW/4PptnE45ghLahbQuXdrmPqWzH+fXkMxrH57livLWVSzos63AJUT794QUm1uzj6fyRZcuuMwogrHqoQOAn+MKOA4pjLqqnWOJDKDLpU9B+28eqgoqTWr7x3riPMDFFYSJh2VzfQbRaz54zDW6RhEbLUChvW236tp5M3QZ/2BFtKRjcC6V1DEpZ2aNPWe/rjIXrRsh5a2eX0QP/56LoDEHUoqKZy7dFAdXCu01se+iobgat9wVbJg4zHJhSfFBBekTDM7WnChCICW3ACiGz/1iiUiMPP6cKrDe+O6Ija0JOlhxr05u97j9DuNqelQglYwu+u54Xjc4WuHc0gqqT9oi46xVNmWam6Ln1xZW0SpydDelbPQtww3qXQA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(346002)(39860400002)(136003)(366004)(396003)(376002)(451199018)(1076003)(6506007)(6486002)(478600001)(6636002)(2906002)(54906003)(5660300002)(6666004)(86362001)(316002)(33716001)(4326008)(66556008)(66946007)(66476007)(186003)(9686003)(6862004)(26005)(6512007)(41300700001)(82960400001)(38100700002)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/HElsmXu0kh0MnHXIkwY+GQ70aLeRFI4elADp2K2R926BL3co7oo6B1F3AY4?=
 =?us-ascii?Q?TF8UdKgsgKPN0cWVnKnDwYyOAvZ65WvkTwcDdeHYSr3ILF689Sb+XRLghZMq?=
 =?us-ascii?Q?TPHDH1/wcgclH1g3ksdv5YODJFQlsUEilY+oz3RonEknnnZXt0hfyn4cwCtE?=
 =?us-ascii?Q?hPP22wjFGqF6iNx7cvH9AiTnT8lpPLC3EyLG63hnwQ8GMylxhAlX6Ax4jnCb?=
 =?us-ascii?Q?JMaiw8VuE/x/r5SKVnzIcQAhpnpLVg61m0SCIVNkUGke7ds+l0aIY6O168Vi?=
 =?us-ascii?Q?32FDhnBmUE0V0BcGFF2Kk46MSsonoOSbeknWL/b3hYoO+U7shBTmw4GgDcIq?=
 =?us-ascii?Q?41Ag1vBiZ19Ez4mx9il/e3pfdKLNqEqDGeQBmuZEOitcdKZvvt053MVdvxVt?=
 =?us-ascii?Q?6PGuuLI2vFBnFf8wHPegw/gNkxmVDrKIrueDTqQsa8T2Y+yhI1N47YGayk4Z?=
 =?us-ascii?Q?kz0XCNkFZADrwjpci/iaWNbebNSuzpQCmLIq9OfixS5TnA3+wLYjUjprDYXc?=
 =?us-ascii?Q?4vlpiOQlfpUSvIFR5IM35aa1F+30dNNzI/M4D+KpzsHFN5kK8ZudblWDNL50?=
 =?us-ascii?Q?R7kp6W4Uc9weOWCbptoBMRdBpAKf35DzAjyrfkzSqdkP0L089yhydioeqcCZ?=
 =?us-ascii?Q?T0/BGUKJfi1UhHsziDXebbYf5Lgnmy41Y2y8EuWjQ98VtEpBXBYPBGL+h1lB?=
 =?us-ascii?Q?78aXpYXytCQmc1Wsiy0IShcAozUAYgBySWAda30OcSKWasD5cvYy11AI4D5z?=
 =?us-ascii?Q?YMinMSg9bjkIllP4CvHGNbRxs3qX9jFg6UBr6qLWpN6Czari68PmiX8bqcf+?=
 =?us-ascii?Q?ND4PPL4fymu/eO3WdY7oIs0vGRoLKsaHvkpHiFFLOIpC3Yh4wTTVlMBQm/3R?=
 =?us-ascii?Q?eclqEvujSR9fhPhwjdX1CvHm0Jy+fiG8upL4KN4GqNEYYKceFBCwQiWgO3tE?=
 =?us-ascii?Q?g1cZ5MgYA6rq2kS52uWj60IfzrMtUmP4XlYEHHTN9APN7LWPR3GW4AOgbtsY?=
 =?us-ascii?Q?OZ+oInfvDtGLrXOfIj0gsiACoPE3oNrZdBfb/NGvA5zs9Jg5AJZUJYaPdNve?=
 =?us-ascii?Q?Ho/LmfKOPmeDtUCQIrBg1nackeBg0bkuqcf2jCgWAOcb7xepfb01l86MLC4q?=
 =?us-ascii?Q?Ql3G4tDqQZcrMyHsaEnlsUwNB3lLmsLz6XCDT9OK/eYuOSq1PVynLT9XCDzo?=
 =?us-ascii?Q?2JVTXvLvknr/NLcrTqRDRT80ebA7OLiZz4uTB0VlGfNN9CQG9okjRFk8ORxL?=
 =?us-ascii?Q?uoGmd7//6oREnMgewS8bV848MSxLodKQEfdWxVL4uJJWC13ZjJHBKRjuSoFI?=
 =?us-ascii?Q?wDwi0cigX3DKk8DLtYCwVxQ/boXtkB8hKxMfnMlkjG0/emJG66twuTaQfmSR?=
 =?us-ascii?Q?BJSjFZfMh0hzuo55PboOaDu0zbDVwSNeuKmrbXZnpSiEzHg6SoQ21ayDKAzF?=
 =?us-ascii?Q?XviISYUdaPrshwswJTpeJ6wb9XTe/Ft6N0KuA1Z4sZ64SQYfpaPuHkgcxhva?=
 =?us-ascii?Q?ldD01UoQ8mCTjHVNlFGdPi3Eh0DcijjyG3vDrJ2vUbJ6+Skd3aK46OWAEFsx?=
 =?us-ascii?Q?mVw4vylYLMzqNAVwFVHNRJdQJoo57ZYhPstPYso2mfDwsTHomkIpeL+9AmLB?=
 =?us-ascii?Q?cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4013dda-a392-467b-4070-08db047f2234
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Feb 2023 18:07:08.8326 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q0gyKzejBRnWl53DsUPlMCZTXGilEcfAxIwqHgEZuWaDuutZdf9pHngtFybKGU1MtDyQyp9dgl/ozBbeOycoyTmiDneFzfTyTrDh19Dlrzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC] drm/i915: make dev_priv usage explitic in
 some macros
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 01, 2023 at 09:20:42AM -0800, Coelho, Luciano wrote:
>On Wed, 2023-02-01 at 19:09 +0200, Jani Nikula wrote:
>> On Wed, 01 Feb 2023, Luca Coelho <luciano.coelho@intel.com> wrote:
>> > There are a few macros (e.g. DPLL()) that implicitly use dev_priv, by
>> > using other macros that implcitily use dev_priv.
>> >
>> > In an effort to align all definitions of struct drm_i915_private to be
>> > declared as i915 instead of arbitrarily using either i915 or dev_priv,
>> > we need to make these macros explicitly use dev_priv, so that we can
>> > change them later to be defined as i915.
>>
>> Lucas posted a slightly related patch [1], and I think based on the
>> discussion we should probably add AUX and DPLL registers that are
>> VLV/CHV specific, and include the MMIO offset directly without dev_priv,
>> and non-VLV/CHV macros that will have MMIO offset 0. This would reduce
>> the implicit dev_priv considerably, and avoid the need to pass i915
>> pointer to those register macros altogether.
>
>Yes, I saw that.
>
>
>> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> > index abbe427e462e..d00e9321064a 100644
>> > --- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
>> > @@ -100,7 +100,7 @@
>> >
>> >  #define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
>> >  #define _MIPIC_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb800)
>> > -#define MIPI_DEVICE_READY(port)		_MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
>> > +#define MIPI_DEVICE_READY(dev_priv, port) _MMIO_MIPI(port, _MIPIA_DEVICE_READY, _MIPIC_DEVICE_READY)
>>
>> While this kind of passes dev_priv as parameter, the dev_priv in
>> _MIPIA_DEVICE_READY and _MIPIC_DEVICE_READY is still implicit.
>
>Yes, this was on purpose and my second change is to modify the the
>calls to the inner macros to pass the parameter as well.
>
>In any case, this already works as is, even if we pass i915 to
>MIPI_DEVICE_READY() here, because the dev_priv that MIPI*_DEVICE_READY
>use will be expanded  to whatever we passed as dev_priv to the outer
>macro.
>
>
>> I think these could use a similar treatment as in [1], moving the
>> _MIPI_MMIO_BASE() part one level up.
>
>Yes, and this can also be done with more rules after my other patches.
>The problem is if we all start making changes in this area at the same
>time, then there will be conflict after conflict.

As I shared previously I think these manual changes need to come
*before* not after - why would you change the callers to pass dev_priv
and then ultimately remove? Let the scripted changes only do the
addition of dev_priv to the callers, after you removed the ones that
shouldn't have it at all

This makes the script easier to write and run and can be postponed to
when the branches are in sync if we are going to cross the display/
boundary.

Anyway since you are changing this, I'll hold off on more patches
related to it.

Lucas De Marchi

>
>--
>Cheers,
>Luca.

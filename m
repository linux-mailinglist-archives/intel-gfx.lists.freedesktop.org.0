Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE58078D5D6
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 14:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63EFE10E515;
	Wed, 30 Aug 2023 12:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B281710E515
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 12:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693397884; x=1724933884;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=aBYTKuymBEMvdt5lLqhKQBaEQu8rTF+0pYzel4WgErU=;
 b=QLzGagEF0KAqkAFIzh3etYVb26y2RWiX0nSv/IOuNDJhUEWoCZ4GY2e7
 XDUSH5E/lgC3zzL/MtRZwws48927iLDwx3zWW0xNJ3YZ3fvGeVO2TUN/u
 jB8E+gMdmpjDNjbMSl425C2VuF+ONYmHm6knzGIPSYD3eYPuzuc4ARPG+
 QMhzpNTAXr0iEHVJLoUxQ+ZVVnsrDwD6jc3DCI6siTBKFM3Smz4pO44jq
 prncIbesVnhIKjepuDXYRVor2M2Iu9Y9alQHgTzzQQre8lB5FMxSfFtdi
 XNY+75wxjpYITRupHttI0VViJVpw87SOCeti3uaZetFVllcm1YxxcZNHX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="373030688"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="373030688"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 05:17:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="853708473"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="853708473"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2023 05:17:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 05:17:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 05:17:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 05:17:12 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 05:17:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DNll+hzt6rVYSf4aP7KCN0XhTgeggtVeSG1c4n3Af0wxwhADE2Ss7Gpct+kY/qfVEvC3t8agf2HpmGL1j5GpV9jinUJQMhYqkxNpzdh327+XWhhpgqfQONf3867mtmGDXLYd84j9pZQ/hjsyAVZvuTey7ZnpXkmAFSEZTRaa9zKlFvDLrrfO+JZ1068gK6/u7/Pe2mfrIY0/E+PkWlNGKWYzkyg/BGxZdnnVR57ctEqM0dvPQQEYQvjeIBIaiUYbUavssxq8H0x13eaBnlsYTgXWZwJj7+whCWz0vfGpAuLf4YMedFKG0EaYwmnRGpd8iUP5M984MC7vInL90IiEuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dPFkcacoEZpdUQLNQsaF+dQ1PiWTDf0O8wjpyjXLo2M=;
 b=Ae6QRLnrDD1VlcywT9wP93A5MIq371wFeiUUBd9WWT12FPB/u1KMYJ6Flj8CQ7oWwRcZGF48wePHycI8wJZlecKFMM2DyxY+uZGAlWYhKsYmkfDqbTcmEZbeW2gHh66NyXuWr1bfT0Seyw0Oy0JYx22E0dFICleHpw70Jnj+3cpAZUXKh8Y/+t1/1QVD4ZvNpZw1Y/rPkm1+Bo+7YwCtNQY+ZUMX7ARd38aEV7ywHJF0E5eGkleHJQiecoDnubsPUPmJCdPWcN4JI5WXV3dBa2ai2gyLM5GFQYhZqbcmhoDwW+KdjhDAkAQ/sx+2Lz5GdGAZ7tYDJsEJCdUwNavWrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by LV2PR11MB6069.namprd11.prod.outlook.com (2603:10b6:408:17a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.20; Wed, 30 Aug
 2023 12:17:10 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.034; Wed, 30 Aug 2023
 12:17:10 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87sf81288c.fsf@intel.com>
References: <20230828173405.59812-1-gustavo.sousa@intel.com>
 <DM4PR11MB597193DFDCC38D7E92C9CFC187E0A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <169325913612.6737.8521384979789302140@gjsousa-mobl2>
 <87sf81288c.fsf@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 30 Aug 2023 09:17:04 -0300
Message-ID: <169339782415.10230.16976377164294131088@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR17CA0062.namprd17.prod.outlook.com
 (2603:10b6:a03:167::39) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|LV2PR11MB6069:EE_
X-MS-Office365-Filtering-Correlation-Id: 8dd53335-7846-43fb-b25c-08dba95308b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Cizzj4OWuSkS54niIu4EsF3vjrv5mpIjA+4mcWKdxGcnTVN5HcZ1j0hdYLnNmP7PRjSNkX4oYJ0W5/Vlu/xEQ79j95ha+RWTD193cR+KtH627yIl99znruOwlitjGlXO6oLyXGBf8vWwYfGrcFei8+JO15FaG174cO8IcT6Zq1ynUB4O7iOCZJpXabTQGuWzqOAF4Xl0Eyc37XT1Ou0NczzA9mwcTwBfrooyJseGTAISOfTv58VpGq8DMaJw85tb5zjHv5AZNAVqlDZ/SKplnsp4yxYMcGm49zI3Lr/qgRtY5xACUmTrQnVeu3u6CEdf92AGfNsooi8VySHbKOkUHw9HW8PnU33cCaKvkrDPCwsnHz1BzVnfldgTH4wxmTEBajP9DUoXh+Vapy+RpUK58oMwDyCofkkhloZ9LYDGz/tsod/JuHOfeEefJZMjKwMKZaKdEhPxtFyQo0nUObS0OjQEP3v+HZqc4T8BGJZXdzrLTV35oa7Hy43/vCIC0imArKW+z/QKeeJuVpBSbHtTP16kl0F3CAsveFWdau4iAVXkDpLELA2SeegFtgXqb26
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(376002)(136003)(396003)(366004)(346002)(186009)(451199024)(1800799009)(82960400001)(66556008)(66946007)(66476007)(316002)(110136005)(478600001)(38100700002)(2906002)(86362001)(8936002)(41300700001)(5660300002)(44832011)(83380400001)(8676002)(6512007)(9686003)(6486002)(6666004)(6506007)(26005)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REgwcVpZVEg2V1huUHdDTWIrQWR3UEZ0bFdVbmxuSHRndXhPLzJoaEJrWlF4?=
 =?utf-8?B?WXNIQXQyU0FFb1VUWU1GR2dhMzRKbjVRa2dTS243VEtNblFoOWFRK1lQVys2?=
 =?utf-8?B?ZTZ6Ri9GNHhacVdWNE1wbXJ6WXpCbkZ6Zk9FWCtwcUJUQitmc3dOcEZPNlZO?=
 =?utf-8?B?M0lOeS9nR0dTTWo5TFlpSUxmdW94U3JFUmtIaTF6UXFnbHpLbUw3WnlWMkw1?=
 =?utf-8?B?MEliTGxFdDBrbk9sNFg3UHZQa3ZIUXdQdnZqYkxLOGRicmZoQ3cyVVRPbGcx?=
 =?utf-8?B?UVhyTUlkR3l5RDJRSXo1RVFxWVhLUnBzVWRzUE9zVDYvU280elVaanZENEd1?=
 =?utf-8?B?UEZSZFk1VmRTV3VUL0R4dEpScDlHMnpLNjhBcHdjcU5weVpESFZTWmFOeHY3?=
 =?utf-8?B?eGUzeXRqb2RCTnpnamlQc1k3U3owNkFKd3lkNFVCRCtPdjgyQVdRVWF1UjNi?=
 =?utf-8?B?bjlQWVlBQnRJRVJkVlVxU0dkeUFqWmpTaDJGbnBUdTJUOUN5MGRkVU11Nm4r?=
 =?utf-8?B?THlXcWFSZGRSazlwZWlRdFIveWdpUlFhemhiWTlVSkVkYUI5UlZ0SkY4VXFj?=
 =?utf-8?B?QzlyYjVvWGRxNEtJdmx1QjgzaXU2ZlMvcDdmY2tJUUdNZEVCQ3ZzMVJGeXQx?=
 =?utf-8?B?K043VVAyYWZKTzJSUXlRTnVUNTBLWEdVclRSK052bWFaMXpzZHl0eDByMCtJ?=
 =?utf-8?B?ZnlrZC9RSEYxa0dWU1Nkbm9aTDdLbnVQbTh4QlZvQWl1YkhiNW5mYW9NbFk5?=
 =?utf-8?B?aDdYS1VrLzYwZlIwanpESUJGM1dQSHkvaVZCS1NkVXhSMC93U1FDSWIwcXc5?=
 =?utf-8?B?ZkM3UUNwaCtJTENNZDNSOGZWWDkraW5CejhWMmdPdWFHOFhFVEtmV0dZclB0?=
 =?utf-8?B?dXZVRGlXV2FVYUJaaCtBbjZwdDkxL2hJeVlUejdFdFAzK0pzQUJPQncrY1dG?=
 =?utf-8?B?OTZ0RWRVcks0akFMMjVQUnYxWkx1T243OFIvY2d1aHNURmhnNmVvWlhqUytU?=
 =?utf-8?B?Ukt0VDZCejlHcEI4bVQ3ek5IYmk2Y3cwNENSNU12ZXhiREtyTEpqRVJadTZz?=
 =?utf-8?B?QUduQUxXc1MzdzVEcFY2WXA2bUEvczlrM3Zpakh5UDR4TDRiWC8wZDFSdzU4?=
 =?utf-8?B?dWxyY1E0Q2hqYWplMERPMWNTaDlHTU56QWt6dTlCMkZiRE9CMFdoS3pLN0oz?=
 =?utf-8?B?cEkwcWVJeXQvSzdaVk5SMmhyVVNQUDFWS2xpOUFMOU14RDdUaVNkL3NYQkpD?=
 =?utf-8?B?cDdqdjdOdnFsTUk2Sm5RN01HOUNMaDBHQjV1S0NXdmhhc2MyUk5oRm8xVkMr?=
 =?utf-8?B?VmFYVlpyenhNTEk0UkVra1ZocW5qRFlYYkZGWlRkd04xOTRvcUc2UERuVTFV?=
 =?utf-8?B?NmFJUkNyQWRKbEROTDROeTdJSUhmUnA3VU1Ca0pZbmppL2dVS3dVNHBpemxs?=
 =?utf-8?B?Z2UvajNQZ3RSSVlyWG9SZEowV2xqb2hLaHJ6OGxERjlLRFRpaERmSWJadUJU?=
 =?utf-8?B?N1VuWHMrbi9XT281UWFjbWZ6cTNCUlZJZUdkVGVQS1BPWE5hVWViYm9yNzM2?=
 =?utf-8?B?RU1aanZuY01jRGthdEx0KzJBa1p4Tit1eUprckVkZlpFVURCUmUxcmhQaWZv?=
 =?utf-8?B?WWVJNngybU56b3owOHZIQWVlRzNoSS9NM2RHNFZ4ODNsbkRXNWEvV2diQ3BI?=
 =?utf-8?B?SkkvUlExbCtmRUYzbGtYdkludDdHOTcyUkVEdHhvOUVGZHYyNmMwcWJqdFNy?=
 =?utf-8?B?dXJMY3VGNUZqK2xOUkFTWVI0aTFkUjZ4WTltTHE1K3lKd3VWaTFUNkdDTERQ?=
 =?utf-8?B?djAwYnFmaDBvYTF4RnNteDM4Vm5TbVJPSGlHVDd4cnVsWlVBK0hEclQ1alFX?=
 =?utf-8?B?Y1F3OWRUYVJ0TUp1SEhqaFJCUnpCUldJc1RSdm9nQjNNdzkzaEF0MXRpODZB?=
 =?utf-8?B?Z01iSXVFaGJyZ2k0YzBySi9uU0xqTnBCR2hKdFpmVE1oSHdmam05RCswRitT?=
 =?utf-8?B?YXFvZGcyOG5tWFpVdDFSS0dvcFU4RU5PcGNXWWJVOVNQS0FlYWRUVmdFOUtB?=
 =?utf-8?B?SUNtWnpqeEhzUE9Ed1dMcGovdTBoRzJsYVRFS0pYWlhCRTBiV0Y5NVR5K3g1?=
 =?utf-8?B?Z0JCZ0pjT2MwU3haYUtvSjd2M3NhR2N2MDY2U1h3anNOUUFQZGNqbUFKYURy?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dd53335-7846-43fb-b25c-08dba95308b6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2023 12:17:09.9408 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gOpwYTGgZ6hnO2NhxR1F+EKhb3nyabd3FwvbsEkNPkSYdje4djqtaHOUu0azHOYKAFN6peMctDwR2ePDk7O8jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6069
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: Check and increase msgbus
 timeout threshold
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

Quoting Jani Nikula (2023-08-29 12:12:19-03:00)
>On Mon, 28 Aug 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>> +#define INTEL_CX0_MSGBUS_TIMER_VAL_MAX        0x200
>
>Either make this 0x200U (for unsigned)...
>
>>>> +
>>>>  bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
>>>>  {
>>>>          if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 0) && phy < PHY_=
C)
>>>> @@ -119,6 +122,43 @@ static void intel_cx0_bus_reset(struct drm_i915_p=
rivate
>>>> *i915, enum port port, i
>>>>          intel_clear_response_ready_flag(i915, port, lane);
>>>>  }
>>>>=20
>>>> +/*
>>>> + * Check if there was a timeout detected by the hardware in the messa=
ge bus
>>>> + * and bump the threshold if so.
>>>> + */
>>>> +static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_privat=
e
>>>> *i915,
>>>> +                                               enum port port, int la=
ne)
>>>> +{
>>>> +        enum phy phy =3D intel_port_to_phy(i915, port);
>>>> +        i915_reg_t reg;
>>>> +        u32 val;
>>>> +        u32 timer_val;
>>>> +
>>>> +        reg =3D XELPDP_PORT_MSGBUS_TIMER(port, lane);
>>>> +        val =3D intel_de_read(i915, reg);
>>>> +
>>>> +        if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
>>>> +                drm_warn(&i915->drm,
>>>> +                         "PHY %c lane %d: hardware did not detect a
>>>> timeout\n",
>>>> +                         phy_name(phy), lane);
>>>> +                return;
>>>> +        }
>>>> +
>>>> +        timer_val =3D
>>>> REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
>>>> +
>>>> +        if (timer_val =3D=3D INTEL_CX0_MSGBUS_TIMER_VAL_MAX)
>>>> +                return;
>>>> +
>>>> +        timer_val =3D min(2 * timer_val,
>>>> (u32)INTEL_CX0_MSGBUS_TIMER_VAL_MAX);
>>>     ^ is this cast necessary?
>>
>> Yes. I remember getting a warning without it. Let me remove it to rememb=
er...
>
>...or use min_t() instead of adding the cast here.

The v2 of this patch removed the usage of min(), but thanks for the tips!

--
Gustavo Sousa

>
>BR,
>Jani.
>
>
>>
>> ...done! I think it complains because the arguments are of different typ=
es:
>>
>>     In file included from drivers/gpu/drm/i915/display/intel_cx0_phy.c:8=
:
>>     drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function =E2=80=98i=
ntel_cx0_bus_check_and_bump_timer=E2=80=99:
>>     ./include/linux/minmax.h:20:35: error: comparison of distinct pointe=
r types lacks a cast [-Werror]
>>        20 |         (!!(sizeof((typeof(x) *)1 =3D=3D (typeof(y) *)1)))
>>           |                                   ^~
>>     ./include/linux/minmax.h:26:18: note: in expansion of macro =E2=80=
=98__typecheck=E2=80=99
>>        26 |                 (__typecheck(x, y) && __no_side_effects(x, y=
))
>>           |                  ^~~~~~~~~~~
>>     ./include/linux/minmax.h:36:31: note: in expansion of macro =E2=80=
=98__safe_cmp=E2=80=99
>>        36 |         __builtin_choose_expr(__safe_cmp(x, y), \
>>           |                               ^~~~~~~~~~
>>     ./include/linux/minmax.h:67:25: note: in expansion of macro =E2=80=
=98__careful_cmp=E2=80=99
>>        67 | #define min(x, y)       __careful_cmp(x, y, <)
>>           |                         ^~~~~~~~~~~~~
>>     drivers/gpu/drm/i915/display/intel_cx0_phy.c:152:21: note: in expans=
ion of macro =E2=80=98min=E2=80=99
>>       152 |         timer_val =3D min(2 * timer_val, INTEL_CX0_MSGBUS_TI=
MER_VAL_MAX);
>>           |
>>
>>>
>>>> +        val &=3D ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
>>>> +        val |=3D REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
>>>> timer_val);
>>>We do not use REG_FIELD_PREP in the function. Instead we use it in
>>>register definition in intel_cx0_phy_regs.h.
>>
>> I think it makes sense have definitions using REG_FIELD_PREP() in header=
 files
>> and use those definitions in .c files for fields whose values are are
>> enumerated.
>>
>> Now, for fields without enumeration, like this one in discussion, I thin=
k it is
>> fine to use REG_FIELD_PREP() directly. The MASK is already exposed anywa=
y...
>>
>> Besides, it seems we already have lines of code in *.c files using the p=
attern
>> above:
>>
>>     git grep REG_FIELD_PREP drm-tip/drm-tip -- ':/drivers/gpu/drm/i915/*=
*/*.c'
>>
>> Let me know what you think. I could add a XELPDP_PORT_MSGBUS_TIMER_VAL()=
 macro
>> if you think it is necessary. My personal take is that using REG_FIELD_P=
REP()
>> for this case is fine.
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>Thanks,
>>>Radhakrishna Sripada
>>>
>>>> +
>>>> +        drm_dbg_kms(&i915->drm,
>>>> +                    "PHY %c lane %d: increasing msgbus timer threshol=
d to
>>>> %#x\n",
>>>> +                    phy_name(phy), lane, timer_val);
>>>> +        intel_de_write(i915, reg, val);
>>>> +}
>>>> +
>>>>  static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum=
 port port,
>>>>                                    int command, int lane, u32 *val)
>>>>  {
>>>> @@ -132,6 +172,7 @@ static int intel_cx0_wait_for_ack(struct
>>>> drm_i915_private *i915, enum port port,
>>>>                                           XELPDP_MSGBUS_TIMEOUT_SLOW,
>>>> val)) {
>>>>                  drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for
>>>> message ACK. Status: 0x%x\n",
>>>>                              phy_name(phy), *val);
>>>> +                intel_cx0_bus_check_and_bump_timer(i915, port, lane);
>>>>                  intel_cx0_bus_reset(i915, port, lane);
>>>>                  return -ETIMEDOUT;
>>>>          }
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>>> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>>> index cb5d1be2ba19..17cc3385aabb 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>>> @@ -110,6 +110,18 @@
>>>>  #define   CX0_P4PG_STATE_DISABLE                        0xC
>>>>  #define   CX0_P2_STATE_RESET                                0x2
>>>>=20
>>>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_A
>>>>         0x640d8
>>>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_B
>>>>         0x641d8
>>>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1                0x16f258
>>>> +#define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2                0x16f458
>>>> +#define XELPDP_PORT_MSGBUS_TIMER(port, lane)
>>>>         _MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
>>>> +
>>>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
>>>> +
>>>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
>>>> +
>>>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
>>>> +
>>>>          _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
>>>> +#define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT                REG_BIT(3=
1)
>>>> +#define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK
>>>>         REG_GENMASK(23, 0)
>>>> +
>>>>  #define _XELPDP_PORT_CLOCK_CTL_A                        0x640E0
>>>>  #define _XELPDP_PORT_CLOCK_CTL_B                        0x641E0
>>>>  #define _XELPDP_PORT_CLOCK_CTL_USBC1                        0x16F260
>>>> --
>>>> 2.41.0
>>>
>
>--=20
>Jani Nikula, Intel Open Source Graphics Center

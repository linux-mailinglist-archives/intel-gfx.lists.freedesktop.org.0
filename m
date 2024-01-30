Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ED1842CCA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:32:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CECF10EE1F;
	Tue, 30 Jan 2024 19:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4023E10EE1F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 19:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706643118; x=1738179118;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=TYT9qFAoLjZeR9kPJDZOpdA7VdkajNeZtHi5SA7Dw6s=;
 b=kk2mWROTVy5Z9IEhC3/tD8zog/IW8bGhibxqcJ8UVkSnfd6elo6C3p4q
 NBWddBOMSJ90JrO48rj7U7JShzAP1qgGSJdBZSPOmuocGJVMO4LS9XJAZ
 7MgDdB1/Mf1LotgTTQFzQmplBTzVAtvwPYvaqJlR1zTXNuiKoSrBydf0C
 UEzgEzfDQ5oIN+kcvgKEkI14/vDpFI/yFERWQHYSo8UtmvdyR/X5UcA5h
 LDZyfjnR6fXAUagVvGN3VmzagMZBAXJYQ0PaFDly3nB2eyuAUPz+ThTYZ
 rH6GAEzoDWuCOrUoDBjcy1u0Je8aMuvUOrFaNAwF3ah6zIxj2ulB95eGi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="403004930"
X-IronPort-AV: E=Sophos;i="6.05,230,1701158400"; d="scan'208";a="403004930"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 11:31:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="737865819"
X-IronPort-AV: E=Sophos;i="6.05,230,1701158400"; d="scan'208";a="737865819"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 11:31:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 11:31:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 11:31:56 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 11:31:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnCn80kkJtqY9di7XNLf2rRPHi1d1cAFMHh5n+vgA2kx8Wc7wwPe7PvV/uiJgR8vn8sMd3v9y0R0EL3JNxXYBuIju4NI9BPbDnMBFSPrVe2Gnv+WpLnco6l2lB8BovBowVDxl4+pgYhuBpv8q24CKCCTtHegZ4HJhPEirBjOkKkJiDLDQzvIv15PFx9clfJwqs9NHFrbRJ8b24ZNaO2lghcnDgBfQ/2UNIiduYMQ7f/3j01Amj8el6KKsQUIZC+lfpC1hLYbIU39RG0xsbiQYoiovm0yeb+zJGQ7ERsQ+gT0aRTODc2e49vi5oOeqZ9HII1cVXckQUU4J/VaCVnMog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/vf6kmvA64i6Lk1IZzuJsnYi6aK1Atelt/REUv/U7D8=;
 b=CRYCeN28BceNfKIVZxs8QjU1HrkAiAMwmU6IYoBEoPLC5lh79NCV41+6UcTooSkVDPDNJKK/EZQa7U8hksE/ymlEWKz8Rgi78TFRYJ/aKhnnFACeCHEZuHV2Dkb2eGItp3OKODrF7QZYPOlgNUPvxBKeerfP/ZtEhx1Xh7595b+rUHpH/ylYiT8vD9PXejfqB42lENcELqsBbbrlXnBNtXyN+xmlrQtVXRuYnc5tWpXNJ5GgLMsGbmXSBvlTdHfHQpl2aj4teWrk1TwTC/vSsqFUQnEKoDpIgb8ucuv6B3TOapWA9wkW1BFLPR9UDzzM0WlZKHDavRYuP9JTA/2rlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB6408.namprd11.prod.outlook.com (2603:10b6:8:b7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 19:31:53 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793%7]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 19:31:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZbOI7Na4nd6KRwor@intel.com>
References: <20240123090051.29818-1-ville.syrjala@linux.intel.com>
 <20240123090051.29818-2-ville.syrjala@linux.intel.com>
 <170601736631.12457.15576941633628295050@gjsousa-mobl2>
 <ZbOI7Na4nd6KRwor@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/fbc: Move DPFC_CHICKEN programming into
 intel_fbc_program_workarounds()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 30 Jan 2024 16:31:49 -0300
Message-ID: <170664310941.3037.16408025344475946260@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB6408:EE_
X-MS-Office365-Filtering-Correlation-Id: ce1e32e0-c0f7-4c5c-f483-08dc21ca1cab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PSXuiyjgl8LbqDfETijdCnNP4GvnUO3OfoR28yKVGCcsIY3gftgoz5VSADyxYhVbQ0u4eS4XYhfzijJAei+zkW5MOc+6dKg0mO3Hy/DFj15xyUG4YRa6+hNfvxr1KriJQ+NfBBt8Tqw8JwVpJEhCffrWlZi7Gu0RVkYqOgDW9CLnLV6TgvcE8NzcL4ViYefj+wU3DGTjMZIF7klBKhAAH0NHppEH3Yl0Kqib6B2IW34/AH7X7MEAgVgUp0Jk8698fjH66Nto5OM2QsoG5IR4h6m3nYG3Bi8JMtLYUix5ua8cJhzA3EkzPHft+MsG9NFMSGAaJJxjvGwgG9RGNlkK9DN2eU8MjVbkiYdkszYo8Y0m6TQ92Nrc8iJnLF4jizLRxymsvh/sB4/mX3caQ1vIr9hYmvIYo79ee3RkXI2R9S3R7XGhRY+ayjsbuaTE2jmjhH49O/QA034JBygKqYcIkpGqWgiVs+ATdhN3ZlhZWb7q0plkutVvtYV2d7UySd7jpBqC61OyBj8c8SLc5Zud94MKOxDbYytyAsSAsYF9PAfvQQ/MNwVV/RgtHZS0uYEv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(136003)(396003)(346002)(376002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(8676002)(8936002)(4326008)(44832011)(5660300002)(86362001)(2906002)(316002)(66476007)(66556008)(66946007)(6916009)(6486002)(6666004)(38100700002)(82960400001)(6512007)(6506007)(478600001)(9686003)(83380400001)(26005)(41300700001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGN3MmdKWFFoOHA5MFlNSlIwTUhENGZyL2I5OU9ab0RLWmlNK1AyZHBOclhV?=
 =?utf-8?B?THIybWExWU5ZT1FVOUIrSUZyRWdHTWhkZ2U0czR0a1V6eXBuWU56aS94ZWFx?=
 =?utf-8?B?a1laQlh5YnZRTXRKQmdSR250R3B3OHVoV0t3ajV4Yys5Y0dQd1UrWWNITjlr?=
 =?utf-8?B?Y0xkNzMxOFRYa0Jjc09UVkdJSXhMNWJoT2RNc25Cdkt3V0NZdTBIaVA4YVFj?=
 =?utf-8?B?bkZ6cDRpM3U0cVdSYXNUYUhGWGZ2ZDZKcEZlRzNwRGhlYmVMTDNSK1dOVFU4?=
 =?utf-8?B?YVI4Z3lmbVlOdXhpNkNGSU0yRWVGVW4vUEp5NWRReHB2Zno1dmdORExmZHY3?=
 =?utf-8?B?cURVYysvZCtmTytiRDJoYWFlYnpiSU94Nzl3bGxYR2t2eG9TSm00Q3BrS0RN?=
 =?utf-8?B?djhJbW94My9kVW5IMnZZV0VQZ0d5WDFiQVNRRXJIRGM4dkdGdXl2Yi92ZWRZ?=
 =?utf-8?B?MytRbU8yUXFFSkFNWUFDN0FEY3FqTGcvVkR5ZlhCR3pEbHFHMUZGODJ5R2pR?=
 =?utf-8?B?VGNCR0FkYXRwdlhjVTlXMEVobXVwMWZaR0g4MGtZelBxWUxhRi9qcDFLSzN6?=
 =?utf-8?B?ZVRjSE9uanNvWlMwWEJnZ2g2dmxxblFLYUNaalVsaW9tdWpEdVR1dEJ4dThT?=
 =?utf-8?B?eDh4NmJtNTNaQTF6c0lQR1lmMHpvNDVheHFLZjlnZUZ1NWJ1N3J3bDVJcDZQ?=
 =?utf-8?B?L1Q0WE9ZN2RKRXo5eWZLeEhKQ1B6bjdYS1VxdWJRN05ZSlhzN3hkQjBxaDFO?=
 =?utf-8?B?cXV4azdDWWtrUG9jUER6ZGd5YU93d2tSYnhVc3ptQjdtL2s0blNQY2FkdE9Y?=
 =?utf-8?B?THRvUSs1V0JqV1M2eGNEc0VYbHUvZVkya2UzVmZHeXBQVERIZEZleVFmTnhZ?=
 =?utf-8?B?Nmg2NFhaaUg4cytqTzg0N0lxYmNTSkxUVjlWT1VVUVlvTkFHT3lmOTJzWURz?=
 =?utf-8?B?WWlHME9zVlNRUTRJcVd6M0JSQUpad1ZrdmlSNW02QWliSHNkVWVMcHNtd25V?=
 =?utf-8?B?SWZJVk01L095R2hoanYrL1pJL2RYbDZabktZd3pPUXdJMzJYK2I5RDNjUmtl?=
 =?utf-8?B?QmRNZkFVWm81dFpuUWRwT0Y5d2RIek9nbnJMSXhCVjVnZ2lYcDNmT3poYWg5?=
 =?utf-8?B?bUNHTjgwNDRKeGFNS201MEkzRkQrbDJJOWNiY0VxNVFFMk12QzJRVnBjblpp?=
 =?utf-8?B?SURjQ08vMzBCMzVPd25najFlYjF0amJGdmNoR08xMEdxV2FPeVJITTRPMTFB?=
 =?utf-8?B?ZWJkT0dQSzJSY2xVU2JzVHVpSVkyQ2xTa2MxdXZ4bTZGNFFNMVEzeXpGZzJY?=
 =?utf-8?B?ajBkbzBURXBoTU5vMUdtQWZhUXdIdGFKZ3VJRk14aE4rM1kyN2IwbjFONXRE?=
 =?utf-8?B?SVdCUGdkVW1jZ205K3RxZlFaalZqdjFjZmQ0cFBpS1JmWWZlWnFJUzRnYlFQ?=
 =?utf-8?B?dHRBTjNJRHJCeVVoSXcrcGRCeHJER0c3aGk0RjRWWnQ4SHd3eHdxTDdRb3pC?=
 =?utf-8?B?bjNiblg0c0R3LzFQbFZ1VXpXMHFMZVlBcTZKK0FXUkNBNUZXWU42Y2NGMThN?=
 =?utf-8?B?U3duSHdSQWJVZ3dsZkM1TU1nMlEraGgzcUpRLzNCWTFCdnFOOTArRkpaMmhZ?=
 =?utf-8?B?bXNzRGpVSGlqQVNiWmxFNXlQTzJad3NOa2J6MmxhNFJSS0FubkVIVVhMdDBy?=
 =?utf-8?B?Ulg3cFZQVGF4aVlMVXVuUUxwQUpFWW4zeFFHSDNYOXcxa2p5OTFocTU5MnBB?=
 =?utf-8?B?RUFwSnhvN09ER1F6R09DUVFMS2dpNHZ5ZWovZjdaZlIwOVJ6eDBudkNtMkto?=
 =?utf-8?B?WlVwMktNcWdxdkUwNm5BNjJ4MFYwWG5UMEVKdWpzL0VlVmZjamtBckJ5ZzYz?=
 =?utf-8?B?K0d0alhRNjhNLzZpZVk4WWU5WmQ1OTNtWklJK0ljTmdTdXI2MmtGYlRqb1dL?=
 =?utf-8?B?VnBtbjZZa1pkMDhDM3dpY1JIeWxoRDFhbFNiZkZqbWN3cUFMZEJPZjZTMUsy?=
 =?utf-8?B?ZEpwc014QitZbFhBbzRFY2pVZkZwZ3U3NHQ2V082Q2luNVEzSUhaVjg4UXRj?=
 =?utf-8?B?czdsUm1aRjRjaW9EV3F1ZXNYdmQxZzlNY1RGTHpscFpBTHdGSDFzVE1zZFkz?=
 =?utf-8?B?SGlLREpFMG5ZbGI2LzZWSkkwVmZtS2pld1hVbFJtOTFVcDRCbU9hV0N0QTBD?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce1e32e0-c0f7-4c5c-f483-08dc21ca1cab
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 19:31:53.0849 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: slMJpazGEoNr+tFvuvY9tHTiKHAy2vEC2oKcCHrEbYOd7qLZc28iU3gMGUIjBpwXlQRAvgZdeywYXO4H4v+qvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6408
X-OriginatorOrg: intel.com
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-01-26 07:26:52-03:00)
>On Tue, Jan 23, 2024 at 10:42:46AM -0300, Gustavo Sousa wrote:
>> Quoting Ville Syrjala (2024-01-23 06:00:51-03:00)
>> >From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> >Move all DPFC_CHICKEN programming into intel_fbc_program_workarounds().
>> >We already have one thing programmed there, whereas the rest is strewn
>> >about in intel_display_wa_apply() and init_clock_gating(). Since we hav=
e
>> >a single place doing all the programming (and it's serialized by the
>> >crtc commits) there should be no danger of rmw races.
>> >
>> >Other FBC related workarounds also exist, but those require fiddling
>> >with other registers that may also get programmed from other places,
>> >so we'll need to think harder what to do with those.
>> >
>> >Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >---
>> > .../gpu/drm/i915/display/intel_display_wa.c   |  8 -----
>> > drivers/gpu/drm/i915/display/intel_fbc.c      | 32 ++++++++++++++++--
>> > drivers/gpu/drm/i915/intel_clock_gating.c     | 33 -------------------
>> > 3 files changed, 29 insertions(+), 44 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/=
gpu/drm/i915/display/intel_display_wa.c
>> >index ac136fd992ba..e5a8022db664 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> >@@ -10,20 +10,12 @@
>> >=20
>> > static void gen11_display_wa_apply(struct drm_i915_private *i915)
>> > {
>> >-        /* Wa_1409120013 */
>> >-        intel_de_write(i915, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>> >-                       DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>> >-
>> >         /* Wa_14010594013 */
>> >         intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, 0, ICL_DELAY_PMRSP);
>> > }
>> >=20
>> > static void xe_d_display_wa_apply(struct drm_i915_private *i915)
>> > {
>> >-        /* Wa_1409120013 */
>> >-        intel_de_write(i915, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>> >-                       DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>> >-
>> >         /* Wa_14013723622 */
>> >         intel_de_rmw(i915, CLKREQ_POLICY, CLKREQ_POLICY_MEM_UP_OVRD, 0=
);
>> > }
>> >diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
>> >index f17a1afb4929..1a2d4d91a85f 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> >@@ -826,10 +826,36 @@ static void intel_fbc_program_cfb(struct intel_fb=
c *fbc)
>> >=20
>> > static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>> > {
>> >+        struct drm_i915_private *i915 =3D fbc->i915;
>> >+
>> >+        if (IS_SKYLAKE(i915) || IS_BROXTON(i915)) {
>> >+                /*
>> >+                 * WaFbcHighMemBwCorruptionAvoidance:skl,bxt
>> >+                 * Display WA #0883: skl,bxt
>> >+                 */
>> >+                intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
>> >+                             0, DPFC_DISABLE_DUMMY0);
>> >+        }
>> >+
>> >+        if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) ||
>> >+            IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
>> >+                /*
>> >+                 * WaFbcNukeOnHostModify:skl,kbl,cfl
>> >+                 * Display WA #0873: skl,kbl,cfl
>> >+                 */
>> >+                intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
>> >+                             0, DPFC_NUKE_ON_ANY_MODIFICATION);
>> >+        }
>> >+
>> >+        /* Wa_1409120013:icl,jsl,tgl,dg1 */
>> >+        if (IS_DISPLAY_VER(i915, 11, 12))
>> >+                intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
>> >+                             0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>> >+
>> >         /* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
>> >-        if (DISPLAY_VER(fbc->i915) >=3D 11 && !IS_DG2(fbc->i915))
>> >-                intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
>> >-                             DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>> >+        if (DISPLAY_VER(i915) >=3D 11 && !IS_DG2(i915))
>> >+                intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
>> >+                             0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>>=20
>> Since we are writing to the same register, maybe we could have a single =
read,
>> modify and write instead of multiple rmw calls?
>
>Perhaps. Although we do at most do two rmws here on any given system.
>So it's not particularly expensive to keep it simple like this.

Well, I think having a single rmw would not include too much complexity,
since we would only need keep track of a single set_bits variable and
use it at the end.

Anyways, the changes look correct here. So, with or without the
suggestion:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>I was also pondering about splitting this into vfuncs, which would
>need multiple rmws anyway. But the whole thing is a bit of a mess
>in terms of which platforms need what, so not sure it's make it
>look any nicer.
>
>>=20
>> --
>> Gustavo Sousa
>>=20
>> > }
>> >=20
>> > static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>> >diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/dr=
m/i915/intel_clock_gating.c
>> >index 9c21ce69bd98..39f23288e8a8 100644
>> >--- a/drivers/gpu/drm/i915/intel_clock_gating.c
>> >+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
>> >@@ -105,12 +105,6 @@ static void bxt_init_clock_gating(struct drm_i915_=
private *i915)
>> >          * Display WA #0562: bxt
>> >          */
>> >         intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_D=
IS);
>> >-
>> >-        /*
>> >-         * WaFbcHighMemBwCorruptionAvoidance:bxt
>> >-         * Display WA #0883: bxt
>> >-         */
>> >-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),=
 0, DPFC_DISABLE_DUMMY0);
>> > }
>> >=20
>> > static void glk_init_clock_gating(struct drm_i915_private *i915)
>> >@@ -396,13 +390,6 @@ static void cfl_init_clock_gating(struct drm_i915_=
private *i915)
>> >          * Display WA #0562: cfl
>> >          */
>> >         intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_D=
IS);
>> >-
>> >-        /*
>> >-         * WaFbcNukeOnHostModify:cfl
>> >-         * Display WA #0873: cfl
>> >-         */
>> >-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>> >-                         0, DPFC_NUKE_ON_ANY_MODIFICATION);
>> > }
>> >=20
>> > static void kbl_init_clock_gating(struct drm_i915_private *i915)
>> >@@ -427,13 +414,6 @@ static void kbl_init_clock_gating(struct drm_i915_=
private *i915)
>> >          * Display WA #0562: kbl
>> >          */
>> >         intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_D=
IS);
>> >-
>> >-        /*
>> >-         * WaFbcNukeOnHostModify:kbl
>> >-         * Display WA #0873: kbl
>> >-         */
>> >-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>> >-                         0, DPFC_NUKE_ON_ANY_MODIFICATION);
>> > }
>> >=20
>> > static void skl_init_clock_gating(struct drm_i915_private *i915)
>> >@@ -452,19 +432,6 @@ static void skl_init_clock_gating(struct drm_i915_=
private *i915)
>> >          * Display WA #0562: skl
>> >          */
>> >         intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_D=
IS);
>> >-
>> >-        /*
>> >-         * WaFbcNukeOnHostModify:skl
>> >-         * Display WA #0873: skl
>> >-         */
>> >-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>> >-                         0, DPFC_NUKE_ON_ANY_MODIFICATION);
>> >-
>> >-        /*
>> >-         * WaFbcHighMemBwCorruptionAvoidance:skl
>> >-         * Display WA #0883: skl
>> >-         */
>> >-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),=
 0, DPFC_DISABLE_DUMMY0);
>> > }
>> >=20
>> > static void bdw_init_clock_gating(struct drm_i915_private *i915)
>> >--=20
>> >2.43.0
>> >
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44691839058
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 14:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C863D10E7E7;
	Tue, 23 Jan 2024 13:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF5110E7E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 13:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706017381; x=1737553381;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=Ca8LPk4CGYToeHVDmR8FZlBqfHtsX/DoYuiO3VrIE/c=;
 b=Awa3cwnjmBA+TOkVY9Id4VIY92g6HpReddcHikjD1PTmZT5rjsP05OQN
 N8KYP1Ls+k1+I5z0pwS38h+tzQM8MDzb7NdLr+OjzEcCDIZQ7NksJD1Fa
 Xio3PR5Ib7J+GiUbeT9TB69a09SpaYoebzrD3wlk/vpr8MhvrMparbuyl
 U/FLn2Zm7jeRU3+jK3SYhb/2uGHuQspMnniG83RBCQyIgSAxSEP69ERU+
 XqqTdxR0E4aA1O4fhNuXOoUeb2/NwDsLe02240Ae+lnKJx0qg58i6SnYt
 ZY9UtCy3MrEGYzCbRApEuBvDlx5XjqlCH6nJCi9IiIQEDVFb562kW27jn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="405281171"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="405281171"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 05:42:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="786065362"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="786065362"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2024 05:42:58 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Jan 2024 05:42:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Jan 2024 05:42:58 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Jan 2024 05:42:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j/PgUOuk5bVLcaEcJsUbMLIDPTf4gmBDWDtobWxxyhXFnuuRhDNc3+5lJcneI3pv1nntnfJVuR3/VzDMKsnY/lIO+xAtKG3JvamhtuTxxJfR1zMwZEn91Ub6KOAN6bVXfwwUvxg7iBgZb144dE19PJ9i7lX5h9ebAXVD1u8hNsbTHARXboYSbDGlxDRbi5wd9gwJkruW7SrY5O8BMLnzlPKwxPgel5Pxcc0ciMHsTgKwInmTokKi6Wn92zDMcwXNVDemEb4JB/0rIeEX0TKaX+1d6s6EEMGY8JpUfP5j6pRYRVvbRpfzdSQXRBZvrTl7JkUQnhPmwGeW2PVKlhAGww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1t8zEVgq0/wRki84q5JvaIaMtN+PbkS00ImKNFmOAcM=;
 b=mmWIs85AZwc4TqOvKRoUuiKLUelQUVwdEut/jOwnEevBFW7Z1tmnGMVZIHC/xnTcgQOIVLQb9WdISho4kwa16Ttn2oxVwN6n4rxixLpnbF4uiQpKgnWudnFIKpxaZKidQT71B/QbNMJUDzv9cJIdYbGWOLoQgz9CxPWmMubo4VszWX+TVi3gciJtcNWjYhl1mJm/shIQ+751Dr848nfpXxtfBhWl0E/wCjkkjzVHmDBm7cVJMBRSNhbGwBCMBkUFjWs3B2jwFKHJ91vo50wSOOvXajXhTXanSx9cL3jmNOcJOcUub6urBFyV9Pfn2Ldzp/DaPZyzv7P58MDmqZF99g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7339.namprd11.prod.outlook.com (2603:10b6:930:9f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.37; Tue, 23 Jan
 2024 13:42:51 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::559e:7844:adc9:7793%7]) with mapi id 15.20.7202.034; Tue, 23 Jan 2024
 13:42:50 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240123090051.29818-2-ville.syrjala@linux.intel.com>
References: <20240123090051.29818-1-ville.syrjala@linux.intel.com>
 <20240123090051.29818-2-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/2] drm/i915/fbc: Move DPFC_CHICKEN programming into
 intel_fbc_program_workarounds()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 23 Jan 2024 10:42:46 -0300
Message-ID: <170601736631.12457.15576941633628295050@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR06CA0009.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7339:EE_
X-MS-Office365-Filtering-Correlation-Id: 288a4f03-6e3c-4739-408d-08dc1c19313c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dOa+I9ZcltA9SVg5cPW9CaasuQDaLfrcyUczDUmt5om0bcQa66nH5KSr3jictugh6Tq5F6qFdE39rHR0dgARAvGRITohLBBkSNMnVyz9nCNWeIIxHxSe9T7FDlPhzzDTbdw3SW3dJRXjzOp9gw7rh21KtHZW+hHZ7pEPHsqXX7Z10lhsxA81FvueVd3SgH15iLwEnIVgEyQF0WwpQuHQiK2UA5OCuUHf8IZYNlZjAsz6prxTqlJLmvsRUwJJdAxC/52nyxiJUkACBx+/dxDA1S8y+o8c1/iV8wodMiJFVGYmOmqhjaZ7ttbwGI0+Gp5hcSUnpl2oyjJO9Iwk8nFSndawH7I67yh7ezE1uXY0BxgVKxyZxK+znwta0qf6tVsw/d3QlEaUUo6xBjma834Kc+lg4R67S94vdNSrLPLFL/9PLap/nT3RQBYpWqXQ1ni4KzGdz8K60DeVxLODewwBVml/PXmfAyzaEnsjueu1MWE/vgE6LKneTrEekrmWnSeyqE8OxNuqWAJS2tTc1Efor47tuO8nbZwJJcm254OWJiTSCDqOZt360oce2N0dDc8t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(39860400002)(366004)(396003)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(2906002)(6512007)(9686003)(26005)(86362001)(8936002)(478600001)(8676002)(41300700001)(38100700002)(33716001)(82960400001)(83380400001)(66556008)(66946007)(66476007)(316002)(44832011)(5660300002)(6666004)(6486002)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0x1L1gwYUxtT0tBMFF6K0lBZFBTMEQxb3BVa1BBbmZzOWRLZVRxY3lHRnhK?=
 =?utf-8?B?MEZiUlVNcjFuUHErTEdtVC9Sa25STHdhZ0szdVUvRHd0NlRCSkttQ0JGM2wv?=
 =?utf-8?B?K083K1RtS2ZJVnNuWlhXdjY5dWdaM3QzajRLV1BKUGlVSENnbTJPYUxobXdZ?=
 =?utf-8?B?M2U4UkMrYXErUWg4QlRwdnM4K3pmdjRnbDcybm4wZlI0Q1ZZaW5jY25WSmtG?=
 =?utf-8?B?eGVvQ3VYQjVUbHM4UVd4RnhzSWFuTUdSSEx3TkFJajI3a0tZZkVLRWcyZTVH?=
 =?utf-8?B?M2dka3Q3dC9UY0dXVTJOWUdoZitEeHIrRlBDbjgzV3lzMytjajVtTEE0NVNx?=
 =?utf-8?B?RnFFYVZsQkNmVVhvTE1zYWtyWDlIUHo5YUFOb3cycnBILytjUm42N2ZhbGZJ?=
 =?utf-8?B?V05GaVZ1RjdZaTVvU1JJVlNRWFBDeXE4dXNOYzVsSCt5ZWVVbEU5V21ISUJw?=
 =?utf-8?B?NkF3QWlBWVZ0YnJuTmlOVEE1UWZCNW02VHRwSTIwOXJkMkI2ajg5VS9uSHh5?=
 =?utf-8?B?OWJOWHBsYXdmY1BBY2pVYjBNSXNvVzRBeWJSVWZENDR2UFMyVWpNQkw4MnpM?=
 =?utf-8?B?bHVuUlF6dFQwaDRQekhud0p6emE4NlpJUXRmRzI4bzhtaktJSUJCcFZzejR2?=
 =?utf-8?B?MHhOOFV6ZWNOREVjYStkMW0vSktIYUJwNWtyZnIyMWFpMkpBeWJjOWNGN3VX?=
 =?utf-8?B?NzNISy9mOXBOZGdLbEMwRUdKbk1DTWViRDV3M2x5K1BsN0phVE11MUxvaGVW?=
 =?utf-8?B?dUhzSldLVmpFQld5bjU2SllLczhYZ3dKc3pBYXMxWllyWUc2aFlKcnczRTJG?=
 =?utf-8?B?TnRhaEdHTlBjSm42bC83WDFvcDBjMmk4Q2JwaGtNclV2M01IVEhiLzZ1U0s5?=
 =?utf-8?B?OEtaT01FMU9MeVZCU0hTVjFkdFlHenFnNk0zVXR1azRFUTFwMVBqcW9FTW9I?=
 =?utf-8?B?RElKVitPZGdwVmVOU3lEV0c4RDV6N3FFNGFBcE5KUjNhd2hzT083VG50bm5O?=
 =?utf-8?B?UHpCdnpyalBDbkRNNGhpQUxCQTd6OWdQdURsbzh3TkYybTR5WGx1RllXMU9S?=
 =?utf-8?B?R0tqSmJFSlc0K0Y3OFV3WVpSblZVUVBHeG8vNDVCTDJDR0thVlFmQ1FPclVJ?=
 =?utf-8?B?MENIWUFJNG5NaE5Sd3JmcW5ta09xYlJiMlg1d1NLaVl0NEVUeUN5WWpRWHZ1?=
 =?utf-8?B?UjNiRDZ6bUR1RkJnZkNUWngyK2k5eU9Cb0ljSUZKckJROHJOZGowclFqTEND?=
 =?utf-8?B?dUYwQWltSWQwRTlPenJ4QU1MQURGWFRxckYyekNRNWJVOUxVKzljSVZaSTAy?=
 =?utf-8?B?azk4UTlER2ZqVXR1alh1VHBIWXpnWXdzUXlRTDlERXRMMXFUb0p6VEY4Y2RV?=
 =?utf-8?B?aGdDMHpDWm15bWJneEhUWHVDNlNlcEo4KzJmN0RHR1JteTRPWHZvV1VhUGpU?=
 =?utf-8?B?MGFPRFgvNkxtTUxSM2tSbVI0dVlHYkxUY2JOV2NJMzBIS3BwSnFEWnVHZ0VU?=
 =?utf-8?B?MCtqYVBIejFjR2UxVGFkWk00UlN0dlphVlNsM29peHdnaDM0TXlmSWtEcENX?=
 =?utf-8?B?REM5bFUzc1FtVmV0UzBubkRnb1RlZHZlcDFka08zTktkc1RTU0tFOXpTWlE5?=
 =?utf-8?B?UVlCajVBTm5lOU9pSmJHWFY3Z0VvbWtOTXJZMytLcjE4UnJ2VzVCVFFWRnV2?=
 =?utf-8?B?QmwzSDRDM1E3R0hZTFQvcFB5OG1WQ2Z6b1kwMU83aUFIUEJqNHEzTmFGMEtx?=
 =?utf-8?B?M1NqeEZIVnlKU1g5NmIwN3VjMmZ4N3RHV3NQeVl3emZWSTdRa00ySTlHN3JL?=
 =?utf-8?B?b0MvM2NLazdQYzVyT003S05JbnA4Wnp1VjRsMW1abUkvallJRS9WZGNwdGt0?=
 =?utf-8?B?bkw3Q3oxenR3bzJ5QUZFdFVLU0ZCOCtUUzdnamg0WXlja3piNDU2MFNLanV4?=
 =?utf-8?B?ZlJTTWlIbkxwejYrUTFtck9wQXdhSGZJVGY3ejZndEQzSElzRHJYYmZUZ2VS?=
 =?utf-8?B?YlE5eDQ4SUNUbmlUWU5yVkRUWUJmd0QxdGpJWFNHcU00UEt1TUNmdnE3K1N4?=
 =?utf-8?B?MEdmOEZob3VwcFFLQnJ6ekdUbUlhUEZXYXhsLzd2dE5wdUtsNno1d1NkcVE5?=
 =?utf-8?B?cXFIMnN4ekZUNVBxMHpJaG5EUCsxdTg3dmdoUVk0SlpJNXdaSHBaMmVTeGlF?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 288a4f03-6e3c-4739-408d-08dc1c19313c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2024 13:42:50.8302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sJRloxamAZ6IWfXYkK39V4uFpYFyBkxXbh1SISVzuc/PVBH1kJctPNvp96G2o7uGmei0OuisRI5pvi600JTLTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7339
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ville Syrjala (2024-01-23 06:00:51-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Move all DPFC_CHICKEN programming into intel_fbc_program_workarounds().
>We already have one thing programmed there, whereas the rest is strewn
>about in intel_display_wa_apply() and init_clock_gating(). Since we have
>a single place doing all the programming (and it's serialized by the
>crtc commits) there should be no danger of rmw races.
>
>Other FBC related workarounds also exist, but those require fiddling
>with other registers that may also get programmed from other places,
>so we'll need to think harder what to do with those.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>---
> .../gpu/drm/i915/display/intel_display_wa.c   |  8 -----
> drivers/gpu/drm/i915/display/intel_fbc.c      | 32 ++++++++++++++++--
> drivers/gpu/drm/i915/intel_clock_gating.c     | 33 -------------------
> 3 files changed, 29 insertions(+), 44 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu=
/drm/i915/display/intel_display_wa.c
>index ac136fd992ba..e5a8022db664 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>@@ -10,20 +10,12 @@
>=20
> static void gen11_display_wa_apply(struct drm_i915_private *i915)
> {
>-        /* Wa_1409120013 */
>-        intel_de_write(i915, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>-                       DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>-
>         /* Wa_14010594013 */
>         intel_de_rmw(i915, GEN8_CHICKEN_DCPR_1, 0, ICL_DELAY_PMRSP);
> }
>=20
> static void xe_d_display_wa_apply(struct drm_i915_private *i915)
> {
>-        /* Wa_1409120013 */
>-        intel_de_write(i915, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>-                       DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>-
>         /* Wa_14013723622 */
>         intel_de_rmw(i915, CLKREQ_POLICY, CLKREQ_POLICY_MEM_UP_OVRD, 0);
> }
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i9=
15/display/intel_fbc.c
>index f17a1afb4929..1a2d4d91a85f 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -826,10 +826,36 @@ static void intel_fbc_program_cfb(struct intel_fbc *=
fbc)
>=20
> static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
> {
>+        struct drm_i915_private *i915 =3D fbc->i915;
>+
>+        if (IS_SKYLAKE(i915) || IS_BROXTON(i915)) {
>+                /*
>+                 * WaFbcHighMemBwCorruptionAvoidance:skl,bxt
>+                 * Display WA #0883: skl,bxt
>+                 */
>+                intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
>+                             0, DPFC_DISABLE_DUMMY0);
>+        }
>+
>+        if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) ||
>+            IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) {
>+                /*
>+                 * WaFbcNukeOnHostModify:skl,kbl,cfl
>+                 * Display WA #0873: skl,kbl,cfl
>+                 */
>+                intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
>+                             0, DPFC_NUKE_ON_ANY_MODIFICATION);
>+        }
>+
>+        /* Wa_1409120013:icl,jsl,tgl,dg1 */
>+        if (IS_DISPLAY_VER(i915, 11, 12))
>+                intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
>+                             0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>+
>         /* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
>-        if (DISPLAY_VER(fbc->i915) >=3D 11 && !IS_DG2(fbc->i915))
>-                intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
>-                             DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>+        if (DISPLAY_VER(i915) >=3D 11 && !IS_DG2(i915))
>+                intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
>+                             0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);

Since we are writing to the same register, maybe we could have a single rea=
d,
modify and write instead of multiple rmw calls?

--
Gustavo Sousa

> }
>=20
> static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i=
915/intel_clock_gating.c
>index 9c21ce69bd98..39f23288e8a8 100644
>--- a/drivers/gpu/drm/i915/intel_clock_gating.c
>+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
>@@ -105,12 +105,6 @@ static void bxt_init_clock_gating(struct drm_i915_pri=
vate *i915)
>          * Display WA #0562: bxt
>          */
>         intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS)=
;
>-
>-        /*
>-         * WaFbcHighMemBwCorruptionAvoidance:bxt
>-         * Display WA #0883: bxt
>-         */
>-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0,=
 DPFC_DISABLE_DUMMY0);
> }
>=20
> static void glk_init_clock_gating(struct drm_i915_private *i915)
>@@ -396,13 +390,6 @@ static void cfl_init_clock_gating(struct drm_i915_pri=
vate *i915)
>          * Display WA #0562: cfl
>          */
>         intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS)=
;
>-
>-        /*
>-         * WaFbcNukeOnHostModify:cfl
>-         * Display WA #0873: cfl
>-         */
>-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>-                         0, DPFC_NUKE_ON_ANY_MODIFICATION);
> }
>=20
> static void kbl_init_clock_gating(struct drm_i915_private *i915)
>@@ -427,13 +414,6 @@ static void kbl_init_clock_gating(struct drm_i915_pri=
vate *i915)
>          * Display WA #0562: kbl
>          */
>         intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS)=
;
>-
>-        /*
>-         * WaFbcNukeOnHostModify:kbl
>-         * Display WA #0873: kbl
>-         */
>-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>-                         0, DPFC_NUKE_ON_ANY_MODIFICATION);
> }
>=20
> static void skl_init_clock_gating(struct drm_i915_private *i915)
>@@ -452,19 +432,6 @@ static void skl_init_clock_gating(struct drm_i915_pri=
vate *i915)
>          * Display WA #0562: skl
>          */
>         intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS)=
;
>-
>-        /*
>-         * WaFbcNukeOnHostModify:skl
>-         * Display WA #0873: skl
>-         */
>-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>-                         0, DPFC_NUKE_ON_ANY_MODIFICATION);
>-
>-        /*
>-         * WaFbcHighMemBwCorruptionAvoidance:skl
>-         * Display WA #0883: skl
>-         */
>-        intel_uncore_rmw(&i915->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A), 0,=
 DPFC_DISABLE_DUMMY0);
> }
>=20
> static void bdw_init_clock_gating(struct drm_i915_private *i915)
>--=20
>2.43.0
>

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC1D6FCD23
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 20:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB8010E3C1;
	Tue,  9 May 2023 18:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 662D610E3C1
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 18:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683655314; x=1715191314;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=sV91bRZkVY9nwjADzqkLsn1rqv2BkmyOwDSTzCTaLC8=;
 b=AtMTaeG/n4tONNV+UPVy3s2N2UpsTcuifCflVL+N31i0mc68hJ368fGT
 qbrGea5NVveECMBEw7wwj7U49zuI6JEXMo2MSjQm8Xz8rOnnIlyTmp8hW
 bVYUwneW9Tz6dtLQAbLIGofUV7coYQSVSZr34NHN6GxTtaR+WRs0xmjxX
 spEMSv4/FlM5jN9Qj12qk7cxRk9HSuJM4ZMqMrRAAkHMZgNR3fFqkwvqB
 v1NvKC4iyBk4H4xzbyP/n2ej52EHDsWI5+QKzZ2dalJ0osGa58wJSrNqR
 P5NVL87Tszu7c1VCbzKpB+mDf2yeYhiDWD5thO7gOOR6xmwT1rgds1xDN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="334466677"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="334466677"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 11:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="843205812"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="843205812"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 09 May 2023 11:01:52 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 11:01:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 11:01:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 11:01:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDOOoOKRVYA80X/n+xyWZckpvteNeTvNe8OAM13Y22v47rVKaeaAnFDMRj+LVNMD1O1/Ex2qIt+9pIP5/ft8Qm12HbWmNtHAsWZvOqaoEQU3IHU2hF5GcoAlWh+4HQwcvqyHrp2/QQDjEujYKoxEpK57S9zgKJGSrz7YyOWxojYBMYjE1MmxF9coxQNKYPWJJxn1wNszr/sv0hSMfcYRopAOlTWhgsjEh5OIaXOTP/OGsmhyvofKzlLJ/G/qxbyFXcOw46uGJ20abNk+6jzshvzUmrwL/+ShWMN6DEncu5s/yj9vqyjGfGDweBGe5JDJpVHCDXLu8ZT0Uf3PsH/gcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hAsjCXBfjgPNTcPxR4yDNIsg5so0KVieotezWWY20Js=;
 b=gFK0WXa4rEwpg59OTUmBQghSgdZTiyRuEx9WLHy9vuUcnFOZXZW6K1naAwh/UNxawUrac2eBi5oA7jptEMiL2x6qjn5ME4yA3lVvFBDN2Dj2/K5INyYs54Fx6MxZ8SVcpnBRmUm/ewqLahlrZetv/izSTXYLdEUcSumbMD9aHfGkX86X7DvqjsQtOf5JamLxHzfaueSxOSWXgEidGzj7KrOsUDCYgrzzpQi/+NoyQUvceFvY5uyc1L5LhG2RWcKihNh//tOVMfJcZ4xFUllQg5FOgnOU8O5xwcO6/kph3F+7jLfg2yMDNbs+z39wEG/VAtnJkX0RfXz6QCrVm6Xb4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CYYPR11MB8357.namprd11.prod.outlook.com (2603:10b6:930:c5::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Tue, 9 May
 2023 18:01:49 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.033; Tue, 9 May 2023
 18:01:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230509160206.25971-1-ville.syrjala@linux.intel.com>
References: <20230509160206.25971-1-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 9 May 2023 15:01:42 -0300
Message-ID: <168365530282.1309264.16685087057350364157@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0083.namprd03.prod.outlook.com
 (2603:10b6:a03:331::28) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CYYPR11MB8357:EE_
X-MS-Office365-Filtering-Correlation-Id: 461a719d-d63b-410c-d05f-08db50b775c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9ta4dhy70tzFX8Dc6uRFyRbtU5OuI2zsCGjPAs7GbDG2W1EShCp07p3As/QI4A8CDkXSqwSSOX39X/V+ldn6He3oPxBzAxamRukEp6g+FFzNEfV7kd0bg6nPFU0Fz7TfP0+wnpD58TebheZCSBA3cyVF+ifNGp+T+5eYIja0r4QjxKzXfo4Ahg5QVaD9IULCZJldeUfrOs7mi+cKPjxFHpI9pZq96AXgkrNTkoxwHSwjQLN/im+Yjkm9NAfV8aFov79NS64AvBUZmGiSpqQteA00uqjNQ4JtjkzeO2crdeA+FDXUQsFTUuAH8c8j8gzsz4tgRjS5CCOeBEzCoSNkNO/bBXYEFz3hR2nj8mQr6v6nqcFLyL8ADMl6Uet6D6pmapYmx+VaXtcaEmsNel4Fi2CAUzEefVpsuFhOD2HSedTwC4T2ql+F4b1RmclbPh7nszGce33LnGNs825x3V33VK/WNIY+IRupnc0Ir7Qse4tG5h3Ruyykfpj1jhCC3c9K6qk1rQ1s5WJUFD4VhpojkpxFJHt9Am8Swx70eVkf6EDw5KciQF8W7WQgxveJHX6kgsGUwjIIUGt/hVJ7jfMBBDWphMY5oueyvWpA0qbZwQE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(39860400002)(376002)(136003)(396003)(366004)(451199021)(66556008)(66946007)(41300700001)(8676002)(5660300002)(8936002)(44832011)(2906002)(26005)(6506007)(9686003)(6512007)(186003)(66476007)(33716001)(316002)(83380400001)(478600001)(6666004)(6486002)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWlEZDZmc0ZTQjYyaTJaTDc3dDBrK0dramxqbiszaUMxS2xQR0dpcHVYT0Rp?=
 =?utf-8?B?dkk3eElINmR1Z29GU3hDcGNqY0lJQlNVekJUREVRVUc1NmE0d0lRR2QvYVNC?=
 =?utf-8?B?SXB2V09UR05yZ0JwM0U1UTdxODJYdHJ3UDFmbm1OY1JWdHdlekpUeURlRjZR?=
 =?utf-8?B?eE9LK3g1Ri9KUUtaRWpnMEpMd0VUMDR5dWVFL1RHSDVGeHZPQzZmRWplR05R?=
 =?utf-8?B?UVdnMEZyZzF6d0RlSDBhblZFUHNoVWxFeEdpNFArd25zYXdOa1pYRWJweHNM?=
 =?utf-8?B?MGVEdEx4WFpUU2NCcUtKWk1OTlFNZ2pSdHFHak5MaWpNWFFOQlU4UUNCc1JM?=
 =?utf-8?B?dnJjb1FCMmFWQVNsYTlWQm9JS1RCVU56Y2psaVd0MmY4MEtUclBrdnYzWldh?=
 =?utf-8?B?YXBQWjdiQ2FqS3hhaTZTYWViMVltY25KMUN3ZEJZQlRlSnVNOUVQbEdVNjE2?=
 =?utf-8?B?NDRhRC9HbFlnNTNhKy96NnZ1NVM2MWFsSVFXaWQ1M0hvNUZQdVVreSt3czJq?=
 =?utf-8?B?TXZTc3ZhWTM4N1RpMDUxNU9DWE16TE93MWRnMlVhQkM5c0w2dU9VQTlDaVFR?=
 =?utf-8?B?RTFsV0FyRE92RnZiaGxtNi84UFdSeUJkY3phQVZ1UGpFS0xiY1FnTGJycDRp?=
 =?utf-8?B?L08wdXkvSHZGcWtNVDh5NThwVTc1bG5PeUdPNks4SzM1RFhnNU1VRTg4dXBi?=
 =?utf-8?B?Q2dXWm9leCtRZnBwaGRzUHZnUlhmQ3NzS2NobEFMK1JHTzF6WGtBY3FQVzNP?=
 =?utf-8?B?MVRQbzFYTytubE9QZFBNamJpVXdzeUo5V2hTNW94K3hqUnVGMW9rQzJSdU5U?=
 =?utf-8?B?UWp4ZWNiMm1FN0YvSU5qTnQ5am5tMFZXVzdqcUZQNTRlMUZkcUZyb1V0QVVQ?=
 =?utf-8?B?azRjRmhqQTZDWXorc0ViQmlBLzg0TFY3UHJYSytFUnNxN3V3NXFuL1NRK0lN?=
 =?utf-8?B?ZExrTy9nSU9nc29sM3BYdmxzNnJDS0xpTGR2SkI0YlAvWUZyUGh6QmxlUXg2?=
 =?utf-8?B?bm5zaTN6aXZkK0JJTzM4cUVJaFlOMmlxM1REcTdwMmJaT0FFbVpWVkpteTZC?=
 =?utf-8?B?VmJWTndTdEQvZzhOOU9VZmdGVjEyRG9DdHAwTFdua2I4UDFpVWcwcU5vbUJH?=
 =?utf-8?B?SExEQ3NRMXowVlpoVUd3R3dkTTltM2I4OUlvYVB2TXpsMlBQL0R4eDBiSzJr?=
 =?utf-8?B?dFFzREpveTZqcjJoTHVLdHpyTmZzTkVubG1DRUNDTWNEOWNHTzhkaWZkTGFE?=
 =?utf-8?B?WDhDTjRnNlFKOFloZ25iTlBDemNYYnAzVko3dzkwMlhrbWlNcWNBdnNZZDA2?=
 =?utf-8?B?djFwTTBPbEFYVWtadnd6T0lRcVdBNzZrMlVZbUJuNzg1a2hVSFdLV3FKUTdx?=
 =?utf-8?B?T2F5cFlQYWFHSlIxSU53RG43eHBSbzV0WXJRZS95dllNTmNFd2lSN09kbFc3?=
 =?utf-8?B?U1puMnZXKzd3ait6dHBXa3RBSUt5N2RZbWYrNUw0NUVGL0lTUU0wU1VBUUdO?=
 =?utf-8?B?Z3lCdlRrOUpNSHhiUm55RDBEOVRCRndOTDhFeGE0Y3Q3eWlLbXRZQXJ4U1NQ?=
 =?utf-8?B?WFBaSXFQMFJsS1pUVld1UEJWeTVGamlMNVplVTFTYWcrUldMTE9YUlVQTXVN?=
 =?utf-8?B?aDlnanc4YUdMblFIc2pkWEY1VkI5eDN4QVgwdGR4aXdNOTlQV0JMcjN4WG9j?=
 =?utf-8?B?aWZpM1hoUHVzVCtxb0xMQ3dVUzNTV0NyRk81R0QycGRLTVhyekJsaitOeHU0?=
 =?utf-8?B?d2tGRkhWaG5tQmh4RzVRMmZ1VVlZRDlmQVd1S0ZBMktheHdoWmlTeGt6bFFW?=
 =?utf-8?B?VzVMamw4ZHEvM2UvcU1qNzBHcFFPT0pjbnNsRzR5MmdtNjh2NHhvZGo5YkhF?=
 =?utf-8?B?QTZzSUhBWTJ0U294emN5TXh3VFdxZTN2RzQybktrenI4RUxBNGZscTlHUVRl?=
 =?utf-8?B?bVdaeng3M3V1K2lZc3NpZjBsTXdvNTFFV0h6M2FwTmEvQk0rcXFJeitwVFZY?=
 =?utf-8?B?aFM1R3dJSmVadmFnamdFRUVDd3Z2dVdGZDFaQWdZRUJtWVRlaDB4d3poeFY4?=
 =?utf-8?B?VEszVDdCL1ZsYURIQ1lIUnV4KzErb3htekMvdGFYSHRDalAxR3B1U1hZUzFC?=
 =?utf-8?B?Y2tJemxRdDBaWDFyVHk1SXVLNk91Q2xZOWJRMWphVHd4R205YnY1UE1kUlhK?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 461a719d-d63b-410c-d05f-08db50b775c8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 18:01:49.2129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: suWWRh3nKp+EGfhEBYL2eLwMLvJ4d/uKsryTwwp7KMeV+VKVIZ/GmKv0ClpCQ1S6p17xz4sT0e8epb/DXd4xoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8357
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Split map_aux_ch() into
 per-platform arrays
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

Quoting Ville Syrjala (2023-05-09 13:02:04)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>The big switch+if statement mess in map_aux_ch() is
>illegible. Split up into cleaner per-platform arrays
>like we already have for the gmbus pins.
>
>We use enum aux_ch as the index and the VBT thing as
>the value. Slightly non-intuitive perhaps but if we
>did it the other way around we'd have problems with
>AUX_CH_A being zero, and thus any non-populated
>element would look like AUX_CH_A.
>
>v2: flip the index vs. value around
>
>TODO: Didn't bother with the platform variants beyond the
>      ones that really need remapping, which means if the
>      VBT is bogus we end up with a nonexistent aux ch.
>      Might be nice to check this a bit better.
>      Yet another bitmask in device info?
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

LGTM: the mapping seems to produce the same values produced by the switch
statement.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 144 +++++++++++-----------
> 1 file changed, 71 insertions(+), 73 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 75e69dffc5e9..c77d40535fc4 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -3578,84 +3578,82 @@ bool intel_bios_get_dsc_params(struct intel_encode=
r *encoder,
>        return false;
> }
>=20
>+static const u8 adlp_aux_ch_map[] =3D {
>+  [AUX_CH_A] =3D DP_AUX_A,
>+  [AUX_CH_B] =3D DP_AUX_B,
>+  [AUX_CH_C] =3D DP_AUX_C,
>+  [AUX_CH_D_XELPD] =3D DP_AUX_D,
>+  [AUX_CH_E_XELPD] =3D DP_AUX_E,
>+  [AUX_CH_USBC1] =3D DP_AUX_F,
>+  [AUX_CH_USBC2] =3D DP_AUX_G,
>+  [AUX_CH_USBC3] =3D DP_AUX_H,
>+  [AUX_CH_USBC4] =3D DP_AUX_I,
>+};
>+
>+/*
>+ * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
>+ * map to DDI A,TC1,TC2,TC3,TC4 respectively.
>+ */
>+static const u8 adls_aux_ch_map[] =3D {
>+  [AUX_CH_A] =3D DP_AUX_A,
>+  [AUX_CH_USBC1] =3D DP_AUX_B,
>+  [AUX_CH_USBC2] =3D DP_AUX_C,
>+  [AUX_CH_USBC3] =3D DP_AUX_D,
>+  [AUX_CH_USBC4] =3D DP_AUX_E,
>+};
>+
>+/*
>+ * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
>+ * map to DDI A,B,TC1,TC2 respectively.
>+ */
>+static const u8 rkl_aux_ch_map[] =3D {
>+  [AUX_CH_A] =3D DP_AUX_A,
>+  [AUX_CH_B] =3D DP_AUX_B,
>+  [AUX_CH_USBC1] =3D DP_AUX_C,
>+  [AUX_CH_USBC2] =3D DP_AUX_D,
>+};
>+
>+static const u8 direct_aux_ch_map[] =3D {
>+  [AUX_CH_A] =3D DP_AUX_A,
>+  [AUX_CH_B] =3D DP_AUX_B,
>+  [AUX_CH_C] =3D DP_AUX_C,
>+  [AUX_CH_D] =3D DP_AUX_D, /* aka AUX_CH_USBC1 */
>+  [AUX_CH_E] =3D DP_AUX_E, /* aka AUX_CH_USBC2 */
>+  [AUX_CH_F] =3D DP_AUX_F, /* aka AUX_CH_USBC3 */
>+  [AUX_CH_G] =3D DP_AUX_G, /* aka AUX_CH_USBC4 */
>+  [AUX_CH_H] =3D DP_AUX_H, /* aka AUX_CH_USBC5 */
>+  [AUX_CH_I] =3D DP_AUX_I, /* aka AUX_CH_USBC6 */
>+};
>+
> static enum aux_ch map_aux_ch(struct drm_i915_private *i915, u8 aux_chann=
el)
> {
>-  enum aux_ch aux_ch;
>+  const u8 *aux_ch_map;
>+  int i, n_entries;
>=20
>-  /*
>-   * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
>-   * map to DDI A,B,TC1,TC2 respectively.
>-   *
>-   * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
>-   * map to DDI A,TC1,TC2,TC3,TC4 respectively.
>-   */
>-  switch (aux_channel) {
>-  case DP_AUX_A:
>-          aux_ch =3D AUX_CH_A;
>-          break;
>-  case DP_AUX_B:
>-          if (IS_ALDERLAKE_S(i915))
>-                  aux_ch =3D AUX_CH_USBC1;
>-          else
>-                  aux_ch =3D AUX_CH_B;
>-          break;
>-  case DP_AUX_C:
>-          if (IS_ALDERLAKE_S(i915))
>-                  aux_ch =3D AUX_CH_USBC2;
>-          else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
>-                  aux_ch =3D AUX_CH_USBC1;
>-          else
>-                  aux_ch =3D AUX_CH_C;
>-          break;
>-  case DP_AUX_D:
>-          if (DISPLAY_VER(i915) >=3D 13)
>-                  aux_ch =3D AUX_CH_D_XELPD;
>-          else if (IS_ALDERLAKE_S(i915))
>-                  aux_ch =3D AUX_CH_USBC3;
>-          else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
>-                  aux_ch =3D AUX_CH_USBC2;
>-          else
>-                  aux_ch =3D AUX_CH_D;
>-          break;
>-  case DP_AUX_E:
>-          if (DISPLAY_VER(i915) >=3D 13)
>-                  aux_ch =3D AUX_CH_E_XELPD;
>-          else if (IS_ALDERLAKE_S(i915))
>-                  aux_ch =3D AUX_CH_USBC4;
>-          else
>-                  aux_ch =3D AUX_CH_E;
>-          break;
>-  case DP_AUX_F:
>-          if (DISPLAY_VER(i915) >=3D 13)
>-                  aux_ch =3D AUX_CH_USBC1;
>-          else
>-                  aux_ch =3D AUX_CH_F;
>-          break;
>-  case DP_AUX_G:
>-          if (DISPLAY_VER(i915) >=3D 13)
>-                  aux_ch =3D AUX_CH_USBC2;
>-          else
>-                  aux_ch =3D AUX_CH_G;
>-          break;
>-  case DP_AUX_H:
>-          if (DISPLAY_VER(i915) >=3D 13)
>-                  aux_ch =3D AUX_CH_USBC3;
>-          else
>-                  aux_ch =3D AUX_CH_H;
>-          break;
>-  case DP_AUX_I:
>-          if (DISPLAY_VER(i915) >=3D 13)
>-                  aux_ch =3D AUX_CH_USBC4;
>-          else
>-                  aux_ch =3D AUX_CH_I;
>-          break;
>-  default:
>-          MISSING_CASE(aux_channel);
>-          aux_ch =3D AUX_CH_A;
>-          break;
>+  if (DISPLAY_VER(i915) >=3D 13) {
>+          aux_ch_map =3D adlp_aux_ch_map;
>+          n_entries =3D ARRAY_SIZE(adlp_aux_ch_map);
>+  } else if (IS_ALDERLAKE_S(i915)) {
>+          aux_ch_map =3D adls_aux_ch_map;
>+          n_entries =3D ARRAY_SIZE(adls_aux_ch_map);
>+  } else if (IS_DG1(i915) || IS_ROCKETLAKE(i915)) {
>+          aux_ch_map =3D rkl_aux_ch_map;
>+          n_entries =3D ARRAY_SIZE(rkl_aux_ch_map);
>+  } else {
>+          aux_ch_map =3D direct_aux_ch_map;
>+          n_entries =3D ARRAY_SIZE(direct_aux_ch_map);
>        }
>=20
>-  return aux_ch;
>+  for (i =3D 0; i < n_entries; i++) {
>+          if (aux_ch_map[i] =3D=3D aux_channel)
>+                  return i;
>+  }
>+
>+  drm_dbg_kms(&i915->drm,
>+              "Ignoring alternate AUX CH: VBT claims AUX 0x%x, which is n=
ot valid for this platform\n",
>+              aux_channel);
>+
>+  return AUX_CH_NONE;
> }
>=20
> enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *de=
vdata)
>--=20
>2.39.2
>

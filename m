Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1724DAC79EF
	for <lists+intel-gfx@lfdr.de>; Thu, 29 May 2025 09:47:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F240B10E71B;
	Thu, 29 May 2025 07:47:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JNdlKlPY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818BE10E71D;
 Thu, 29 May 2025 07:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748504857; x=1780040857;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8mumzMMmqdh7eJv8y3cctBppkjV64s4YNvYAka9kctA=;
 b=JNdlKlPYr3tO+0s3y+D4zqdP6i/1pIJk6KvGqcqSctGQpj6kG7VM71KC
 lKpexJ2TLRkw8kTBdkvrl0OxubpqUZwxANH08Fn+p3YBpD8waiK8Oj65P
 9ZpuU4bC8oQ6+GB8usDTJNH21YkhErFp7dDHu2NW9jvtRoeLiHlt+Pfq5
 j6qoqhgtChOAvfrSWvNJWzb2rvY4yp01KcyDemB/Qp2tMFTmXAgtuVEN1
 1xYoxttu9ISBVf2cIljsEqatfLn+uVW5xudwlt+LVUzLEz6OUkBxZktjU
 xZZh/ATjxpRJsr2EVAzCyN4SkYpGazGqDAYCnd5AByI/DmSRKaXf0u5Hu A==;
X-CSE-ConnectionGUID: YUwYoqyxTJa3zBIlzYFmwQ==
X-CSE-MsgGUID: KafW737zQECRAaVVhrqnMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="54216790"
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="54216790"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:47:35 -0700
X-CSE-ConnectionGUID: yHRJ4McjQSmtRjT0eCD2wg==
X-CSE-MsgGUID: s+eWkeQbTFqfRFN6Y2HfHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,323,1739865600"; d="scan'208";a="180685465"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2025 00:47:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 29 May 2025 00:47:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 29 May 2025 00:47:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.50)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 29 May 2025 00:47:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pLhIf7Ch7Zi3B6Et+AH7QCwhh/RTRUQmH40Y5VgUXdbUIHxP3uzzjOB+gxESwWKTDVgXllgppf+jTGmAhEDfyFHdJGYJ383qmEnnAsrkuqapPIaw9D/Cm3ijxAPwz+c/L/7orzl2kJ0prwQ9ud9URfIre4DznG0ZTxSyCSZ4jqRuepHZvYuIz5PwAT3DNM66NKEucq9V5qY8jiKqBPlSAPhF9H12gcD6wddghlxhzyQ/XNb2nigJ8/umA+P1apH5nWHVehxif9TkMtq8Vt5KuzKFzNEH/+e4YMKgY3cY2ktB1tWqhv1wH+0CaMexakWao1IRaKMvpahcCw5HC6/lNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6t0tdllAi9CqKWz5iWRGAMXSgM4sra9/BZ/YogZLgiE=;
 b=c/ahKSd0M8iWR4KNDIw7C7j7GMsnXmc5jH46yn8YcuaHBHafaW42rKvaZZPnFtlrgOENrvvmHChZJKBGvmhvcocGW8Xe23kXGsj3Le5ph33Xq3bmbgzbo9MHv7CpuRF1bqDAqpEfyymPXNIseXQ762CB7N6/27Wyi/zR470iPXGWyF0H+XGn7oZDXAL9vMEYrvURUsUQewiuL6B5pin4m40AwxVrAtUX1/ZDfT7/CZhWZJET83rJb1PwkgAGOxaMxyCDZeQLs7WwiBM+brs1JGaBinfReRWv6wx+5flB2dMxwvVuAZDm66OdbHEaRqmS8bkXE36cjYQFZAlmvExgKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by BY1PR11MB8125.namprd11.prod.outlook.com (2603:10b6:a03:528::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.31; Thu, 29 May
 2025 07:47:17 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8769.025; Thu, 29 May 2025
 07:47:17 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Topic: [PATCH] drm/i915/display: Implement wa_16011342517
Thread-Index: AQHbxm/E7PIHjQki3UOk6NlrnoZD87PpRVYAgAAJZ7A=
Date: Thu, 29 May 2025 07:47:17 +0000
Message-ID: <IA1PR11MB6467F02601F33857F84959CFE366A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250516143101.3313286-1-nemesa.garg@intel.com>
 <SN7PR11MB6750AB2655DDB986E09D37EFE366A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750AB2655DDB986E09D37EFE366A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|BY1PR11MB8125:EE_
x-ms-office365-filtering-correlation-id: a39cac2d-2452-4a3c-12c1-08dd9e8508cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?PVoXt/Net9I54h8kiITzOURNvdwGzov88QtBH8MciwbYm+bSUkXrgS7AiJCN?=
 =?us-ascii?Q?AKu5bEp4TLCulfqwXG81t7s1rt6RKAPf2PI3m61xbt5AYO9JCF+faUy866jX?=
 =?us-ascii?Q?dzvMXLlhsrtQH2SeLqWAIH4jObpMVpF+4jbRebhpwGQiiFmXF0s9q7ZrC0SD?=
 =?us-ascii?Q?B2P37UdGY1gykxhzBLrzbw6c1aSsncbQep+qMpuNsc50xmT6GsWG60HHNP10?=
 =?us-ascii?Q?mnAE9pDC/tT4EAdMrmgmkYOU9XRvuEUC5MwiP8jsRbRwfEWfGRh4+BDDyX/X?=
 =?us-ascii?Q?vzceBDM74x+YrdrY/VEtOpGf2hfuJ2ySWqjYAMOHQSNhxL+NTHGS8pyPN0Zz?=
 =?us-ascii?Q?9xCLV/wCzn/8/sjTBCm7j8/QVon3PsN8GJTliJh+cJ9pE3G+DwcJBcvumnHU?=
 =?us-ascii?Q?T8ejopdO/oSbY8x98nB6+IAxbBcvvCJtUDjxkYfBIBCb7Xz6vZiAxvGRKLKG?=
 =?us-ascii?Q?Gt3hhq+gcADaqkjGC0qRVeecUIkIdZw2/I7h6S0sq7a+yi4n5sDZWlsKAyDD?=
 =?us-ascii?Q?32sJlSzUlE/txdN9ZVy6JA/Qxp6hPWaW0fPqApEN+wlk1JrcGI07TGTashQl?=
 =?us-ascii?Q?vw+Me+Zi42Vf6MO3xCRQcVrL65IsFeJ+GSCOAY/p3TLwTTnS0cz7P4lFFLsY?=
 =?us-ascii?Q?Q7cteqRYJHJwuB8J1QJbmsGJIUMukxkIuNmS7sO5tfi+6b0ZQi9Orqn0wOym?=
 =?us-ascii?Q?TzgwNFAXVyBu3jSP2eb70wz1J218XY/4+OLVSZ/W+DfUnd8+A01OBluPJIj6?=
 =?us-ascii?Q?F8hlri72KtQAHWgV7QH/28Uz1NPdP8iW4AveMwtjbRAxTYnf4rcWgzKK6wEu?=
 =?us-ascii?Q?vhli81f2iRmXfG1JFndCHr48bMJbRrxL7Ir3AX1g5LPNkqs9b5JicfUH22oY?=
 =?us-ascii?Q?MKVwnl/mElvP7P0qVtnLSi+G9HJa7JZbXUljbIHNhAR/cEdTUcwGxr9GP3zb?=
 =?us-ascii?Q?bulQ6Fauga1hTJFPf/x6hlrcAPK0F44BRs+AWzZ9YVwhqERCPZ1f7NTLZq/Y?=
 =?us-ascii?Q?CbT7NS5kqKbdkd7gnxZNnUV+LRPA8jKRszI9y1SKekGG4V89XxmdwCtjTSyD?=
 =?us-ascii?Q?21wCmv9uhHQkUIPVwnnlo+QTIn2UYzoYhVeWYjdIzjQK1lAukq+6AFfPrJui?=
 =?us-ascii?Q?+K5wom4fGSTDYcc/3r4LdQiJjezjMMLUieYb4NrW25MBWZ3hT2gNrbiajFxl?=
 =?us-ascii?Q?YJ2daUq9NUUztxzBAXmVSdFXZLFUHIBt4VqIMH5h65Sq65+r8nqtoakpuC85?=
 =?us-ascii?Q?tksRkkvcH/yba/D0hp42v3f5kmVGujn6gBch9djmoyJBecdW7gB6hexuEjWa?=
 =?us-ascii?Q?nd7fusfnZ1wMcetqdeJamI5NgNUuImgcgXj7LzdJT+0Jp94x0rmeYdrhANju?=
 =?us-ascii?Q?b9BL2KEPMUCp3rjzOzlomLQ2oG56/3XdabYfH+363B7YQY1ff1gJK6ZpFyn+?=
 =?us-ascii?Q?tVPe+K6FApezmzADia7k+EVkF/afAp/bey8fnwUTZVQB8gjYjdMsP8WAXy/z?=
 =?us-ascii?Q?HlDf4aDkWFcJCOw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rKLd82EzVQanLQkDCyKFH3ANZpFG5/k+hIbqXsEQYc940JJ564YZNhf14mO5?=
 =?us-ascii?Q?hG2D2TswWnFmfPTlU2iErg4ms1ULkD9ZJ9NrU3tHvqciaU2B8gqNT5pLNDRB?=
 =?us-ascii?Q?/r0t2BDAMT7Kvm2bezTpUm52FaYhXATlT+H4OoywYyHF/sxUd51yhD//Im16?=
 =?us-ascii?Q?cIuCsp6e/3FAk1Fw8Y9B4RbE5fcor/4J3jsFYIPxLSx6vhB05GMB7vwjW3tW?=
 =?us-ascii?Q?2Nu+zGcrXl9Lu+fPcI5ONt117BumuX2iRkhO/+SWPix+fQ9CKwp5QhnNKXdy?=
 =?us-ascii?Q?NvKMuX3aOr07rsY1/LQenjIJl9UdFIA/gsy0Ebw0diobq1gDICPbGiJ3D5ea?=
 =?us-ascii?Q?1u4gudjBvO0N4RASvGHibi1U54OpA3eyKLodKAGeyWVLhx94oFTCLJ0XKXDv?=
 =?us-ascii?Q?m5VB/EpGmqqIsokKr6j2NdbiAhjXl3KfsVsTHPOqto2xzcb9zZ0C2zpOoLjW?=
 =?us-ascii?Q?OSJ7+WiCasrihBihyxrNQdha3zlcvwWimqJ4EM4iMMPE7/C6iZpXRPWzMD2k?=
 =?us-ascii?Q?dgRpIneRkj0qAGZGLhTgrw6cB+5NRhc3+6xVC7Qq78RjZDNn1M0ArPmKWXTo?=
 =?us-ascii?Q?JcCLGnFQPO8wYMxxCiOV2W+D/Zp6oaeWL8GDCg/ftdt0YDlyPpWVJalnXAuZ?=
 =?us-ascii?Q?EPl7cJXT1K8+/6qXLsgTx/mZ3FM+kqdGvweHu/VDUza46gR1T6Dxg4Ka5fsE?=
 =?us-ascii?Q?Pr9Un0LjRi1snGuEiHJdFlN1PxpM39WTquSDyfjyHeZDK5fhaxw8fbjhYyaS?=
 =?us-ascii?Q?TCbu+3k5GmvbNRS/t7Njgt90ynDO2yGFyPyhS3g24zmr0e+2vj+CQ4FS4TdN?=
 =?us-ascii?Q?jDfniL1TWW767HbKg1+kM/I9eab9uZDgAykOQfy+Uv9nsYhbEAqE6S2auPZ6?=
 =?us-ascii?Q?ahfbwVNgALIDdN4jxGxcnMZkJKDozfNzvANTYeqIwQ9nsY8jk2kR3u5BHdN+?=
 =?us-ascii?Q?yj+zUrwsusVQ5hO8XkrsGO7ZYgmsAKbK4pCe1MhiGwAjeFGbPZIhYPiXeHgU?=
 =?us-ascii?Q?vW2s4vETnkpshwLrdiORCCsJbS/uy1zX0laRjq7P6xtz6ARlGpLCJAt3iYAn?=
 =?us-ascii?Q?MQrZVlDYWqXt7PKK7evXswr8aUc/6k5sxCvT1GJ0D1kPNesIExrQyOh4ffb+?=
 =?us-ascii?Q?rPtWyILxGMRYSdF5hGFeBadG3T05XRRjW64AKJrOT4LHtrIQzdINNA7Iuoa2?=
 =?us-ascii?Q?UwJVZALTfkdkC/BQhCqCfai2txyJY6QHjo2HvyXijMKCC3XnG4Ox/Y0r+8w/?=
 =?us-ascii?Q?5D70C8raThhZAKUQrHlV56/C61G8Qa/aJ8fTS2tVDLNmiiJKytcguCt30gPy?=
 =?us-ascii?Q?VeOkwNeO1lShlbtC7vi5Q5DRhsaKVnrWWgFlozk46Hm5+29211dh/Oas0C4I?=
 =?us-ascii?Q?I083Fe0xZY45fCVliOV23M+XkK2jCrPohr8KOR4EH6dQJSTlws197tTTdfHK?=
 =?us-ascii?Q?XeB2a7XAgITIWcIIh0Fs0Tpikt9Bi5h/0ZhlzQw164xkNmrXkbD/AWwOQXd+?=
 =?us-ascii?Q?TE7QicD+rmH+GjwtZbbC4HzPGY3aVMGwmJMS3o/fEaNPfMA9RYYKorjRu8Hf?=
 =?us-ascii?Q?naGuPgYJxKWgHccwos2WbW/4cCyfGBJOfS+tGF1yrX1TVjcbNxs/pFzMUKOV?=
 =?us-ascii?Q?OoU28UBgfjZ+fkbTkj9uKCx2crGmauFvEJ99DVhjjyDV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a39cac2d-2452-4a3c-12c1-08dd9e8508cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2025 07:47:17.1413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nee58jR4ti2taXypl17WP1h5Vbkj/YouLfPn2MomHJVcFbkk3O4QPAVoUDZNMkBMVxkit6S8ek6pGZIlNTkwpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8125
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



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, May 29, 2025 12:43 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Implement wa_16011342517
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Nemesa Garg
> > Sent: Friday, May 16, 2025 8:01 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: [PATCH] drm/i915/display: Implement wa_16011342517
> >
> > Workaround to prevent skew violation on type-c phy for DP 1.62 and HDMI=
.
> >
Bspec: 54956
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
> >  .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  4 ++++
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 74132c1d6385..34b372b18aab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -77,6 +77,7 @@
> >  #include "intel_psr.h"
> >  #include "intel_quirks.h"
> >  #include "intel_snps_phy.h"
> > +#include "intel_step.h"
> >  #include "intel_tc.h"
> >  #include "intel_vdsc.h"
> >  #include "intel_vdsc_regs.h"
> > @@ -1439,6 +1440,21 @@ static void
> > tgl_dkl_phy_set_signal_levels(struct
> > intel_encoder *encoder,
> >
> > DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
> >  					  val);
> >  		}
> > +
> > +		/* Wa_16011342517:adl-p */
> > +		if (display->platform.alderlake_p &&
> > +		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
> > +			if ((intel_crtc_has_type(crtc_state,
> > INTEL_OUTPUT_HDMI) &&
> > +			     crtc_state->port_clock =3D=3D 594000) ||
> > +			     (intel_crtc_has_type(crtc_state,
> > INTEL_OUTPUT_DP) &&
> > +			     crtc_state->port_clock =3D=3D 162000)) {
> > +				intel_dkl_phy_rmw(display,
> > DKLP_TX_DPCNTL2(tc_port),
> > +
> > LOADGEN_SHARING_PMD_DISABLE, 1);
> > +			} else {
> > +				intel_dkl_phy_rmw(display,
> > DKLP_TX_DPCNTL2(tc_port),
> > +
> > LOADGEN_SHARING_PMD_DISABLE, 0);
> > +			}
> > +		}
> >  	}
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > index 56085b32956d..fa3bad5efca9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> > @@ -188,6 +188,10 @@ struct intel_dkl_phy_reg {
> >
> > _DKL_CMN_UC_DW27)
> >  #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
> >
> > +#define _DKLP_PCS_GLUE_TX_DPCNTL2                       0xB68
> > +#define DKLP_TX_DPCNTL2(tc_port)			_DKL_REG(tc_port, \
> > +
>=20
> Bspec link from where you are getting this
>=20
> Regards,
> Suraj Kandpal
> > _DKLP_PCS_GLUE_TX_DPCNTL2)
> > +#define LOADGEN_SHARING_PMD_DISABLE                     REG_BIT(12)
> >  /*
> >   * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has
> > more than
> >   * 4KB of register space, so a separate index is programmed in
> > HIP_INDEX_REG0
> > --
> > 2.25.1


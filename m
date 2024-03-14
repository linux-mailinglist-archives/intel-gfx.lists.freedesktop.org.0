Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B991A87C471
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 21:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20DD910F571;
	Thu, 14 Mar 2024 20:49:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bxmvL1Rx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CC6C10FDAA
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 20:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710449366; x=1741985366;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PNACLYC9YvD3qvXeK26I124k9twb8Q2ds/GcehTYWXY=;
 b=bxmvL1Rxo4zezMGVMJuwrBAuHDPdidL9JzxyOHKscAQN7H4FoWjOFUra
 ah/fwvXFq+mQZs2igtUB6rWVCfvuPVhm7izKBpFqBUsGlQWNXyxXaexjz
 7lE5RzEhnG5v3kpPQgz3kWG2OzSP9IjESOvzC4icAwmNX+1sE0u0DiXJq
 OBGgMGw5dclSpjtZPI3Hz4HObnf996oJKlInSmnX7NwK+BtT0eqC05iqp
 V+1FyFpc8Kucd+/s9wAtyy3PwpDSwDbTgVTa2dfK6FJO4cQnsdcs6fYnt
 A0rvqoUUNcRxaqlHSgpsOzB8+cK48SRi0FloZXqNs5m87zQa6dbxZRlSu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5428330"
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; 
   d="scan'208";a="5428330"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 13:49:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; d="scan'208";a="12828567"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 13:49:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 13:49:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 13:49:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 13:49:25 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 13:49:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6xI2ZJRz2FD9hPzMJflDyd7Ccdf19r4n34lpn8QaI38SnUyiMgO1E3EnQ4bCUEBNpceIwD3NE1+SimgSil4AR9vGJngL7K/JgSbvDQFz1zx43fJCpEX+Lyuz6CRpgfQgM0q+ns/MWbADkmYfDYHL2fSfW3t/lSk9b51bSZ1M/YrKOoTt1WxMRAzU1fB0gynMBVJD9ylTbroNjBt+HK7L4iGTy0dCdoqvj7NsN+O5T4xyGUPtubDdebVKdEeDBWGuwGo6IrcGZfPwx37/fha41vSEhO6kbJw7falWigkAMjWoGi60p3qd4c7c/S4GdKILZLl7dCsbGF8TsZrWS/i+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KWdf22VA7y2ejPooYoaiiKbbyNY8hzJf0HvTTQiYflM=;
 b=nNE4Qi/e/wsHxC4+Z+XcoM2go4nPeYDrhBSVNc+zs4kJ8t7QqWOiG1H1NZIsHRHYC/26xsp6kgeplMH6PVwHup1KgCxvL9QS45QMm4alNbkVT1MdaAv+LAKCHnkcmM6ZNaf5wtTPQCEFkIdYaB++Dcw2biFtjHP05eDLdjGNMF8e3oDvB/pHxghlB6qw7/b09/3JvZzKIjInYPHAUKiTPM/kZRSx+hTWpCt37kFm/TTIUilD8WJp+5M8OWsSuxXUsYA6MQhycCL0hcWWEcHZmlkZDEVR10DpPn5Qz6P2A/tnuVEgkYiGDPH6+XbhAXqM2OSY0J2DiMI10lklJIbpFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW3PR11MB4714.namprd11.prod.outlook.com (2603:10b6:303:5d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 20:49:22 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 20:49:22 +0000
Date: Thu, 14 Mar 2024 13:49:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [PATCH v2 2/6] drm/i915: Remove XEHP_FWRANGES()
Message-ID: <20240314204920.GE2837363@mdroper-desk1.amr.corp.intel.com>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
 <20240312235145.2443975-3-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240312235145.2443975-3-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY5PR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::17) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW3PR11MB4714:EE_
X-MS-Office365-Filtering-Correlation-Id: a18e47a4-538e-40dc-1c4f-08dc44683a33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uNhZ+vzvZ0vKxPOyraqlpxX55CrxZOawsI5vsK1KY/mpVkRRizS8HsgtYrhcXA2X2bqUwHL/uDlZpzx0Pk1iPTQUdDZz3xgnr6eJkRusFN8M1KBnBKxjLXO4Bw0XjQsLXOxJErgcqg3Skdsn4Wu0d6rJJvbGeglbxv6QvQLRt4g9JQfaAmo9N9JDXZkOos8HDNDRp0K/doFLqCwWo5rr1H+Ui8X1zeBQCuSPUIjOceOYQ1tko+du7USBo+mE/E+Wa280+fqV4aEpZ7xbHLVBCyTZLjIrx6f4frOm8/Gd7T7fGPNXDyZfuK1Ji9P3YC8HXTaPQFU6feGAifCWj1mZ6S8bFOtf7jDwcRvdgG4ESlYbtG7owzXGIyGf7s1Mqj6DAWUhJtB5/G+s0uoyYe6IqKv52cUQQaGeCvMO9bJ5Q/xbn0/CFgmzbwn03MoYWBGYd/a3oFoT8n9JnV7DLDGCfIOGzoABzi5IVytIGaWJGBR1bxMTcVrpazJ/XhrrJoKy0ySPGqK6VETem6TVfsf4+JFo4XfuB2FsdMk3e9VRXQd/EgFrTCLNTdjP3noRARJYYg1kyPjr5TypnMIkMeEgChVxA1z+Otf7kfpKpegtsJuCdvlYK7ZfXZxaZZYXjCRkMNmt0DQnuHIq3qKyVSfruA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+Vv56dHfiMG1LcTNLPvRSJYQimyiVp+5IE5quTa+2hzDO6D11UtTZQ1KIjjb?=
 =?us-ascii?Q?UDmCmxjtTa4FDK0kDy4OiUZXUDdQhVretCbfc7FPXMvIKp6Quw/xKmpWksSB?=
 =?us-ascii?Q?Ky+Po00wSwzDrNLMtV6qYTyx95ckr2H99yOjAYmAvg+ajgDpgPM7/eg44Y1m?=
 =?us-ascii?Q?9ncrVV8n9iqrQ2CdDM6hdxM/eQtkL8mFY7mdO1d8ihRR8TfFUa3Pwp6VlVa6?=
 =?us-ascii?Q?s9KKjLN+DfcaQnZFqgJl1LWht1PpbL1MY7mWEQEymjCfBgy2PWNWBdotQtzb?=
 =?us-ascii?Q?akoPVtpAQOnEIvvYj1MNf3BAq1gsLpG1i73DjtSwyJb9hBtiwvtkUs5mQqh/?=
 =?us-ascii?Q?nXoTUXs6Kso8fcYs+nugbz7ecJv8hKKQeU+T3/TEeJxJpOkpoBlWLQnl7IE3?=
 =?us-ascii?Q?VEcufgiLC4HyhwammWEuWswfsYK0OqOtdnu9pa0U7+C3IWrTyGy35Llj3ruv?=
 =?us-ascii?Q?KYZgcmhXaYwqFfENKzPHSdqy4PLf5/SsFkd/ZOoNqlAynap7B1qLyMuaZ5nZ?=
 =?us-ascii?Q?x37731Co9VFhdowHNHpis86klTWCRWFz1dDc5NKAkMK7UI5kKcvYahKzEkpt?=
 =?us-ascii?Q?HnphxOmMgDs9Nh4usTeY1cFgUuVr/ZEOqFyw4zDJuT5Il2dRE6uBBwQHyCwY?=
 =?us-ascii?Q?a6ujtny3wC9cF+65tNVGupR0u1/0iOSKvbG6VStdYQ2cidEtz/cjH9jcmrao?=
 =?us-ascii?Q?mKIwQ68ZuYBI6RMydEM/L+R7xlaZTgTG/zeTPFmljmQT0Hvpaxv0ZAmKD1K5?=
 =?us-ascii?Q?MovvSI/ZoS6V4W4XHZXa1SVPAYillJl15Tgc5En5yY551Vl1EPz0SCQ7BxxM?=
 =?us-ascii?Q?aWrco+g4Mbvlzs1Ffh6fA7ex6Tlu5X1W+qxwQuKa8WkZlCWUdzUI+DPieT8k?=
 =?us-ascii?Q?naldkmecybGZLmgJr0myy/TceSpbnMxhUcJjsALvQi/ywn3P7MFz0XXnTZbm?=
 =?us-ascii?Q?Pbarp6v1a8f4iPQd9rKauxPYDZydEJo+OQbOtiXC2wZkuA7FnGGPC9sNJWL4?=
 =?us-ascii?Q?wZS2dly+CgeiFbNr4fh04yNUntXakpSfYDuB9jPxVWxnXDPYaivGn8bRt5eb?=
 =?us-ascii?Q?SJ75uw9szr7apvsrzhMJncpPqHmrd0QP48ofT+6X4Z3ULFihHatjzF7kn3FG?=
 =?us-ascii?Q?P/Zwv877tpLcv3CH4ibT17qGKrNzfhP5iVh1oYoanT49DBTgrVxfUPd/15fQ?=
 =?us-ascii?Q?pMxJfperfVWsth0larQbw+G4CtSDL7afNoqHU+CuRU1pTGdPclsAORm7NH2u?=
 =?us-ascii?Q?Dhn5zeSVYtFPnSPyxyZGwJ5rngXpLHHSWkPBHxHObC9lD2iDP3cN7GDqQhtO?=
 =?us-ascii?Q?z/yqnd76SZlL+GE4iVJnZ9h0/SQ9EUlnQndwvgPn7IR7qjT3uz1kUuMisJlq?=
 =?us-ascii?Q?wiJOF73/SZdUu1rm/dQQyUKlBFOKupm12dHYyMYW7bUop1uVyCH6C+C2/j7t?=
 =?us-ascii?Q?yfgQS6aQ/yZPEkd9uo+ZAYSSD3XyGbb2CPqxpJhunlgbWrEXcVOm8VBNByqC?=
 =?us-ascii?Q?7f3HJBdgMmeZvu4s49kr/M1TIc/sOlyZel8oOw6LGr1GMAzLLJI31lA+M7aK?=
 =?us-ascii?Q?ao+ifNx22LxsAPaiRZmmUN1tEj2RTVw/OfMbAuIZoEoMVsboUb1q1x5gEcbu?=
 =?us-ascii?Q?jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a18e47a4-538e-40dc-1c4f-08dc44683a33
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 20:49:22.5050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l2MCC9rJWx8Xs/bFtOL0EWtMDwb+3p+VOgeQVdras75z00ZAAde5aNgo4Y/dK/7YvJSfkG+icPtkcCPlskTd+Iap2yhVS9WwkTw44LQYt1g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4714
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

On Tue, Mar 12, 2024 at 04:51:41PM -0700, Lucas De Marchi wrote:
> Now that DG2 is the only user of this forcewake table, remove the macro
> and use FORCEWAKE_RENDER explicitly for range 0xd800 - 0xd87f.
> 
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 297 ++++++++++++++--------------
>  1 file changed, 145 insertions(+), 152 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 7695bb946fff..b525318dbd53 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1471,159 +1471,152 @@ static const struct intel_forcewake_range __gen12_fw_ranges[] = {
>  		0x1d3f00 - 0x1d3fff: VD2 */
>  };
>  
> -/*
> - * Graphics IP version 12.55 brings a slight change to the 0xd800 range,
> - * switching it from the GT domain to the render domain.
> - */
> -#define XEHP_FWRANGES(FW_RANGE_D800)					\
> -	GEN_FW_RANGE(0x0, 0x1fff, 0), /*					\
> -		  0x0 -  0xaff: reserved					\
> -		0xb00 - 0x1fff: always on */					\
> -	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),				\
> -	GEN_FW_RANGE(0x2700, 0x4aff, FORCEWAKE_GT),				\
> -	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*					\
> -		0x4b00 - 0x4fff: reserved					\
> -		0x5000 - 0x51ff: always on */					\
> -	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),				\
> -	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_GT),				\
> -	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),				\
> -	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*					\
> -		0x8160 - 0x817f: reserved					\
> -		0x8180 - 0x81ff: always on */					\
> -	GEN_FW_RANGE(0x8200, 0x82ff, FORCEWAKE_GT),				\
> -	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),				\
> -	GEN_FW_RANGE(0x8500, 0x8cff, FORCEWAKE_GT), /*				\
> -		0x8500 - 0x87ff: gt						\
> -		0x8800 - 0x8c7f: reserved					\
> -		0x8c80 - 0x8cff: gt (DG2 only) */				\
> -	GEN_FW_RANGE(0x8d00, 0x8fff, FORCEWAKE_RENDER), /*			\
> -		0x8d00 - 0x8dff: render (DG2 only)				\
> -		0x8e00 - 0x8fff: reserved */					\
> -	GEN_FW_RANGE(0x9000, 0x94cf, FORCEWAKE_GT), /*				\
> -		0x9000 - 0x947f: gt						\
> -		0x9480 - 0x94cf: reserved */					\
> -	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),				\
> -	GEN_FW_RANGE(0x9560, 0x967f, 0), /*					\
> -		0x9560 - 0x95ff: always on					\
> -		0x9600 - 0x967f: reserved */					\
> -	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*			\
> -		0x9680 - 0x96ff: render (DG2 only)				\
> -		0x9700 - 0x97ff: reserved */					\
> -	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*				\
> -		0x9800 - 0xb4ff: gt						\
> -		0xb500 - 0xbfff: reserved					\
> -		0xc000 - 0xcfff: gt */						\
> -	GEN_FW_RANGE(0xd000, 0xd7ff, 0),					\
> -	GEN_FW_RANGE(0xd800, 0xd87f, FW_RANGE_D800),			\
> -	GEN_FW_RANGE(0xd880, 0xdbff, FORCEWAKE_GT),				\
> -	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),				\
> -	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*				\
> -		0xdd00 - 0xddff: gt						\
> -		0xde00 - 0xde7f: reserved */					\
> -	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*			\
> -		0xde80 - 0xdfff: render						\
> -		0xe000 - 0xe0ff: reserved					\
> -		0xe100 - 0xe8ff: render */					\
> -	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*				\
> -		0xe900 - 0xe9ff: gt						\
> -		0xea00 - 0xefff: reserved					\
> -		0xf000 - 0xffff: gt */						\
> -	GEN_FW_RANGE(0x10000, 0x12fff, 0), /*					\
> -		0x10000 - 0x11fff: reserved					\
> -		0x12000 - 0x127ff: always on					\
> -		0x12800 - 0x12fff: reserved */					\
> -	GEN_FW_RANGE(0x13000, 0x131ff, FORCEWAKE_MEDIA_VDBOX0), /* DG2 only */	\
> -	GEN_FW_RANGE(0x13200, 0x147ff, FORCEWAKE_MEDIA_VDBOX2), /*		\
> -		0x13200 - 0x133ff: VD2 (DG2 only)				\
> -		0x13400 - 0x147ff: reserved */					\
> -	GEN_FW_RANGE(0x14800, 0x14fff, FORCEWAKE_RENDER),			\
> -	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*			\
> -		0x15000 - 0x15fff: gt (DG2 only)				\
> -		0x16000 - 0x16dff: reserved */					\
> -	GEN_FW_RANGE(0x16e00, 0x21fff, FORCEWAKE_RENDER), /*			\
> -		0x16e00 - 0x1ffff: render					\
> -		0x20000 - 0x21fff: reserved */					\
> -	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),				\
> -	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*					\
> -		0x24000 - 0x2407f: always on					\
> -		0x24080 - 0x2417f: reserved */					\
> -	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*			\
> -		0x24180 - 0x241ff: gt						\
> -		0x24200 - 0x249ff: reserved */					\
> -	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*			\
> -		0x24a00 - 0x24a7f: render					\
> -		0x24a80 - 0x251ff: reserved */					\
> -	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*			\
> -		0x25200 - 0x252ff: gt						\
> -		0x25300 - 0x25fff: reserved */					\
> -	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*			\
> -		0x26000 - 0x27fff: render					\
> -		0x28000 - 0x29fff: reserved					\
> -		0x2a000 - 0x2ffff: undocumented */				\
> -	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT),				\
> -	GEN_FW_RANGE(0x40000, 0x1bffff, 0),					\
> -	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*		\
> -		0x1c0000 - 0x1c2bff: VD0					\
> -		0x1c2c00 - 0x1c2cff: reserved					\
> -		0x1c2d00 - 0x1c2dff: VD0					\
> -		0x1c2e00 - 0x1c3eff: VD0 (DG2 only)				\
> -		0x1c3f00 - 0x1c3fff: VD0 */					\
> -	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*		\
> -		0x1c4000 - 0x1c6bff: VD1					\
> -		0x1c6c00 - 0x1c6cff: reserved					\
> -		0x1c6d00 - 0x1c6dff: VD1					\
> -		0x1c6e00 - 0x1c7fff: reserved */				\
> -	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*		\
> -		0x1c8000 - 0x1ca0ff: VE0					\
> -		0x1ca100 - 0x1cbfff: reserved */				\
> -	GEN_FW_RANGE(0x1cc000, 0x1ccfff, FORCEWAKE_MEDIA_VDBOX0),		\
> -	GEN_FW_RANGE(0x1cd000, 0x1cdfff, FORCEWAKE_MEDIA_VDBOX2),		\
> -	GEN_FW_RANGE(0x1ce000, 0x1cefff, FORCEWAKE_MEDIA_VDBOX4),		\
> -	GEN_FW_RANGE(0x1cf000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX6),		\
> -	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*		\
> -		0x1d0000 - 0x1d2bff: VD2					\
> -		0x1d2c00 - 0x1d2cff: reserved					\
> -		0x1d2d00 - 0x1d2dff: VD2					\
> -		0x1d2e00 - 0x1d3dff: VD2 (DG2 only)				\
> -		0x1d3e00 - 0x1d3eff: reserved					\
> -		0x1d3f00 - 0x1d3fff: VD2 */					\
> -	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*		\
> -		0x1d4000 - 0x1d6bff: VD3					\
> -		0x1d6c00 - 0x1d6cff: reserved					\
> -		0x1d6d00 - 0x1d6dff: VD3					\
> -		0x1d6e00 - 0x1d7fff: reserved */				\
> -	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*		\
> -		0x1d8000 - 0x1da0ff: VE1					\
> -		0x1da100 - 0x1dffff: reserved */				\
> -	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*		\
> -		0x1e0000 - 0x1e2bff: VD4					\
> -		0x1e2c00 - 0x1e2cff: reserved					\
> -		0x1e2d00 - 0x1e2dff: VD4					\
> -		0x1e2e00 - 0x1e3eff: reserved					\
> -		0x1e3f00 - 0x1e3fff: VD4 */					\
> -	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*		\
> -		0x1e4000 - 0x1e6bff: VD5					\
> -		0x1e6c00 - 0x1e6cff: reserved					\
> -		0x1e6d00 - 0x1e6dff: VD5					\
> -		0x1e6e00 - 0x1e7fff: reserved */				\
> -	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*		\
> -		0x1e8000 - 0x1ea0ff: VE2					\
> -		0x1ea100 - 0x1effff: reserved */				\
> -	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*		\
> -		0x1f0000 - 0x1f2bff: VD6					\
> -		0x1f2c00 - 0x1f2cff: reserved					\
> -		0x1f2d00 - 0x1f2dff: VD6					\
> -		0x1f2e00 - 0x1f3eff: reserved					\
> -		0x1f3f00 - 0x1f3fff: VD6 */					\
> -	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*		\
> -		0x1f4000 - 0x1f6bff: VD7					\
> -		0x1f6c00 - 0x1f6cff: reserved					\
> -		0x1f6d00 - 0x1f6dff: VD7					\
> -		0x1f6e00 - 0x1f7fff: reserved */				\
> -	GEN_FW_RANGE(0x1f8000, 0x1fa0ff, FORCEWAKE_MEDIA_VEBOX3),
> -
>  static const struct intel_forcewake_range __dg2_fw_ranges[] = {
> -	XEHP_FWRANGES(FORCEWAKE_RENDER)
> +	GEN_FW_RANGE(0x0, 0x1fff, 0), /*
> +		  0x0 -  0xaff: reserved
> +		0xb00 - 0x1fff: always on */
> +	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x2700, 0x4aff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0x4b00, 0x51ff, 0), /*
> +		0x4b00 - 0x4fff: reserved
> +		0x5000 - 0x51ff: always on */
> +	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x8160, 0x81ff, 0), /*
> +		0x8160 - 0x817f: reserved
> +		0x8180 - 0x81ff: always on */
> +	GEN_FW_RANGE(0x8200, 0x82ff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x8500, 0x8cff, FORCEWAKE_GT), /*
> +		0x8500 - 0x87ff: gt
> +		0x8800 - 0x8c7f: reserved
> +		0x8c80 - 0x8cff: gt (DG2 only) */
> +	GEN_FW_RANGE(0x8d00, 0x8fff, FORCEWAKE_RENDER), /*
> +		0x8d00 - 0x8dff: render (DG2 only)
> +		0x8e00 - 0x8fff: reserved */
> +	GEN_FW_RANGE(0x9000, 0x94cf, FORCEWAKE_GT), /*
> +		0x9000 - 0x947f: gt
> +		0x9480 - 0x94cf: reserved */
> +	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
> +		0x9560 - 0x95ff: always on
> +		0x9600 - 0x967f: reserved */
> +	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
> +		0x9680 - 0x96ff: render
> +		0x9700 - 0x97ff: reserved */
> +	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
> +		0x9800 - 0xb4ff: gt
> +		0xb500 - 0xbfff: reserved
> +		0xc000 - 0xcfff: gt */
> +	GEN_FW_RANGE(0xd000, 0xd7ff, 0),
> +	GEN_FW_RANGE(0xd800, 0xd87f, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0xd880, 0xdbff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
> +		0xdd00 - 0xddff: gt
> +		0xde00 - 0xde7f: reserved */
> +	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
> +		0xde80 - 0xdfff: render
> +		0xe000 - 0xe0ff: reserved
> +		0xe100 - 0xe8ff: render */
> +	GEN_FW_RANGE(0xe900, 0xffff, FORCEWAKE_GT), /*
> +		0xe900 - 0xe9ff: gt
> +		0xea00 - 0xefff: reserved
> +		0xf000 - 0xffff: gt */
> +	GEN_FW_RANGE(0x10000, 0x12fff, 0), /*
> +		0x10000 - 0x11fff: reserved
> +		0x12000 - 0x127ff: always on
> +		0x12800 - 0x12fff: reserved */
> +	GEN_FW_RANGE(0x13000, 0x131ff, FORCEWAKE_MEDIA_VDBOX0),
> +	GEN_FW_RANGE(0x13200, 0x147ff, FORCEWAKE_MEDIA_VDBOX2), /*
> +		0x13200 - 0x133ff: VD2 (DG2 only)
> +		0x13400 - 0x147ff: reserved */
> +	GEN_FW_RANGE(0x14800, 0x14fff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x15000, 0x16dff, FORCEWAKE_GT), /*
> +		0x15000 - 0x15fff: gt (DG2 only)
> +		0x16000 - 0x16dff: reserved */
> +	GEN_FW_RANGE(0x16e00, 0x21fff, FORCEWAKE_RENDER), /*
> +		0x16e00 - 0x1ffff: render
> +		0x20000 - 0x21fff: reserved */
> +	GEN_FW_RANGE(0x22000, 0x23fff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
> +		0x24000 - 0x2407f: always on
> +		0x24080 - 0x2417f: reserved */
> +	GEN_FW_RANGE(0x24180, 0x249ff, FORCEWAKE_GT), /*
> +		0x24180 - 0x241ff: gt
> +		0x24200 - 0x249ff: reserved */
> +	GEN_FW_RANGE(0x24a00, 0x251ff, FORCEWAKE_RENDER), /*
> +		0x24a00 - 0x24a7f: render
> +		0x24a80 - 0x251ff: reserved */
> +	GEN_FW_RANGE(0x25200, 0x25fff, FORCEWAKE_GT), /*
> +		0x25200 - 0x252ff: gt
> +		0x25300 - 0x25fff: reserved */
> +	GEN_FW_RANGE(0x26000, 0x2ffff, FORCEWAKE_RENDER), /*
> +		0x26000 - 0x27fff: render
> +		0x28000 - 0x29fff: reserved
> +		0x2a000 - 0x2ffff: undocumented */
> +	GEN_FW_RANGE(0x30000, 0x3ffff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
> +	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
> +		0x1c0000 - 0x1c2bff: VD0
> +		0x1c2c00 - 0x1c2cff: reserved
> +		0x1c2d00 - 0x1c2dff: VD0
> +		0x1c2e00 - 0x1c3eff: VD0
> +		0x1c3f00 - 0x1c3fff: VD0 */
> +	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1), /*
> +		0x1c4000 - 0x1c6bff: VD1
> +		0x1c6c00 - 0x1c6cff: reserved
> +		0x1c6d00 - 0x1c6dff: VD1
> +		0x1c6e00 - 0x1c7fff: reserved */
> +	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0), /*
> +		0x1c8000 - 0x1ca0ff: VE0
> +		0x1ca100 - 0x1cbfff: reserved */
> +	GEN_FW_RANGE(0x1cc000, 0x1ccfff, FORCEWAKE_MEDIA_VDBOX0),
> +	GEN_FW_RANGE(0x1cd000, 0x1cdfff, FORCEWAKE_MEDIA_VDBOX2),
> +	GEN_FW_RANGE(0x1ce000, 0x1cefff, FORCEWAKE_MEDIA_VDBOX4),
> +	GEN_FW_RANGE(0x1cf000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX6),
> +	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2), /*
> +		0x1d0000 - 0x1d2bff: VD2
> +		0x1d2c00 - 0x1d2cff: reserved
> +		0x1d2d00 - 0x1d2dff: VD2
> +		0x1d2e00 - 0x1d3dff: VD2
> +		0x1d3e00 - 0x1d3eff: reserved
> +		0x1d3f00 - 0x1d3fff: VD2 */
> +	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3), /*
> +		0x1d4000 - 0x1d6bff: VD3
> +		0x1d6c00 - 0x1d6cff: reserved
> +		0x1d6d00 - 0x1d6dff: VD3
> +		0x1d6e00 - 0x1d7fff: reserved */
> +	GEN_FW_RANGE(0x1d8000, 0x1dffff, FORCEWAKE_MEDIA_VEBOX1), /*
> +		0x1d8000 - 0x1da0ff: VE1
> +		0x1da100 - 0x1dffff: reserved */
> +	GEN_FW_RANGE(0x1e0000, 0x1e3fff, FORCEWAKE_MEDIA_VDBOX4), /*
> +		0x1e0000 - 0x1e2bff: VD4
> +		0x1e2c00 - 0x1e2cff: reserved
> +		0x1e2d00 - 0x1e2dff: VD4
> +		0x1e2e00 - 0x1e3eff: reserved
> +		0x1e3f00 - 0x1e3fff: VD4 */
> +	GEN_FW_RANGE(0x1e4000, 0x1e7fff, FORCEWAKE_MEDIA_VDBOX5), /*
> +		0x1e4000 - 0x1e6bff: VD5
> +		0x1e6c00 - 0x1e6cff: reserved
> +		0x1e6d00 - 0x1e6dff: VD5
> +		0x1e6e00 - 0x1e7fff: reserved */
> +	GEN_FW_RANGE(0x1e8000, 0x1effff, FORCEWAKE_MEDIA_VEBOX2), /*
> +		0x1e8000 - 0x1ea0ff: VE2
> +		0x1ea100 - 0x1effff: reserved */
> +	GEN_FW_RANGE(0x1f0000, 0x1f3fff, FORCEWAKE_MEDIA_VDBOX6), /*
> +		0x1f0000 - 0x1f2bff: VD6
> +		0x1f2c00 - 0x1f2cff: reserved
> +		0x1f2d00 - 0x1f2dff: VD6
> +		0x1f2e00 - 0x1f3eff: reserved
> +		0x1f3f00 - 0x1f3fff: VD6 */
> +	GEN_FW_RANGE(0x1f4000, 0x1f7fff, FORCEWAKE_MEDIA_VDBOX7), /*
> +		0x1f4000 - 0x1f6bff: VD7
> +		0x1f6c00 - 0x1f6cff: reserved
> +		0x1f6d00 - 0x1f6dff: VD7
> +		0x1f6e00 - 0x1f7fff: reserved */
> +	GEN_FW_RANGE(0x1f8000, 0x1fa0ff, FORCEWAKE_MEDIA_VEBOX3),
>  };
>  
>  static const struct intel_forcewake_range __pvc_fw_ranges[] = {
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation

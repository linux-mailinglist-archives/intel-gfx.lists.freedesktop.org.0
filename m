Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031D28AA254
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 20:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55ADB113F02;
	Thu, 18 Apr 2024 18:53:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUUC05uH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EC7113F01;
 Thu, 18 Apr 2024 18:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713466431; x=1745002431;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=3uuCBGswFvnjUHbo3gfIS7QUGWDyID/uLeRCGWasPyE=;
 b=eUUC05uHJ/xTHkIdTRR6Elx1peDjurpjzzRSoHtsEXyUMZy1m5iry1CH
 bhap9LTYhfeL7K2Kpf+LsF9VGZCh/Zxw610qToLbAozns+mYzoRQRAYbX
 AlRwTD02JTU7g9dX4fzIIE4/PZoZw+tWk6VrCYxMyJodK1hnFYZAFZ8EV
 zSc5umAo7T6X2J692xyhxY6rfN70fb40lljMWq4fkfPKGyzH83sJJetLQ
 oUiddK10Reks2MgCjfU502q3tSuFw8nkb8Fr9ClSBAvmNx2Zmlh16U5pd
 CI5dhHYyZGcglFCWdM80mno5aTp5OVaP/vFZA+QYxbijzwvDtjNCHsYlt g==;
X-CSE-ConnectionGUID: FxIQJUsDSkCHZBJB/t/ivA==
X-CSE-MsgGUID: UF3EtOdLQv+S34DMg0EgLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="12873707"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="12873707"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 11:53:51 -0700
X-CSE-ConnectionGUID: f7EYnGS3SJmmQZm61Xijng==
X-CSE-MsgGUID: ZUJNELEpR16+m+wk1FltOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23708430"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 11:53:50 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 11:53:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 11:53:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 11:53:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bwd3orulrk5FtP4UC3nVAgXVaSODP4AopmHCRbQho4ZET/iIVY/ozDTu/vnbMmEtQI3yGcsRRqgWwGDUPapdpAWY8SMxC/wnbSW6WuHJGzosulmRoA1pb2rl3f59iyQMKrk5LhfpD7vEjoxOZoDglIp9PiPDmeGXnOObJ6yUsJdT6lKWY0hBnyCXwNWHpMGRLNwgRE0CuODCQbul4g1nb70Vsmveelw7dPVuaf+YwV+TareVrSwoh+20galn6xDSq08AwrnE7V0sXlmZJhblgfWbIyZ4bkjPbs0kFgQspK4PstgumuWqBCki59iAX9akcmhWH0TVgoXSblWSnuaz4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EDMC5WEZs8lHqWir4a88k/f8bBVWDRR4ewzDmnRVQYo=;
 b=KK50pnS1aY3ZeEpZeGuzoUXH8+hfGlayoivpPL/OrjwiSzzcXZlgvU1DQFSmlk4k0S1x2g7Y8H+Io0DVdkmiOmpXRCE1BFaZuKU39cUfMv3qVfNi4qjMRK/l11wM4wm6ii2q+1GtJkMQsEv9HtQZJIAivnZcd3knBSQk9fHRER2d/TzOyWWLG1mwuQF7tPqqIZfXwJy0AJd71JZcrJEZZj128AjIGdAQCBGbhMOyXRNuSJ9oxktCjzxJOGzp6ALJ5ScGoXWsN7r8OciolMas3F5UY3svN5eztfzxrlLVpmpAQVCTGkUO9uLXRpx/mQumXK1AKFt/swXjLRq9petO8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB7808.namprd11.prod.outlook.com (2603:10b6:8:ee::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7452.52; Thu, 18 Apr 2024 18:53:43 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 18:53:43 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <08137052f324f47f9ca9aadfc5bdf915a17bfd06.1713450693.git.jani.nikula@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
 <08137052f324f47f9ca9aadfc5bdf915a17bfd06.1713450693.git.jani.nikula@intel.com>
Subject: Re: [PATCH 2/5] drm/i915/dmc: improve firmware parse failure
 propagation
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <lucas.demarchi@intel.com>,
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 18 Apr 2024 15:53:35 -0300
Message-ID: <171346641545.2007.10117149787974036842@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR05CA0035.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB7808:EE_
X-MS-Office365-Filtering-Correlation-Id: b964a1dd-c6bc-413e-77f1-08dc5fd8de8b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tWCYaoEoLIZzCFgbX2sHL7zEBrigebmQzAX3JXDEw1YcFAvXceMT2yKMeNdxBmiSfu0dfVxDsgzNMX5+amQMOeP5TCF5i2kyeQCAyz91ynztCfUk5rIrg3q0FEYR3Idxf/6gUKzU827Ais/zYsqJUGoqibVy40yjrZC4byYbCOnsy6lwm9eMpMfvNqzE6G2HMdgA0wtIuhhonm9xk7qXhDjwwPuv1hKWHfQjVveSWLZFShpVDJI7uu59jBWMbq7Ib/ZTczyDguwxYave5YCzEmXCW5yxI8NRgFoAxrLYz5ZJLvt0G3VsGlhWrL54p4NqOJ2wpUy690liYC2/SRlkbc4nZmSYDIPqKbyNzxQ/K2e2aFNa2ECoa14eisTNvlcPmllZ1+5eH0nL0nGMHfWokKme1gsYKDfdteKGkBDqIVJ4qfiHgmk1C2NOE9SQw2Z7wHKB0N/K0DPmocMHhNLSvL1nv8zYZZFt/OjMAYZ3E3lvl+XjRJCc/+b0bV+6XhsjO4GtDUVKrNp0VCu30u9P26VT2yY9L2SF3R8Cay1xfcjLHcofJLEllb6HtWvbu/6pT+nMCKwBH/6ppijW0nmVE/3bEaE0Pyn5GZzM2sPzdRvsvchNaRAt6GvJykdVPHJzT+66XCzp0RqlP8uAJEYYJHfzJdmU4Bsi1zTOwARyPJI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RStBWXROZjFXaUlqVTA5TTBvT2ZDMUVtcWlVT3dsdldCR2JnU1hzY0tDV0Rt?=
 =?utf-8?B?UWRXWDg0U211d0pNaU9pNzU4alpiNXppSytEVCs1NUJ0MEVXVWZld2V3NFBS?=
 =?utf-8?B?bDJVbFhYT0VxQlhTY3lWbG1TK2ZQZmloMGo2ZWFzZXc2Tkd5cXZrWWFkU3px?=
 =?utf-8?B?d3NmL2hCeGVSOGNiVGZDb2lIeE9Lb2o0ZUdtTVkvclU0ajQ0ODBraXA3T1VC?=
 =?utf-8?B?V0twSGp6UHJqQzZXaWpTemFMQXFzdWQrVENjeHdwSndIQ0k3aWVwM1VQOU8w?=
 =?utf-8?B?RzlDZzNmeUZORHV4R1kxRUJpV0JuQyt1MUtFcEF6MWcyYnZ4dldqdlJHOTFY?=
 =?utf-8?B?YWJoV2xyQ1l2ZDVCajdidmNkYkNxVGJrdkJ3TGxJajhQN2N3NXlyYjV0ZjY4?=
 =?utf-8?B?U0RNRkM5Rzd1dWhVWGdMODUxNXJwZVRsS2l4NkxzS3ZOT3I3VGE0QnFERFZr?=
 =?utf-8?B?L0t1OUVWNU9tQXhJN3cxSkF2VDNJc1dKSm1PN0tvRndaMyt4NjV5cDgyQ2hy?=
 =?utf-8?B?RDNSUVhwZWNHN3h5cFFFZDVES1VYSE9xRTNDcU56Y1hFY0E1Z3g3NjhwOUp5?=
 =?utf-8?B?UGtHUFpSNGFZYmZoQ1krU0ZUTlNML2tQUGFJeXd0cDBsSWhiYnZ3c2FHMzZz?=
 =?utf-8?B?RjA4OGtDdXhBelRYZjZEQkczTlFVaHI2WFE4ZGdtK1RlZlNyc2srajlEbDNL?=
 =?utf-8?B?bjQzOFZObzBZSzdEcEtYMjRHODE3Z0M1QmtpVGxmdmt6TDdhWUFYbDBBRmVF?=
 =?utf-8?B?ZFNqYXgvMmtKSDhsdk1NTDhmczN6dUtEb0hiVVR3MG51WXdjWUJsVkhvODF6?=
 =?utf-8?B?SWViOGRUdUlVd0U5UlFpNDNMNEFkcm9OOGs4MUxrYUJFa2pXMDdhczFCUU9q?=
 =?utf-8?B?SXRkMWo2WUZuRndZRThPNHZNa0M0cndhR3dNbEtmcGxzemR4L3BUVUtRK2ZT?=
 =?utf-8?B?RFF6RmdaVVdWVVJHUVZ1S0E5ZGhkaHFjZ1NWRHpnd08wQXQ5eUIwd3A5eUgv?=
 =?utf-8?B?L2ZrQ05pUG5EVE5DdFJuV0RIRmxuRGJWV1oySEpzWHZlUEZ5Q3k0QXBsOWVE?=
 =?utf-8?B?UGZSbG9HQ2phM2lGdEVVMGVvZ29iNDBwd1B6TWNWanZleUp1TVBvT1ZVRWgr?=
 =?utf-8?B?U0dJSXNId2lJbFp6VktINC9XejV5d3hNMmdaWjhaWnBrMm1Cc0hLNDdlVGRZ?=
 =?utf-8?B?TWdWeXlCTW13TlcwY3J5Z3VWeFJldlQ5QUlROHZkWm5lejJnNk5yUkRNamkv?=
 =?utf-8?B?V3hjdFcrU3phWjN4RmdRZjR2cWVzSUU1dTlodmpWU2VNQ0ZSY2l0UExBTHlw?=
 =?utf-8?B?VTV4SHhKNW5LV2p4Ly9mb0JuNklEa2lRb29SK0xhWk5ZeDJZNkRTVlhKM3B1?=
 =?utf-8?B?OGkxNnVRV21kZnYrbHQrNzFWNVllNWxSb0pDNkI1Q3Z0MXdIY0N3WWFtcmdl?=
 =?utf-8?B?dkVpTUlHcitFb1AzOExvZ0dqbWZ1bU55MzhybnZuTTJ1QVFaajl3L0ZEVTlu?=
 =?utf-8?B?cnVEays4YzhJTmFkUG5CRDFHcGI2V0hBNitzVmk4ajZBMytuL2tFVzBxWHBO?=
 =?utf-8?B?bHY1dEVURE9EQWY5SWpBcGF4a21HVDE0bjZUWUdJUDhOd05xYktMTGp1c0Ez?=
 =?utf-8?B?Q2QzaHlKQXVFeTlaalA4anVLYklPQ080bm9PRWcvejB0b0UzSzQ5QVVSRjRn?=
 =?utf-8?B?WGU4LzNyVWxLbklPZXZrTklYTDFmWElQNzM3QmF2OEVTbWpkRzZPM3hNdGlw?=
 =?utf-8?B?Z2tRanppeWNGbmtia0F6ODdEWDMvQUNaTEFTRjVINzlYaXFwb1cxVkluTnNr?=
 =?utf-8?B?L1lJczJRbFErc1NEUmR4SkI5NjZoQ09YUVoyWitkR2F4Rmc5QURsRXJHbWFp?=
 =?utf-8?B?T0VzT3dvWWRBY1RDR0l1OGt5SWVBaXBESU1hZjhnYlpVQmFEdVVHak5vYmMx?=
 =?utf-8?B?S3loUHBZTDlXclhnblR5cXJ4aVdmcU5McVZyZUJNdHA3NG9TR2V3MTBhSmk3?=
 =?utf-8?B?QUxHZFZvNnV4cVpMbm1rbVJNeVozeHRjZ3VhVzg5L0ViRUZsMlBFWWxIVng0?=
 =?utf-8?B?LzNCM1RDZmNPcThwRGNSdUtaYlVSblZLS2JUbEtSZk1XSXQ0ZDJ1S0JKOTlV?=
 =?utf-8?B?Q3ZrZHc3bFlCY0k2a1VzaDcydUlaT0pGTGVHNHRpSFQ4ZDdocDNLMXJ2VW53?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b964a1dd-c6bc-413e-77f1-08dc5fd8de8b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 18:53:43.3498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DB9d7fp4xnpvdtfITFihFkCGtbgtedI2AJOiuca5LJLOf+8dzs0Ii43LuAdzcLj4p6qsQ5lQDQQUAzgeOa879Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7808
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

Quoting Jani Nikula (2024-04-18 11:39:51-03:00)
>Return failures from parse_dmc_fw() instead of relying on
>intel_dmc_has_payload(). Handle and error report them slightly better.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 39 +++++++++++++-----------
> 1 file changed, 22 insertions(+), 17 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>index 65880dea9c15..ee5db1aafd50 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -853,7 +853,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
>         return sizeof(struct intel_css_header);
> }
>=20
>-static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw=
)
>+static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
> {
>         struct drm_i915_private *i915 =3D dmc->i915;
>         struct intel_css_header *css_header;
>@@ -866,13 +866,13 @@ static void parse_dmc_fw(struct intel_dmc *dmc, cons=
t struct firmware *fw)
>         u32 r, offset;
>=20
>         if (!fw)
>-                return;
>+                return -EINVAL;
>=20
>         /* Extract CSS Header information */
>         css_header =3D (struct intel_css_header *)fw->data;
>         r =3D parse_dmc_fw_css(dmc, css_header, fw->size);
>         if (!r)
>-                return;
>+                return -EINVAL;
>=20
>         readcount +=3D r;
>=20
>@@ -880,7 +880,7 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const =
struct firmware *fw)
>         package_header =3D (struct intel_package_header *)&fw->data[readc=
ount];
>         r =3D parse_dmc_fw_package(dmc, package_header, si, fw->size - re=
adcount);
>         if (!r)
>-                return;
>+                return -EINVAL;
>=20
>         readcount +=3D r;
>=20
>@@ -897,6 +897,11 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const=
 struct firmware *fw)
>                 dmc_header =3D (struct intel_dmc_header_base *)&fw->data[=
offset];
>                 parse_dmc_fw_header(dmc, dmc_header, fw->size - offset, d=
mc_id);
>         }
>+
>+        if (!intel_dmc_has_payload(i915))
>+                return -ENOENT;

This function and also the parsing helpers (parse_dmc_fw_*) already have
the pattern of providing error messages for issues found. We could maybe
have parse_dmc_fw() simply returning -1 for errors here.

For this specific condition (!intel_dmc_has_payload(i915)), we could
complain that there the main DMC program was not found before returning.
I think ENOENT might confuse users.

--
Gustavo Sousa

>+
>+        return 0;
> }
>=20
> static void intel_dmc_runtime_pm_get(struct drm_i915_private *i915)
>@@ -951,22 +956,22 @@ static void dmc_load_work_fn(struct work_struct *wor=
k)
>                 return;
>         }
>=20
>-        parse_dmc_fw(dmc, fw);
>-
>-        if (intel_dmc_has_payload(i915)) {
>-                intel_dmc_load_program(i915);
>-                intel_dmc_runtime_pm_put(i915);
>-
>-                drm_info(&i915->drm, "Finished loading DMC firmware %s (v=
%u.%u)\n",
>-                         dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
>-                         DMC_VERSION_MINOR(dmc->version));
>-        } else {
>+        err =3D parse_dmc_fw(dmc, fw);
>+        if (err) {
>                 drm_notice(&i915->drm,
>-                           "Failed to load DMC firmware %s."
>-                           " Disabling runtime power management.\n",
>-                           dmc->fw_path);
>+                           "Failed to parse DMC firmware %s (%pe). Disabl=
ing runtime power management.\n",
>+                           dmc->fw_path, ERR_PTR(err));
>+                goto out;
>         }
>=20
>+        intel_dmc_load_program(i915);
>+        intel_dmc_runtime_pm_put(i915);
>+
>+        drm_info(&i915->drm, "Finished loading DMC firmware %s (v%u.%u)\n=
",
>+                 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
>+                 DMC_VERSION_MINOR(dmc->version));
>+
>+out:
>         release_firmware(fw);
> }
>=20
>--=20
>2.39.2
>

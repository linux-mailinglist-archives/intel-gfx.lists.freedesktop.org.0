Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B56CEA536
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Dec 2025 18:36:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58EED10E763;
	Tue, 30 Dec 2025 17:36:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cIv1i0/S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEB010E36E;
 Tue, 30 Dec 2025 17:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767116202; x=1798652202;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=PgSMKTt/+RFG0VTOkQOWnK8mSdVUuEteaNnfF/Daci8=;
 b=cIv1i0/SgxXksNbTci7lz6IluXuRttn89STBwxJMLfnnkLkpuWX4HEm4
 /BoUCN6SQ+AYsLXbQRywXtPS32/US/rk5v28e0liuz5od+XByWEKjemyN
 nQ7jsXrTACt6WlK+Uao4Lf9dnQy8pygSDkbq6pNeA4EsU9j4PE9jyE3sb
 OVhuYL/FmLmUK/6bxG+UsH8Tpz7DphIJmyirESQgtIATMdXucUCRxYrH0
 tGl4K2duso17IfAhOPCRK9NGZnjQtTy0kFcDp1XZcy/CZ4bjoqgCRr1uZ
 N2Hfi1PukGNclGVFvc02V7Rniki6ozpUjc5ykm3N+OOsn8tOneTiVUMnZ Q==;
X-CSE-ConnectionGUID: RBAzI5J0TeqA8UfLGOm39A==
X-CSE-MsgGUID: Wz+YK1u+QwaAczYcoaV41g==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68775481"
X-IronPort-AV: E=Sophos;i="6.21,189,1763452800"; d="scan'208";a="68775481"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 09:36:42 -0800
X-CSE-ConnectionGUID: 2jCCM+9gQSSFpsY/GpQxFA==
X-CSE-MsgGUID: SR094sGlRVa1jYhHUgvQyw==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 09:36:42 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 09:36:41 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 30 Dec 2025 09:36:41 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.11) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 30 Dec 2025 09:36:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hmzqVu/NxEjZzZwVVWbhQuR7rpF6KZZLpuJpofhHHTCTEsIazZmW3x6rdvl3pIMQdmvLk1uIf374tIpwiiY9y+qpeIHdi+MFcHyhvKTNwx+TP2WSH1xYyz8h/R/nHqSH2s7fIKT+OGL9ABMKNqivaYRqj94JkNcUtUwv38WqCdt+kqsIRD7HcFW7sSQxYyJHnK2yakyE0zgCMZPD80a8kvT48qG1DdlLP92X1PrmaHK9LU4Ex8Jm7wQlp1hgVmaRvN9T7fYLXmMNMlkoZEqFpSRAKZPOc+zzfQvvXyQYq7X487QHnzSXyUBMNJ6ozmjWTY3y3lXZrk4e6YD/RiDQ4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sbtkfu5I6/UVAlD3v4rmrQsx/nYqPGz+pqrjvZHdFFE=;
 b=g2kdU68edYlFryyRyih1wZgZ4drszMe2nIs8QF1zDQYB1VE2ZopPX9ZBYIdQHZwpNHJQliGYkYMTwwJVOj4LNTni8WFj/lmOTiFSVfZYE529RdI5ULgH2kZPsGBv8cUpaFTTQrp4nE+XMFkl7HRPu3XSj2m2UWPSIDvuErBoTYPk1a2Z7ETPMmOA0C28cnJaysGLotC5U2RsdWAPcrTvoOjemxbQOvgEvGhCJL31BbWeTYMaJEW80sTxUeZNRwsvuDWC/kOryH9TZJcG5knQGlk4cWPerpxeIGCvKk8SL4sNnz0iGlivuRrxdCdUOkYfP/y3Yt+EO1QBza5kwRg3Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA3PR11MB9206.namprd11.prod.outlook.com (2603:10b6:208:574::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Tue, 30 Dec
 2025 17:36:40 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9456.013; Tue, 30 Dec 2025
 17:36:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251230083142.70064-4-suraj.kandpal@intel.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-4-suraj.kandpal@intel.com>
Subject: Re: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <ankit.k.nautiyal@intel.com>, <mika.kahola@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 30 Dec 2025 14:36:35 -0300
Message-ID: <176711619593.18661.17406989812251209808@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0P220CA0030.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA3PR11MB9206:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ca871a9-10fb-4623-06e6-08de47c9fd7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V21TRURBQ0xadTgvdnhtTHhtOUFCSk5pRkxJRTR2c2hPT2JZc05sWHVWY2FD?=
 =?utf-8?B?RjJnR1NhNXFPdjZyZTFRLzJKeTdmbWRqT1RIRmJvK1ZKVWRwUjR6eWRVYWds?=
 =?utf-8?B?S1JlbFVaZlRWY01CcWVDWXZKMG1kRm9NU1NFc3JOWldKZEV2T0JFbUlwZGRh?=
 =?utf-8?B?SHFJc2xjaEVkeHNmdWVXV25wQTRacnRpamVQUDFJUExOdS8wQXZhWU4xdW1M?=
 =?utf-8?B?YXBZeVdTR3UrWUtzNm5DT1g4dEkvd0VYOC92SkY3OE8zdXFGMWFHZjRGdEdz?=
 =?utf-8?B?eHN2TjN5QVErSjhsV29pQTRxenJRM3gycnhaWFdDNktQZHRGQmNCNFZtUFYr?=
 =?utf-8?B?WDhGVDN3UGVHVVdiSldhMmtoZjRkNHNFUGN5Q3N0ZVYwVTI2cFpxVFo2eFFN?=
 =?utf-8?B?UG45OW1DeGcxTld0ZDNYY1J3aGVLU0p6azdobUpjNENOWVFFYS80YnFTc0dn?=
 =?utf-8?B?MXc4N0FLR01MVkJqREVoVE82VGhLdGxqSkxaay9DSTVGMzVDZXdJV2hXbTA4?=
 =?utf-8?B?VGFYTXFXRHY2T09MUTNQVVpwNmRZSlNhVkZpb0dXQklkcXZuMGs2bVppb21u?=
 =?utf-8?B?WExMR0JNbjRHTzdLWUYyUWNhQStERVUzaFA3MnV3UWpGckt0Q2xSREd1cEtZ?=
 =?utf-8?B?MFFDbG9IODcyMnl3emthaUpFSmRETE16d2h4aDFpemxuZ01kSDB0U3RsRVBa?=
 =?utf-8?B?WEtrK0dvTWtHbXRwMXYxbndmLzAvRDJrOTdqY2U1WU9ZbTZYQk5UQjZwOHFz?=
 =?utf-8?B?Q2d0TVdwU2xEcWdEZTlaVmJOcncrQ0c0SElDVEllbUZ6R0VocnJPOEMyMEFC?=
 =?utf-8?B?SXNSblpGU2FOWFh4QUhrWEJFKzBNaGxrVCtCdDhpL3JLLyt3bnZsbFU0aHIz?=
 =?utf-8?B?bEJPS1hIaWtkdi8xbG9QN3Zya09qSktjT2x5eU5OeXY3TEJLWVFOaWxHOGZO?=
 =?utf-8?B?NUxYM2VsK2N1d3BRd3ptR1VOREh3dkxwZyt3ZFlDMVZwZ0FNNERCOGVKYmtw?=
 =?utf-8?B?SXBYVnE3dUdWNDlEd0Vjc29aU1VnVEhDM2FPMlhBVUJ3Q1A3TzRSUDJPTlVX?=
 =?utf-8?B?K3FYSVhic2l2YzFGa3VtTm1PVmVmMTZGZlNoOExLU2ttdHBMdlh5OVFBa0c1?=
 =?utf-8?B?NEY2cTZRV1dwOEJVUmdwY29OdGFwN3EyeXdLdHZRbCt5NFp3YVBGamdoMFoy?=
 =?utf-8?B?V3poK0Z2RTMyZC9hSklHQlVYeFRFbzEzN1A2Uzl1dHAxOHMvMTV0MEMyM1hV?=
 =?utf-8?B?RmFvMTF2dUtOYTBFWURWZ2ZiajR3Vm5ENmowMWVVT2cxQ1E3TW5md0tGazVx?=
 =?utf-8?B?ME4zamh3eFRFZW5FemFHRWpSTldYRGN5SFRkcUNWVnowWGw0RGFCM3pWSWZm?=
 =?utf-8?B?Y2JlQ3dMS3JLMXZ6ay9DNEwydVMydXhKWHdJdFlWY2JjTTBwVFBtTUV0V2pZ?=
 =?utf-8?B?eUdraERydzY0dHBDczlDUjRkZGVBQ0dWanRjcmlxcEpVZ3gxRjgwTDFuc1NG?=
 =?utf-8?B?Qlo2czJOUzZPbVl2OWJhSTdwMVY5MG9UNFJXVkpBZmlmVytLTG1pR1pIMnNs?=
 =?utf-8?B?WVZIT3I0amd1K3p1T0xJd3ZmRzdXRFBjOU9COG90UGozQk13d3RmSzZxa2E3?=
 =?utf-8?B?b0JGbHptdFJuWXFMckpZcGtScTFxZ1dUeS9ia2NNWHA1bmxuQUVqdWZFQUtu?=
 =?utf-8?B?dnMxOUNBeW9oUHNYMkJZTExVVlhhT2JqaGhzT1RJeXhaeWpHd2p5VEJNcUtS?=
 =?utf-8?B?cjF6Q04zdEQxSW9xMlpJYWVQaDZ5NVIzdGhlQWxlRkdKNmxQcnR5djllWldR?=
 =?utf-8?B?cG1vVlFXS1RxVGVYWk5VY3VDMVoyMndyMVJpMkFHSFR2VU5ULzhZc1I5ZE9W?=
 =?utf-8?B?YU9NZzdoTFZkWTh0cEtvd0JacCtyUGtKaDJ5RjJVM2dsUzNKWUROZHI5SVU5?=
 =?utf-8?Q?zQIPQoIfh3t6X2DYwUnbqsEMPYVQZCXd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFloN0tYK2JvNzVyMXFmeFVJS00xTzllL0ZIOXk5YU04ZVlsWEtVMmNQSC9q?=
 =?utf-8?B?UXIvajE2aUo3WVBJRFFxZVZ1SjFBY0tueGZTT0lER2pNejc1U0c1VHFXZS9p?=
 =?utf-8?B?Z0ZmbHdQTjFGeU1HNnhGakdlc01KWXgza2gzWndvemZGeEFGYnl3MmxYRFQ5?=
 =?utf-8?B?MnpJMElFNlJrYlVtNnFvcnlVNWdJbXJ1SW5MUVFFeGs4OXVsaFdYS3o1VHFB?=
 =?utf-8?B?VEkrY3pQckh4VTliY3B5cGtzbkk2RWRxaW1ySDQ0ZGFOOEtJMkhMaUpLRCtC?=
 =?utf-8?B?cXF4YzZyQVRjQWp0cm81QmhlWFc3RFJEd21KZzArcVIwZmc3R0J5MnV4SHA2?=
 =?utf-8?B?aVQ3aXU3TWlXVzRxeDhxS3FqelhuaGxSdlIzeUZMSEsrMmhub3M3MXdaNkVN?=
 =?utf-8?B?dlRmZmdSakRPb0F4eDFxY3Nsb1F4NDhIakxyL2R4ZjRJVFFzR0xPdCtieEhI?=
 =?utf-8?B?ZElZTnFmZmxaZjRGRkRyaVN6cytNNUNZeUljOVpGZlI4cndseERUSTRUaHdY?=
 =?utf-8?B?WjZUTmNmV0l1dGRobE0zUk9sRUlwR0g3R0VTblZScTdhbEFGNzcvdlFaUXlk?=
 =?utf-8?B?eHArblN2Um5uRkRsM3REY1puYi9TU216L1BGOGVNbXExQmluNy9nS014OVRl?=
 =?utf-8?B?eGEvc3dCUDV6VVl5ejhNM2d1bTRGdFBubi95NzFZRkxQSHdkazZLc2dGK2t4?=
 =?utf-8?B?WWdpK2JxTG5SRjRQQ29UaUZrN3hTL1oxMXRaY0VRYXBEenJPUWFsQUJ1a0o1?=
 =?utf-8?B?VVpoKzgrL1Roc2NYSXNkTlB5ci91NmtjM1JodWJmdEoyVWRML2gyOXBaL1Fh?=
 =?utf-8?B?UjIwOFMzZHh3blNBWUs2bVp5YkZGVFRmY0orMlpjSm9UN1FRbkErSlMwUXpu?=
 =?utf-8?B?NUc3a3NtcGpDOXpnM0s1ckNydE5Gck1yNm9iRmVDSzhvNmh0TDc4bmdLbnFV?=
 =?utf-8?B?WWh5M01qVVlSUi9RczJOWVpySWJkSEorODZORGJPMFFzZVpDYzFUaFJPYUd3?=
 =?utf-8?B?MHRUaGpWbmQvQ2swK1RTc0ltOEVvb3lMNDhBcEFKY3ppdzFFVHBiUkF4VmlP?=
 =?utf-8?B?QnozM2JWcG9oMGFmcTBoanI4UWh0QTdWK091MWlTbzhDL3Ixd0VkQWNGMnhH?=
 =?utf-8?B?VWh2b1RpU0xDZGtDci9zYURkdGxTNDNOMldhUkFyYkRVcXZHdDU0Q0VwbE9i?=
 =?utf-8?B?NVM3WnJZYlJKNnV3eUtvSnhpN1hqMHZ3a2duRnVhYUpTNXdtUTF3TUZjejM4?=
 =?utf-8?B?RHEwcjRDOEIvQUQ0WXRFa0hZRVYzV1c1bXdkYUNZa2UzVERJQTFsd3ZzcXNp?=
 =?utf-8?B?eElNaklOZFBRRWNJMTUyUVlBZ1BCekg1RVUzNjlwK2dud0NZTnBEVWduckY4?=
 =?utf-8?B?UStkMnFLd1RYeGNiMXRtN0V3S0V2aytqZ25iekU0ekcvSFpOT1RYSWtRV3Zk?=
 =?utf-8?B?M2R2M3RPUzZYbkhaT3llZWVMZWg0SDl4WXBFaGdoOGROMytUQmtTNERIaVBs?=
 =?utf-8?B?azkwZmZVblpEVmIzU2k1bTlLMHlCbkE0UXFJTGI1MkZaOW9uNWMzOTdBNDhD?=
 =?utf-8?B?QmFURmpJZkZMRmIrM21aL1orc3JHUHhBRmhjamlzZ2V4RXg1WWpSUXF4QXJq?=
 =?utf-8?B?a1BxdjhNRzQwaEE4OWpFQmdNTm1XWFhHQW51dmdRbm9pS1pDb3dXdHA5N1hH?=
 =?utf-8?B?N2VEbUdBZ2Z3WWJzSEsvanB4aDkzUjVTeFFWYmpzRzF0U3BoenFmRjJGSlhR?=
 =?utf-8?B?Skc0bzBXQjY4VUNlSUtyT3U1d0liRlhZeVBGUmg0K29ZdmkvbEplem9JUnZx?=
 =?utf-8?B?cFpCMlRCeVlrbjY2bDk5TkswaHgvSER6d2RLaE12S2cwRzFsRnl1cmx3disz?=
 =?utf-8?B?Z0dpY3BOams5WTNreUUvVzhtc2NoTW1nY2RQdEJ1RzBqa2xyNjN4bWFpMUpB?=
 =?utf-8?B?Q09KYkR5MlFHUGwwSE02RlVvZ0lUOExxOEpmUHptUG9sQlBiREc0WmVqV0xs?=
 =?utf-8?B?UWVGWWQrRXJlUUwvVk85cktocnk5dUFuT0I3Q3lFcmJ0K3JTOCtVenRzdGE2?=
 =?utf-8?B?NVdCV2ZWamdkZ3dIR0VFL1BvMDRjRTdRV3AwTENTU3lIUjAzMXJtOGM4QWlZ?=
 =?utf-8?B?KzBCbTdEYWdYNGJqdVVDUGltRTJqZVlzWWFsZ3BVUk5xenEwTHdYazEzSlN2?=
 =?utf-8?B?dU1VdVZpdVhYSlJiRGxxd05KY0MxcEZva3p3UkEySzZMckg3VnlLRFJ5OWZm?=
 =?utf-8?B?ZWhZeTEzc3R2RFVVMzJSSEs1QlpQT1ZINkYwYllZZGVNVkttQ3k2OVQ3aVFX?=
 =?utf-8?B?bmNubUFpMVBqSy9qc1M4eDFvbUhyVUdGekh6MlkrZkZqSE5wcFRZdz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ca871a9-10fb-4623-06e6-08de47c9fd7f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2025 17:36:40.1877 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j1jbo5WD3RrVN0gDjxedZbscUUN/DUG6rPvxA9Aygmke0MHqNFux8L2Lkh4o6Qz0ttD/pRffFPo/tHtkU7XqJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9206
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

Quoting Suraj Kandpal (2025-12-30 05:31:42-03:00)
>Clear the response ready and error bit of PORT_P2M_MESSAGE_BUS_STATUS
>before writing the transaction pending bit of
>PORT_M2P_MSGBUS_CTL as that is a hard requirement. If not done
>we find that the PHY hangs since it ends up in a weird state if left
>idle for more than 1 hour.

Since the series title refers to suspend/resume, is there an easy way of
reproducing this via some power state transition?

I'm wondering if we are looking at a driver issue here or if this is
really something else.  I see that we usually call intel_cx0_bus_reset()
in error paths, which contains a call to
intel_clear_response_ready_flag(), but it could end up being not called
if the reset times out.

Do we see error messages from the driver when the PHY hangs?

--
Gustavo Sousa

>
>Bspec: 65101
>Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 5edd293b533b..5ebc3404eee2 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -222,6 +222,8 @@ static int __intel_cx0_read_once(struct intel_encoder =
*encoder,
>                 return -ETIMEDOUT;
>         }
>=20
>+        intel_clear_response_ready_flag(encoder, lane);
>+
>         intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port,=
 lane),
>                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>                        XELPDP_PORT_M2P_COMMAND_READ |
>@@ -293,6 +295,8 @@ static int __intel_cx0_write_once(struct intel_encoder=
 *encoder,
>                 return -ETIMEDOUT;
>         }
>=20
>+        intel_clear_response_ready_flag(encoder, lane);
>+
>         intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port,=
 lane),
>                        XELPDP_PORT_M2P_TRANSACTION_PENDING |
>                        (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITT=
ED :
>--=20
>2.34.1
>

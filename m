Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E220C2D827
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:42:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0E710E147;
	Mon,  3 Nov 2025 17:42:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8N6FIfA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418B110E147;
 Mon,  3 Nov 2025 17:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762191750; x=1793727750;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=800JpyIjgRFSBZiVqWb52aQcY/I6UgPqzKyfJzpNZ3o=;
 b=B8N6FIfAC/AvyADQlYHQrPsB9wTIeubT6w+Y4Jk8tXl3fnQ+xXD/nqqY
 MyeLRRDfOOjuDdr6TpW4lxJUDok9syt7rucNlY0iRmnjls0todEuk6Lk5
 DKfR3/UpVKGkVPVHJXY4FXpjt2zTjI99m/AMT+ikKnAzf8yAZ/fdlpNbI
 1bErNZ6JxUmsIhux1qT1Gc6cHagFSV2a34UxdVcO1Jt18nb5Co4wmLfNT
 //4kfT3L0eUD+EmD3mw5i8rSRlEi8uBqadO5Kr99c3vAfMpqygez/KhGK
 SIMimp42mRGgeiAUEa2AXMNJvg5B/4913qlC4pzxmPKU0CRGQD1E6IFMN g==;
X-CSE-ConnectionGUID: 4Hyofn/bSiCCjX7Qnabqmw==
X-CSE-MsgGUID: RbjO7smYSSKXXPROgOHzAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="81903513"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="81903513"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:42:30 -0800
X-CSE-ConnectionGUID: KOevi6FnSqi0Et1TGpiqkQ==
X-CSE-MsgGUID: AGkTV98EQYqEDWN/GU1HTw==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:42:30 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:42:29 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 09:42:29 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:42:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xISxNrwFsnqZ8asCQ86fboW0XUcjOGtmae1hp8jS85VE9vy3QpDtYrlthHi4WwW7syARaDs7eCVh+AHI/li2uiWp4nX/sHMRuHiX2/KpB9yD4TSxFpbIB10b3vjnFJ5cQs+R1Wh6bbtUvmeYBD3lOWpurjat1nHeZ3/JiGYha7ED57x3luf4BJsUpUShlio6gqgXwEElGYuTO/LgrcdY+FUGO+8P2/KLdCOyqfM0jEHJfjSggu4C3kzcTN4DmTF+AkxWodFxYr3E2X/ItBDyDHgjQAXWded6XZNemEbz/wfs9QD6nxFO2u7SaHi4y35a8kkzfZDVxAaL4aE99lia6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RMCYbBmtqE05ZZ98wkoXlwkxiNKpAYmYDlqnF0DHMW0=;
 b=c7X1K4FxxbE9NtdlSxM5aF7yjEJwZgqxeKbUf4fOnn70Xvw8vxEkQgqc9xYqD0czgdj74OsLboVPQZyAXFf+JhVI3Kkjbaeh9PqDZn9vKO+b39N4ifLFi/U4lJHRXp63O/GaS29Q0zivNkivU7S8yHiXk6XT7VZMdBxlPIQRiynGm8HCLCAnLHDKFLDobW7a3R04tq3K0nHQGY+3SN7Ocg++L7ML7AlZXBSlJly92LY3cbYVGxV/2cFMaex+zt+qhBitE0qbf+N1uDSx/htni7nLhlCT3HyElg/PtdObzSmA4ZqbrO+M5zi0un6jjg9fhTnRhjEC4mV8jonSdwJ/KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB5027.namprd11.prod.outlook.com (2603:10b6:303:9d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Mon, 3 Nov
 2025 17:42:26 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 17:42:26 +0000
Date: Mon, 3 Nov 2025 09:42:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 27/29] drm/i915/display: Use platform check in
 HAS_LT_PHY()
Message-ID: <20251103174223.GF2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-27-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-27-00e87b510ae7@intel.com>
X-ClientProxiedBy: BYAPR06CA0052.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB5027:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b34817e-dfaf-4873-7be7-08de1b005a1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DB+CjRYW/rWAyb0x8fkLNLPGavCsfQnBSTPNKjUK73/Btd5M4w5pyN9Ri6sd?=
 =?us-ascii?Q?zrtmTB5xcs3IrbZikcGUCOMwRpB2q8fKUilEg436gqkh+UxdCdrAc7rf/9XJ?=
 =?us-ascii?Q?bfwc2TnOPQ/MWDT7yjpNKbkhr6zVPXFELScP2jdIEfmu+c57av/rt78Her1J?=
 =?us-ascii?Q?dqMFUcjucNCKVwK/7LWBSUcectj4kSTxt57YqhSIOqsrORwzR+iaRh7Co5LO?=
 =?us-ascii?Q?Tj6GHLsLCQCHZoJgbeDLyOLOYBjCWtaWfdecAML37WXE4s1k2U2bwNcaQUAr?=
 =?us-ascii?Q?rpoubQkNU1Xl71qCZOgozkXqPYkfBxdzOJNI96v4qg9rMMSJpKAS8UlJjBHK?=
 =?us-ascii?Q?1hguhLwhl21/NEwDGnKIemPCt5nbOtqvy7MkWBWbEHzvuKFQWUkMbC5lBUkF?=
 =?us-ascii?Q?ZFC9EuM8W3HjcvFOUyl8fdR/onfCD8Vq6h+oby3cJl0S1SG3h4v/lWYwYEDb?=
 =?us-ascii?Q?4ZeB+7HDzFwM1vv4aEPUElBbTr0SYdgti+soNy9NVgYcSTFc4TD5v2jPQy19?=
 =?us-ascii?Q?2YX9ty52peXXktdIrHBnb0GThJFHdcox1JNGeHZIv2zJHL2oKE0DvxQ5z6KM?=
 =?us-ascii?Q?yBowPR6qxkpdJHRraGwqL9NBSIqXiTBJKQ5K4fLqz4mFY1nGIyfIR1To2vnj?=
 =?us-ascii?Q?IT3YBUNcEktbMhxnnkDIEslc6Vv2vRK09gTsdi/F9z5uTrJdobU02I7r7YNK?=
 =?us-ascii?Q?6GDqUc3aMpYRzybAOG692kcrDTkY+yof/OlS7u14EZKG04bW58fpHBRCkSr7?=
 =?us-ascii?Q?5ZdFxhwc3FEMVSxb55uRplw9gJJAifPDv1kIKsnXSJ1qwHQwuv1Wu4Uwsuvm?=
 =?us-ascii?Q?JFq5/CyQl6FJGLdFCLSRhk55BHG7A0+3p3lNMKXS5nOY5vJo1KUjuWY8MR6l?=
 =?us-ascii?Q?kgqp8uQYXZIu/laGIZCv3n+MvbiasM2XQCFV/MPW1SospQHshlHiKlI6Yja6?=
 =?us-ascii?Q?XaZpvQoYVevuJFFfopVCHnjOGmMVDrWaKbb0eii84qr/UIj7PpBDT0nny4eV?=
 =?us-ascii?Q?VOMUHOuZsQ3g8YwzHhzoWV0zdXdFRzQ3GWFy+fN//+aBXzn953fWSULzCWwg?=
 =?us-ascii?Q?UL6orEpRJ+cfd6H1MUfa9W9eGPNmmriFAgM9ZUQQ82D2ZSzFJa0Yk4yvh10m?=
 =?us-ascii?Q?NZ7EZWNfX73zCpTQdXQGlh7Ao4U6mVRuzzLTEb73rFFXxm7aGD5Ucj0ZOILQ?=
 =?us-ascii?Q?MG06bKblEY8HbEuHlM+JAKohrkDXVVIDSzFXjKP973NRlJr1CFFt4ehMefhX?=
 =?us-ascii?Q?3gIiBRtG8acRoxxvm2htQxbwqS8iX3AMEqBq4cmqvXTchSE+kFH14To/n4RK?=
 =?us-ascii?Q?nHqy+Qjq+m1opgf/A8Bp82JPevfk3wUxnb0bPsphIP0SEVQIKj5NcXC2CHzA?=
 =?us-ascii?Q?jJ7aNoicbaIRZyD9YK/Y6Bx9oo8TyFa1rwdBkMyAOClChfMTCmdR0UlJd3x+?=
 =?us-ascii?Q?vQpK2bGC4PbSBXOY4L0AXajyGwvmC67n?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z9CjOh5C34WZS1erUoZAajJE+PMyZc7g+AM4LWwwt6zGSbACCRHN5A/s/aSw?=
 =?us-ascii?Q?tZXBljdX7txaIYp/sWhyPdNKx6g9mDL7MXAikaESsWMh4VeiavpaR9IdpYhD?=
 =?us-ascii?Q?fK2aAW1eBJEOoTnt17/lw0YFjDJteoGU476VFp6zbw5TlfH9q8J2PZLku74F?=
 =?us-ascii?Q?pVteelTuweVvyz7niYylI2L6nfOgnpf11Rjlhju3Y+tfBInDRlrPUYvKJUA+?=
 =?us-ascii?Q?Ym7j1J1MQQZZpQBKJnzHcV2t6Phc7lfyv/VTrCvDSRjKzeRgOr1+0deTj3z8?=
 =?us-ascii?Q?Z53GYjaiWW8ck+BKx/GAxDFCuqBrrQolAioWbux3rnuT1Sqp9Y2mEdlnzLjy?=
 =?us-ascii?Q?TbRA2Bl5V86ddstM8rfMPJruJRwWC0K29chFQJ2Ywx3WfJ115nO/f969evPj?=
 =?us-ascii?Q?CWMW4Rc8B7AEaq9jib1FfdBIXFROO0BCLJRSrG9+FYW1S6kKB/0lEli6r/Yh?=
 =?us-ascii?Q?Sx2nYMyaXvg3zR37mFqG9U5Y8NoP9BN9CekMzz2UUslY+FAU0Mm47GpawNfY?=
 =?us-ascii?Q?T0F8KtNBG6KNqVU0CTRCDFhIHYR4qEYhWaauhpMp/spX0420sEIU2ke/Rk3q?=
 =?us-ascii?Q?/0JmiirN8PLGnv0Q+SNF0HIDi1JvJsjNUS8P7Dh7FmZ+wM2lHp5zXuFDbJeW?=
 =?us-ascii?Q?bZXgZnecf6JAO28TMZSnuiJ5/OXaRVDUwnbc+fkTWct988Uy6HgT+8uXu7It?=
 =?us-ascii?Q?pATj2lLOU9JSiPSUBFwj9weuoT2VN3Bg6+H7hfwtugu9YBqTduEwF5vaoV23?=
 =?us-ascii?Q?lBTQfLSpO7xzBxhJ6E0e2hvkKYjt2c7La394fJLjPODzWeUFpPvGOLLW88Yp?=
 =?us-ascii?Q?2wx6HS+pX7+7uHAXVDmPJIT9jL2O7R9QOcbOhz5DCQF94kB0xwLjdFBfdccY?=
 =?us-ascii?Q?wtXnza6WfvFkrXVfFLkYudg805JOXDIoinFpNVmzsR7zEPoGIXPNUeC1tPmO?=
 =?us-ascii?Q?gwmEEs/r7v5Iff2sFjdEtwtj3zhFhAWXDw/XxWPHczm6+l3fqE57vMuCCow1?=
 =?us-ascii?Q?kLpn+QOEHdYYJZfPNus0AOdtbIvfBICAyWsUXMKYhrUN9FsiuAAolxGQPtPn?=
 =?us-ascii?Q?0EsSgoLUv+pcnehOHpQa6B/wWHsAsD+kPUn1fCbGJTPPiefmXrWgmRuKURlG?=
 =?us-ascii?Q?DteAMCQTjeJX6FMOH9Ottfb8kC+SfWw/24B5JpiQK72OlJgOVx9p8z4Bn8dz?=
 =?us-ascii?Q?HcV9j4/jFcpQEnt0P4mylPONUMsTebRO+qghuxoAJ7Pku4oOloqoyWqKZfji?=
 =?us-ascii?Q?1HtHw7h4brzye1Izz7I99KD71dn3SMf6CeWM3PgwVycKF4gW7kvVR2kvdDOf?=
 =?us-ascii?Q?zORYcg3AT0uk3QPDDFZXEhw2dAgq+O/M8Ps+VcyNz0xSUc+QPjj7jhBdh63I?=
 =?us-ascii?Q?F0DfHFdkspwfAcaNKnW6uUXtKp7+tp2C2AAPXProQybt1BOirAgig8awIZFr?=
 =?us-ascii?Q?e2zuocfCOv3cYCq02tbweaL0YnWjzM3z78un6aqqukZYNzJAV5txXGOJiDkI?=
 =?us-ascii?Q?Qm38TcNgWzkZYjEuPlcoA8QFFe+wnwRpB7rH1SKFXTMDPgXpqGEv6amXo19z?=
 =?us-ascii?Q?avLE9wnzeCAD9erBB4d+0d/+Krp8PhjkgZ2DXIYs+/k8wVW1XlpQ27Ev99fs?=
 =?us-ascii?Q?Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b34817e-dfaf-4873-7be7-08de1b005a1c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 17:42:26.0513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PQG2Z7HfhlTI2ma/6j31I84s2sIKo8v9VtDuR/9eFCr2/Fx2chZ2p5bJn4fL9Z3eNsw83MsLgmBHc8FP7LaXwqKGcgX2I6acqs1okl8RIy0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5027
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

On Mon, Nov 03, 2025 at 02:18:18PM -0300, Gustavo Sousa wrote:
> NVL uses the Lake Tahoe PHY for display output and the driver recently
> added the macro HAS_LT_PHY() to allow selecting code paths specific for
> that type of PHY.
> 
> While NVL uses Xe3p_LPD as display IP, the type of PHY is actually
> defined at the SoC level, so use a platform check instead of display
> version.
> 
> Bspec: 74199
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Eventually we might need to make this a true feature flag, but this
works for now.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index a538d4c69210..034c20c66baf 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -39,6 +39,6 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state);
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
>  
> -#define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
> +#define HAS_LT_PHY(display) ((display)->platform.novalake)
>  
>  #endif /* __INTEL_LT_PHY_H__ */
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation

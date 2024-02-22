Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1353F8603BC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 21:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F0510EA5F;
	Thu, 22 Feb 2024 20:40:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bu2lPE40";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B90010EA5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 20:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708634406; x=1740170406;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=0tZ5UYMZd4Xl3S9Vn7JeqH8MQ4Id9OQji6djUnBwTgE=;
 b=Bu2lPE40FInrxOQjDesKWKb8nMI3LhkebVAWp6vM07UyfbbCnkGriPFr
 WqlNOJSt/q9iT2aryLsDVHv1qBY7FF9g9S1dGvnkzPal67/xnxUOzECpB
 HDnHn94VrFm5Ak13Nx5UYLdaX0dpGJFYMKp9JwikYxixADe+Sjj5lBTk6
 d4tRHZi5AGMajHxesUoG18BZRf1qwAW0GGadZVNgOGXnTDNZ12f8e8fYI
 oSkZMsSwaDJfopA+h7AcefxMXQDbd4hOQw3aoTqH+ATa6ywY2LAAOys/j
 Z0jReRZPAr3SG8KpYrY1dKylbiLLLJnQFhS51SfW2j+E1erortRSCR1J5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="3051598"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="3051598"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 12:40:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="28757826"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 12:40:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 12:40:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 12:40:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 12:40:02 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 12:40:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dxRwQYeLcjsRMfNL+28vZ4SQkrRjssHFHH7e+9Lvj+6YrnxnzQRlcvYGBh2gEkcXQUb0CHkeI+rM0KoGA+yegtyTLbo1HtCQCH5C5u08S8TEFlutzH595KVrXQoV7Oc6moyj2PlvVUJQbTP15km7JPOvneK+EY4d0i18PO7/NoKorC1iif79bStgs/UOFz1W0BxEwXah9/FFBvVpyQAEiesIPInnktW5VPtHOqAT3M13hVo4g+ZaeziVsLCotQ8FtT6mHn2xiEHuYBas+pDQBzOK5VQGRnCenXa6yF4lln23vuViI2I71ntAsfA0ECeoe6IFbOY5UrGZFGjV/1gz7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U/KSQKotGMOp6bBOKblR0CzI1MBwo3w3QQiNpWN0afA=;
 b=iO0SW5OCUT/VTfCaOb8ulEWNPNdTKQfOW5zIbcio4ER6VMKQ585PwQnw9nJL3nsa5CI8BC4tsr2KymaR9YOAGzrKvGxOlOVYpuPuReaAKnlqXtkP28xXvARw2XD49RWckV84q40Cpembwsk7xlqJS3XF9VMAuhOgoOHBJrge4cn5gKnVC8BbWCjNRtyUgVSKYntT7k3aTPD3+qj7CK2LQuHfP615v2yf3Ju7uBdPoULqzdCO568IQi0OwnzxHqt7EVnf2ZNQObYAroStdV41wCVXpgbsbWvkZISQjJ8ytTK8Wur7HZMR2JLMDZWUdOLEZj2SlHxQBGXZMec34uBM2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB7973.namprd11.prod.outlook.com (2603:10b6:806:2e6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Thu, 22 Feb
 2024 20:40:00 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.036; Thu, 22 Feb 2024
 20:40:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <gpxlwxuxyabngdwxrfmjr3wmwn55oe2qsq5ocrmrbvb6rbrik6@mbhjaml7dxt3>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
 <20240222125634.275047-6-vinod.govindapillai@intel.com>
 <gpxlwxuxyabngdwxrfmjr3wmwn55oe2qsq5ocrmrbvb6rbrik6@mbhjaml7dxt3>
Subject: Re: [PATCH v1 5/6] drm/i915/xe2lpd: Load DMC
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <stanislav.lisovskiy@intel.com>,
 <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Date: Thu, 22 Feb 2024 17:39:53 -0300
Message-ID: <170863439394.2814.4779363205045959572@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR16CA0023.namprd16.prod.outlook.com (2603:10b6:907::36)
 To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB7973:EE_
X-MS-Office365-Filtering-Correlation-Id: 41a73a1f-db4b-4094-71db-08dc33e6704f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9fUaSDryhQ2byN6D3aZcR/B00VYJtnkOK7SerDEIKsy3qfG49Zy9ycL0Gvg91XvzmkrTKwO3YNAapKRXuo+Ja58TvCX9RkmW9OR1gfvWRZ1rTF0vfQzYPTdr1VpKOyoiVZDq7E2fQGaw/xemsmxPLtiNrPGRQrEm3D2GiJ7Ajks+XTtk4FMhRSCKfyEog/pAdD9L2qSle/lCldDkn/8wORKGMHqZUQZ9WGKvPXjUhbTdxGCzFIzPTkF5WYlOQXRBKX7WsR2IL2HMZ9obf/dYKGdbz2dpYvUksEdC8OW5WBKVXZiQ37TxnRLBO8PwBH3mBqWpcAa98hz/XWjG7j9NrepEd6jzLLbVuW5Fc8ZiXw8S78h4Vf0dkFNyrRi1kEvq4j+CGYu/NuEHqx7+jkm/+KBKzxwBiwfKuAXYwF99qD7s08O1/i5R2ugeKihAqQmQAlAP4TNlrEUSL+vKt80ePYurAal3wxoxAI0ts+Ecf13Vl15zG+9y/JNIU3l45kso4oC/za701wmndhC7pOhhdg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?My9oLzBQdFoyTk9Ra2lLeVNsQytBUmZYWms3RjREYlRyajQ0Y0pnT2YvM05G?=
 =?utf-8?B?cUYzUFJJaWNPV1Q5UVpveG5oSVRkNkVyS0kvZ2p6cUNXU2VTd2VOWENJNEIy?=
 =?utf-8?B?L2E0Wno1eGx1ZlNJenBlUExhYmlLek54RGs5M281blExRlo1RmJVOUVhbE1T?=
 =?utf-8?B?U29ENW1HUVlXQ0ErQzhxakFLOGVzWFUwZGhkWmE4S1o1djhuUHJsL1M5UHZD?=
 =?utf-8?B?WndqOGVVVXgzbG9wMDFpT0RFSjAxVmRQbTduenNiOWJlODJMWWxGMnhxOFhP?=
 =?utf-8?B?OVQ2TjhhZkEzZjB6Q0VneXdZcjhCWVlYUGxvbDFNRWh3eU1mSDJRUWNMa3Fs?=
 =?utf-8?B?eWd3Y1Jza0F6YjVRenBYNTIxVU51NHhTa2RRZi9JZlJoNEY2VEs1REtvd3Zl?=
 =?utf-8?B?cCtJRUxlN1crWnZkakV4cjgycGVFeDJwY2dlQzhPMUQ4WmFHeGlyUnd0RGFl?=
 =?utf-8?B?RUZTcVpCMDRCcHdSanBiaTRsZzdQa2g2Y21adTJVZGhtNm1BVTJnN21CQzls?=
 =?utf-8?B?ZlF5OFgxMzZwSm5EZlJYcFBQc0VKZGwyMFNqekVWMU80d0JleTBDZkJOVGRi?=
 =?utf-8?B?T3RSSGV0ZVhIKzZWMGNsSW1lZVAzVTQzTXJvdVp4OEcwckJOZm45UTBqYnRq?=
 =?utf-8?B?RWlhNlBQSnlIUVFvY3NCeHUxZnVMdDVjNHVjazhuSCtid2dpVGE4R1M5U1BE?=
 =?utf-8?B?WlltcnhpSHF4OTFVbmk2emVOWUVCbkIrLzZUdmlhaFpOOS9TSkFFbURyL05E?=
 =?utf-8?B?RWdrU1hHMkJoUjdMMnkyMjBsc0QrWVFiWmVjdElpTGtvUXg1VTJGUU55RGt3?=
 =?utf-8?B?aDZick12aExuK0ZKejR4eWtnYVZUMzlJYTYyeDBkam1hZWxYM0NJdlRnajRM?=
 =?utf-8?B?NlpoSDIyT3JFN1dwL2RVSDVpcHpvYVhUUTNHRElERVFHa0pjSXVZOERHRys0?=
 =?utf-8?B?RVNVRVVYa1VWYTBMbDBFUmVHdkR5QUZDQTRlZXRiMTlBQzJqVVRSK1RlU0Fp?=
 =?utf-8?B?b0FjL0Nra0xMUWhMdnpFV0phL2VCbUpZMnBHcDdDYU03OHFLKzVMODdOWTM5?=
 =?utf-8?B?SlQ0SFhTSmN3V2dZWVlrdnZmdSthRzVhQWtkeXZ5bitNcVUzS2N1UUxKWGpy?=
 =?utf-8?B?T1ZEZWlXZ3pyTEkyTWJHK3hPL2pCb1ozeFR5Sk4wbFM1M1Fua0VkeURPY1hB?=
 =?utf-8?B?OUdpaUlhRnJmUjBoVmhIaWMwZWNjS2cvQW9XQlB4ZW4wVE9VZmw0T0h3WDhm?=
 =?utf-8?B?SUxRZjFOeXBkZXZsWmNFVHJROThWNm1SYXFuazRYYnJKOU1aV2Rrb1ZVWFpS?=
 =?utf-8?B?bzNZVCtXbEtLOUlieEp6RUFzZEFVeEZ2OTJWemdHdzdGUDdXeStIVXFMRStU?=
 =?utf-8?B?cWxtWW85NlhJK3VkUDVzMUlUZS9WeW5vbW1aQkFjelZEWTV4VmFZMGlWazdZ?=
 =?utf-8?B?QjJnUDVBOEwwam1taFUyOG1mMDREaEtuc0lzK2h4WGRWM2xHekNNWXFmRlpy?=
 =?utf-8?B?aDJQYzNraTRJODhrWGw5QUc3cnNCemx4R2xYTnFWajVMMzQ3SGltL25yMTBX?=
 =?utf-8?B?dUZNaFpOUWx0UnA1Vy9iRFhlVG9DQ0Q3ZEpJbk5QUDlSV1ZRTktsUC8ySUVw?=
 =?utf-8?B?UVkvMWNWWU1Fb0IxMG9UQlJ6L1hPR1RuTmFOMkpGWVQrVmppSUZlcnloR1ZO?=
 =?utf-8?B?akxJVFhxaDRQaWsyeTZyc29IWXRWWWVUSnFGKzNLWDFMbUc1ZzgwcklZazAz?=
 =?utf-8?B?SGFVL1hGbm1aWi9LT2ZsZmErTEs3THFNOGQweFBaSWUxR2V0bXBYSE1YenBh?=
 =?utf-8?B?UExoMVBzanV4ZXNoN283eFRTMjRFaFplc2llb3J5SHZ0Mkc1VXRpOHFPOS8r?=
 =?utf-8?B?Wlh4aVZON3p4cjhkWWM5TkdOYlZiK1lNZW96eC91dXFXOUxRaHJ5Mzd3MmpY?=
 =?utf-8?B?V2dHUVp2WjNoS3lua0tvWk9hdkdpWTJTQkZOSXk5U3pSTWhqdHNWVmoyVzhk?=
 =?utf-8?B?a3ZmZUZMVyt0dTdWWDRBRjZYbmZWKzN3dm53aVdpaEx0V3VPSXF0cE1rd0ky?=
 =?utf-8?B?aElLTUo5RU1lWXFoWDdvRUU1WFFNR2FlYkRLc0tKdkNvQ2lxRWgxVmxOd3VE?=
 =?utf-8?B?ZDJSdHU2MVRrSkxrVnJscHN4TnlJamJEM3VFS2NxODczSUVieW9HaStXR2VL?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41a73a1f-db4b-4094-71db-08dc33e6704f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 20:40:00.0653 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bu38iBGB6YnplWN4fngXeUhGJ3SYpK43MPpmrr1xZxwFNcxRWLmV5hULXRXoj0WsMUVEKVynPE/pc9MIti3aRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7973
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

Quoting Lucas De Marchi (2024-02-22 11:26:57-03:00)
>On Thu, Feb 22, 2024 at 02:56:33PM +0200, Vinod Govindapillai wrote:
>>From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>>
>>Load DMC for XE2LPD. The value 0x8000 is the maximum payload size for
>>any xe2lpd dmc firmware.
>>
>>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@int=
el.com>
>>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
>> 1 file changed, 8 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
>>index 835781624482..54c5909de293 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -89,10 +89,14 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_=
private *i915)
>>         __stringify(major) "_"                        \
>>         __stringify(minor) ".bin"
>>
>>+#define XE2LPD_MAX_FW_SIZE                0x8000
>> #define XELPDP_DMC_MAX_FW_SIZE                0x7000
>> #define DISPLAY_VER13_DMC_MAX_FW_SIZE        0x20000
>> #define DISPLAY_VER12_DMC_MAX_FW_SIZE        ICL_DMC_MAX_FW_SIZE
>>
>>+#define XE2LPD_DMC_PATH                        DMC_PATH(xe2lpd)
>>+MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>
>looking at the mailing list I don't see any pull request to either
>linux-firmware or drm-firmware with the DMC firmware. So if we had LNL
>in CI, it would just fail. We need it at least in drm-firmware to be
>able to test. We need it in linux-firmware to be able to merge.

FIY: Xe2LPD DMC has been merged into linux-firmware:

    https://gitlab.com/kernel-firmware/linux-firmware/-/merge_requests/160

--
Gustavo Sousa

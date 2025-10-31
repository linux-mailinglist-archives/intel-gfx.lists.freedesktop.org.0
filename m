Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 178B1C26635
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 18:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B947D10E098;
	Fri, 31 Oct 2025 17:36:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ajVAtSeW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C1510E098;
 Fri, 31 Oct 2025 17:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761932179; x=1793468179;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=l7wXLwczE8Mx9qxSkQIN3BNUMmgr1PUXkVIdCsGsxNo=;
 b=ajVAtSeWftJGXOoQQj7lIFNAZP4QrovNRYDvdg2n8Imbbl7pXsTdKyhj
 dcgJ8Ls2KHXmQkt8k1xlQYfeRPmVF9EHMfYrEQstRAwEUHY/N4dRqWajM
 0UmTHnGjK+W5CB7gjk8ztyZNZa3txccuWWqPiBEj0bqCgBep5pWpXleHt
 OcsQKGWnkF6U+dULxtVJ2r5cO9yjIPeqdfBh5j8m7VQ3MIQFbcmsmU+0s
 m0Ny1CHP0I3SHgkezRE3fsCcXIYWUgligKvoDxUAE0/2/87vv36dPgQzE
 FPEcivlDPpf4b/j8DHQMge4ctWruztXpRpSLsSD84YSobqWLltlsnu1nf g==;
X-CSE-ConnectionGUID: ozKf8IZGRF+6GLJbKrc15g==
X-CSE-MsgGUID: k+SIoVykTR2qNNQdsy0PMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="51670418"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="51670418"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 10:36:18 -0700
X-CSE-ConnectionGUID: Z5EAU2ooQuKsGubxnOue6Q==
X-CSE-MsgGUID: 9n/i4lfTQDC0eIJZ78mERA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="209852622"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 10:36:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 10:36:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 31 Oct 2025 10:36:17 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 31 Oct 2025 10:36:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AGPfX1sqjyfYltEh2aJldioumfSExC9fnVDX7H+MSCBh3AggI9KP9DGIM8zc3DRKU7/6DRybeoUZ176PXn423s4AE6f6prmmFR8N7TLUrGEoPMnjrsxdiU3ronjKOpBeGrdtnjr4o6b2k8xYJ26VSvrZsJpkAM6wqiCiRxBiwM2x6NMWHEPoPPwu5WdNouC3mS2M71rU1CAXVtoVFmo4auGwMYTDGvZtLRtECxT42vlCFSbGa/GxLygUQN3vmU0JtsGZ2lhVPFYWNBBG8uY8sNnrALvOcXYM7q0baT+sKl8jrm6+WQ0P/3GfYOipUXvTbb3E8pO8Fet4aE6WjugF0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSkbNsNcRvEAcjzhRGRkDDbG54XmrNTKtmMmUxxrVcc=;
 b=qLEQ659aK/9u4G2P2cpQQJj8Tcimwj2J2bhOTpgzrWPijzDhrsJmmsp04UpychPZptr351sI/9te9sB0wNzQUajh/be2dJi/t+tlICUxWfvZop8yddWoFEa4WsEq4EYCyGX9FWOG1YBmR8+JMVTMXNOVOfU6ZT6Mj8KcSvsPC38DkcxS7I9MPkJKk79xZl5ReWarCRUhBxgHzqa+Y/nd+MQp3yJ1VGkBidhl2I1NlLQ6V33NNBvk4nmTdvP+0lLKORMjNOkOHKTdtnxiUGe8noHFLVKxeoilOTobmoNTEJ2SZqeobivu95K/sIuzVbGgEuT5XnUPpk5FdCEXMAd/WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB8289.namprd11.prod.outlook.com (2603:10b6:303:1e8::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Fri, 31 Oct
 2025 17:36:14 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.013; Fri, 31 Oct 2025
 17:36:13 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251029221423.GG2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-19-10eae6d655b8@intel.com>
 <20251029221423.GG2806654@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v2 19/32] drm/i915/xe3p_lpd: PSR SU minimum lines is 4
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Fri, 31 Oct 2025 14:36:09 -0300
Message-ID: <176193216968.3685.707322924217220205@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0219.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB8289:EE_
X-MS-Office365-Filtering-Correlation-Id: a50a8110-8cb1-464b-7b3f-08de18a3fce6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vmd4dXQ0VHkvaUZoSWdpQnNVbHlaQzl6SThEZHhEckhGQ21CN3ZkdkEwbzU3?=
 =?utf-8?B?SXZ2STdxKzZtamZWMUZ5aU9pYnJjMnJxRGJ0V0hRUmVXbHcxSit4a1JvNkZj?=
 =?utf-8?B?UjdKTWg3c3pnM2NVYnVyQmQ4K3dYY2RvNytlZVNWdjRZU0ZNdUhvY1FGZDhW?=
 =?utf-8?B?dXdndUJhallJQjdLeXBsUTY3SlZObmoxNXpOOXhXZjBOSklUdHozTytCMHFZ?=
 =?utf-8?B?M0RUWVMzUU5MRXZzOWUxMHJJLzkvRkxMa2JaWkhSK2ZPRjhHRVZsRjFjbmg0?=
 =?utf-8?B?TTNvQUt2M3J2VWZSaU8yb3ZvVVZqRElmeEE5QmlRQjRHNGhPaFBObWJ3cXll?=
 =?utf-8?B?NGdHU0lQZ2lRbTl5S0hWU0JBR0R4NkRPbGs3VW5TNCtpWVYxNFYrYXp2NHVx?=
 =?utf-8?B?bHhtUDYyUHdwMEpNNnlHQ1VzcmZHYmNqby9PSEJ6bG5ObGFFOTQ5d1Uxc21i?=
 =?utf-8?B?RzBuWEZrenM1RGpBcXA2cnErZHlheEljamJmZEt4bTJsTmo2VCtlRnZHaFlC?=
 =?utf-8?B?VitsbVlnQzV5NVlCQk1FNlZiV3pHeXBGbGtjZEhuY2pzYndOMTA3ZFMrQktQ?=
 =?utf-8?B?TVkxd3N2dmsrdFdzS3NhNXFXV1FjT2pVV0xDN3BXVHl4ckdXaHRWUGd4V2NO?=
 =?utf-8?B?MTU5R1lVWWl4djZwQ1NQd1ZOanZuODhtcENIQVozOXRyVVNpVDFIUGYrOGl4?=
 =?utf-8?B?WFRoZUdhWjgrbUhWSERVNXJlS1hodUd2NTBma2dWMGJpc3hvQnFTeXFDTWI0?=
 =?utf-8?B?ajhlbDU4RmlJcm9HQWlBU3hjUEtVRVR5amd5VWNPTGdhcjNnQ3hnaTJNT0Mw?=
 =?utf-8?B?QUZPcTFZZ1duNkZSZXgvV0tnR0Y5b2xXQUZnY2xKdXZiQmEyV2haSjVvUS9Z?=
 =?utf-8?B?dWg5RFBwWDNlQ3pEQzBkRTNnbzZwTVA3VDk5bUtPbTV4WUJlZm5DdlNqL2Vp?=
 =?utf-8?B?QjNoa1NEVHZNV0l5cmtxM0lZbzc1WHM3Mmp2dzdGeE9CSWxZVUtQUzlmWERV?=
 =?utf-8?B?M1JoOUpMUkMzVitleUJDaWNzTDV5VGJ3T1d6VCtZWW1DYnlnYU40MjNqQVBp?=
 =?utf-8?B?SG56bm02dGQ1UjUzanphRkppTmtOaU45cmdkWDNDalRXRFRHOWFDeXpLbkl5?=
 =?utf-8?B?dmFpWjhjV0R6YWtJN2I3Rk5uVzdkQ09RaEtyaDNXT1NidE0zbzd6UmNXWVd0?=
 =?utf-8?B?a2J2K3F1bnlHK3dxTVVraHJNRDMya0tSL1JEWm9heHJsdHJGOXVpMEFOQlpH?=
 =?utf-8?B?b0pZTU80c0NVR0VQQWFhRHN2ZFFLRTQwdHRFNU43ZVNzY0QvbU9IV2hSMVFE?=
 =?utf-8?B?OUJJTFVldlJrcmVYVVhKVHhOVkNDR3BTRXA0Y3lnR2I1dStaUGNWc3AzWUk5?=
 =?utf-8?B?MUJ6OHpydzNnZGNlK3htWlBYRGRLU2M4Skdxa29NREVKNHRSTEFtdWliTldt?=
 =?utf-8?B?WDM5WnB1TjU0UU9JSUVHSXJWdEswZ1R6ZTkxRHlCbWwyWDFoUXo4VS9JSGJi?=
 =?utf-8?B?ekhpQU9PYUMxcjVSTGZqU3FNeXV1aStjSVRZdmtvbkwxaW45TjRsSlJzMmhH?=
 =?utf-8?B?VlZJWElQcUg3WmtaUUIxdm95eVlQTXZvbTgyRDUrSzA2N2VpVDRLNnBBNWpM?=
 =?utf-8?B?MWNocEFEQzQrVkpNR3lyUitCSGcyTHpuRWFiTlZHT21vSUh5NHBIV2wrVWE4?=
 =?utf-8?B?Z0VMSzVRWXQwSHgyQXl1cDM0WVNkQllleHkvV2dkdnZ2RUM0Z0pxbC9vaVRw?=
 =?utf-8?B?TDB6WFZJQjh3cGxmcE9zcDZXdks1RUw1Z0FtT0ttWGdtWkYvekJlYXp2Q3F2?=
 =?utf-8?B?SnU5MWpaRFF5T3F0Vnp2eVFNcTNZRWtvL3Z3eWVTTmdJUU44UUlSOVVpSTli?=
 =?utf-8?B?N0krVno1VDFsOE1ZYU9pUUhjMXMySHFOQjRidFltWXBiRnVKYk1IaVZ3bFdB?=
 =?utf-8?Q?o/BYu+q1nSVpdBQveRuMHVOubd/wCrzC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGlwWVFJUmlCQ2xzcXlFL1VjWVhNZ0JCdmtOWU4rdWhzZDJpZFdXdzRvTmFQ?=
 =?utf-8?B?QWIrZFlxVy9EYUFKYXNlT2ZDaS8zUlp2SHc5MjMwS3dkOHpBSVV2dnZNdlZo?=
 =?utf-8?B?RkYzSzRPRGttaVl6UksvK1doNGdoYU1MdmtYYk0rSmFwcFZNTysvbUJVd20v?=
 =?utf-8?B?YTJOK25iNmNJUSswSWhDTjZTWkROZk1OSGM3TjF2Rm9wWkVMbVcyM3BWVlhS?=
 =?utf-8?B?Rnloa29kTW5RVlNxa3BjM3Y4NjUwRE5ieThDOVQ5YTFxZFVySTJSMHdheWlt?=
 =?utf-8?B?dmxHQ3JUS1lOK2FpOEUvWjVrdlp3WDZGenZyMHdpRTZXZU9iR1hyKzhTeGVJ?=
 =?utf-8?B?TUpRTGg5Z0F6c1psTVB5Z1ZXckM2Q1pQM3lhZ1dNSTZyWEs4WGs5UC9CNzBW?=
 =?utf-8?B?UHpCY21OZGpySXlWZXEvQkhMRUFwQWNBeG5aRVFwYkRKeldrVmFUNVF1S0Nk?=
 =?utf-8?B?Z1pwdEo1Z1VtRGsxUTJZWEorMW9TeUlDMkdQS0kzdVQxVFQ3L0VBTUFLVkl5?=
 =?utf-8?B?VzIyc3hKOUxYR3VTT3dkQlUrbnhLRjZSL2Q4S3E1ODlMbEtsSmt1Qy9ZNEtM?=
 =?utf-8?B?RjBoVTdIYmkyUGZ2eDJsN3oxN015dXBDS0NldVowd0MyUG9QSVRnNisxcHRL?=
 =?utf-8?B?NUluMFlaMVZZNDdVaVdReWRITWg3Zm5TdUJQdFRxcTNNM2FrSEpHNDVLRm1v?=
 =?utf-8?B?KzZjdGZMVzY1REREVGI1OEsyeERGMlZZTDM1ZzllRjJMQzlKOWtNdG9WWW5U?=
 =?utf-8?B?eDkxRk0rcnFScnkxMDcwTTFNdnNFWEp6Yy9CY0RSbDAzWU5sN2UvNHRnNzZ3?=
 =?utf-8?B?WUt1TnJmT2NjODBVZy9xY1lvVTBHRUIwMkVlZ0tTN0ovdGw2aDRvOEZEQ2E2?=
 =?utf-8?B?alJtRHQvRWNtYkxNMUZSMmhlQWFzL1JHS2h1TEdZSFEwNzN1M0k5L1FEeGJB?=
 =?utf-8?B?bG1waTNucmJWWWg2bFpjK2lzSzlxMnppcGNwS0NaUlZCS0JMRTFZTUpSL0pJ?=
 =?utf-8?B?MnByYTF5bVdaaXQwUWxxM2Uyc1FGVlFWL2JGU1dyTnRpOTgwVUgxcm9IUmpP?=
 =?utf-8?B?bDRYdjFMbWdEdnVGNTJLejJJbDlMcUpqY096MVh4WG1LMHNwUnRkNzVDbDVK?=
 =?utf-8?B?ME1DdDFIQkxPTDlIQVAxK0E1b0xBK2w2Z2pmOEtaaUpJa2ttT1k1MlIyUWs1?=
 =?utf-8?B?aGZES1cyYVRyaGhWQ0Q5cExRY2YxTTZrVHlKSlZuaUc1N0taU2w5ZFZGaUlJ?=
 =?utf-8?B?RVhodHc3dWladXpLZGw2YmhPYjRLVWs0bExuaDV3Rk5WNjQyUDEyNnlwMjR3?=
 =?utf-8?B?Vk41WUpMRzVOb3A1eCtzbmtiemNGTUdFRkV5ODBLRmJXaElNSGpPa0tzY1ZR?=
 =?utf-8?B?cVhrRmJZUUJhbUlRNmxVRHJyLzVFeFZtTkt4bWVvdzNMRTh3ZyttVFVDY2da?=
 =?utf-8?B?OEFrUVA1cnlrdXlmc1VzL2ZBRUJRWFN5K1FCWG8wazhUcVdISmRIMEVBOWZk?=
 =?utf-8?B?b0FQdTErYUdCVVE1YVF4c0pGcDkwVjJpNktNWUUxQ0wvdEFKY1FONWx6TjRC?=
 =?utf-8?B?Y0tYaW9TNmRCOXYxYXdkdTVlR3pJUk9UOVJLZHpLT0tDUnVQditOOER2RFJO?=
 =?utf-8?B?elZ1aEpSUC9XSnd0czZSRzVVNVNIRGg1N1JRSVB3MTE4MWJEd1RUbXBwUjR5?=
 =?utf-8?B?UEl3RUJWU04wOWR0L054dXJVL1MrWGZ6ZHRSZXc3Qitnam1UaDh5bmIxbjJr?=
 =?utf-8?B?TDFES0QvaDN5R3hmZEV0NDdTcTJHZzRzUUVCSVdjbC81V0pyODJTM2pvMUxC?=
 =?utf-8?B?YWFQcDJPK2RZZUxpTGdVWG9jYmZCOXlNeTQ5cUlDY0FQUDFKSWkwWnJ2ejFt?=
 =?utf-8?B?S3Zab1h5blNKQkZjZlZEaEJ0UWdKSjdQZHU4ZTk2U2JkS3F0STV1MVZXb1Rl?=
 =?utf-8?B?T25CSnRUM0RQQldTU0Z2a2JiUTdYSXpRV1ZsdGc3a2RPVkJzYzUwaWtaV2th?=
 =?utf-8?B?WFRkbEYwSXAvZUhhRlljV1N6RFdoZE1DczJTeE5jM1lPSTJHcWtyVmtDSjg0?=
 =?utf-8?B?c3FFK1Y4bStldFRCT2RBUHF1MjRCZTJiSEZ4aUFJVUZMUFlrVmhJWFVTcnAz?=
 =?utf-8?B?UldvUFF2OC9HZTVhWXdPVG9jVll5VlhsU1VQM3JCQUxJOHFKUThCYm52ZzBy?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a50a8110-8cb1-464b-7b3f-08de18a3fce6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 17:36:13.6450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JQ8Jz3QSYS6KT9cuYG07ZfV/BTLsIQ8e//6Pmw8lGC0f7wQB6e60KL3jFFk21QVF0H1pcGn+lNy/LQojxCKMLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8289
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

Quoting Matt Roper (2025-10-29 19:14:23-03:00)
>On Tue, Oct 21, 2025 at 09:28:44PM -0300, Gustavo Sousa wrote:
>> From: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>>=20
>> Ensure the minimum selective update line count is 4 in case of display
>> version 35 and onwards.
>
>I don't think this is true for Xe3p (at least based on what's shown
>at the bottom of bspec 69887).

Agreed.  I think we can drop this patch.

--
Gustavo Sousa

>
>
>Matt
>
>>=20
>> v2:
>>   - Fix style by dropping extra spaces after assignment operator.
>>     (Jani).
>>=20
>> Bspec: 69887
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr.c | 25 +++++++++++++++++++++++++
>>  1 file changed, 25 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/=
i915/display/intel_psr.c
>> index cfc8b04f98fa..a23519b9b388 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -2804,6 +2804,29 @@ intel_psr_apply_su_area_workarounds(struct intel_=
crtc_state *crtc_state)
>>                  intel_psr_apply_pr_link_on_su_wa(crtc_state);
>>  }
>> =20
>> +static void intel_psr_su_area_min_lines(struct intel_crtc_state *crtc_s=
tate)
>> +{
>> +        struct intel_display *display =3D to_intel_display(crtc_state);
>> +        struct drm_rect damaged_area;
>> +
>> +        /*
>> +         * Bspec mentions 4 being minimum lines in SU for display versi=
on
>> +         * 35 and onwards.
>> +         */
>> +        if (DISPLAY_VER(display) < 35 || drm_rect_height(&crtc_state->p=
sr2_su_area) >=3D 4)
>> +                return;
>> +
>> +        damaged_area.x1 =3D crtc_state->psr2_su_area.x1;
>> +        damaged_area.y1 =3D crtc_state->psr2_su_area.y1;
>> +        damaged_area.x2 =3D crtc_state->psr2_su_area.x2;
>> +        damaged_area.y2 =3D crtc_state->psr2_su_area.y2;
>> +
>> +        damaged_area.y2 +=3D 4 - drm_rect_height(&damaged_area);
>> +        drm_rect_intersect(&damaged_area, &crtc_state->pipe_src);
>> +        damaged_area.y1 -=3D 4 - drm_rect_height(&damaged_area);
>> +        clip_area_update(&crtc_state->psr2_su_area, &damaged_area, &crt=
c_state->pipe_src);
>> +}
>> +
>>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>                                  struct intel_crtc *crtc)
>>  {
>> @@ -2912,6 +2935,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomi=
c_state *state,
>>          if (full_update)
>>                  goto skip_sel_fetch_set_loop;
>> =20
>> +        intel_psr_su_area_min_lines(crtc_state);
>> +
>>          intel_psr_apply_su_area_workarounds(crtc_state);
>> =20
>>          ret =3D drm_atomic_add_affected_planes(&state->base, &crtc->bas=
e);
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation

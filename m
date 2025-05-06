Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02588AACFAA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:38:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7C410E296;
	Tue,  6 May 2025 21:38:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmfOao/T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABBB710E296;
 Tue,  6 May 2025 21:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746567512; x=1778103512;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=f5JZSLkBO+5mCn9q9lYWmuG9ZDTHXUHtkRkILZ0WSFo=;
 b=EmfOao/TnpHie71+7g5MGjDhHEvk8l925KY5uRnvBVjfGY/6Q1WGjkoF
 wVCc4TqYaOVbJbFiMVcXbhwukkOcr9lcEVMiURhIhIwDLIkb16PrBZ2SH
 NbEsnAtg9kVTbSk+dNIwUXVHe9lrf/ltBkNyYwFvhv9n3McN7wR/LoHGT
 gFbnxt9FWkwVkDobDUW2FjF3ZEvk7XMES2xh19jBJygUHTKapxej3Vq01
 Z3WfZIlTWl8eBUHkYRg2PaMxSPswJjJyxoX0RF4dZhys3Ipnl7NT8JG/3
 F4MnwjKTJN+xNnQfiKz2bpkKy9wYLybw3caDGqUw1alfWBajEmNLW898p g==;
X-CSE-ConnectionGUID: fUPaZG3mSwm6007XekfEqA==
X-CSE-MsgGUID: 7nVMupiZR9qgT6BqlOJ69A==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="73657945"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="73657945"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:38:31 -0700
X-CSE-ConnectionGUID: iAXHRh9eRDygJCh0SAoWyQ==
X-CSE-MsgGUID: axDAatL/QjWJK5BwkKxdBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="136698844"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:38:30 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:38:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:38:29 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:38:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lsZ4oinpXcMk4s02LAfx+15gmIJsPrvW6PYSd+O4fc7UMcu0NOUEE4hOHGQ2HES8cBQvt/ZtvPV7PGZluj0v1I9/6b3tIwnyltpbG0xgYtDDTuFR+84uwhvrF8KyJdW0vJYkMsx+hPaLN3lAWESBXu/UvA6sPUHvPwtGVF9S4jdaa9+k8AIW3TtfGbGW1LfwpGTh/2BTrO+TP5DbMR3g02NHzJozxmIpProsX8u3GnlPO5CD7RR5GDvEy+6GymSueTT0VuLgmpY6E26sx3bVVJYGXfeOEBQnoIBeLs5KOOMALadTrgGNdmLAPtDdl7UhMIGozDDHVRmWm2AFB8FOlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hHyknyGUXLHg13ixUJZ5EJhuy0aJOtFpnjoLhS3cGw8=;
 b=XQcv8L4i2otpgg5BIdGrCMG2b9mBNxrr9WjVR7zOCyG10jxpPOwhO7b/ySqiu+E6Ye2Hmp6YYuYAiwaxEpM9UQzPDfJ7AXH1La5+Eg6Io4qdXTA0lbfQ7mCVgvS8BX8skYvs9IJdhh8P2LqhIQ2KauJZwmpW4bXMGahas8hHjiRvgfW1Qd5YJdJYn8ne8JUm5LEDVYLYprAWJug8/aMS8MObm9fppSk1N5a1/jF/kRcwsWZQQdJmwhxBMA4HTekHX1HASTDhK8C6I39AHhYZ7aFEtGzv2o0FEWUPNwS6jUt5DKBANoHUIcVzuYYvFwmbnrP/RQpW5A2SytCHFBfJSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 21:38:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:38:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0f8176b777fa24921458996f7d6f982f955a52f6.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
 <0f8176b777fa24921458996f7d6f982f955a52f6.1746536745.git.jani.nikula@intel.com>
Subject: Re: [PATCH 1/8] drm/i915/irq: move locking inside
 vlv_display_irq_reset()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:38:19 -0300
Message-ID: <174656749923.1401.10088897219340096707@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:303:16d::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8673:EE_
X-MS-Office365-Filtering-Correlation-Id: cab9c153-b75e-46ee-151b-08dd8ce653d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2FtWG5LMWFwZit1QWp1RjVKYVdIcER4b1lNbFFFWEFVQ1lGWTZKQW1tcnhV?=
 =?utf-8?B?Mm1GZ0o1VFZJTC90QXVDY01zdG9pU1EzT1hHaXJDUjVWeEw1b2gvUmdyY0RQ?=
 =?utf-8?B?S2RwcW5mSSsyYTVCajZETHNLK0F4aTZqS3VOLzVpNTJ4UU9qaFl2dm11NHRY?=
 =?utf-8?B?T0MyUUdRWjNwS0pDTjA4b085QzkwODhxWkgvc0JMVVVLWkxEOWFuMVhvK1hx?=
 =?utf-8?B?aGpITEdMekhWd2VULzYrdUI4d2pnQUpNRFlzaVJRNFRDNWdPT3ZaL2pTUW43?=
 =?utf-8?B?T3NlL2UrQkUwSFY5MkZzdi9JWnJCd0hDaWZJMzVnNEsxS2oxYUR1Qmlqa0Jk?=
 =?utf-8?B?UlRXcC9oeEVLaUk3SEEra1U0allsaEgyY3BWeVlielJvYWRIbnBjSEcwaXoz?=
 =?utf-8?B?M0N5LzUwcExmV01PU01FWGJRYlBuMWxXbjZQZFlJOEdmSHhjaHc0TG9mamlO?=
 =?utf-8?B?N284NUpOU3BtN1NOVDBqTjdyU283Q0k1NWRpY2cwUGhnKzBNYWFFcTMvdUtX?=
 =?utf-8?B?NSsvNTJYb1JCQXFDMnY4TlVmRFFPdjRkeit4RGVRZFpFQXg4MS9NSWxpVklG?=
 =?utf-8?B?UlNFRzNvbFV3N3JIQ1d2N05ObE1oWHR3ZXRMb0wyQ2E5RDJUaHNSOHIvTjJx?=
 =?utf-8?B?SXo1cHNGL1ZqTTBSVlN2NG5VNTBjKzhTVEp0TWJ1a1dkRXROcm0xRnZ5ZDRl?=
 =?utf-8?B?TVBHR0M3YmF0cXhKbXZtTFRzVGxNRFA4c0xBWUxyRmVhZFRSeFRkd2RBbFFp?=
 =?utf-8?B?blFELzBPbmJmNGFSTjFhdEoyZENmK0t1aTFlMGNpRUdSZE1lQitrSnpLeXpG?=
 =?utf-8?B?ZUpJZkY2dkR0K3NYdHBrTWorenVNcUpLRkxVUDM3c215ZFd3c014NFRUK0JW?=
 =?utf-8?B?UlIrdjdEbUpqeElhNkY4eXZlREUzYTRGQXV4TXl3SktUdHdLTTBoaTFyOFZS?=
 =?utf-8?B?WXpkRFZkVVZ2TTk3ZTRQV0pWZEdCcTQ1c0VSQTAxTFJIMS8vLzkwVkNUR1hR?=
 =?utf-8?B?SjJ2c1ptMnVjMEFEejJjeFlJelRORmdZeXlaQ1RLalgrVS9oT2E5QzI0UVZv?=
 =?utf-8?B?LzV2d0VNSkxWbkZHcElIVjdOa3ZHVTZ5Tm5jd0FNWUVaNnQyeFZaZTl5OUxr?=
 =?utf-8?B?ZmJvUk5pU1drUHlINWs4Qk5zaWd2MVd1UExjdU5EMFhmNjdGL0tzRmlxejB5?=
 =?utf-8?B?d2tCSGZsTVZKRkduN3JoTXUzNE9nR1RrTTVsc0hFc3JNV2pvN3h1b2Q0VURS?=
 =?utf-8?B?bC8zZEVZK2pjbnpsWGFnTWdIRmRHMTkwZUh5NmluNVoxb1B2VUR2SnBhSm9x?=
 =?utf-8?B?aDhJVjlKczJEMkNlZGwwR0t2RzZLU3dxSlJFWENna0g1dGd1OVV2NzZjTzg2?=
 =?utf-8?B?cGFxVmtiM3l6RlpVeWYrUmtqNXNkdXFHa1JjZmxNcWp1UDYrMzZ3R0NxYTFB?=
 =?utf-8?B?SG1lS0Fwcm1nTXBlakhEMXVWK2tLaVg4OVh0OUhmMkc3UG42WFpCVjJDdFMr?=
 =?utf-8?B?bUNUbU4vUjcyWlBGQlZEUy9LTTAzSGJQMFBNS2VKc1g1TGgyODJHLzlSY3Nn?=
 =?utf-8?B?ZVdsem5QTVJkMFByTmt0eStIMHF2bVVoYkpzNlFZd1pkQ1B6S3hwVHVzYWpu?=
 =?utf-8?B?SnZMajlWa3ZzQ2trSERGZlhZajNDYUgrS1FQUFRMZ25GWDFxdkJYbGExdXBt?=
 =?utf-8?B?UlR2Sk5TNWl4VHQ2STJtSkxqZjZBUTdRcmlXcXJ6MU4rS3JiRzBjV3pmQmdN?=
 =?utf-8?B?ak9rcnkyWTdhS05VSHVUTGlWTTJwelluZkZUSzFmcW5jYWJTQnJ0bFNWSmhQ?=
 =?utf-8?B?Y0J5NFd2MzVqbGlVVkQxU1hqalVJRXBWcGpZTkNXcjVydTFNcnlIRDFXcVFS?=
 =?utf-8?B?dVgxaEJDcC90V3AxZzlSMGFjakp3UG00RDZmR1lFVjE1dVlTaVU2ZlhhV2Yy?=
 =?utf-8?Q?bjXx1z5e4QE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WlB4cER2WnlSd1F5N21vQzBXbnFLbjdHVHFOSmpCK1d5bW1oTXE4YjZwZWQw?=
 =?utf-8?B?K1l5VXFROHlOOW1PYXVlR3p5aUE2aDlaT1Y0aURoanhKTkxuaVBvcXBWczdw?=
 =?utf-8?B?QnlPK1pkQllnTUxEV2QvK2NGTk8xZHZmL3UrRVdWNVFHR0JVMHJRY1lTc3Bm?=
 =?utf-8?B?KzIvdDlhc2QzaTJreUh4LzRlbjNuSnptb0VlTGIyY3RsRmJ3cmxOSjR3TDd2?=
 =?utf-8?B?SjJ6aE4xN1NOeW1vKzZ1VVFsSm9MVkp6M0UwbXJQUHF6MUdSZWxJYlZWOXRT?=
 =?utf-8?B?NVZGaUZ1RXBMY2xlTGRrVmpaOXhQeEorU1R5L3kyRjk2V3dKRUMrdWhCZm4w?=
 =?utf-8?B?c0tFNTJlOGhESUNzTDZvbllmNFpkMnVnTkZ0VDBCYWdtSEVTck5UbTdobVI4?=
 =?utf-8?B?QTZWQ3doeGNUSU5iTUtxVzVGRGJaSUdid3N6RC84SkxXSDBudVM0Vm4zNjdk?=
 =?utf-8?B?L1kvM2sxOFl5V1FLQWFVZ1krME9La09OOGFuaDVPN1RGc0lJSTJZZ1BkU2tI?=
 =?utf-8?B?cUE3OVdxeVJ5SktJeVZCWDI5YXE5RXNLNnp2L2RIcHQyUEt5U1ZEMFZQU1lP?=
 =?utf-8?B?N3l4RHNFcW1CUTRWNmtScmd5YmE5VVlVU1E1UWZqWUx3VkZLQ25McStwYXpU?=
 =?utf-8?B?TWg5eXZHd1RoWU9IeFNYclBlcjQxTVQvYXhkTHlBQ1NmUmJ2VzJjdVFiTndB?=
 =?utf-8?B?dTFYeEJYSUdKd0pGdHU0elZJTENkSDVkT0N6NllYVmtmTnYySzZLcThKT1U3?=
 =?utf-8?B?OTg0M2YzcThnRDRMMU9BSE9EMWttTWRTVkxhSloxU2ZySk1zSmFMaUIrakJV?=
 =?utf-8?B?QWxFdzUyY2lOVG8xNFdiY3ZOdWVJc042a1UvMmx2VmQ3YWpWQVo0RTBzTGho?=
 =?utf-8?B?ZHFaU3I0MWxBNktkSDVrUGo4cUlqaCtnbGFiRWozYUJlaDF1S3BkMzVsRmNI?=
 =?utf-8?B?T1VQeW9qWTlnVFdVMFNUMmJSQzZlMjFCMUJzZ3BJR0J2cmxEVjF3UWNUdFNt?=
 =?utf-8?B?UGdPNmd5Sk9wR3cyeEpTalc4Tjl4bVM1empiZ1ZzQ1Z2UEpaY0hXNzkwb3Zn?=
 =?utf-8?B?ZWMwbjBJWUtNREpMWHdMMjZwbllzNm02Umd2bG9OVDRaOW55amZCVlkvZy9F?=
 =?utf-8?B?MmFBajkra3JxYmI1cUhDTGdsOHZBaXJOa1d4NVZGQXVPTXdMZUtudERTSEhP?=
 =?utf-8?B?a3BYTVRUOWtjSGxBVkhEaWgzaTdvVnhYRUtiTlRkbXljak5IWHpteWxNdC9q?=
 =?utf-8?B?MlRGa2lwdW5UNWVVK1BpanVWUVNiV0tqblpGMFRCS00rSElZQ25FdFJRWGow?=
 =?utf-8?B?eWRWTWNybUR3bHQ1QkJnWSs2bG9GeVFMcmtNRzJSc05kaUJtcDY4NlBKZndr?=
 =?utf-8?B?Z1MyN2x3ZUJjd3ZrRlJRZ3VDdTBVMXJGakZqSmk0YW4rdlF3T1NIeG9EZVJV?=
 =?utf-8?B?c3BPNTEwSDBvNEQ1YmZpOVkxQU1kaVZQOFg2ODNseWE2b3MvSDJRT0sxeExY?=
 =?utf-8?B?T25EamNtdGNMbm5rdUJFaXVhTlkyQW5YcGhhV1VoUmVrVXlNTE93aEU0NGVK?=
 =?utf-8?B?S3VjN0dlZU5pbDB3WHZVKzNiNlV1TDNqK0VXdFBnUW4vbFpaZm9wZnRrYlJD?=
 =?utf-8?B?V25HdnYzamJZeW1wMU4wQ21SWUtyV1J3TFRLQ3luQjd5ZUZZOEpTd0dGb0tw?=
 =?utf-8?B?UE5wY09nZEZKNytWNFZjYk9NQTV4YXZDZ0h6d1NhdDBXT0V4Z2IyVmIvSFZ1?=
 =?utf-8?B?MEFJTWhrMTJoV09jRWdLbDRzdHlpVUZsNGF4NVBiNUFncmNjK1U2MmdwMU8y?=
 =?utf-8?B?aGU5WnpHTXhOc3RxMklVZFlNZlhzM0pqVVJoVjFSamFCNlZscTJpb081dHdB?=
 =?utf-8?B?S3hUMDFGUTJXMmNmUmRmZmtnc2tsZWhOL3cvVkZPMmZKMXh5OGFyN3ZmQ2VF?=
 =?utf-8?B?Y2VBRlBVc3EvTm1XM3NYaHBOSm1oMzRvaFZOMjBSRHVFVVVvTEVSMk1PdGxw?=
 =?utf-8?B?bmJMaFl5NlMzSFhBWXU3eFdOYXFQRDRNUkpQRVVTYWc3WkIyUStuZ3V2Qngw?=
 =?utf-8?B?WVRIelRlSzcrbHNhRWtwNFRWZ1UzaUdNaVRRaUxYMDIrQlcrSGFlNzhBYjlY?=
 =?utf-8?B?dDZMYm5SN2QycDRIcmhjSlJQMnd3bGxwelR2ZjQyckRRRFZtWmdwL2dETGNz?=
 =?utf-8?B?aFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cab9c153-b75e-46ee-151b-08dd8ce653d7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:38:23.4671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g8LB7XLriYxRqxROSQRKh+lw/Dt5O7Su48NIRLeBHQ4xkMfAvPN7hVSJTNQTsz/3OldyILiKXTnbSKql6KFz0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8673
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

Quoting Jani Nikula (2025-05-06 10:06:43-03:00)
>All users of vlv_display_irq_reset() have a lock/unlock pair. Move the
>locking inside the function.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_irq.c | 4 ++++
> drivers/gpu/drm/i915/i915_irq.c                  | 4 ----
> 2 files changed, 4 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 73b6254c5485..22bb0fc10736 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -1884,8 +1884,12 @@ static void _vlv_display_irq_reset(struct intel_dis=
play *display)
>=20
> void vlv_display_irq_reset(struct intel_display *display)
> {
>+        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>+
>+        spin_lock_irq(&dev_priv->irq_lock);
>         if (display->irq.vlv_display_irqs_enabled)
>                 _vlv_display_irq_reset(display);
>+        spin_unlock_irq(&dev_priv->irq_lock);
> }
>=20
> void i9xx_display_irq_reset(struct intel_display *display)
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index d06694d6531e..b918b440cbce 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -688,9 +688,7 @@ static void valleyview_irq_reset(struct drm_i915_priva=
te *dev_priv)
>=20
>         gen5_gt_irq_reset(to_gt(dev_priv));
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>         vlv_display_irq_reset(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
> }
>=20
> static void gen8_irq_reset(struct drm_i915_private *dev_priv)
>@@ -752,9 +750,7 @@ static void cherryview_irq_reset(struct drm_i915_priva=
te *dev_priv)
>=20
>         gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>         vlv_display_irq_reset(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
> }
>=20
> static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
>--=20
>2.39.5
>

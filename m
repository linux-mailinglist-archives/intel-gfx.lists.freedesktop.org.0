Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE64CD1FA52
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 16:12:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 754F710E599;
	Wed, 14 Jan 2026 15:12:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0wRkInG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62CF010E611;
 Wed, 14 Jan 2026 15:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768403576; x=1799939576;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=00dPAy3REBAyQ0bGX+Q1UdPmwO7K3qyEX/u38HuODDw=;
 b=X0wRkInGFcRJvkRY8lk609EkX7/KELgl8z2vLseZH8OOCaEIkNXz4Xk4
 F8/uj3NZCWn2/8oe0ld/0lxDyPYoRywFHFhqnyy31p3B/bOSvLz//Ri38
 BrcODd0reWOtyw2pL0qcLgE0kkF38PfOO5gsXjWbQqEwiYcfBoXE4GCan
 8MDpGzr217il1t5ZqLIfBcgLZlde1q/P4/NOCNvEIFjz4/e53kqnzIy+K
 yVjx2x2ndgHrnzSGAFJWiKI5jM8M2HHq5MWb+qRBlhus1jKFBoin3A0FW
 bGotLeeOYKEuqPgJnujkFHIis0cstwiy7wPYnj3MbQBssByZHHphoUpFx g==;
X-CSE-ConnectionGUID: ebq6LigITsORB93hKPW27w==
X-CSE-MsgGUID: LqDnO3X3R6aZzSqosqMrEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="69439167"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="69439167"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 07:12:55 -0800
X-CSE-ConnectionGUID: kH+WAzRSRruL/Msfl/1rWA==
X-CSE-MsgGUID: TYKkQainSGO1tLrxjuEaAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204978115"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 07:12:55 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 07:12:55 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 07:12:55 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.15) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 07:12:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XBKijvk5ZGbly9bjlnb4fhQDKoWfAYpgxoygKlpnWiH1hQ+JoiVshx/nNDQzLYFnAEdW/e+xc8H9M5hZ1jZiZinANUQIQi+5ThJndOGNs3VOTJsYnmC7hhEEaX/NrSFi3ylqDtnYai3bPPMKtlt7a01TQvkgqxn2ATlcE63ryERIMOVPh6obnvnaM9wX/o7+iPLd0MCds2+QjU9jHTsWg96MAs98cyklHW46wch5fhH2MNHIkiSmoUeF5WC9uT9EhOFuyiuR4LDp2+GcbiytmaVE3DLCP0dL0DRoaVJF0YlDWHMujbIG3jv7AGLoXQnOSjcnNXCqDp3aML5pBnMPqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRjgYKCYOMqk19jw7nZ3WU3Y9rK2WiH8/d7L28pQiPI=;
 b=JLECvtOfo7WF/LGjA5NbgtpJ0tYLDvD7UuyxanxMXiBK9k+F00a32TC2tolR6APqpY3GMsKp5UPRlzoAZNwozhx50s5Qy9xohjhAejkdc0mchk3NpcN6YP1wU1EjPjDh24uy76RKXjZz4UQTxun5ocKVRC7y2cm51X/OUxuEQS+5YQhamaFbeZ52ME/c8NpRMTA7GpBahiSCV0W8AFoFCp0YVSacfn8BAiSvYeVTsOTeOrYL31Z0sCrI4YS/wWxzc4/kKsVOquwwTPbAwNA2kV+P9UcH0mNZWHh96hOQL7vqcnkd5icuEw7hT75fkx0ZOZlNGuzDw2HPpzURpwP4AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS4PPFEDAA4523C.namprd11.prod.outlook.com (2603:10b6:f:fc02::5f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 15:12:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 15:12:51 +0000
Date: Wed, 14 Jan 2026 17:12:46 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, Mika Kahola <mika.kahola@intel.com>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [PATCH v2 1/3] drm/i915/cx0: Split PLL enabling/disabling in two
 parts
Message-ID: <aWeybp1JaC99Rf8L@ideak-desk>
References: <20260114034259.466605-1-suraj.kandpal@intel.com>
 <20260114034259.466605-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260114034259.466605-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO6P123CA0046.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:310::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS4PPFEDAA4523C:EE_
X-MS-Office365-Filtering-Correlation-Id: dbbf5ba5-4a10-4e65-0cce-08de537f62b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b3dMQ2F1S21vczNGNlE0TTh6Q0FpM2d6TFB4aElaOXdkMW1mQ1llQ0EzSjhq?=
 =?utf-8?B?UXBLdjUrMTZRNGJHU0pJUUR5Uys2Z1ZEY0RaYm9mYUVBckJtN2VNcjZMaTJV?=
 =?utf-8?B?WFRyVHEvRFVsT2pOVVRDTVdDYzRvSG9UTEsvNWhnSlJvWjdJZ1U1blJFUSsr?=
 =?utf-8?B?S0gwN3dVajFwTGp0U3VzbXFDN1pxSlN5WkE0V3lRQTA2STRJckZrS3lEVWM3?=
 =?utf-8?B?VVRLS0dJL3ptT09MZXY4QkJWMWZRekwveEpyMnZ6NDVWMHk4dWZTYUVyZGlQ?=
 =?utf-8?B?VHJrQXYrclpnODBWcXFNWFVyd2dYV29XbWNLU2VRTzh5YUpFZ3NoUWlQTll2?=
 =?utf-8?B?QXBkcTFONmVCaElrNzlnQTlzUjhhUmVjUjk1cFJVTVVsUUtuMGZzN3RMQ2Va?=
 =?utf-8?B?T3hiWTNkT1N1UFMvdE5NckkyQkJncWR3RnMzRExzZUZISjNrSDF2K0YvNHAx?=
 =?utf-8?B?NDdaMnVNWjk5WmNvcjZQN1o1M3RUOE5mK2VYS3Mvbk45UHF3T0tZY1ExWHE4?=
 =?utf-8?B?d3UwVTFYL21uL3BNL0xzOTVyQlRYcDdQRVk3dldpc3lkempkQWNwOG9Namdh?=
 =?utf-8?B?TGdsRUZyMUptZEVUNEhGb3NYMWJXWWVsRlB6RzU2aTlQTUNBUnR6eDlRZ0k2?=
 =?utf-8?B?RWpFN1hKR1cyWmNqdXh6KzNjSlFJUlNuTmpLRWRDcDUzd2dIa3RYT0MvSE5r?=
 =?utf-8?B?cEF1dGlMS1R6Y3VoL29PZHBiMDE2OTZQQVRrOVRQQ0hzU0NMRWpXTHNNM284?=
 =?utf-8?B?TVBUMlM0YXczSnpxcVdnbitOSlJaTVZuSWhQYnA2dWhDQW1SRXpIRWpTZjZL?=
 =?utf-8?B?ejJCSTRJQ01oRGJTNU5ETFlBL0tUUlc0SnM3QjgzTnc4b1JISXhqREVyaFdo?=
 =?utf-8?B?cFg0TkVmVUxkVjZKUGFWRXUxMit3Mkx4aVN0dzJhMFJ5dlFHeUEzYzFBcWlG?=
 =?utf-8?B?ZnZlVmtVbWdqUjBlR3BIY0dFdDJYQmZ0TUFXN3U0UjFNN3pjT2dzMkFDVmx2?=
 =?utf-8?B?QXNEY2VsMkx6cVR3azB5WEV6bzJFN004QURyaDRNMXBiWDhxdzdGUzNyVnd6?=
 =?utf-8?B?dVJjWmk1Q2xoaGtFd0p6dUpuUW1kNHpuRko1VlZyT1ExUElNdmZvYmkrbE52?=
 =?utf-8?B?d1VRYjh4ais1UWpGVk1Wa3ZYc1RzZEs4NU1EYWR1Ukcxb1ZnYnFCdU9WL3ov?=
 =?utf-8?B?MDRTSUxNd3JtSGlnL0RKNDJTekd4eE5lSmlxalF6NlNweDFUYVBBbEYyZDgr?=
 =?utf-8?B?ZDU0NkJhdkRXTS9nK2ZqMU5GU2w5VlNubEpiYk9wc3JiUjNjOUhWT0RpSlFE?=
 =?utf-8?B?T3FmejNlbGdBQ3Z3UjRHbUk3K1BONjJnZEVSY1ZMWG1wazlEZkxSZXVOMW5L?=
 =?utf-8?B?RUczdXpEZUV4MDhDU0QrRUlsUjllZG1EZHlPSGppRUgvbFllVHBzL2t4eFFN?=
 =?utf-8?B?YkFiN0kveGlFSENkajhMTGo0eU0ra2RFU1RpM1IyRDhNc2VsN0l0a3Z4WlNk?=
 =?utf-8?B?U0Fha3hzTVF3eWhhYVJ6cnA0Y2hwdU1CQkFLRytPN0wxUHYvcGFxbS9OVm50?=
 =?utf-8?B?Q2VHYnluQUt5QUdiMVIreXFFeFdkQ1YzcWc3RUxnMzd0bkh1Ny85c0E2ZEg2?=
 =?utf-8?B?RkdBbkVZSGpCelR2dTdKWWlvQ1IxckZhamZaYkhuM3hMMFF3bFRoSXpRYUUr?=
 =?utf-8?B?S25RV3NyRnNVS3VkWXFGRWlSOC9GeTR4QW9oZisvUm5tdEdSL1RtYWdCc3FC?=
 =?utf-8?B?SnNDdDN6YzYzdSszVEtCWkN3VlJZYm5GZGQrRXRDeC9adTh3RmFzL3ZLOWZs?=
 =?utf-8?B?cDg5ODRpQStaQ0NhTS9jZnhxRE84Qis2c1ByVjNHcnpKaDdkUTJ3dzZJZHc2?=
 =?utf-8?B?K3dzUys0ZndTb0JHcy9HQi9nUkREdVk3dXB5RmhPcGt3d2xQRHdNZ0NvVzVv?=
 =?utf-8?B?cHhDT3h6cXdiWisyQWJhdnM4cG41L3JWN0NzSXlXZ1JmajZ2RWxuazhwTG40?=
 =?utf-8?B?dTJPRDNtMmc0OTZhekowdlVUUlArdGxDcG5TcDBCK1kyLytRTHZxbWJpdGh2?=
 =?utf-8?B?d0IzWnhTM1FocWFSMmJvc3JOOGlSOWR2QlRQWjBMbEdoWWt2TTFTZkM4dWV1?=
 =?utf-8?Q?gPWU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3ZOZnJlWjhFTHBtektBbDROMVExUWtlVC9XUkMzd1VramdaN2dtMHJOL0Zz?=
 =?utf-8?B?OFRIOS96dE5zQXVocjYvQjVEZkppek80bFZiVDM5SWx3R2dVbVdkUDJobnc5?=
 =?utf-8?B?aTFjSExURmNRT3ZNaGRiM2NkVjg3c0RsQndGUkZyS0Y2UUlGZUJCS2w2Q0NW?=
 =?utf-8?B?cStNZmpYWEkraEd3ejZmOEcvS1pnNjRocGJGbDgvbWZKNG1yRUVYUlpBdHBN?=
 =?utf-8?B?azh2cXFLZ2VLbVVFWEFnaStpRzRwSG02WEtTSTJmd3RRV1k5UHYwRDBIVEJI?=
 =?utf-8?B?YW9kQUZmbzJyMnRTWWxESXpwOFJYM2w5N0htUnBkaGVBTFB6WXA5U0lZVWVa?=
 =?utf-8?B?ZVA2N3dCVjhmLzBlTmtOTHYyRUtKYnlCdnA0Y29lVk5QT2NmN2lFWm5ldEhs?=
 =?utf-8?B?ZEZVNzgxb0pWdEs0WXE1RkZZVWp3Vm9JdjBwWEN1TktWbzJLWkRib1BUNzVW?=
 =?utf-8?B?NmVOblBaTzkydHN3clZqRkRneDBtN2ExWEdOd0FFVFQ5bng4cXJxeXhhQnU2?=
 =?utf-8?B?dG00aVNpOVZqUi9Kb2RHdEpZbnIwSlBTN1AzVDR4VFZqc2lPV29IWW1UOW0y?=
 =?utf-8?B?OVc0YWNPU01hRXU4TmM0Y0hRdFVWRGtLbDgvL1lhMWJ4TzZCNlJIUUV4TmRm?=
 =?utf-8?B?Nmp4OW0wSWxxc24xc01ZaVVUblA3R3FjU1BvUVB1QnNpNUFVelpKakdsZnly?=
 =?utf-8?B?K09zQ0lwVVdqMFMrOXFUMmdtK1dBbmJBWWFvYVU2YjVId1NwZitRdEJrQyt0?=
 =?utf-8?B?aTc3aFJ0c1luNFE1U3J2YjhMVFM0bkhOK05Ib1dJcG9oTE9MQkdQeWg4TUF2?=
 =?utf-8?B?Q3hIc2lsSzUxYTBOdHZOUjRBVG15cDRhYTl0QmdLYXZUeUJvZDd5Mm5WaDJP?=
 =?utf-8?B?MlJxcmlHcFJHMUI0aVlnNXhISEZLL1VjWEpuUkVvQzl3V3RoWUJEZnFxY1Mv?=
 =?utf-8?B?N0VncXNBeTFFVnE2b3hQbHpxR2lVVW1Ed3VZY0RJZm5NRDdML1VWOFNXbnNj?=
 =?utf-8?B?WU9UOGRpei9FYUNVcm5tcUdOY1dwUDhRa2Z1SXhEU20zTDZwd1ZHbm1INFJ1?=
 =?utf-8?B?aWpINlV3RkdFaUdRQU9PK3VQYWFKUVBZQldaY0t5T21oNGVuZWtuRVg2UUkv?=
 =?utf-8?B?U3crcTVtZmVWWExFU2t0dGNqNnpBTVpaYkNtSERFV28vQ3hzQkRaZ1dESEVT?=
 =?utf-8?B?clo0VDgrT3dHNlNRYVBLT3Yzd1VDL0YwYktqbmdPZ09mU3BSMWZFSVN5SEpj?=
 =?utf-8?B?R2kzbFcxY1JYdENueWhaZUxYY2tQSXdwL0pqWnJXWDIrbE5GZ0Z5c1lLdW4y?=
 =?utf-8?B?WUV3V0k4R0wvS3NqSGNiZm9xRWE3V2VvK2owZkFISXFZRXVWUE9rZld6RXhq?=
 =?utf-8?B?cG9xUDJVcVl6cWdKcXN2SmJydkxEUUNOcENVNm9sTGhKRCt6UHRlbDFjZ1d1?=
 =?utf-8?B?WDVWRllVWURBRDhvd09PdVBKWUtlOTY3b2FtSmxISWx3cGtVZExiT1lYVC9U?=
 =?utf-8?B?MzdGNjBTcXJDZjlSeXFBUE1uMlBjTjRUSlpLaS9YWHVVZ0VYUTl0MjNwbTZ4?=
 =?utf-8?B?cTYvemVVSVRmbDBUQ1kvYzNaUTZ2dHpDem9lWlBjNVdzMzdUYTFSQ2xWd1Jo?=
 =?utf-8?B?ZTNnaVRnZkpZTFUzSW41ZWE2aHFZS0ZFMEg4OC82Wnk4U3pma3hKTnZGQlVQ?=
 =?utf-8?B?SjFNV0VEbE5YT0xIZHJpV0YrNTZaeGEzeU1IZTVhbnd5Y08weDlPbTNoWjJM?=
 =?utf-8?B?K0NlT0djMnhxZFcvakRQaXNEOUFTSVQzdmpsK0RTM1dSckxrdkVKL3dMbXFF?=
 =?utf-8?B?aERONWF4eTdPNlJuSTRLMDFEQkF0OHAxQU1BRlJCa2s1RndVVFdzT3ZCQkZi?=
 =?utf-8?B?MXhBS0lvUmhYNEtsQWdOS00rTWF3UHJkWmpERmw5ZUdIdWpQQXoybGQxbm5G?=
 =?utf-8?B?b01qbVR1bTJ2TUR0YkVEV3FyTU5wZEVQa1ZNdzNucjJycS95aWxZaFZLSXdt?=
 =?utf-8?B?aUdqdnZCRGYyV0RLd0IvOGVuZ0ZUZzFkaFZEcHQyamRNWThuaGp6ZDRzekdw?=
 =?utf-8?B?MkFhWHhySy9Wd3UvcmpGSkFRbjlNY0NFRkJCbnJCcHBIRHQ2N1RHaWZlbTh0?=
 =?utf-8?B?TkVMOWRGVmtFVlFTQkREZ043TjZ2bDhrQzZ0Y0JkN0N2OXEvMU0wU3VyTE5D?=
 =?utf-8?B?eHJVblBYMitYQ1duNjgzTzU3b3ZXdVMzcm93eHhHUkZqQXEzbVYvRk5UYUJj?=
 =?utf-8?B?cG5FSHFoWklKTlFBUE5maWhPdmQyUlVVMm1Ga05zcU1BeXF5dzYzSXN0TUtX?=
 =?utf-8?B?RUxwczI0eE5zT2lLaEN3bHJNbzkvOERZaGNxbW1vK1BxTjFBUGpIenR5azZO?=
 =?utf-8?Q?tFd2RibAuwH3NczwYxRJ7Qn01Yb6CRxU+qZbFWepp6uuz?=
X-MS-Exchange-AntiSpam-MessageData-1: SwcVYFM63JxJmQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: dbbf5ba5-4a10-4e65-0cce-08de537f62b7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 15:12:51.7668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FwzwKUxz7znW0UCaOzqvBDS56mmTd3+DHCH5tpOiHW4Nvog6CthMip+M2ysEq4anMij4fsO4r3iMA+OwqBTIhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFEDAA4523C
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 14, 2026 at 09:12:57AM +0530, Suraj Kandpal wrote:
> From: Mika Kahola <mika.kahola@intel.com>
> 
> Split PLL enabling/disabling in two parts - one for pll setting
> pll dividers and second one to enable/disable pll clock. PLL
> clock enabling/disbling happens via encoder->enable_clock/disable_clock
> function hook.

This is missing the rationale for the change. As I understand it
appeares to fix a PLL enabling/disabling timeout, if so that should be
described here in the commit log and also explain how the change fixes
the timeout, IOW wrt. what are the enabling/disabling steps gets
reordered?

Also, what about CMTG? It may require an output/DDI's PLL for another
ouput/DDI even if the former output/DDI is disabled.

Also, there is an ordering issue in the change, see below.

> PLL state verification happens now earlier than the clock is enabled
> which causes a drm warn to be thrown. Silence this warning by
> allowing this check for only earlier platforms than MeteorLake.
> 
> While at it also add the necessary argument to cx0_enable_clock
> so that we can move step 12 of the enable sequence.
> 
> v2:
> - Move state verification to enable_clock() function for
> MTL+ platforms
> - Squash patch 1 & 2 (Gustavo)
> - Use correct Bspec references (Gustavo)
> - Fix build error (Michal)
> 
> Bspec: 65448, 68849
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 120 +++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   7 +-
>  2 files changed, 80 insertions(+), 47 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 7288065d2461..3418a3ed28fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3225,11 +3225,8 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  {
>  	int port_clock = pll_state->use_c10 ? pll_state->c10.clock : pll_state->c20.clock;
>  	struct intel_display *display = to_intel_display(encoder);
> -	enum phy phy = intel_encoder_to_phy(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool lane_reversal = dig_port->lane_reversal;
> -	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
> -					  INTEL_CX0_LANE0;
>  	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	/*
> @@ -3284,42 +3281,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	 */
>  	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
>  
> -	/*
> -	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
> -	 * LN<Lane for maxPCLK> to "1" to enable PLL.
> -	 */
> -	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> -		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
> -		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
> -
> -	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> -	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> -			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
> -			     intel_cx0_get_pclk_pll_ack(maxpclk_lane),
> -			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
> -		drm_warn(display->drm, "Port %c PLL not locked\n",
> -			 phy_name(phy));
> -
> -	/*
> -	 * 11. Follow the Display Voltage Frequency Switching Sequence After
> -	 * Frequency Change. We handle this step in bxt_set_cdclk().
> -	 */
> -
> -	/*
> -	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
> -	 *
> -	 * Wa_13013502646:
> -	 * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
> -	 * Workaround: Toggle powerdown value by setting first to P0 and then to P2, for both
> -	 * PHY lanes.
> -	 */
> -	if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
> -		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> -						    XELPDP_P0_STATE_ACTIVE);
> -		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> -						    XELPDP_P2_STATE_READY);
> -	}
> -
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> @@ -3403,6 +3364,56 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
>  	}
>  }
>  
> +static void intel_cx0pll_enable_clock(struct intel_encoder *encoder,
> +				      const struct intel_cx0pll_state *pll_state)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->lane_reversal;
> +	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
> +					  INTEL_CX0_LANE0;
> +	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
> +
> +	/*
> +	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
> +	 * LN<Lane for maxPCLK> to "1" to enable PLL.
> +	 */
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
> +		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
> +
> +	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> +	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
> +			     intel_cx0_get_pclk_pll_ack(maxpclk_lane),
> +			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
> +		drm_warn(display->drm, "Port %c PLL not locked\n",
> +			 phy_name(phy));
> +
> +	/*
> +	 * 11. Follow the Display Voltage Frequency Switching Sequence After
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
> +	 *
> +	 * Wa_13013502646:
> +	 * Fixes: HDMI lane to lane skew violations on C10 display PHYs.
> +	 * Workaround: Toggle powerdown value by setting first to P0 and then to P2, for both
> +	 * PHY lanes.
> +	 */
> +	if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
> +		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> +						    XELPDP_P0_STATE_ACTIVE);
> +		intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> +						    XELPDP_P2_STATE_READY);
> +	}
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
> +}
> +
>  void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int port_clock)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> @@ -3468,10 +3479,16 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
>  void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_dpll *pll = crtc_state->intel_dpll;
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
> +	else
> +		intel_cx0pll_enable_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
> +
> +	assert_dpll_enabled(display, pll);
>  }
>  
>  /*
> @@ -3567,12 +3584,6 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	 * Frequency Change. We handle this step in bxt_set_cdclk().
>  	 */
>  
> -	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> -	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> -		     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
> -	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> -		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> -
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> @@ -3586,6 +3597,20 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
>  			     intel_cx0_get_pclk_pll_request(lane);
>  }
>  
> +static void intel_cx0pll_disable_clock(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
> +
> +	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +		     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);

During a modeset disable sequence encoder::disable_clock() is called
first and only afterwards intel_dpll_funcs::disable() is called. So the
above will incorrectly reorder the clearing of the clock-select and
forward-clock-ungate flags wrt. the rest of the steps
intel_cx0pll_disable(), i.e. not matching now bspec at all.

> +}
> +
>  void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> @@ -3635,6 +3660,9 @@ void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
>  
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_disable_clock(encoder);
> +	else
> +		intel_cx0pll_disable_clock(encoder);
> +
>  }
>  
>  enum icl_port_dpll_id
> @@ -3783,6 +3811,8 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
>  			    encoder->base.base.id, encoder->base.name);
>  
>  		intel_cx0pll_enable(encoder, &pll_state);
> +		intel_cx0pll_enable_clock(encoder, &pll_state);
>  		intel_cx0pll_disable(encoder);
> +		intel_cx0pll_disable_clock(encoder);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 9aa84a430f09..040c97d81302 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -298,7 +298,8 @@ void intel_dpll_enable(const struct intel_crtc_state *crtc_state)
>  
>  	if (old_mask) {
>  		drm_WARN_ON(display->drm, !pll->on);
> -		assert_dpll_enabled(display, pll);
> +		if (DISPLAY_VER(display) < 14)
> +			assert_dpll_enabled(display, pll);
>  		goto out;
>  	}
>  	drm_WARN_ON(display->drm, pll->on);
> @@ -342,7 +343,9 @@ void intel_dpll_disable(const struct intel_crtc_state *crtc_state)
>  		    pll->info->name, pll->active_mask, pll->on,
>  		    crtc->base.base.id, crtc->base.name);
>  
> -	assert_dpll_enabled(display, pll);
> +	if (DISPLAY_VER(display) < 14)
> +		assert_dpll_enabled(display, pll);
> +
>  	drm_WARN_ON(display->drm, !pll->on);
>  
>  	pll->active_mask &= ~pipe_mask;
> -- 
> 2.34.1
> 

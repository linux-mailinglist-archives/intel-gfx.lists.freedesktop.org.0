Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YK9MMGihsmkOOQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 12:20:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5DC270C5D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 12:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892F910E1C5;
	Thu, 12 Mar 2026 11:20:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eC0Cy56d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9CFC10E1C5;
 Thu, 12 Mar 2026 11:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773314404; x=1804850404;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H1DYKHndzRyTXA3EjCzaJZmIVj8A3utvcjMfT4Aow04=;
 b=eC0Cy56d9IIELypYcKtPimyJFA/xLKTjVIBTMv13YmbZcEjQgFUca9N8
 USNNObUpRRZ3hbIBpupwHskW1/juaXeBgolV7LtTJYr87fgmUOerbVSJD
 udyp4IwMV46uJrc9Fg3p1xRPxJ0tcGvyZWI9eNVTgoaiW48bGYhD4ZFdV
 Al67XQE+yHrsEQZqnD2Wap3sFDRPH9+rVE1Cyk+oQXqmhJaaR3NBlp/Fy
 W8I6Td/VyCOBL7o5+M1NWB3Ukt7EG+EdvtVgZSGZ5Ymx3hhwCPNiZFCs5
 Ap9V5FQkHA/5rsft8HOyNVyXJwqHQkMxO95P+CGMSDLWYVAozG5A+os4l w==;
X-CSE-ConnectionGUID: pMkssj/OR56nPgGVxpVvnw==
X-CSE-MsgGUID: Nj507DIYRr2t/VBmrR317w==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85757245"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="85757245"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 04:20:03 -0700
X-CSE-ConnectionGUID: s77k4P71RFWk/Dr+QW6gbQ==
X-CSE-MsgGUID: jIteytEnS0SXYO5Gp8g+NA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 04:20:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 04:20:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 04:20:02 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 04:20:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IZcaQlCIBjG6T4G4BbINGh+561NFDfmBdZ27AW4d6jLEbNOtPwV17aUqKztBGoij9ol/3sH0BjFobI5Qcak+2x7s6T8DlcxMz0XsDjvqWeIa+80sIXfXRI/MtUXHNY95O/13NsGXw03qSuF9PhZye2I8GHlfmBIwggFsYeFhsBYpXjZe35nkqAFhs8PcpPp2tarysf1QIoT8fIkkYSBZdbKvWXYkNXPJ9bhA6FUx3vkRDdZY6ofJczsVZfOfjMVDRCm15nwM3PCqJ2QglWkVuh/khKkf0wCq753+4mFAShZVPZd571LOL4USGgECmw32pQ+KIzZ/7QoH46ECOXmBBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+KSnn+wyI0qFsXVITxQBb2dvVd3V+KZjKHRh3T1r5fA=;
 b=Rn6FedLypqzGD+FXXnSmTdoH9m30bhY/G0NF7LV8ox5fCUz7TCb369+NWdMkGOaO2kL+BE2LQD9HbHLA4k2Hm+yoxn8nwdIqzpbzq7flW0Psmkn8KpcA37hqSogLq3AGnh21wszYevXfwEteitZZPMMbDEWfFZNHTeoz4EwFnvLMR3tQFnlC/yQT9zKmJgI8qY0CUxJ+F0dYs2ShqTk+GIQwerpQKm83BQ21ZFHtSoWfLSauTeQbZ2fSopHahGWPITzkCAEcrK57fyIVfig3FDoLio/VsGRP1r5LHhW00J9lH7nQelRm1YqykQ91OYL3O2BzEft1N+bMq0rbyoRPvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPFAB693A2AC.namprd11.prod.outlook.com (2603:10b6:f:fc00::f43) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 11:19:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Thu, 12 Mar 2026
 11:19:51 +0000
Message-ID: <164a153d-a688-4ff2-a1b7-0ae2d04a228b@intel.com>
Date: Thu, 12 Mar 2026 16:49:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915/display: Common wrapper for casf and pfit
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20251223081300.1196417-1-nemesa.garg@intel.com>
 <20251223081300.1196417-4-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223081300.1196417-4-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0176.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPFAB693A2AC:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c939c87-5fb3-4411-ba87-08de80294678
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ogHqD/ldBjKVNnNdyXzjbuRd49/YhZSbQZQ6tSXyedEOayLmg2XdcFm2pNI2DDttRnaeH17fdHN8j/8M8d0a/BxNQhm7yImJISKuJRZYJE6m6+YR8auj62E+EvVY/CNtBU9vuo1rG2Fpsie0WKejEszg2+kvS/3eQCZUpNWKYIwkjcBvHM+U8cBIYinx5ofBaS9ZiTdVOs9MSms724J07FDYL5sZvBlegsK7QStIIIh+P0r0uXaz1dDMIvJcjTN9PcgUVAzl0G0IUy9whUkCYv1HdNF1cnCCANVO+5TmcQbPB4I8z/ikr7SpaQWd6Bn0wMmXDBuuWuahScWjUjtXnrn1LsanHjjfl+7ePW/K8XLiaS2VTF7UoTT5+mLv1a/yo+l/zmSXvn9efuLlVZzcISuIildmBK9QKPOvbUWCIRb98IgrGAu5txWYXlMgQi0KSfIi9ovlKxSdUnHxdFsaDeD7c3THXuZeHeXGzkFAgDJglezTB2Gz/DSvHqGHzRKtws8fcgnXPAjk4dM4eQCBeir1yYQ4RpQQF7e6vztH2DYS7vgj4jB9PBrxLnefoACZfDb2xGeDG7qG2YjEEA1W2laD77up1r5KzrqRSzWfj6K45uemVpOoKsBy/WA1umlbei+Gqut9BNnmb9H7fQkxaLbD+kQ+rES0S9PcFgj43Y8br8Z9JNkzspQNsoShz0tU4WDGkPwwYtFLpVp+f33LW/SY+fr9lH9Pe0YQYi0hiI8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2FKUGc5Y040UjRORVlGY2RFYk90WWZvMHNsSkYwYWRrUXRMSmozTFYxUU10?=
 =?utf-8?B?a2FIeVpGdHQwcHFYajVtY2dVZ2NHUzNlMG4zSStpa0NVOTg4dmNDdUN6dmJ2?=
 =?utf-8?B?WUJhTGpCMFJyWVlwQ3VTWUYwSTkxb1RVdmRHQVJya2JIMXVwRXNzVmVxbmZF?=
 =?utf-8?B?eXQyRDAvQmtiTy9DTmsxd0dvTzJUazJ3Y3NzcjRYV3NENllYeS9pMHhsY0tL?=
 =?utf-8?B?cGZyZmU5NHZuZGc4ZjMxN3BGWEZZS0pMZ0lMVlhIWXZKL0k0TisvS1orQnY2?=
 =?utf-8?B?TUJpVk1RcUllcThuS3hpdG5yQUlaL1dwRnhqTXJ6azFmMTZTRWJWbzgwNW80?=
 =?utf-8?B?R3ZmWHZFbWpzVGxnWklvZXkzVW5LelFMYUk4U3F2dWdVQUx4SURTRDBuQVpO?=
 =?utf-8?B?SlZmcDB2N3BDWStUaGUvT2wyOEVLaVdQRk9TK0NrdGNFOGY2a2xJY0h1YmlT?=
 =?utf-8?B?Nkg1WmVZMTFnV3NjU2hlREpmcjllOEpsK2xVdVVHcHZUd2dNcGhXeTZ5bWJE?=
 =?utf-8?B?a3Z6NHh6VUlZTFhXMTRIL1R5V0RzbU4wNXRLbGNrb2oxVkZzWFhCNmF6cXAw?=
 =?utf-8?B?dlJRbjdYUDBIOUlBa29KRENKbXpJa0dsMUVVWm1jR0RIenVIMWZQOW5kV1dM?=
 =?utf-8?B?eHBPQlcvVnQyVERNZ3hNZGEvZldQZU5zZTYvSkpUNjZ5bWUrN1pwcmxQalJq?=
 =?utf-8?B?cUlPblQyMk9uVDkvZkJzWDlwQ2tRSXdzZk1DUkJxamFCQ1hJNEx3M2hNNUJo?=
 =?utf-8?B?Tll0VEhkRE1sOG9UNjg5bExrNFFlcTBNSXhBSGh0Uk40T1ZnT0FzQ2wzUHRI?=
 =?utf-8?B?SHRRV2FKWEh2bFc3eVVMVUMvQXBWRjhIRjdHcnNHQ0ozT29YbkF3RnNpQXd5?=
 =?utf-8?B?VXJJY2IrZnhGQ05zWFRWa1FOdzZCc1V3QUkwZlkrZWRJY1VkZ1ZqTWNyY1BJ?=
 =?utf-8?B?ZjQ0SU9YK1FkcS83VHdwTWNIaWt5enhDK0JZdGpDUkZnek5yYkZxdnZOTDJQ?=
 =?utf-8?B?bVJHcUtNMW9YaEtGZmtBMFdnbm5GMU11dTIwZlJWRUpUVnVwS2V0WlBzd0Rp?=
 =?utf-8?B?VzU0ZmdRdFNxbWE3SGw4cytMQldTelRjN2w0dkVjRlhEdUdpVVRDaGVWcVlO?=
 =?utf-8?B?RkJnNHQyOTBYR3Q1a3FRRVA2cWJQV0hBVXRTQlIrMUJ4dUVhajRtUXFsN3dI?=
 =?utf-8?B?d1oyWG1odTNiUjNhUzB4OW1sTjRNN0VldkVWeGo4ZnNYdGJUK1R6YUprN0FK?=
 =?utf-8?B?N2VJZlZJR2plVVpHMDVIblp6d3NGNzJxcU5CR1Z2dHlXczJRa0lEYVJHYU1G?=
 =?utf-8?B?dGNNbWdhSEozZXJidW9sNUkvdVZCQ2ZWNHNRYXVKVnVYWHp2TC8yK0oxUnZi?=
 =?utf-8?B?M09xTnU4OUJOUUErSmcvM0JGaUFSK3J1UzFBOUhLUGl0WnhRQ1FCZ05oblBk?=
 =?utf-8?B?SVlNdUVEQlV1STIrcmxjS0hFYWFFbDdUSkoyekxldmNIZjZmNVl3OEg4a1Bh?=
 =?utf-8?B?YU5XanF0N3hIL3J5SVBsd1dKL0dzT0JURlBQUzZKR2w3cUxhYmc4cjVkajNl?=
 =?utf-8?B?dVVaSzNmU2tvSGw1SlBLTGZmaHJmVnMyQksvaHlFVmFYdk4rM0pHb0VtUVRt?=
 =?utf-8?B?ZS9FV1NBS0x4LzJCVGZQbUxScUhLSFZub3F2UFdhd3pDckdrYUU1d0ttQW4x?=
 =?utf-8?B?Q010aFRWbzhEeUJjUzlTck93Wm9SOFVRbFQzOXlBVWNudHl2c1g5dzRqTjJM?=
 =?utf-8?B?THV2cGJlNnBmWERoZkZaa1N3eVUxQjVHenQyRk1BN2FTTWNZK0ZnWXVlU3kx?=
 =?utf-8?B?OGVrSlBSa0JiNmFvcHBjd1E5MnBHRmVFajJRcXYvZEc5a3lYTTk3LzgwWHVH?=
 =?utf-8?B?WGd1azd0YkJVbWZrTmF5OFp6VzdWYmFtblM4Ylg4OUFINXR4VVVjcXNlbjJm?=
 =?utf-8?B?Tmk0MDdVemNDR0V6Zno2VVZxVi9JZ2FRamNEYXVTbzdNZ29qdE13d0JRT2VM?=
 =?utf-8?B?T3M0dTJCRDJJQzRIR0JlMUZ0LzMzWHBSa2RHSHRkcG1STWFDa21LOGJzUWdR?=
 =?utf-8?B?Q0dhVXMrZ2F0cHViWmZPcUhXSDY5OWE5NCtwYkczaFZrbWhxZXBEZzJkVUFC?=
 =?utf-8?B?T2I1dkpzdFEzaHN3cmhOUm8wL3B0ZEZ0aEVSeVdlU2U2NmVQQ2Q4WmxuYk5U?=
 =?utf-8?B?dTVKSDlWNUJ5aEtmbWlJbEhURENCNm9JeHJDbVFveFBaNlo2elRhY2lZNi84?=
 =?utf-8?B?SFc3SmJCUjVwTVpGeWYvZWF6cmNldkdDUlViRm1aZ2lKclNkRXJVdUY2K0hr?=
 =?utf-8?B?UnVURVdaK3VEajZMQzZYTG4xWXNub2Rlb2YzRmNaV0VPVHdCMEROckFtVE9l?=
 =?utf-8?Q?/DtKD6btskPXxYi8=3D?=
X-Exchange-RoutingPolicyChecked: cmYWbzcXiY9R4FvLADemCApoi8bImSSyo7bPvwP6R90OYkOjw5gQIavNcp/Ah31MXgno1Z8i0hqoZ2YKOocK9O4vJG3fm967Umiqsm0fvygS8bjWPnnBIBTEcLp47A6+AWSWd+n99UqSceXWiX9no60ephxsBoW5fcvHO1A68/C+eztPWKu9deQxOv2nRbLyr6RJSSOEQyX0PRSspYlxGyZz+oll14iPkOVYpvcoiyw0D8jt+P5MZRO9u46IXqLfnYOdjgvyGO0TJU+AWBmTvVDmLohTb/dYaHQhYQ9RJka21iWInxHicE1DIcRGxMm4IUsR/ZyMZ+FYdv5UQKpwzg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c939c87-5fb3-4411-ba87-08de80294678
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 11:19:51.5948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6F0e5dESwSa6NcU1uk2nhC9MfpLO6N9I0ZBQYbANwhLFb6l8AR4DzEmpdRN9jbWrNa40rB69xycv4osEoRtb9WHkCXFiHmtntUCLc1+T0Zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFAB693A2AC
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AA5DC270C5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 12/23/2025 1:43 PM, Nemesa Garg wrote:
> Make a common wrapper for pipe_scaling and sharpness
> which will be invoked from hsw_crtc_enable and
> pipe_fastset. Then accoridng to the condition
s/accoridng/according
> pfit_enable or casf_enable or casf_update_strength
> can be invoked. This is done so that all pipe
> related functions can be under one umberalla.

You mean pipe scaler related functions?


>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 24 ++++------------
>   drivers/gpu/drm/i915/display/skl_scaler.c    | 29 ++++++++++++++++++++
>   drivers/gpu/drm/i915/display/skl_scaler.h    |  3 ++
>   3 files changed, 37 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 568730ffe359..ddab4a1417ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -991,15 +991,6 @@ static bool audio_disabling(const struct intel_crtc_state *old_crtc_state,
>   		 memcmp(old_crtc_state->eld, new_crtc_state->eld, MAX_ELD_BYTES) != 0);
>   }
>   
> -static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
> -				const struct intel_crtc_state *old_crtc_state)
> -{
> -	if (!new_crtc_state->hw.active)
> -		return false;
> -
> -	return is_enabling(hw.casf_params.casf_enable, old_crtc_state, new_crtc_state);
> -}
> -
>   static bool intel_casf_disabling(const struct intel_crtc_state *old_crtc_state,
>   				 const struct intel_crtc_state *new_crtc_state)
>   {
> @@ -1679,7 +1670,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>   			glk_pipe_scaler_clock_gating_wa(pipe_crtc, true);
>   
>   		if (DISPLAY_VER(display) >= 9)
> -			skl_pfit_enable(pipe_crtc_state);
> +			skl_scaler_enable(state, crtc);
>   		else
>   			ilk_pfit_enable(pipe_crtc_state);
>   
> @@ -6635,7 +6626,8 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
>   	}
>   }
>   
> -static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
> +static void intel_pipe_fastset(struct intel_atomic_state *state,
> +		const struct intel_crtc_state *old_crtc_state,
>   			       const struct intel_crtc_state *new_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(new_crtc_state);
> @@ -6653,8 +6645,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
>   
>   	/* on skylake this is done by detaching scalers */
>   	if (DISPLAY_VER(display) >= 9) {
> -		if (new_crtc_state->pch_pfit.enabled)
> -			skl_pfit_enable(new_crtc_state);
> +			skl_scaler_enable(state, crtc);
>   	} else if (HAS_PCH_SPLIT(display)) {
>   		if (new_crtc_state->pch_pfit.enabled)
>   			ilk_pfit_enable(new_crtc_state);
> @@ -6706,7 +6697,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>   			bdw_set_pipe_misc(NULL, new_crtc_state);
>   
>   		if (intel_crtc_needs_fastset(new_crtc_state))
> -			intel_pipe_fastset(old_crtc_state, new_crtc_state);
> +			intel_pipe_fastset(state, old_crtc_state, new_crtc_state);
>   	}
>   
>   	intel_psr2_program_trans_man_trk_ctl(NULL, new_crtc_state);
> @@ -6805,11 +6796,6 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
>   			intel_vrr_set_transcoder_timings(new_crtc_state);
>   	}
>   
> -	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
> -		intel_casf_enable(new_crtc_state);
> -	else if (new_crtc_state->hw.casf_params.strength != old_crtc_state->hw.casf_params.strength)
> -		intel_casf_update_strength(new_crtc_state);
> -
>   	intel_fbc_update(state, crtc);
>   
>   	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index abd951f7dd71..19a9c4a0da0a 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -752,6 +752,19 @@ static void skl_scaler_setup_filter(struct intel_display *display,
>   	}
>   }
>   
> +#define is_enabling(feature, old_crtc_state, new_crtc_state) \
> +        ((!(old_crtc_state)->feature || intel_crtc_needs_modeset(new_crtc_state)) && \
> +         (new_crtc_state)->feature)

I think if this is indeed needed this should be placed in 
intel_display.h instead of having a copy here.

> +
> +static bool intel_casf_enabling(const struct intel_crtc_state *new_crtc_state,
> +                                const struct intel_crtc_state *old_crtc_state)

This doesn't seem to belong to this file.


> +{
> +        if (!new_crtc_state->hw.active)
> +                return false;
> +
> +        return is_enabling(hw.casf_params.casf_enable, old_crtc_state, new_crtc_state);
> +}
> +
>   #define CASF_SCALER_FILTER_SELECT \
>   	(PS_FILTER_PROGRAMMED | \
>   	PS_Y_VERT_FILTER_SELECT(0) | \
> @@ -859,6 +872,22 @@ void skl_pipe_scaler_setup(const struct intel_crtc_state *crtc_state,
>   			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
>   }
>   
> +void skl_scaler_enable(struct intel_atomic_state *state,
> +                       struct intel_crtc *crtc)
> +{
> +        struct intel_crtc_state *new_crtc_state =
> +                intel_atomic_get_new_crtc_state(state, crtc);
> +        struct intel_crtc_state *old_crtc_state =
> +                intel_atomic_get_old_crtc_state(state, crtc);
> +
> +       if (new_crtc_state->pch_pfit.enabled)
> +               skl_pfit_enable(new_crtc_state);

The function `skl_pfit_enable()` was called from intel_display.c 
earlier. Since this is not used outside this file this should be a 
static function.


Regards,

Ankit

> +       else if (intel_casf_enabling(new_crtc_state, old_crtc_state))
> +                intel_casf_enable(new_crtc_state);
> +       else if (new_crtc_state->hw.casf_params.strength != old_crtc_state->hw.casf_params.strength)
> +                intel_casf_update_strength(new_crtc_state);
> +}
> +
>   void
>   skl_program_plane_scaler(struct intel_dsb *dsb,
>   			 struct intel_plane *plane,
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 94bde5d1c06a..3d49836334b7 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -40,6 +40,9 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
>   
>   void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state);
>   
> +void skl_scaler_enable(struct intel_atomic_state *state,
> +                       struct intel_crtc *crtc);
> +
>   enum drm_mode_status
>   skl_scaler_mode_valid(struct intel_display *display,
>   		      const struct drm_display_mode *mode,

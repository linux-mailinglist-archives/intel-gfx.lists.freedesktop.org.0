Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iB4GF9DlnmkCXwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 13:06:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FC0196FB9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 13:06:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D38410E747;
	Wed, 25 Feb 2026 12:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CYC49mm7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F7710E747;
 Wed, 25 Feb 2026 12:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772021195; x=1803557195;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2TApc+O0bMeYQuttAEfPB+L+JhSokuyGfYGj6Dtt4cQ=;
 b=CYC49mm7Ubxj0EhN1dP94Qs8GzvPUcw0oQEE+OBmSEoKK9O6/GNr8kOl
 4+nHQFrwfNmy6tuklM3tte/IHSTESmmxGzVrd4BlcZ8PsR1vCyTkiSnjQ
 p+3VTcmfMeu3UehCZ4Yta6KnZDkKUf5vb1eYwwJhA4xV3jxGksXRxJ7WY
 lLbEjAjxYNAQe+4pClxcZszd+OujBHi8q6d52w35xrLrZQFf7w68uZy3U
 wh4rCWvXbqGCfUFlv0MCEt3a20/JlVQCrD9XejL0HYHutaeil2oxTiqfX
 bx4idjKSF/G6ZVJOo24naCKBGtFpKmM4GW6w3huW4U9rsv6opTQQT1CUj Q==;
X-CSE-ConnectionGUID: uX0fgW5aTeSN836TDszUuw==
X-CSE-MsgGUID: Yxss+xipSVKCnrCS1b6Egw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="90471370"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90471370"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:06:34 -0800
X-CSE-ConnectionGUID: gYQMkJ/VT9SZnyW/IoWN+Q==
X-CSE-MsgGUID: TGxfinW2Sv++00p1/5mXrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220708830"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:06:34 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 04:06:33 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 04:06:33 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 04:06:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VyFgpZ6F9h9odJxsax/1izXT6NAi9Cn20De968l2T5AsoP0jMI9C5sNZMCHlY+4L3XHQ5jtN/JVQetjtInv49MIjjO9t1vHGBlaI0mGD9P3DadxMpbqfHg2bhUpKMQovumR9InY7D0whzAqlWd3QuK7W1Rmg89R93tmWep/46Gz3S8ljWXNgrNy020J0NNgMOEQRXcZmZDpaYkB39QGyNYOO5euD1CxF1FEV7oquHhu2K/Dy6Yc+SvJMg6W1A1vQ5ckmbw3r8rQRYiODEBNYblRHTAcPdDlVr91y1ydkxa7RXq4e9GVz8KTBNykAPUDQi98kgSNBpiihR6CRAQivdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1td+AJsASz+DwNiLdulzXz47+3TH34H+ZMMvFiZUso=;
 b=qGlV0wbIPq6TrRIuLtRZfOos5vKq+kexw7LJder1PtyY9nuEEnitIc7ThyAzQ6X5NUCpvvBWp3MLEXyWykBV5q4p3iNb8e8ZCUxJNpDLHyS7J8w9uCPlob6RSyULXjOKZY+KrE9Ea6vNqWfdFeED0x6psib0d4fAI+gRCMYTwOUzSqMyX9LSiChCzUHdk91t98y82uh+LgmC+eYJqMcRV7ce06fO3J+7AEy6UcNWq7DWmS03GVKQgHWU/6xTOWDnTAkx8OxaKm+PfTXFjQSptvVcxgRr6n7JwW3WrOyZu0qTMscE3YdoWFcBXb8hZYaTIDREbIPxGjdT2bla5JlmUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5131.namprd11.prod.outlook.com (2603:10b6:806:116::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Wed, 25 Feb
 2026 12:06:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 12:06:30 +0000
Message-ID: <528b9b9c-920d-4146-a4f7-97db356e7f28@intel.com>
Date: Wed, 25 Feb 2026 17:36:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/i915/psr: DSC configuration for Early Transport
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-5-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260219130743.1232188-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5131:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f945fcf-16a9-4161-aa8a-08de74664f9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: Gz9Kb5KH8nq9U5oqv/pa9rfnHOnNBQ2Su/eT3HRLhAE1RMwifXw+4ARrPl1B0Ns9erk0Oti4rYgepPoTIOxJP6QmXtaGa+Q8kHcbKR2n9/E9fJfHYW9vZYYKGMOnNxrUhWvffJzE0LQnwzwA+EkXNmEGiC2mVv2U7eQ9VF63j32iNFXxGFqGNUo028HvCBnOmAI3zMv6RQZWO2XYf65tGWuyIZPv058XqKTV6643uPGtkBmpVRLR5Sb/aROnzu9zpreKLMmDzWP2K3TJl+asvoL2wbsYjpVIWUI1NeBLxrexPPz7uDqUGfLMesrJQQLP5HVb6hX4uY/AZOTyc8jrG9w17jTDR+i4CX7bQ9sL2e0h/G93VPOzy4jY53PoCglUWzdJ5Gh0sd0bU5xVhFnZForinF6j3lBQ5Zhb9Dic8sTYRu8WzR5E/bsX6S9NoLLoZyJyeVhi9kEDulfimBxVm/PcbZ38/us4c/v25OKLESeNbDmZlR1brq/H1zywxqVnFKY9jNZ42rbvIeshJQA0m+Mrq2bGh+p2pNO7bl4DYqY9oYLbcRc5vxWxrr6Ex4jRpjYdbeDQyEfJVPqCEX8i04WwKr8EeqFAmgaBleuAmN7nb7ARVN3JIWsGU74XV0ekkj4MZli1W7AZGK3eqj11sUAjRh0RxP+hIR0s9Z8msiEAd6Wa67svhkKD5S2GKt9+7i8BQBVlQv7gJ5kO1OJNwT5GZYmwqVH3zMVPeyYzRy4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OCt5ampkdnRMOUwwckxCODAxOENBaFRib0dPUFBRQW5FQ2s5bmdiQWZpa1Vu?=
 =?utf-8?B?TVFwWHJiazk2OThGeDcxMkMvd2kxWHJmeS9IWDdBSUlaWU94cFBRZklvR2Ns?=
 =?utf-8?B?YTZYYlJlekloSEU5U2lkbFlaL1ZYL1VGVEJ2d0ZEVlhZSko5SERBd0FOeFBa?=
 =?utf-8?B?SE1najg1RkhNRG9uQWcxcXI3TDljNGVzdWF6cVVzWW53ZU85V2h1WlA0bmFi?=
 =?utf-8?B?YnhDSEUzVGlNTnB0SWpNT2xzN1Ixa1NOM1lrV0FDaGNCRjZOMmdFaTVBZnNw?=
 =?utf-8?B?Q2U0NnZ0WElZTmNHS1d4eldFSWhxQ1g0Y2g0LzZmb1NOM2hzS1VJVCt6QnV3?=
 =?utf-8?B?cXZDazl5T05ONE1sNktQTDdPa3VPcTNBVVY3UlZXbTNxM3lYL2xCRHdRa29B?=
 =?utf-8?B?Wm1IYUlraHRmMXl6bkpmU2N3eno5WndhVUFQZ0YyOUxma29iSnZtR0VYUEtP?=
 =?utf-8?B?ZTY5dzlEYlJmRFVtbzNGWEhXWHVCT3ViN0FIYU1BbW5QRzI2U2dKT01EWXZJ?=
 =?utf-8?B?UUhPS2ticG11ZXZYUUhaM0UxRnc5VlRoeXFvb1Q0ZDlxOWRCMlUzSUZsUUlS?=
 =?utf-8?B?UmhiajZUeWFqNkk1ZWNOSC80ZEV3OWc4S1Z1V0dpNWF0VTNvK1RObnE0ZlUy?=
 =?utf-8?B?M3NxRFRKSEMva3Z0RUVyQmhiQTIxRHVvSG9KU0NESmcrcXg4VlJNTE1EQmcz?=
 =?utf-8?B?Zmdsd0JoNk1Vcm9nTmZvc3ptWG5xODluQ29PNks2TmozNm5FeWR4S1FMZFkr?=
 =?utf-8?B?ZUxPVUVTSnIzRUFreUI5QVRUMUlBWWJTM2Fzd2I5UFRLeTVsMlVFNkhKNis1?=
 =?utf-8?B?Wms0WTl0ektkZGZ2QU1zL3pNUndSM25XT3B5RHNNd3FtdFVGcys5WTZUZWR5?=
 =?utf-8?B?amxuVGxic3V5aDduZjdlMnpPVHpZRWtqczkwS0RkWjdoMTZ4bjRZbUtlaFFH?=
 =?utf-8?B?QnRTVG9UQy9NdDhPQklKWTMyOTNDYS9CZ2d5TkI3ejc4SHduRElpMTdBbWFM?=
 =?utf-8?B?RkxXQlJyZnBNVUVzQ21reURRckhOVFJHSEhBK3p4a2owWUU0Y1ljM2hnQUNu?=
 =?utf-8?B?TTJidmg2RTlXUmFaWnFadEdWRktvSWRPZFl3T012ZmlXcVdWZXlSSHpTeTUw?=
 =?utf-8?B?Y0VvNmRYVDhaTXJaOCtjdUh3SHFHQWFyMTVTNmJKK2QyNG52dGFoZEFpK1FC?=
 =?utf-8?B?dGFWZlNyV21DTTM3MnpyQVRqN3RIZGhRb3F4VE1hcDZodFkwTG83ZXFRbTEr?=
 =?utf-8?B?bVBXS0h6Ym1ubnppSzc2VEFEcnhRTm1EakFjNlQvZzFVZm9WdVN6anN0cGl3?=
 =?utf-8?B?V2xGdEUrdnFaUlZ4S3lXSzJCbU9HVWh0VjdzaHVtSEF1WlJ5d0JoN09zWHJj?=
 =?utf-8?B?V1BZRmN1ODF5OW1qbkMvemlwdDlPRXEweFphTUk2T29aZFd5THgydUlGWlBa?=
 =?utf-8?B?Mzd3cHN6QUp4d1NtMnA1ZWlDRi94L3ROV3RKV21GQ2pReU8waGtJMUVKYlJr?=
 =?utf-8?B?YjZ2TENHT3EwL1p3UEtRZ1pSRDVCeXVmVmc2R3pxRVdGWk1Sa2ZjaGhKa1Zj?=
 =?utf-8?B?SHEyY2tXOUdLR29IUTJITVB4TnlWUDJCMTBtOFE3VTNiUStSeFZxKzN5dVht?=
 =?utf-8?B?OG5VWWtsaFdlUDVrQy9HNiszbWhJTkRobUs4bzY4ZDJWRllDYVZMSUdEcmJl?=
 =?utf-8?B?eXJkcWhKbTZmNGhIa2lPS2oyRVVOQ3RaVGduN3IrYVYxK3FqdG5zSFlCN1k3?=
 =?utf-8?B?UjM0MDRhUU5XNGluWTVNUlhJMDFtMzA2cnJhVVFqaFJOV1ROblpCU1NjRzU3?=
 =?utf-8?B?aHJmMmtFWjlyZ2wzWWhrcFZ4cmZyYTlpbHF3TnpqSlBJLzU0WUpNWCthdkRq?=
 =?utf-8?B?N2NmcFdLSlAzQTVLMUlBOWt3MVUyeVRKMXFITFVkaldmMlRQNUVKd2ZROWxo?=
 =?utf-8?B?cjhlK3pkRHVYV2w0WHFpNVlVRWR1ekMxTDVWZVZTZDBoQzljUlBYYXk3MHE1?=
 =?utf-8?B?MTNJSFh2aEl4N21Rb0ExSS80R21MNU9kRmVVbytvQXRPKzY5TW5aZFNEb3Q4?=
 =?utf-8?B?U1pOSWdpcTUrb0RKK2dKa1FLSDJBWGcxaDIrYTJxRmE5RVpwRm5DbmRXK0tt?=
 =?utf-8?B?TG9ncEdJSXlDOHplL2ExOEw4a1FZaXJ0cVpiK2dtcGZtcCs3cHlrOG5XQXhL?=
 =?utf-8?B?NlB6YzVqV3dCRXdRRDdNeGVKK1gxRjRHTmI3VEQ1VGRXam1YN3RLZnJzNHNZ?=
 =?utf-8?B?aU95MjZXRmRhUzkwL1k4Z1B2N1drS1BZYkdvd0JESTcxNVRnTXlJVzBiaHhW?=
 =?utf-8?B?UURhNERJZTBnOU5GY1FhbHR1Vys1TmxFRWRVNVdERnlUNXFqTEtaVC9udE01?=
 =?utf-8?Q?ZM0z3IUmJQdV5BCI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f945fcf-16a9-4161-aa8a-08de74664f9f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 12:06:30.7916 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zL3pQNGZNbudohAaia7QYMHQ+HYobJr6ioRQKaGwzp6++vNpJHUgDsppw3TzEVSS3rUgUAZRLUNZgb/Zg0bwzg5ekDkwsKFadjWBZfEfQsQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5131
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A1FC0196FB9
X-Rspamd-Action: no action


On 2/19/2026 6:37 PM, Jouni Högander wrote:
> There is Selective Update slice row per frame and picture height
> configurations needed on DSC when using Selective Update Early
> Transport. Calculate and configure these when using Early Transport.
>
> Bspec: 68927
> Fixes: 467e4e061c44 ("drm/i915/psr: Enable psr2 early transport as possible")
> Cc: <stable@vger.kernel.org> # v6.9+


This patch needs the other patch where registers are defined. I am not 
sure if stable will only pick this patch or will try to find out the 
dependency patch.

We need to check if there is a way to tell the dependency patch/commit 
to stable, so that both patches are applied together.

If we want this change to get ported to older kernels, we might need to 
squash the register definition patch with this patch.


> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   drivers/gpu/drm/i915/display/intel_psr.c      | 24 +++++++++++++++++++
>   2 files changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e8e4af03a6a6..8903804c04b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1381,6 +1381,7 @@ struct intel_crtc_state {
>   	u32 psr2_man_track_ctl;
>   
>   	u32 pipe_srcsz_early_tpt;
> +	u32 dsc_su_parameter_set_0_calc;

I think let's just have a bool parameter something like 
psr_su_update_dsc_pps.

We can set this bool variable during intel_psr2_sel_fetch_update()


>   
>   	struct drm_rect psr2_su_area;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 331645a2c9f6..0a2948ec308d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2618,6 +2618,11 @@ void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
>   
>   	intel_de_write_dsb(display, dsb, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
>   			   crtc_state->pipe_srcsz_early_tpt);
> +	intel_de_write_dsb(display, dsb, DSC_SU_PARAMETER_SET_0_DSC0(crtc->pipe),
> +			   crtc_state->dsc_su_parameter_set_0_calc);
> +	if (intel_dsc_get_vdsc_per_pipe(crtc_state) > 1)
> +		intel_de_write_dsb(display, dsb, DSC_SU_PARAMETER_SET_0_DSC1(crtc->pipe),
> +				   crtc_state->dsc_su_parameter_set_0_calc);
>   }
>   
>   static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> @@ -2668,6 +2673,23 @@ static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
>   	return PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1);
>   }
>   
> +static u32 psr2_dsc_su_parameter_set_0_calc(struct intel_crtc_state *crtc_state,
> +					    bool full_update)
> +{
> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	int slice_row_per_frame, pic_height;
> +
> +	if (!crtc_state->enable_psr2_su_region_et || full_update ||
> +	    !crtc_state->dsc.compression_enable)
> +		return 0;
> +

Although we are making sure that height of the psr2_su_area is a 
multiple of the slice_height, perhaps it would be good to have a 
drm_WARN here to flag any misconfiguration i.e. if height is not a 
multiple of slice_height.


> +	slice_row_per_frame = drm_rect_height(&crtc_state->psr2_su_area) / vdsc_cfg->slice_height;
> +	pic_height = slice_row_per_frame * vdsc_cfg->slice_height;
> +
> +	return DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME(slice_row_per_frame) |
> +		DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT(pic_height);
> +}

Since this writes a DSC register belonging to PPS Set 0, this function 
should be moved to intel_vdsc.c.

Also, based on the boolean flag (psr_su_update_dsc_pps) discussed above, 
this function should simply retrieve the required fields from crtc_state 
and program the register.

Such a helper function should then be called from 
intel_psr2_program_trans_man_trk_ctl() in place of the direct 
intel_reg_write() call.

IMO, all register reads/writes, along with the wrappers/helpers around 
them, should live in the file corresponding to the block that owns those 
registers, based on context.


Regards,

Ankit

> +
>   static void clip_area_update(struct drm_rect *overlap_damage_area,
>   			     struct drm_rect *damage_area,
>   			     struct drm_rect *pipe_src)
> @@ -3026,6 +3048,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   	psr2_man_trk_ctl_calc(crtc_state, full_update);
>   	crtc_state->pipe_srcsz_early_tpt =
>   		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
> +	crtc_state->dsc_su_parameter_set_0_calc = psr2_dsc_su_parameter_set_0_calc(crtc_state,
> +										   full_update);
>   	return 0;
>   }
>   

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC899FC07A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 17:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B443210E33A;
	Tue, 24 Dec 2024 16:58:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SpSW4OwA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4D210E128;
 Tue, 24 Dec 2024 16:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735059490; x=1766595490;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=ePMEoo68O7VRcg8tNITanOtVgc//YZ8lgBmVbC/oDfs=;
 b=SpSW4OwAm+rfqCSul7vqGyB0rMokfzMYgRTP3doRv3loTUP34VasDDyk
 lQ0S8fILCF0p7Gyi42egbikDbk58oYuycgOo4eIYEVsDnH9jWKOiFJzrJ
 7DcOF+J/+WWkBzQiJJ8yo3iDabQg6Eu7/ciwXYeNizdGgpF4DhXujq8P0
 2CNoQ1eJnt0laUJq+IlHQkk+lSlLS6Ly/Lp04YvT5B7qesS3bwzYHSp9t
 OwnQv1VFbgSKZVPDSG6/9+UncZu3V+2iXcvPw5gOY3JZyd0sZ4HetCHUU
 M/jRsiXY9WNlJuj7x9R2CzOyf8332s1Gly1xj1O3avYzyJ16Jmxvi0p9S Q==;
X-CSE-ConnectionGUID: GFxRde8dR2i60vhTwMmvpA==
X-CSE-MsgGUID: 1S1+TYjcQVWKJ/rM0Hy9xA==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="34838293"
X-IronPort-AV: E=Sophos;i="6.12,260,1728975600"; d="scan'208";a="34838293"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 08:58:10 -0800
X-CSE-ConnectionGUID: 8uM0yD2XTRiMOIKZpj/oug==
X-CSE-MsgGUID: SZq/lPYUSP6whqgArlReeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,260,1728975600"; d="scan'208";a="99381648"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Dec 2024 08:58:09 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 24 Dec 2024 08:58:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 24 Dec 2024 08:58:08 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 24 Dec 2024 08:58:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dkx7o87auoDERaEAinP1OQPHM3hbwcA2kpjEsa/1NQeIT8UaiqW/znI05Mrta42EWt7kVhKRdwvAU0F8a0Pv+0Frba8iYDyp58sC5PrXvN01UpT4plCc2xZQlYQ/nQqmWVOfhJAK3CUTX2MsKcnXRbf2+8YcxeWGfXCIz04ETjJP6hC2cq5y0IlgKkDTQ7AUvOBhEUHuANnMhsrgic6ycolupEz1sILIP+420B6hz2I2U+ZxzND/vwYjvSptIKIgSFFHoY6LAp/WbY7Zl1jRLcpArgfwaYaFQOZtz4lNOd73ddL6rj+FI+4OgFFnOdGaWQ6g8FKetR4QajmKJsW24g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cfyik6N/sZ+czEdTrpBtjHSUM8np+2RwNnCYO47/L7Y=;
 b=Y/jWaWE4WxqZySpXVrlu6x81TJx9/VRyig0iIXGZQEG0yHMh4hJMsHSJngpxHLVghTIE8oZbwvcLERd90GXxKW8FQNpLcvNh179qAIgAQfMxXL5OiGgHtNg1UdkmzYcuigUZAagKtkan2crLxdj9us0ADGYuU9uM2IFxLMwUZA/U4Yg6BZar9rsyo34pmVJe5G0zeVNWos4A+sDjavy386Z/Oao8iLuAbK/szlsEpyNCYX6kMmRWKdhp5KsyXkhY0UKMvsQvHLfezI9Oyq9BTsbfddE9MNsU1mSpHmaqOez7X5iSWjsf3RQ8h6gKLoZ0R8ol05EJNuuLBvbAEidkUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW3PR11MB4650.namprd11.prod.outlook.com (2603:10b6:303:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.21; Tue, 24 Dec
 2024 16:57:48 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.013; Tue, 24 Dec 2024
 16:57:48 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241224161714.35293-1-gustavo.sousa@intel.com>
References: <20241224161714.35293-1-gustavo.sousa@intel.com>
Subject: Re: [PATCH v2] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 24 Dec 2024 13:57:43 -0300
Message-ID: <173505946339.1822.12609383249805821848@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0236.namprd04.prod.outlook.com
 (2603:10b6:303:87::31) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW3PR11MB4650:EE_
X-MS-Office365-Filtering-Correlation-Id: a3655ac1-a1fb-424d-6231-08dd243c184b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YkdZR0JkVXJEaW9xak5mbkt4Ym04RUp6SmVYQWd6RUhoUzZLS3p4U3BxN2pV?=
 =?utf-8?B?ZVMvV3FvVVU5Z09oVUdaZHpQTUlhZlJ1NTI0V29LMWViUUNzM0c4NzhBZVFZ?=
 =?utf-8?B?cEhUV3ZVcHZ2azkwSGE1R21wM0huUGl5bm5CK0FBL0huRGVSR2FQeEtnTG8v?=
 =?utf-8?B?U3FJcDQ4bDUvQVY0N2p1cmpEd05MeHNqVUh2ZThvd2lFRklJSUF5ZUF4aE5E?=
 =?utf-8?B?YXJ6bzBxUWRVL0UrSDBRc21kMGVJKzZKS3VIa3FQakFSS3kzTVBnVHJzV0lO?=
 =?utf-8?B?RmpyYkFWQURRcTRsSmZEakpQWFA2Tnl5dmVsTEloL0RRbEZaeitFOXEwaG9y?=
 =?utf-8?B?b2s5aUt2YXNqR0hmY0MyRzgwWlY2NEpZaDZTOTFHQ1hLZzRlbEpxQzR0cGVR?=
 =?utf-8?B?aWJzVkhvV2ZsQzBVZlRmR0VuYzljY09WQnZPOUZzUWJucUFNRnQveUVZZ05L?=
 =?utf-8?B?aWZPVExDbjFuNnpOMEY0aTkrVTVPcVFGU2l5V2ZnbW5JYS9HT2F1OC9IaTBt?=
 =?utf-8?B?bzZESFUzVFdzZnVBVmd4dTY5K0FCajFQeVl2NFZEWW5wQ0N4RU01M3R0RVdV?=
 =?utf-8?B?dlFJYkswVlljQUpVRklocHFiQmdPcDhMaTRnQTFyRVBPb3FGVU5BRFczQ09N?=
 =?utf-8?B?eWIwZitRNktBY2MrbEpNbHQvL3h2K3NRVGFuL3d5Y3NTQW9udnRyMzVVL2Rw?=
 =?utf-8?B?Y1pCTFdST0hub1V1UDZRemZLM3gzTmVLWFhhWFh2aXp0Q0VOSm91UXZJLzVW?=
 =?utf-8?B?Q01qUkNmUUdwK1ZHcVpmbkhOT1hmWFF0ek5uaFI1UDZpSEc2dVJhTkpxd1lK?=
 =?utf-8?B?Q3grOHY5anVQejU5ZFdoYklQYlg0TERpSVRIbUV2Y0cvTWRTVHRINDhDZE51?=
 =?utf-8?B?Z1prUVpWdk4ycG9SVEVkUjl4NStnMit6TUNZeitjeEV3V1NxV2ljbzlvbVZW?=
 =?utf-8?B?Vlh6ak1vSHVjSWVhSjVjY09WbWlHYjlRM2ZyNDFnZ3N5RG0zaWw4Q1BQaFNP?=
 =?utf-8?B?YUpienRiMVN1dVpNaEtnRCthOERtaGx2RHBaVU5XRVNHRm9BQWQzT2dPZ2Rz?=
 =?utf-8?B?Vm1iQ3BHYk5iSTVkdndnb2lGYUxWbGFreGhxTmNPOGR6aDhPMXVhK081MVly?=
 =?utf-8?B?WGIwYlFrZkozYlBodnRtWTdOR1dSNVBUaUJ3OXVhVEVMaXVhc1RYb1Y4Zlgx?=
 =?utf-8?B?eUZoeFdQMkxxQjRhaVZZTWVqdXQ0eHQ5WjIzelBwaGIxZW0xN0JyLzl5am53?=
 =?utf-8?B?TW1RY042cUVwUXlsQzJnK1k1MjNSSGh5MjNwejA1S0pCUXZzUXUwVkNrRzA3?=
 =?utf-8?B?WGVpZFNHMHlPMDRaTENJSng3VHdtTmJpWFRBZDFWMDgyN0M5YzBsZHlwb2lP?=
 =?utf-8?B?SDFJNXBRS1UxcmF2TkZwRVVrUmI5a29IUGd5Vk1HVkthc0R4RGIyellvYlZl?=
 =?utf-8?B?VEFqaEhtOVRpcEREZXBTV0FSRUlIdnVBQ2d4RDVOdEd1OVBrRDU0akoweEJx?=
 =?utf-8?B?YWQwMFBGdGJWcGFpaFdMOE1RNlVQVmc1TzdkYW5nRHFHb0VhRE9ITUhZQTBa?=
 =?utf-8?B?OVd3akppRTJxaGFYdWlqSC8wdTI2UUVoL3gzNk04aG5VYTBWUHI5emM1TVVv?=
 =?utf-8?B?RnlsY2dDdnBmbHdlaWRPa0puQktBSVROcFIzZWZTT1JIeVRrOEl4ZE1OdmVu?=
 =?utf-8?B?WUJXaGQ0bjFrdWVsdVFwUjhiVVNjczN6R0J1dHoxb3FiKzZqMlNWczM5OWpr?=
 =?utf-8?B?alNVR1FMREVqRU14OWtuclpJeitibHNMNUpGVUNreGR3Qy9mMVMvTi8weDJw?=
 =?utf-8?B?a21jbXU1d1oraGhmTk9rYlJCZk1zZGlZYXRZbFZTc3hGQnJBM2thY1pNSytN?=
 =?utf-8?Q?JXXIfTHGTu0VI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1Bnb2h1ZHY3SUlzOUplUXBtandpejFreEdPbDQrZXlqK0VOSUlKTDdFSmoy?=
 =?utf-8?B?NGs1MW5FRElqM21ZUFJaR0tOQXpLcWxJWDIzOU96ellremFaTWw1SEIwNVJE?=
 =?utf-8?B?ZE1SZUdkVjB4TkZLRmlJT3hvSTRiTC9RaVo2b1Q2ZHk3bkxkNTJaRGk0eXFJ?=
 =?utf-8?B?QWwwY0FXRzhUTDg1UXJRUVlLZ2k5N1p1T0p3WktZTVcvWFROUjd3MWlZT2ww?=
 =?utf-8?B?aWNFaUcvTFdNWXlMS3J6Mm1iV1lObUQ0YndQT3dKR0lrSDNJRHA4aTZYS1Y3?=
 =?utf-8?B?WENhR2l2YWc4UVZnYjJWYVVhMVBCcEhyR2l4eDd1R1VYTldSQTJiaDVEMG8y?=
 =?utf-8?B?M01JNVBzc1BaVnZHdFhMUFNOMG1TSHBQNkRYamlVMFRCMjR3Wm5qNnZnTm45?=
 =?utf-8?B?OExCck9KbXVsTy9mNkZxN2tXY0J6MUwvaG1rS2JkcE0yS2RLdWhSb1FoZnJK?=
 =?utf-8?B?YjhCUmNvOFI3WWlRYXNWeG1oQi9vOGszT1dabEx2VUt0Sm5pa2ppYUIraTcw?=
 =?utf-8?B?bWQ1cHExK082djRCSTZyemlabjIvSXJjRGxlQWhsWFJEOE00ajZYeE8wMWd4?=
 =?utf-8?B?Qm81dkJrczVoVElLWlMyRlFiWlMzcGZrUGxWRVdiUkE4dC9aU1RPanYvWEZn?=
 =?utf-8?B?RlBsbENmLzVEZjc0L2JLR01QUjhONmdqNFFPYktublFLQ05JenphbUtkVWlI?=
 =?utf-8?B?NmNRV0dPUTlvd05oa3dkT1JaK09WVTBxS3pKVUNIMGNRdk42ZFVVZjNFY29M?=
 =?utf-8?B?OWxiTGZVcUp1TEp5TTlXalhldDlJdzdlbk4rOXBwYUhrN21YcE04WXlxMU51?=
 =?utf-8?B?RmlZTklrVHZtTWh6UDR5akFYVlRiamVva1dpWjNNOWRiTXUzamJFQ1BKN2Vw?=
 =?utf-8?B?ODNqVElhby9xaWM4bitDL3JFdFV6c1lOV0t1RDVpTjZCZjRSVktlUGkxNHFt?=
 =?utf-8?B?ekNOMWx2Q1NRNWxoOHpwOVFUSmU0SjlvLzV6cmJQNU5STWFlbUpyYS9OMlVv?=
 =?utf-8?B?VDBWT08zWXVsL1owMW13a0JGOHJMOU1SbFh3eXoxblJVRGMyQnF4NWgvR2xQ?=
 =?utf-8?B?K0dVYzdud1JsWmtkMkpmNk9MVFlVMW1RbG9nTjlCNmVaRTR4R0daZ0UwQkVz?=
 =?utf-8?B?aGVJUHJaQlZrY3dkUG1xR2lJRXRWSFJ6SjNnY01Oa21hbUpsbTI4a1NsY29J?=
 =?utf-8?B?RHNyUjRHZXZtTk5sdG9TNS9RRjU0Wk1nUWF2VFYzOWFpczZaSWRmTTZDWTlh?=
 =?utf-8?B?dzRmMGlzSjl6bFNYTmVlanNNZ2wzRTVVSzFDRXc3dmpyTEFSeG9SaHVmcTV0?=
 =?utf-8?B?SndQUUppeTFBcmFCa0IwVXdER0hxZFNwdEFJejZvSkU0UzJLS2xEa2hnanFI?=
 =?utf-8?B?bjROZGF2NUZ0V29yRDlMWFFpTjQ5YXAzTTUrQVRLSVFXdHNpQkx3ZG9CWXFr?=
 =?utf-8?B?OXk2Nm1xYU5qQnJjb3N4VWpYYzhvbTJ4OTMySHoyK1o5M0YzQmsvVGp4ekVQ?=
 =?utf-8?B?VkxnNmJGYlViWGd0ckJIRDAreXd5VUY0dUc3MHh2TE9NM2NqTzZRZE9tRW1V?=
 =?utf-8?B?emlMV2lxMU05WG1lY21VRWJNaitFSW9tOVlZZDRhMy9vaFRlS2xENHBEK0Q2?=
 =?utf-8?B?MXA1OFlPQ3Y1bmRMaU1tOGQ5bnRxZWgrQ3dkcFY2ejNyNmxuK2lxU0tjeGNO?=
 =?utf-8?B?ZC9sa2ZNYzZNV05mNkpMZnp6SzZpS2xWUmczWE5TYVFNUWUvaEk3K0JvK1or?=
 =?utf-8?B?TWhDZzFRRUl3RzN1bFpqSXdJcHZzVmpESWF1UlpwRGQ1S1NtdHR2YXA4TWds?=
 =?utf-8?B?RnlvdVRxeVFnN3F3YVVvTXBiRTBPZFpDVzMyWGRlZWVIVEwxd0VoVjBZRTJ4?=
 =?utf-8?B?d216Qld3K1ZsUHQ0TFI0RzRGSkVKVWxuU0FOYmFOT3dwVTc3dTR6SHNQSE5Y?=
 =?utf-8?B?OVQ3bGg3NE9QUmhlL09VeURESjM4cVpackRQaEdQRWM4TndBKzZYbFN4V0Yr?=
 =?utf-8?B?WmZOVElpa091Qm5LNHZJMWRXSnJwSFduZ1VjSDdMQmJOYVNjZW1pbWpYaTdQ?=
 =?utf-8?B?SlJ1K1NINHpZYmhUMW1XS0hHdmNOb3BKTWlOWndFVUFWaEY2elA5RW52WnRZ?=
 =?utf-8?B?SDNQSmxKbVVlWkNVMkxGWkNZbUk2aThlNlRtWVFlWmFyQWVPOU1CYTNhUlY5?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3655ac1-a1fb-424d-6231-08dd243c184b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2024 16:57:48.3863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BnYHxKt8McI6+D1HfWTCWntRxqliMz/Hb2/BAL9Q7FfulbPlB6c8jxb8qguDMt2YmGNehAaq7nZVtaL2cgin9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4650
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

Quoting Gustavo Sousa (2024-12-24 13:17:10-03:00)
>The CMTG is a timing generator that runs in parallel with transcoders
>timing generators and can be used as a reference for synchronization.
>
>On PTL (display Xe3_LPD), we have observed that we are inheriting from
>GOP a display configuration with the CMTG enabled. Because our driver
>doesn't currently implement any CMTG sequences, the CMTG ends up still
>enabled after our driver takes over.
>
>We need to make sure that the CMTG is not enabled if we are not going to
>use it. For that, let's add a partial implementation in our driver that
>only cares about disabling the CMTG if it was found enabled during
>initial hardware readout. In the future, we can also implement sequences
>for enabling CMTG if that becomes a needed feature.
>
>For completeness, we do not only cover Xe3_LPD but also all previous
>display IPs that provide the CMTG.
>
>v2:
> - DG2 does not have the CMTG. Update HAS_CMTG() accordingly.
> - Update logic to force disabling of CMTG only for initial commit.

Ugh... Please ignore this version. There were missing hunks to be
applied that ended up staying only in my local tree. Sorry about that.

Please skip over to v3, which I just posted. Hopefully I did not mess it
up this time.

--
Gustavo Sousa

>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                 |   1 +
> drivers/gpu/drm/i915/display/intel_cmtg.c     | 332 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_cmtg.h     |  38 ++
> .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 ++
> drivers/gpu/drm/i915/display/intel_display.c  |  11 +
> .../gpu/drm/i915/display/intel_display_core.h |   4 +
> .../drm/i915/display/intel_display_device.h   |   1 +
> .../drm/i915/display/intel_display_driver.c   |   5 +
> .../drm/i915/display/intel_modeset_setup.c    |   5 +
> drivers/gpu/drm/i915/i915_reg.h               |   1 +
> drivers/gpu/drm/xe/Makefile                   |   1 +
> 11 files changed, 420 insertions(+)
> create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
> create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 3dda9f0eda82..7e7414453765 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -231,6 +231,7 @@ i915-y +=3D \
>         display/intel_bo.o \
>         display/intel_bw.o \
>         display/intel_cdclk.o \
>+        display/intel_cmtg.o \
>         display/intel_color.o \
>         display/intel_combo_phy.o \
>         display/intel_connector.o \
>diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i=
915/display/intel_cmtg.c
>new file mode 100644
>index 000000000000..f3baa4174b08
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>@@ -0,0 +1,332 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright (C) 2024 Intel Corporation
>+ */
>+
>+#include <linux/string.h>
>+#include <linux/string_choices.h>
>+#include <linux/types.h>
>+
>+#include "i915_drv.h"
>+#include "i915_reg.h"
>+#include "intel_crtc.h"
>+#include "intel_de.h"
>+#include "intel_cmtg.h"
>+#include "intel_cmtg_regs.h"
>+#include "intel_display_device.h"
>+#include "intel_display_types.h"
>+
>+/**
>+ * DOC: Common Primary Timing Generator (CMTG)
>+ *
>+ * The CMTG is a timing generator that runs in parallel to transcoders ti=
ming
>+ * generators (TG) to provide a synchronization mechanism where CMTG acts=
 as
>+ * primary and transcoders TGs act as secondary to the CMTG. The CMTG out=
puts
>+ * its TG start and frame sync signals to the transcoders that are config=
ured
>+ * as secondary, which use those signals to synchronize their own timing =
with
>+ * the CMTG's.
>+ *
>+ * The CMTG can be used only with eDP or MIPI command mode and supports t=
he
>+ * following use cases:
>+ *
>+ * - Dual eDP: The CMTG can be used to keep two eDP TGs in sync when on a
>+ *   dual eDP configuration (with or without PSR/PSR2 enabled).
>+ *
>+ * - Single eDP as secondary: It is also possible to use a single eDP
>+ *   configuration with the transcoder TG as secondary to the CMTG. That =
would
>+ *   allow a flow that would not require a modeset on the existing eDP wh=
en a
>+ *   new eDP is added for a dual eDP configuration with CMTG.
>+ *
>+ * - DC6v: In DC6v, the transcoder might be off but the CMTG keeps runnin=
g to
>+ *   maintain frame timings. When exiting DC6v, the transcoder TG then is
>+ *   synced back the CMTG.
>+ *
>+ * Currently, the driver does not use the CMTG, but we need to make sure =
that
>+ * we disable it in case we inherit a display configuration with it enabl=
ed.
>+ */
>+
>+static struct intel_global_state *
>+intel_cmtg_duplicate_state(struct intel_global_obj *obj)
>+{
>+        struct intel_cmtg_state *cmtg_state =3D to_intel_cmtg_state(obj->=
state);
>+
>+        cmtg_state =3D kmemdup(cmtg_state, sizeof(*cmtg_state), GFP_KERNE=
L);
>+        if (!cmtg_state)
>+                return NULL;
>+
>+        return &cmtg_state->base;
>+}
>+
>+static void intel_cmtg_destroy_state(struct intel_global_obj *obj,
>+                                     struct intel_global_state *state)
>+{
>+        kfree(state);
>+}
>+
>+static const struct intel_global_state_funcs intel_cmtg_state_funcs =3D {
>+        .atomic_duplicate_state =3D intel_cmtg_duplicate_state,
>+        .atomic_destroy_state =3D intel_cmtg_destroy_state,
>+};
>+
>+static bool intel_cmtg_has_cmtg_b(struct intel_display *display)
>+{
>+        return DISPLAY_VER(display) >=3D 20;
>+}
>+
>+static bool intel_cmtg_has_clock_sel(struct intel_display *display)
>+{
>+        return DISPLAY_VER(display) >=3D 14;
>+}
>+
>+static bool intel_cmtg_requires_modeset(struct intel_display *display)
>+{
>+        return DISPLAY_VER(display) < 20;
>+}
>+
>+static void intel_cmtg_dump_state(struct intel_display *display,
>+                                  struct intel_cmtg_state *cmtg_state)
>+{
>+        if (intel_cmtg_has_cmtg_b(display))
>+                drm_dbg_kms(display->drm,
>+                            "CMTG state readout: CMTG A: %s, CMTG B: %s, =
transcoder A secondary: %s, transcoder B secondary: %s\n",
>+                            str_enabled_disabled(cmtg_state->cmtg_a_enabl=
e),
>+                            str_enabled_disabled(cmtg_state->cmtg_b_enabl=
e),
>+                            str_yes_no(cmtg_state->trans_a_secondary),
>+                            str_yes_no(cmtg_state->trans_b_secondary));
>+        else
>+                drm_dbg_kms(display->drm,
>+                            "CMTG state readout: %s, Transcoder A seconda=
ry: %s, Transcoder B secondary: %s\n",
>+                            str_enabled_disabled(cmtg_state->cmtg_a_enabl=
e),
>+                            str_yes_no(cmtg_state->trans_a_secondary),
>+                            str_yes_no(cmtg_state->trans_b_secondary));
>+}
>+
>+int intel_cmtg_init(struct intel_display *display)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>+        struct intel_cmtg_state *cmtg_state;
>+
>+        cmtg_state =3D kzalloc(sizeof(*cmtg_state), GFP_KERNEL);
>+        if (!cmtg_state)
>+                return -ENOMEM;
>+
>+        intel_atomic_global_obj_init(i915, &display->cmtg.obj,
>+                                     &cmtg_state->base,
>+                                     &intel_cmtg_state_funcs);
>+
>+        return 0;
>+}
>+
>+void intel_cmtg_readout_state(struct intel_display *display,
>+                              struct intel_cmtg_state *cmtg_state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>+        u32 val;
>+
>+        if (!HAS_CMTG(display))
>+                return;
>+
>+        val =3D intel_de_read(display, TRANS_CMTG_CTL_A);
>+        cmtg_state->cmtg_a_enable =3D val & CMTG_ENABLE;
>+
>+        if (intel_cmtg_has_cmtg_b(display)) {
>+                val =3D intel_de_read(display, TRANS_CMTG_CTL_B);
>+                cmtg_state->cmtg_b_enable =3D val & CMTG_ENABLE;
>+        }
>+
>+        if (intel_crtc_for_pipe(display, PIPE_A)) {
>+                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(i915, =
TRANSCODER_A));
>+                cmtg_state->trans_a_secondary =3D val & CMTG_SECONDARY_MO=
DE;
>+        }
>+
>+        if (intel_crtc_for_pipe(display, PIPE_B)) {
>+                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(i915, =
TRANSCODER_B));
>+                cmtg_state->trans_b_secondary =3D val & CMTG_SECONDARY_MO=
DE;
>+        }
>+
>+        intel_cmtg_dump_state(display, cmtg_state);
>+}
>+
>+static struct intel_cmtg_state *
>+intel_atomic_get_cmtg_state(struct intel_atomic_state *state)
>+{
>+        struct intel_display *display =3D to_intel_display(state);
>+        struct intel_global_state *obj_state =3D
>+                intel_atomic_get_global_obj_state(state,
>+                                                  &display->cmtg.obj);
>+
>+        if (IS_ERR(obj_state))
>+                return ERR_CAST(obj_state);
>+
>+        return to_intel_cmtg_state(obj_state);
>+}
>+
>+static struct intel_cmtg_state *
>+intel_atomic_get_old_cmtg_state(struct intel_atomic_state *state)
>+{
>+        struct intel_display *display =3D to_intel_display(state);
>+        struct intel_global_state *obj_state =3D
>+                intel_atomic_get_old_global_obj_state(state,
>+                                                      &display->cmtg.obj)=
;
>+
>+        if (!obj_state)
>+                return NULL;
>+
>+        return to_intel_cmtg_state(obj_state);
>+}
>+
>+static struct intel_cmtg_state *
>+intel_atomic_get_new_cmtg_state(struct intel_atomic_state *state)
>+{
>+        struct intel_display *display =3D to_intel_display(state);
>+        struct intel_global_state *obj_state =3D
>+                intel_atomic_get_new_global_obj_state(state,
>+                                                      &display->cmtg.obj)=
;
>+
>+        if (!obj_state)
>+                return NULL;
>+
>+        return to_intel_cmtg_state(obj_state);
>+}
>+
>+static bool intel_cmtg_needs_force_disable(struct intel_display *display,
>+                                           struct intel_cmtg_state *cmtg_=
state)
>+{
>+        if (cmtg_state->cmtg_a_enable)
>+                return true;
>+
>+        if (intel_cmtg_has_cmtg_b(display) && cmtg_state->cmtg_b_enable)
>+                return true;
>+
>+        /*
>+         * The transcoder should not be configured as secondary to CMTG i=
f
>+         * there is no active CMTG, so we also check here to force a disa=
ble
>+         * sequence to keep the hardware in a sane state.
>+         */
>+        return cmtg_state->trans_a_secondary || cmtg_state->trans_b_secon=
dary;
>+}
>+
>+static bool intel_cmtg_state_changed(struct intel_cmtg_state *old_cmtg_st=
ate,
>+                                     struct intel_cmtg_state *new_cmtg_st=
ate)
>+{
>+        if (!new_cmtg_state)
>+                return false;
>+
>+        return old_cmtg_state->cmtg_a_enable !=3D new_cmtg_state->cmtg_a_=
enable ||
>+                old_cmtg_state->cmtg_b_enable !=3D new_cmtg_state->cmtg_b=
_enable ||
>+                old_cmtg_state->trans_a_secondary !=3D new_cmtg_state->tr=
ans_a_secondary ||
>+                old_cmtg_state->trans_b_secondary !=3D new_cmtg_state->tr=
ans_b_secondary;
>+}
>+
>+static void intel_cmtg_state_set_disabled(struct intel_cmtg_state *cmtg_s=
tate)
>+{
>+        cmtg_state->cmtg_a_enable =3D false;
>+        cmtg_state->cmtg_b_enable =3D false;
>+        cmtg_state->trans_a_secondary =3D false;
>+        cmtg_state->trans_b_secondary =3D false;
>+}
>+
>+static int intel_cmtg_check_modeset(struct intel_display *display,
>+                                    struct intel_cmtg_state *old_cmtg_sta=
te,
>+                                    struct intel_cmtg_state *new_cmtg_sta=
te)
>+{
>+        u8 pipe_mask;
>+
>+        if (!intel_cmtg_requires_modeset(display))
>+                return 0;
>+
>+        pipe_mask =3D 0;
>+
>+        if (old_cmtg_state->trans_a_secondary !=3D new_cmtg_state->trans_=
a_secondary)
>+                pipe_mask |=3D BIT(PIPE_A);
>+
>+        if (old_cmtg_state->trans_b_secondary !=3D new_cmtg_state->trans_=
b_secondary)
>+                pipe_mask |=3D BIT(PIPE_B);
>+
>+        if (!pipe_mask)
>+                return 0;
>+
>+        return intel_modeset_pipes_in_mask_early(state, "updating CMTG co=
nfig", pipe_mask);
>+}
>+
>+int intel_cmtg_force_disabled(struct intel_atomic_state *state)
>+{
>+        struct intel_display *display =3D to_intel_display(state);
>+        struct intel_cmtg_state *new_cmtg_state;
>+
>+        if (!HAS_CMTG(display))
>+                return 0;
>+
>+        new_cmtg_state =3D intel_atomic_get_cmtg_state(state);
>+        if (IS_ERR(new_cmtg_state))
>+                return PTR_ERR(new_cmtg_state);
>+
>+        intel_cmtg_state_set_disabled(new_cmtg_state);
>+}
>+
>+int intel_cmtg_atomic_check(struct intel_atomic_state *state)
>+{
>+        struct intel_display *display =3D to_intel_display(state);
>+        struct intel_cmtg_state *old_cmtg_state;
>+        struct intel_cmtg_state *new_cmtg_state;
>+        int ret;
>+        u8 pipe_mask;
>+
>+        if (!HAS_CMTG(display))
>+                return 0;
>+
>+        old_cmtg_state =3D intel_atomic_get_old_cmtg_state(state);
>+        new_cmtg_state =3D intel_atomic_get_new_cmtg_state(state);
>+        if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
>+                return 0;
>+
>+        ret =3D intel_cmtg_check_modeset(display, old_cmtg_state, new_cmt=
g_state);
>+        if (ret)
>+                return ret;
>+
>+        return intel_atomic_serialize_global_state(&new_cmtg_state->base)=
;
>+}
>+
>+/*
>+ * Access to CMTG registers require the PHY PLL that provides its clock t=
o be
>+ * running (which is configured via CMTG_CLK_SEL). As such, this function=
 needs
>+ * to be called before intel_commit_modeset_disables() to ensure that the=
 PHY
>+ * PLL is still enabled when doing this.
>+ */
>+void intel_cmtg_disable(struct intel_atomic_state *state)
>+{
>+        struct intel_display *display =3D to_intel_display(state);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>+        struct intel_cmtg_state *old_cmtg_state;
>+        struct intel_cmtg_state *new_cmtg_state;
>+
>+        if (!HAS_CMTG(display))
>+                return;
>+
>+        old_cmtg_state =3D intel_atomic_get_old_cmtg_state(state);
>+        new_cmtg_state =3D intel_atomic_get_new_cmtg_state(state);
>+        if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
>+                return;
>+
>+        drm_info(display->drm, "Disabling CMTG\n");
>+
>+        intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_A), CM=
TG_SECONDARY_MODE, 0);
>+        intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_B), CM=
TG_SECONDARY_MODE, 0);
>+
>+        intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0);
>+
>+        if (intel_cmtg_has_cmtg_b(display))
>+                intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE, 0);
>+
>+        if (intel_cmtg_has_clock_sel(display)) {
>+                u32 clk_sel_clr =3D CMTG_CLK_SEL_A_MASK;
>+                u32 clk_sel_set =3D CMTG_CLK_SEL_A_DISABLED;
>+
>+                if (intel_cmtg_has_cmtg_b(display)) {
>+                        clk_sel_clr |=3D CMTG_CLK_SEL_B_MASK;
>+                        clk_sel_set |=3D CMTG_CLK_SEL_B_DISABLED;
>+                }
>+
>+                intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_=
set);
>+        }
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i=
915/display/intel_cmtg.h
>new file mode 100644
>index 000000000000..4dfd31906d81
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>@@ -0,0 +1,38 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright (C) 2024 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_CMTG_H__
>+#define __INTEL_CMTG_H__
>+
>+#include "intel_display_core.h"
>+#include "intel_global_state.h"
>+
>+/*
>+ * We describe here only the minimum state required to allow us to proper=
ly
>+ * disable the CMTG if necessary.
>+ */
>+struct intel_cmtg_state {
>+        struct intel_global_state base;
>+
>+        bool cmtg_a_enable;
>+        /*
>+         * Xe3_LPD adds a second CMTG that can be used for dual eDP async=
 mode.
>+         */
>+        bool cmtg_b_enable;
>+        bool trans_a_secondary;
>+        bool trans_b_secondary;
>+};
>+
>+#define to_intel_cmtg_state(global_state) \
>+        container_of_const((global_state), struct intel_cmtg_state, base)
>+
>+int intel_cmtg_init(struct intel_display *display);
>+void intel_cmtg_readout_state(struct intel_display *display,
>+                              struct intel_cmtg_state *cmtg_state);
>+int intel_cmtg_force_disabled(struct intel_atomic_state *state);
>+int intel_cmtg_atomic_check(struct intel_atomic_state *state);
>+void intel_cmtg_disable(struct intel_atomic_state *state);
>+
>+#endif /* __INTEL_CMTG_H__ */
>diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/=
drm/i915/display/intel_cmtg_regs.h
>new file mode 100644
>index 000000000000..082f96cad284
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>@@ -0,0 +1,21 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright (C) 2024 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_CMTG_REGS_H__
>+#define __INTEL_CMTG_REGS_H__
>+
>+#include "i915_reg_defs.h"
>+
>+#define CMTG_CLK_SEL                        _MMIO(0x46160)
>+#define CMTG_CLK_SEL_A_MASK                REG_GENMASK(31, 29)
>+#define CMTG_CLK_SEL_A_DISABLED                REG_FIELD_PREP(CMTG_CLK_SE=
L_A_MASK, 0)
>+#define CMTG_CLK_SEL_B_MASK                REG_GENMASK(15, 13)
>+#define CMTG_CLK_SEL_B_DISABLED                REG_FIELD_PREP(CMTG_CLK_SE=
L_B_MASK, 0)
>+
>+#define TRANS_CMTG_CTL_A                _MMIO(0x6fa88)
>+#define TRANS_CMTG_CTL_B                _MMIO(0x6fb88)
>+#define  CMTG_ENABLE                        REG_BIT(31)
>+
>+#endif /* __INTEL_CMTG_REGS_H__ */
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 4271da219b41..90da608f248d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -62,6 +62,7 @@
> #include "intel_bw.h"
> #include "intel_cdclk.h"
> #include "intel_clock_gating.h"
>+#include "intel_cmtg.h"
> #include "intel_color.h"
> #include "intel_crt.h"
> #include "intel_crtc.h"
>@@ -6828,6 +6829,10 @@ int intel_atomic_check(struct drm_device *dev,
>         if (ret)
>                 goto fail;
>=20
>+        ret =3D intel_cmtg_atomic_check(state);
>+        if (ret)
>+                goto fail;
>+
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) =
{
>                 if (!intel_crtc_needs_modeset(new_crtc_state))
>                         continue;
>@@ -7757,6 +7762,8 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>                         intel_modeset_get_crtc_power_domains(new_crtc_sta=
te, &put_domains[crtc->pipe]);
>         }
>=20
>+        intel_cmtg_disable(state);
>+
>         intel_commit_modeset_disables(state);
>=20
>         intel_dp_tunnel_atomic_alloc_bw(state);
>@@ -8582,6 +8589,10 @@ int intel_initial_commit(struct drm_device *dev)
>                 }
>         }
>=20
>+        ret =3D intel_cmtg_force_disabled(state);
>+        if (ret)
>+                goto out;
>+
>         ret =3D drm_atomic_commit(state);
>=20
> out:
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/g=
pu/drm/i915/display/intel_display_core.h
>index 554870d2494b..d0b039114e2d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -354,6 +354,10 @@ struct intel_display {
>                 unsigned int skl_preferred_vco_freq;
>         } cdclk;
>=20
>+        struct {
>+                struct intel_global_obj obj;
>+        } cmtg;
>+
>         struct {
>                 struct drm_property_blob *glk_linear_degamma_lut;
>         } color;
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers=
/gpu/drm/i915/display/intel_display_device.h
>index 9a333d9e6601..a126247eb6b8 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>@@ -145,6 +145,7 @@ struct intel_display_platforms {
> #define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >=3D 11 &=
& HAS_DSC(__display))
> #define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)->has_c=
dclk_crawl)
> #define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display)->has_=
cdclk_squash)
>+#define HAS_CMTG(__display)                (!(__display)->platform.dg2 &&=
 DISPLAY_VER(__display) >=3D 13)
> #define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display) && IS=
_DISPLAY_VER(__display, 7, 13))
> #define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)->platfo=
rm.rocketlake || (__display)->platform.alderlake_s)
> #define HAS_DBUF_OVERLAP_DETECTION(__display)        (DISPLAY_RUNTIME_INF=
O(__display)->has_dbuf_overlap_detection)
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index 497b4a1f045f..3e1483814e8d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -25,6 +25,7 @@
> #include "intel_bios.h"
> #include "intel_bw.h"
> #include "intel_cdclk.h"
>+#include "intel_cmtg.h"
> #include "intel_color.h"
> #include "intel_crtc.h"
> #include "intel_display_debugfs.h"
>@@ -269,6 +270,10 @@ int intel_display_driver_probe_noirq(struct intel_dis=
play *display)
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
>=20
>+        ret =3D intel_cmtg_init(display);
>+        if (ret)
>+                goto cleanup_vga_client_pw_domain_dmc;
>+
>         intel_init_quirks(display);
>=20
>         intel_fbc_init(display);
>diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/=
gpu/drm/i915/display/intel_modeset_setup.c
>index 9db30db428f7..737a43916ac5 100644
>--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>@@ -15,6 +15,7 @@
> #include "i9xx_wm.h"
> #include "intel_atomic.h"
> #include "intel_bw.h"
>+#include "intel_cmtg.h"
> #include "intel_color.h"
> #include "intel_crtc.h"
> #include "intel_crtc_state_dump.h"
>@@ -702,6 +703,8 @@ static void intel_modeset_readout_hw_state(struct drm_=
i915_private *i915)
>         struct intel_display *display =3D &i915->display;
>         struct intel_cdclk_state *cdclk_state =3D
>                 to_intel_cdclk_state(i915->display.cdclk.obj.state);
>+        struct intel_cmtg_state *cmtg_state =3D
>+                to_intel_cmtg_state(display->cmtg.obj.state);
>         struct intel_dbuf_state *dbuf_state =3D
>                 to_intel_dbuf_state(i915->display.dbuf.obj.state);
>         struct intel_pmdemand_state *pmdemand_state =3D
>@@ -906,6 +909,8 @@ static void intel_modeset_readout_hw_state(struct drm_=
i915_private *i915)
>         }
>=20
>         intel_pmdemand_init_pmdemand_params(i915, pmdemand_state);
>+
>+        intel_cmtg_readout_state(display, cmtg_state);
> }
>=20
> static void
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 765e6c0528fb..b34bccfb1ccc 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -3565,6 +3565,7 @@ enum skl_power_gate {
> #define _TRANS_DDI_FUNC_CTL2_DSI1        0x6bc04
> #define TRANS_DDI_FUNC_CTL2(dev_priv, tran)        _MMIO_TRANS2(dev_priv,=
 tran, _TRANS_DDI_FUNC_CTL2_A)
> #define  PORT_SYNC_MODE_ENABLE                        REG_BIT(4)
>+#define  CMTG_SECONDARY_MODE                        REG_BIT(3)
> #define  PORT_SYNC_MODE_MASTER_SELECT_MASK        REG_GENMASK(2, 0)
> #define  PORT_SYNC_MODE_MASTER_SELECT(x)        REG_FIELD_PREP(PORT_SYNC_=
MODE_MASTER_SELECT_MASK, (x))
>=20
>diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>index 5c97ad6ed738..cd0e25fce14b 100644
>--- a/drivers/gpu/drm/xe/Makefile
>+++ b/drivers/gpu/drm/xe/Makefile
>@@ -199,6 +199,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>         i915-display/intel_bios.o \
>         i915-display/intel_bw.o \
>         i915-display/intel_cdclk.o \
>+        i915-display/intel_cmtg.o \
>         i915-display/intel_color.o \
>         i915-display/intel_combo_phy.o \
>         i915-display/intel_connector.o \
>--=20
>2.47.1
>

Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD4AAF7371
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 14:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E9910E046;
	Thu,  3 Jul 2025 12:14:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kiLO0UNK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8B210E046;
 Thu,  3 Jul 2025 12:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751544878; x=1783080878;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=18p5DXR2+CPt2Wv8E6u7QLqbX6B48ze9RFk+N0TlFDo=;
 b=kiLO0UNKOdF5xN3AMYAzJxqCMdIx8974Xs1OY/9yEwQKi9WZ02jnqMdE
 6jc0PSQTVIV3FgWr8Cyx0h05Be0p+eiyrdirYMXPOPdAiyrrCmJit2J8u
 uSl+8Es4gixW3WzZnFMJvtumIFoZzDcBxO9Gf9lXBqRriPCf7nSy+8Pbi
 f6Or29V+qrEpyZw4wQ92QP60ZTv9c2CRCPlyhuk2Gz1CzA234t2pG3qIl
 x+cv+z5Chz0T/y0vnedGnPYO5mQYn3HHmydXOUuOosdgBYEHD/n37VXqe
 D5xEpL0LkXv0G8s7PiJ/ulr70tAH0n/+hRdaZiGbki65ku+4bVnhm9GL0 w==;
X-CSE-ConnectionGUID: xkobufItR128T9NILmOs9w==
X-CSE-MsgGUID: 40CBjvPWQ2yvrgLZipZHbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53587015"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53587015"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:14:37 -0700
X-CSE-ConnectionGUID: dPCkXRYgRD2EuYSQp3CNCw==
X-CSE-MsgGUID: jxTY5S9eRn28XSYcy13whw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154481486"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:14:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 05:14:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 05:14:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.73) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 05:14:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t1R8F0+JMyUcMlwdFp8t3/fF9VpzX+OB6wzY5ashqG6u1MHlA6Q9lXfXVVZaDsf3IBDrygXmUP1Z+sBO9faiJjiibf/W2KOatFveLIN/0EiugeS6J5Qa/eWAP7cmnywV5kBFFpNCs/z6lSj/07Mt/LT6GDTIFe6JEfePYbxm5Cxl2bFRMnhHcrMkR9as3orxjURF324LTgwjan6d5PJaey76Rh8OEKQV90QEO2dww1WCzbDFVQkFlf8wihSDTWRR+9MxmN3KTdUacuXBMaR7lQYaPC+i4f459MBmPuVPQgtikaz1gfq48vAamdpWLi/wsiUMCbDp4WTc9xORoxLr6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YQnKv2Gn9MOTQZ2D4r01fFnvKCosmWIubiIA12ZZeUY=;
 b=p2K5nSM+yg3vrgYqTAXvyjaqRW+xqM8mPp9l7eJDRVnDCAhQeW5fa/ylBNfr0lFQSetjMFggF6GLJRiKRVi+QYC19jq1RFbAqadnEXx78WtGK35HlWe3K+1I8yQ5f/i75NzCynbfwEiyROW0/x1WujzXq9Ki45ZQ4HhDQ+6P7sGmhCpDaVSvYVkPQv2idPbluLBzfI4UwVp5/m7JkFheB46qDCmJDhpeABRevVyXcHdpLihXjc/HFpbOgNDexQDHuG5o8fH7XXjyFnJ7PwPygjZDR6e6jrVwY7YCEOINNCTFFqMjJl5u51A5FBfb8qvAILSjjnVMikDNkLxit+77jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7945.namprd11.prod.outlook.com (2603:10b6:930:7b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Thu, 3 Jul
 2025 12:14:19 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Thu, 3 Jul 2025
 12:14:19 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <366899c2-e67d-48bb-8069-af77d78cdb0b@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
 <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
 <aGWkwQZB_hSsjgQ4@intel.com> <aGWpag7dGRUAVZfU@intel.com>
 <366899c2-e67d-48bb-8069-af77d78cdb0b@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, Ville
 =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Date: Thu, 3 Jul 2025 09:14:15 -0300
Message-ID: <175154485563.3748.2947565102493936747@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0077.namprd03.prod.outlook.com
 (2603:10b6:303:b6::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7945:EE_
X-MS-Office365-Filtering-Correlation-Id: 3964c33a-bfa3-459a-3a57-08ddba2b2329
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NzRBYVZLZUxpYzA4dWNvQ05rVGRRYTdMdjNDVFR3Yit1Z1RSWVllSE1TMG1M?=
 =?utf-8?B?UytvUXd1aWFPTUVPcTNkVkF1QlN1b0pCUnU1aUppQ09DbUMvc0hnOUZNaEZH?=
 =?utf-8?B?aHpjamo2NSthdXZ0VHBaRGkwN1crcjZ1RTA3eG45RHUvaFhVRlUyN3Z0MmlT?=
 =?utf-8?B?dnZPSUtoYi9leGVYQ20rTjYrcUhFbFR5MDBFS0pkTVNlVGU3VG1yV3FXNUZH?=
 =?utf-8?B?WFdCZkJtN2J6b0F1dEM4UDg4UDA4OGtWc2xuWjRlbjVxQXFVeWZJU1laN2Rs?=
 =?utf-8?B?MENqL3o5S1JJQVlWWCtFZmVuNGwzUEdDWjZBSVJnNVBXU2pFZEw3ZHM2aGFk?=
 =?utf-8?B?R01mL0NqdUlHOTFHLzNEanVJclFmVDlQVkovV1dDdWdidlZ3L2NEUFJaSXVC?=
 =?utf-8?B?TVNDUjYzeHVrTzdVVjZiUWZWcllOZnJGKzhKUVRSZk91SWVjTUxXU0xxWVBV?=
 =?utf-8?B?ZzB4S3p1Uzd6eVMxYlltOGgxdjNsOCtGdk5GcFl3MDZvTWd5Lzl6UGlJZURP?=
 =?utf-8?B?Wmh6d3JUOWM2ektPRmpjaEZNaEI1d0JiU0h0bkF2TDFuV0Y3UU1Td0c2Y2Iz?=
 =?utf-8?B?MUl1dWZBcFp4VXlsUTFWMk9VVVdwbkpMbDN2SDA2Ulpid1RuMndhaVY2ckhE?=
 =?utf-8?B?RDVWaXFUV3QrV3dzU0tpb2owZU0vUmptK2RiSDF2K2xZWVFZWEpadU1icm94?=
 =?utf-8?B?aTljWUtGRmxBOWxRNzRDN3hjVEZJelVHMk42VVY4aDU3THRCKy9HdHg0RDhz?=
 =?utf-8?B?RUxYL1NLWDY3bWVjQk9JNnVkT3RxUjg1MlhNaGllWWRhTDBJWWxmNFVlakEy?=
 =?utf-8?B?VitXdUZ4U2NqTjZLTnVoZW5GZEkzZDIyWkg4b1UxbWNrVmJJRjYxcDVGTFdO?=
 =?utf-8?B?ZWlYYWk1WlZBM3hsOUVTb01aNFJRNVdqbTVVYnNiQ01iN1pBWVdDNnhKaWhr?=
 =?utf-8?B?a0xGL2h5VlZBeDZiUWJjWm9SKzA1bkpyazlYQmx3ajN3UlRxaitkVGpZV0dD?=
 =?utf-8?B?bnZhMGZ0M3BvYnc5RUJ4MmYrMUhtMDliTVl2ME1KcmRWU2xsYU5SM0diRzcy?=
 =?utf-8?B?SVY3Z2FHdzczaGUrdloweVhzYk5jMHcvQ1lHSjFuQ2NQeTRiY3R3TXYrS1J2?=
 =?utf-8?B?S3I1U0hCQXlDOVpSWEx4QjdBZEpVUTBiVStGMVZCZlE5d1lUUEhkcFpBZzZ1?=
 =?utf-8?B?ZDNrVjhBZlJlMTcrdnFBM2N1VTZmRUdXQUVLWk13R2xUcVlqVVprZ2krZFZF?=
 =?utf-8?B?c0NhM2pBTmNlbVl1YUVxK2dJVGE0eTRkVmFiUDBuZ0s3cW1tcUhqU0dJQlh3?=
 =?utf-8?B?N0Fqckt4OWhJMU81dkk1OGZubWtvVDdnUEJQTEtUcHBjbHptVWRySm5NaUZt?=
 =?utf-8?B?UFlLQzVPdVNSbUdPeGdrUi9BSTJwUnFjRTdWMzROTzRDMDhuQTl4cWp0V0Z6?=
 =?utf-8?B?d3dibk9SQzdRRmk2ZmZYQWZQWE16UzJWU1huaHdFcUNWakI2SUl2VVhHeVFZ?=
 =?utf-8?B?MWF4alpjUFdBSVdWd0w1QUNHdVdmUE80dU1UakdobGhYb2FGRUJyN0hoV3dK?=
 =?utf-8?B?OU1mMGZCZ0xudzR5M3FKblVIU2ZuRTZPbStQWnlhZUxYRm9CTGlOUXdXeXJx?=
 =?utf-8?B?djlyZzJEVFczSVVjb2VncllEV05Yc2R6UDNvdDRpZWNGZUZuVmR1RElLZFVn?=
 =?utf-8?B?ZFRtS2NSSDF4UzJLWXhkeXRRZS9jTHUyb1hXd25qcXc5Z3RnY3NFeTc4ejhj?=
 =?utf-8?B?bjM4S2lQMjlDT2JWS054TlBOUlk2bFZYWllDMERBUHl1cU5ldE81bDJnMms1?=
 =?utf-8?B?R0t2UHhWSW56QzBSNWx2aHlzdzR3U2s3dE5rdmhzOUs1STBCR3RwRkFzOHI3?=
 =?utf-8?B?Q0xVZHN2b24vcEk0QTZvbU1Id1JlWEdiYllBZnVPaE1qeXI1TXgyN2FSWGVB?=
 =?utf-8?Q?UhknHuvm338=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aitOTjlVUDZJcy9YRFRhcCtlSUhMU1RwTWNlbStIMmVGQmxrR0RqeWN4aytK?=
 =?utf-8?B?LzdSWThZdzhEeFNOcGNRRXIvbmJybDA3RlUrTTNsaWcyN0NDQ0NrNnFtSnQz?=
 =?utf-8?B?VW1uZm5mMkJ1N2RQVWpLM0lXaGxXVWg0SE1tQlVRRXRRZGE4ek9Ec1N4SmVq?=
 =?utf-8?B?eUF3Y25QaGkrRmNnbUdpeE5oS2NEbExwQTJJM3RBaHhmQlN2TXl0QnlhdmZq?=
 =?utf-8?B?SG5DVWVDOHVNWlN6VU1IeUFEcEExYjEyZ2V6Tkt6VG5MQk5nZnFuL2N4QXpT?=
 =?utf-8?B?R1hnQUUwMFBsT0owamx2WmNWTzh2dXNMTk9uekRlTWIzcStCYVdaU2wzcW9S?=
 =?utf-8?B?UUtFY01ISTlINHZRRDUyWW9QUVNqbTE0V0wxZlB4OGtzbER0cVNaTTd2Y3lw?=
 =?utf-8?B?YWE1QXhMRk9nNGpBVWM4T09wSkpleW91UjVnSmNoTWhzVDJGeXd6RkdTb01j?=
 =?utf-8?B?YW5pbzh1dURISFYrUVgwVk9uTHQyZ3NHRG0yVHc2MHl4TmRQU0V4QVhLSmFY?=
 =?utf-8?B?MDNwa2EzWVVHOHUyYzJoSmpieno0Rm5uSlRIeUN3Q2NQMXhBVkJmT3V3YWlE?=
 =?utf-8?B?V2ptUzQzWVdnaXVVQ2Z3Z2hNZm83Z3YvbjRMWXFITnZ1eFRYQ0NhZjhFTVIr?=
 =?utf-8?B?eWp4NEpreFJSTm5NUmc1VlE4RVpqZFV4RlBsaXdDaGE2ZWlsRElIWFZaWDdo?=
 =?utf-8?B?QzZmM1UwdUdXWU5Ec3dQTjlVN215NTRQaWZIczlFaGdqYVppL0RqYWtSejFR?=
 =?utf-8?B?WG5qRjNlaUg2WlQxUWY2QnJwR0M2NTJDcFFUMDB5cndWTklMUDRvMko4V1ZO?=
 =?utf-8?B?QWNsZzZlckhSeGJwMG04UEpxcHFzcHdvam9DdXhwYkVEYlRWM1Z6eFcwMndl?=
 =?utf-8?B?RHMySE9PanJQSHNEVnAycHdvdzRyQ1plRFZkcXFGRCs2Y0U0RStsM1E0d0xE?=
 =?utf-8?B?R2NGbWttc0JHN3dmeWtyNmVUYk8yTklOUUQ2MFlTRkE0RE91eVZLNFVCNm5G?=
 =?utf-8?B?QUN0ajQyamFkRTJEeUtwWUFGTWJ3aGhDSXZYV3l5dTA1SkM3SW5qK2FVNUlG?=
 =?utf-8?B?d0dRRkRMWTA4a2xlby9uR01lcUhhR2w4U3JxZWwwK0oyVGE0NmMycXF5RXRt?=
 =?utf-8?B?OXNRd2xJTUtQemlmd254RHIzZ1dKWW9pald0VlpKR21GdGtUbXdmL3BxZmIz?=
 =?utf-8?B?akkxNUp1Q1crT0xmWXN4OGNWSHIwelV3SlpkRnV4Q3owSUVJR2pNYnRiL29q?=
 =?utf-8?B?SUVzQjF2WmRwbk5WVHlvaUJJL0ZkZXBpdDY3S1JCL0RHZmVBVkx2WTFXRmN5?=
 =?utf-8?B?cWtKZjhsalZyeGJCZldsUzQ4OGJwZ2VXbEJ4QTArUk91TWcwSVhyU3Z5WnU3?=
 =?utf-8?B?blRWeGFER3VqMnhKbDhOYXBWMGY3cFE0blBOMVA1a1plZTVKV3FlVmhYeVJL?=
 =?utf-8?B?aXYvMXgrQ0ROTk93SlpkZnViOEs3ek92dHhkVlpmSWlwd3dkVENVMU1ZcEtI?=
 =?utf-8?B?RFZPNG5oTGpyMHljdDd2cld6SlVZMjRwTmVTdDZiUjUzMWVGU1NaK2dyaGNE?=
 =?utf-8?B?amplMXcyejhSS2lSU2JMV0U1WGdIaWRmZm4yOVc4dFFLaGs0UGJXcjJZSlFD?=
 =?utf-8?B?OCtvenF0ZVNWWll4OTJ6NC9DYTB6WHdSVndTUVhuTVh6eE9LbVY4U0J1NkZp?=
 =?utf-8?B?eE4yNm40d05oRldpeWZuSnMwd1BZOHdGMHo0RUpZMlA2UVA4dTl1TjNvT1dY?=
 =?utf-8?B?T240QmFsKzFqVnFSalVTZWNRelNZcEREL0JQRGI2QVRJQkdTZ3lTMjJDQmRl?=
 =?utf-8?B?THRQZG9IenpqOGxaTWVlVmsyL01IbnY4c1B6dUh1QnpVYUQxQk5IcDcrQ3Nl?=
 =?utf-8?B?MG52TS9zcjI3YnprZXB0U0JlQmkvRDJLRTZ4SC8vcWorUlVqd1czNXB0RUhT?=
 =?utf-8?B?RkdpLzE5dFc5bDdUZEVrVGhBVjkrV3VKOFAwMGlQTFBwcWtkeUJoTXFOaUNW?=
 =?utf-8?B?dHNTL1NDRjJmNSsyb0VGQVJsSGRPSnV2VlA3bzZOdFBsSmJhajFDWUVKeEJh?=
 =?utf-8?B?SFgzd2lGQWZ6REl5c3dLNEhIUHpIWXBoaGsxWEQwcDBmaitJK2JEL2hjYk9W?=
 =?utf-8?B?QWNoalZNZkozSSt3elRiQmpXd2dYMnRnQXZzWVVVYnNBZ2pLQi9iVVB6UEVD?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3964c33a-bfa3-459a-3a57-08ddba2b2329
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 12:14:19.3821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cDxoTtSR5DiSXjYCo7SyUudk+cX3sloUpNfuYGpw3Rh0yVIuYTgpqY6XfYlJaPD+/bokF3MnWQBF9ei+SwWfyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7945
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

Quoting Nautiyal, Ankit K (2025-07-03 06:30:19-03:00)
>
>On 7/3/2025 3:19 AM, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Thu, Jul 03, 2025 at 12:29:37AM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>>> On Wed, Jul 02, 2025 at 03:25:21PM -0500, Lucas De Marchi wrote:
>>>> On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrj=C3=A4l=C3=A4 wrot=
e:
>>>>> On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
>>>>>> Introduce a generic helper to check display workarounds using an enu=
m.
>>>>>>
>>>>>> Convert Wa_16023588340 to use the new interface, simplifying WA chec=
ks
>>>>>> and making future additions easier.
>>>>>>
>>>>>> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_=
wa
>>>>>> macro. (Jani)
>>>>>>
>>>>>> Suggested-by: Jani Nikula <jani.nikula@intel.com>
>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++=
++
>>>>>>   drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
>>>>>>   drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
>>>>>>   3 files changed, 25 insertions(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drive=
rs/gpu/drm/i915/display/intel_display_wa.c
>>>>>> index f57280e9d041..f5e8d58d9a68 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>>>>>> @@ -3,6 +3,8 @@
>>>>>>    * Copyright =C2=A9 2023 Intel Corporation
>>>>>>    */
>>>>>>
>>>>>> +#include "drm/drm_print.h"
>>>>>> +
>>>>>>   #include "i915_reg.h"
>>>>>>   #include "intel_de.h"
>>>>>>   #include "intel_display_core.h"
>>>>>> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display =
*display)
>>>>>>           else if (DISPLAY_VER(display) =3D=3D 11)
>>>>>>                   gen11_display_wa_apply(display);
>>>>>>   }
>>>>>> +
>>>>>> +bool __intel_display_wa(struct intel_display *display, enum intel_d=
isplay_wa wa)
>>>>>> +{
>>>>>> +        switch (wa) {
>>>>>> +        case INTEL_DISPLAY_WA_16023588340:
>>>>>> +                return intel_display_needs_wa_16023588340(display);
>>>>>> +        default:
>>>>>> +                drm_WARN(display->drm, 1, "Missing Wa number: %d\n"=
, wa);
>>>>>> +                break;
>>>>>> +        }
>>>>>> +
>>>>>> +        return false;
>>>>>> +}
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drive=
rs/gpu/drm/i915/display/intel_display_wa.h
>>>>>> index babd9d16603d..146ee70d66f7 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>>>>>> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_1602358=
8340(struct intel_display *disp
>>>>>>   bool intel_display_needs_wa_16023588340(struct intel_display *disp=
lay);
>>>>>>   #endif
>>>>>>
>>>>>> +enum intel_display_wa {
>>>>>> +        INTEL_DISPLAY_WA_16023588340,
>>>>> How is anyone supposed to keep track of these random numbers
>>>>> and what they mean?
>>>> they mean there's a h/w workaround that requires that and this is the =
id
>>>> if you need to find more details about it or what platforms/IPs use
>>>> that.
>>> I don't want to go look up all the details in the common case.
>>> I just want to read the code and see that it generally makes
>>> sense without having to trawl through the spec/hsd for an
>>> hour every time.
>>>
>>>>> The only time I want to see these numbers is if I really have to
>>>>> open the spec/hsd for it to double check some details. Othwerwise
>>>>> it just seems like pointless noise that makes it harder to follow
>>>>> the code/figure out what the heck is going on.
>>>> what is the alternative? The current status quo checking by platform
>>>> and/or IP version, dissociated from the WA numbers?
>>> I find it easiest if everything is in one place. I think every
>>> w/a generally should have these:
>>> - which hardware is affected
>>> - what other runtime conditions are required to hit the issue
>>> - what is being done to avoid the issue
>>> - a short human readable explanation of the issue
>>> - the w/a number for looking up futher details
>>>
>>> Splitting it all up into random bits and pieces just means more
>>> jumping around all the time, which I find annoying at best.
>> I suppose one could argue for a more formal thing for these three:
>> - which hardware is affected
>> - a short human readable explanation of the issue
>> - the w/a number for looking up futher details
>
>Whether adding comments with platform and relevant information about Wa=20
>would be sufficient?
>
>Something like:
>
>/*
> =C2=A0* Wa_16025573575: PTL/WCL

I would not add the ": PTL/WCL" here. The information is already in the
function body and, based on what we have seen on i915, it is easy for
those getting out of sync with the conditions in the code if people are
not careful.

Also, PTL/WCL would not be very accurate: the workaround applies to the
display IP (which could get re-used on another platform) and not the
platform itself.

--
Gustavo Sousa

> =C2=A0* Fix issue with bitbashing on PTL.
> =C2=A0* Set masks bits in GPIO CTL and preserve it during bitbashing sequ=
ence.
> =C2=A0*/
>static bool intel_display_needs_wa_16025573575(struct intel_display=20
>*display)
>{
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 return DISPLAY_VER(display) =3D=3D 30;
>}
>
>Or we want to have some wa_struct with fields for platforms and stuff?
>
>
>Regards,
>
>Ankit
>
>>
>> Might be still a real pain to deal with that due to having to jump
>> around, but at least it could be used to force people to document
>> each w/a a bit better.
>>
>> Basically anything that avoids having to wait for the spec/hsd to
>> load is a good thing in my book.
>>
>> There's also the question of what to do with duplicates, as in often
>> it seems the same issue is present on multiple platforms under different
>> w/a numbers.
>>

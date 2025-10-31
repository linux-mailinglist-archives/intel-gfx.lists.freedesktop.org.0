Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FCAC2348A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 06:15:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE47F10E1B5;
	Fri, 31 Oct 2025 05:15:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VnYo26c8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D05B710E18A;
 Fri, 31 Oct 2025 05:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761887727; x=1793423727;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bx0MViud9ZlDZoAL4n79bLk2rBdP+UPpoiwDdBxjOJE=;
 b=VnYo26c80Wu0IEfWQUCZUNSYy/X3Rs89OSB5XecEZfuGWI94vHCKDON0
 I5wf1Zla4lDdmYyoZauO2lHw005rGW/LLzjZ7OYZCY3DuP4L0zgKcJvUi
 un5eIKYzzO9FcEAzQl4R72nxPjtO0+WdItIvnmhmVnKGMK/LjfLQnyRNJ
 o/FuPwGysbWXG19vj+otlcnGDOz1O8a/TNs8kXR2LM0GmAbJ8/fZIZFs/
 +xn+CBLpe8eFnKIw49s7Z6GjGIRVQI2GRq/lx46ORnF8Kkmrb8XVbElXn
 kjtwbdQHCJYYFCu6XQfj9NDJufSiBnlYP3PFZOh5SGOa3BeL++ffzHHd4 g==;
X-CSE-ConnectionGUID: 5BCvgklPTCiUuIIlsn1k7Q==
X-CSE-MsgGUID: pB0kSpA5Q2OYFJR1WZ4xlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="67901864"
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208";a="67901864"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 22:15:26 -0700
X-CSE-ConnectionGUID: Rb1Nw7EXTG2RQHEi37/vSA==
X-CSE-MsgGUID: HZ8DkYJ9Roqiiim2LDnAVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208";a="216978145"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 22:15:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 22:15:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 22:15:26 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 22:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=geu2OgmieqxD0PLdrcy9hxqjwtKsXoGcilk4ltm5MoxnHsqce5DLHExMA3cZVuLIeGwVyCeupBQgGAnyza1CKnxzGKa5rHdETNzgCpyFmVYjtoqYJFQAFi0S/EPvuNnKuPaSg55t2IlsEGumtZzjZAJWrHTeWJsLfdYePS5PmW2OOec+fvRMOUrpwJRecoZx2+CVeLlAaG7EpY3AU9Fp+/Y8QnIx0njhAhfU1baKvA6huGH4rMGKYtL2svT7G1P09JiQc1x9B3W4QR6VyExXz+41xwY4ozx5F6UlHe/51p0zf1oNh09IOe5eILIIOTIhfd6astjtUjU7vpLjUV1XsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dA5UzAjk5MdRsf399P520tc7RGhDsXJRnfR8Kry8a5g=;
 b=sW7v/tkp7exeEbtEL9FVLlXCHRmwKQgQ/lf2BjmMTeNieNC0P0o946XCbr8VgM6TPeb3B7IeEhLQirlsc53/VS3aye1kl4bqidwp4XgockDPro2a4DKn2CXh88qNJt1/uWw382FcAau8MCbKZKz5w6FbGRaNejd5S+sNu/U1deMra+f1PduG7aDsSrLVzML30Z11CKKRUNEmiZ0ZtpmftEthv0u7z+vcyrsfJoFyS6UnHWdY8Tr7Z8z9XWib5yj6ctpxqDvvVR6Vq7dq0/JzTOmTD2P28CTz/db0HqpobyCweGRRn2cmZc/tAxWSUytgGKm64Hyus7s5qqa8dYJDVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.12; Fri, 31 Oct
 2025 05:15:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Fri, 31 Oct 2025
 05:15:22 +0000
Message-ID: <2de1d59b-08d0-4454-bf20-b6027840c137@intel.com>
Date: Fri, 31 Oct 2025 10:45:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/26] drm/i915/ltphy: Add function to calculate LT PHY
 port clock
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <arun.r.murthy@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>, Nemesa Garg
 <nemesa.garg@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
 <20251024100712.3776261-13-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251024100712.3776261-13-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0147.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8280:EE_
X-MS-Office365-Filtering-Correlation-Id: 404ff6de-0a44-4f1f-a3c0-08de183c7ddf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T2YzMnVjR0crdDdMTzkzZTNsejJLUEM4Zzl1VTU1bVMrYzdObFlZcnR1Qlp5?=
 =?utf-8?B?aExqeGpzVEMwbi92TFluQU5nN205UWtKMHFqZ1hUZjdtNis4dlZsSzhUV0lE?=
 =?utf-8?B?ZHZBQ3k2Nk5WRkdkRlhtUFV0VldwMThlYmUwQXVEUUZTUzVOSG04bmc3TUtS?=
 =?utf-8?B?MENSK3Y0QjJoZG0xd3IzNmpKaDlsVlZVT2puTVVWRVIwVGZOVDJJanFBWVU1?=
 =?utf-8?B?MnRnSTlZVzhQL2ZnTlNVYU5vMlNuYnpJNEUvY2NLRWtTTTBhbjI1cDFtUlBP?=
 =?utf-8?B?L1hkZnZUbURUZHhnM1lXNjFYM3V2cTFUUXk2RndEa3JhZUhuSzlrY1dMN2Zl?=
 =?utf-8?B?b0E3RFdKUzlJdVRSRUp4c2ZockxzWkp4dWFGSFdldFpBVkk2QXkyZnNtRjdZ?=
 =?utf-8?B?cFBPV1ovWktLcjhFZW9wajU0OHphN1phOXdsS1VoelZ6K0VDWDZKMEVLa1pF?=
 =?utf-8?B?dTI4c25wU3plbUI0MS8wamVERzFtTXdBTVp6S3EyTHBKNnF4OXlrUytyRW1l?=
 =?utf-8?B?UDgyYzRtMjdFZXFzWERYT3RMaGJDRVBSMy9VcDd4VUJ1VEk2OUowSGZCK0lu?=
 =?utf-8?B?UkpSTFRlOS9kZ0ZjdytuSXFpMjRtMEloR09jbWZ1VGJLaWx0alYwU1hnVVBB?=
 =?utf-8?B?Ni9sWU4zS0dBbVBYV3hmbWJ0cjJuMnp6WGZBQWUvVGtlTnVENkZTWEV5MVBj?=
 =?utf-8?B?NWU1dkRGU2Ria3dNejRwWXFZK2lyUjhuZzlXdzQzTEpyNVluSi9OQm5rQ2tz?=
 =?utf-8?B?K25mRnErYWFlYlV6L1BJQk9LdHVEVkc3dUZEQk8zYld0d1F5dC9uN2FoVkFV?=
 =?utf-8?B?cWc5SUl0Z0g5RHFHNU5ubVhQSEY3cTFnMHVkNE9HQnR6ell6aUptU1hYdFdp?=
 =?utf-8?B?dllLVm0ycTJsNGZsMHVXYkhsT09qUi9VdSsvdWtSUHUyRXBheTJSOWdNb2di?=
 =?utf-8?B?Yzhkd3hvMnkwMTFKaUk4MU5VSmJqR0kzZ2hyKyt0YXZKaGxUVnAwckpRN0xB?=
 =?utf-8?B?OS9ma1FHTERQSENaZDZaNU9zeHhmOVZPMUVHRmk5bGxGVlRZVXFpaW51UHM2?=
 =?utf-8?B?dTI0U1M2SVhSZW1meDQxRzd5QVRqU3pxbnRQTGxmTlo3MENVak1DZnhQNS92?=
 =?utf-8?B?WVBsR013UHNMWDd6WUkwUktBRGFMdTZoSERZOWpJUU9aNlNhTk1sK043dTZr?=
 =?utf-8?B?QVl1K0tiT3k2N3dtMkRXTm5EaWU3aE1qMFA2eWF3eTNtNFk4Y2gvQ1hWUFZY?=
 =?utf-8?B?azhWMUZVYzdvcGczNXBZQUFZMWRITnpIUERGNXBkSEY5enVXSFpRYkhxQ2ll?=
 =?utf-8?B?bGUxM1pLdTd3TkI1WVZDYTVwa3JPVVhURWVvZHBMVnF0U005bUNhYzBQS3BP?=
 =?utf-8?B?OFRBajFqYXZWa0FyUzZoS1JZSVQ2ODdocGdsUTFOYkx1ZnFHdFhlcDFIbkdJ?=
 =?utf-8?B?RCt3TDZUaTNvTXJvMHZVZmJad29YS0xKRDczeG5lT2J2dHpxMVF5VW04eXh1?=
 =?utf-8?B?UlRhY0pacXRzZEYxbEZSNGtlYUJWVk8vZllnNnB3YmkyNFpaRG14SDFIRGpI?=
 =?utf-8?B?L21LUGZpTFJxaDdvaUFPMmNERkJTN2pxTFhHVWE1cXRlT1YvUUUwaGFzc1RT?=
 =?utf-8?B?enI4Y2hKcFFUeE44U1ZVRUN6NmNuN2pZdnovNCthSldrR0pTMTZKZzd3eVJr?=
 =?utf-8?B?aitQZ2FsOFZlSmxhT1Fyc2pJZlJMMkw0S2ZNVUNqTy9qcE9MOGhoOHJSZVJv?=
 =?utf-8?B?WHJPSUhoUnU0NjYxek1KYjBINi9say9DNGVyQWVYUm5iWC9RNUVORUVRRVc1?=
 =?utf-8?B?NGxCcllFcTdzb3B0VDRpSzdTR2UybE5vUmJSUXRma1FFMGFnWXB4K1ZCbmVv?=
 =?utf-8?B?U1hLcHVkSFRzZDBRdzB0Mjl0NElJVXdVUkZzNEU5U0d6VE5LaW1DT1ZTaTha?=
 =?utf-8?Q?bQnerBfA2ZH1cl202211VWYs0mYehC+z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emFKZUtFYXN0NnN2RVEvdW5YaWt5RlBvOTFSS0hDNnppdlB4QnpaT0hldUxV?=
 =?utf-8?B?Y1htU1dMcms2d1hYelFnU3dNUTUwd0N4YzFTd2tic2VCZnBRYVQ0MWRFb0dN?=
 =?utf-8?B?eHc4RzJZTEdiZkRqR012cmNUV055cVorbWlJYmcxYTVHYy91ZjhTcXUwdzZI?=
 =?utf-8?B?NGdWaktEWEtZeEk1dkhtVXlDdnNtQnB4UXQ1QzdyTENoNWh6TmhTcmE0ekQ1?=
 =?utf-8?B?cEU0OXMrMm1jZnIxT2VLN2t1dmN5OTJEc2xMWDNxM3VTL09RTUw2bVdONDlM?=
 =?utf-8?B?bm1HUFBOSVBwbkQ3Zmd5YVRBbUJFU0szOWE4dXp4NjYwK0gvWklMNW1xLzIz?=
 =?utf-8?B?Wkh2N3FvbWlwUHpTcUp6SmxidFJqMkFSc2RjNndrdzBnQXBvN1dvYXhYMUhH?=
 =?utf-8?B?NlpwdnhpbUVEMkQwUGRrcGhTUkhqZnNMQm1QTjM5LzZIVFhhTzVqMzJmaVU1?=
 =?utf-8?B?anlBUy8xTUJ5WkhrZXlCb1pBNUtUNytQeERsd2l0ZTl6SE5yOE9hSVdRdDM3?=
 =?utf-8?B?ZDNKQmZzc0VjTzloSDdhZ2JFYkdrZSttUGR3bFB6WGVoK2xrbzFHWWdNZ0ww?=
 =?utf-8?B?cnhlaG5qMy9rTVVsWEtuT0pLeW53ekZ5NXJld2dva21tR0lTTVZDdExkc3hn?=
 =?utf-8?B?V2RYZjVxOFFaOE11aEpGQkRFQnVBQnAyaDFCdkJWa29ZZTNPcVBYTEdZcEhO?=
 =?utf-8?B?MlR1WVY4d0daNXpUTW42dU0yMXlBN3MydElLNVMrQWdoVzVCd2lkMC9OSXhD?=
 =?utf-8?B?VkV0akhMVnoycTZ1cHZiaEdVVUJyRkU3TzFBS0pVcGFXQ2kwamh2c29yYjVY?=
 =?utf-8?B?SXVOQ3ZiUUFDSWtIMGI0dXV5eWxDaE9jR0tXZlFWK2tNSTdFMmpHTGlXc25w?=
 =?utf-8?B?em1nUWpmWVkzSUlRZm50cGg3WlBzVlVzWk5FSklxRmVVT1pGdW5qK3RNRlFw?=
 =?utf-8?B?SkpnZVp5OFc4Y0p2TTNEYldTb1FsSFJxZDNJd012eENTRU0xMGF1eTFTUlky?=
 =?utf-8?B?MlRadjd6TmlVbEt4VEFGMWxhRHlEMkhlMUtEa0lrWVdyU2hRcnpQVS9RbFZp?=
 =?utf-8?B?N291N3d3ZmphaE9TaEV0OXdjVWV0bEJhbXBITlJyWDlkOFlPVTV3L1BmSDcr?=
 =?utf-8?B?N3IvTGM3YXp2MEdVOVZwbk10Y2tncGo2Z09Udllqci81VE1qMnNGbStWNlVH?=
 =?utf-8?B?UDhmK3RqR1J3WHByT2ZPR2NRUVUxNDllNURuRUtLeEVRV0tPejJKNjhPVFlo?=
 =?utf-8?B?emdUYVdGNGcrUUtHd3pqOFkxTzViNCt5OGp6S2RuaUtEYldzbDdlQWFjY09S?=
 =?utf-8?B?YTA4SXdoY2ZCS05DTlY5dXVDSGpuQUlod1krQUsxLzZsZUtYWjdLakZ0ck1W?=
 =?utf-8?B?U2pvRDhCV2twTllKdEZPRjhuNTluck5VakVMZ1NHMXNnZldxTHBnSDNEZkM3?=
 =?utf-8?B?YlNVdGtsRkNpMUtWNStEOHNqRnk4MloyRjBnQzhSemNTTEhhM2lPaGFGTm5t?=
 =?utf-8?B?S3ovSVhmQ25HM1AzMEpwMHE4ZmtSNE9RT1NtZG1iUS9Iak1LRjRFRGlyMFdI?=
 =?utf-8?B?S29zaU1YdGwyWEFXdHFTQ0QwWTBIRW82VWlGVzVDSmhKU3k5UzJIZFlzam5F?=
 =?utf-8?B?T1c3UWJkN1c1M01YdlZkaWlwanUxT3dTWm5XL0ZUNnlIMU5pMTArMVlBT21w?=
 =?utf-8?B?U0l5V2JRQTkySzdhT1NMWTkxU2pxZ24rbUI5dnAyL2VYTVZ2MERMWGwyZU13?=
 =?utf-8?B?cEgrR09scXFiL01XTm9jUGZtZXFDWFpFVW9NSUoybmovZFd0VzBLVjIrV0F4?=
 =?utf-8?B?R1ptTzhhR3AySlB2VXlEL1NUQ1pkNi9lRU0yV0ZtdXhUOHUxZ1ZSa1BiMkMz?=
 =?utf-8?B?QmwyZTNKVVRQTFRNYkp6MkZzekx0OUg4ZXlKM2NFTG00a0J3Rnc2TUZQbG1h?=
 =?utf-8?B?NTI0dDNMNU1GQS9qcGg5QXB5WnhoVmdTa1pMMit3NGZxaGRDVXVvZVN2eHkw?=
 =?utf-8?B?U3NjTG02eGpDQkZvNm96Rys5a3FxdmlNZXhUUGRIVFNlUGJJK0NiNVRmbzZm?=
 =?utf-8?B?NFE5d0F0eFg1dEFCKzBURHZkajVGT21BYWFhd2owOHFXKzZ2bzd6cXUxMHRt?=
 =?utf-8?B?aWFSWEloOW1tdVJBb2dNMFZZMHQveWtvZlllV2FuMDlQdVRXeUpOWkNFdFBa?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 404ff6de-0a44-4f1f-a3c0-08de183c7ddf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2025 05:15:22.5444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZLQSDpqF/w/9k4XO3jsoMYQZyB4iKBltpap6z4aJCe5XVw77Uyjemx1BEUXoWfKr9aGTkL0ydysPtvY1B2H/SVs0uUufp2Xl91bSHlM3Pgs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
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


On 10/24/2025 3:36 PM, Suraj Kandpal wrote:
> The current algorithm is very wrong and was made wrose with
> changes in algorithm that were done. It needs to be rewritten
> to be able to extract the correct values and get the right port clock.


I think you mean previous versions of the algorithm here.

Since the algorithm is introduced first time in this patch, the commit 
message should reflect that.

As I understand, the function intel_lt_phy_calc_hdmi_port_clock() helps 
to derive the port clock from the LT phy register values which helps in 
readout and compare the LT phyold/new states.

Few of the things that should be mentioned in the commit message:

-Why this is needed for HDMI.

-The fact  that the function to calculate LT Phy port clock is the 
inverse of the function provided in Bspec: 74667.


>
> Bspec: 74667
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
> V1 -> V2: Correct comment grammar
> ---
>   drivers/gpu/drm/i915/display/intel_dpll.c   |  2 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 74 +++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h |  3 +
>   3 files changed, 79 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 8c3ef5867a12..2e1f67be8eda 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1247,6 +1247,8 @@ static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
>   		return ret;
>   
>   	/* TODO: Do the readback via intel_compute_shared_dplls() */
> +	crtc_state->port_clock =
> +			intel_lt_phy_calc_port_clock(encoder, crtc_state);
>   
>   	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 0b1b320f5c3a..c7a109e4422c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1237,6 +1237,80 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
>   	return false;
>   }
>   
> +static int
> +intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
> +{
> +#define DIV_CONST 10000000

This is not used.


> +#define REF_CLK 38400


Since this is 38400Khz, REF_CLK_KHZ would be better.


> +#define REGVAL(i) (				\
> +	(lt_state->data[i][3])		|	\
> +	(lt_state->data[i][2] << 8)	|	\
> +	(lt_state->data[i][1] << 16)	|	\
> +	(lt_state->data[i][0] << 24)		\
> +)
> +
> +	int clk = 0;
> +	u32 d8, pll_reg_5, pll_reg_3, pll_reg_57, m2div_frac, m2div_int;
> +	u64 temp0, temp1;
> +
> +	/*
> +	 * d7 max val can be 10 so 4 bits.
> +	 * postdiv can be max 9 hence it needs 4 bits.
> +	 * d8 = loop_cnt / 2 and loop count can be max 255
> +	 * hence we it needs only 7 bits to but 8 bits is given to it.
> +	 * PLL_reg57 = ((D7 << 24) + (postdiv << 15) + (D8 << 7) + D6_new);
> +	 * d4 max val can be 256 so 9 bits.
> +	 * d3 can be max 9 hence needs 4 bits.
> +	 * d1 can be max 2 hence needs 2 bits.
> +	 * m2div can never be > 511 hence m2div_int
> +	 * needs up to 9 bits but it is given 10.
> +	 * PLL_reg3 = (uint32_t)((D4 << 21) + (D3 << 18) + (D1 << 15)+ (m2div_int << 5));

The algorithm uses + in the formulae above but as per my understanding 
the intention is to combine the non-overlapping bits.

So I agree with the above reasoning and the method to derive `d8` and 
`m2div_int` from the register values.

Since this is not very explicit, the comment can be bit improved to 
mention the formulae first and then the reasoning about the bits each 
constituent takes, something like:

         /*
          * The algorithm uses '+' to combine bitfields when 
constructing PLL_reg3 and PLL_reg57:
          * PLL_reg57 = (D7 << 24) + (postdiv << 15) + (D8 << 7) + D6_new;
          * PLL_reg3 = (D4 << 21) + (D3 << 18) + (D1 << 15) + (m2div_int 
<< 5);
          *
          * However, this is likely intended to be a bitwise OR operation,
          * as each field occupies distinct, non-overlapping bits in the 
register.
          *
          * PLL_reg57 is composed of following fields packed into a 
32-bit value:
          * - D7: max value 10 -> fits in 4 bits -> placed at bits 24-27
          * - postdiv: max value 9 -> fits in 4 bits -> placed at bits 15-18
          * - D8: derived from loop_cnt / 2, max 127 -> fits in 7 bits 
(though 8 bits are given to it) -> placed at bits 7-14
          * - D6_new: fits in lower 7 bits -> placed at bits 0-6
          * PLL_reg57 = (D7 << 24) | (postdiv << 15) | (D8 << 7) | D6_new;
          *
          * Similarly, PLL_reg3 is packed as:
          * - D4: max value 256 -> fits in 9 bits -> placed at bits 21-29
          * - D3: max value 9 -> fits in 4 bits -> placed at bits 18-21
          * - D1: max value 2 -> fits in 2 bits -> placed at bits 15-16
          * - m2div_int: max value 511 -> fits in 9 bits (10 bits 
allocated) -> placed at bits 5-14
          * PLL_reg3 = (D4 << 21) | (D3 << 18) | (D1 << 15) | (m2div_int 
<< 5);
          */

> +	 */
> +	pll_reg_5 = REGVAL(2);
> +	pll_reg_3 = REGVAL(1);
> +	pll_reg_57 = REGVAL(3);
> +	m2div_frac = pll_reg_5;
> +
> +	d8 = (pll_reg_57 & REG_GENMASK(14, 7)) >> 7;
> +	m2div_int = (pll_reg_3  & REG_GENMASK(14, 5)) >> 5;
> +	temp0 = ((u64)m2div_frac * REF_CLK) >> 32;
> +	temp1 = (u64)m2div_int * REF_CLK;
> +	if (d8 == 0)
> +		return 0;
> +
> +	clk = div_u64((temp1 + temp0), d8 * 10);

temp1 + temp0 is effectively m2div. Since  m2div = val / 2 / refclk_mhz 
and val  = d8 * clk * 10; m2div should be multiplied with a factor of 2.

Perhaps I am missing something? It would be good to document how this is 
derived.


Regards,

Ankit

> +
> +	return clk;
> +}
> +
> +int
> +intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state)
> +{
> +	int clk;
> +	const struct intel_lt_phy_pll_state *lt_state =
> +		&crtc_state->dpll_hw_state.ltpll;
> +	u8 mode, rate;
> +
> +	mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
> +			      lt_state->config[0]);
> +	/*
> +	 * For edp/dp read the clock value from the tables
> +	 * and return the clock as the algorithm used for
> +	 * calculating the port clock does not exactly matches
> +	 * with edp/dp clock.
> +	 */
> +	if (mode == MODE_DP) {
> +		rate = REG_FIELD_GET8(LT_PHY_VDR_RATE_ENCODING_MASK,
> +				      lt_state->config[0]);
> +		clk = intel_lt_phy_get_dp_clock(rate);
> +	} else {
> +		clk = intel_lt_phy_calc_hdmi_port_clock(lt_state);
> +	}
> +
> +	return clk;
> +}
> +
>   int
>   intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   			    struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 3f255c9b0f96..5b4e0d9c940f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -10,12 +10,15 @@
>   
>   struct intel_encoder;
>   struct intel_crtc_state;
> +struct intel_lt_phy_pll_state;
>   
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state);
>   int
>   intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   			    struct intel_encoder *encoder);
> +int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state);
>   
>   #define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
>   

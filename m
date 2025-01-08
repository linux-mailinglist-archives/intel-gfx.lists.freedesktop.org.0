Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D77B5A0651D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 20:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E77510E917;
	Wed,  8 Jan 2025 19:11:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RiBUBAKB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4FE10E917
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 19:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736363519; x=1767899519;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=M0lw8U/PXvkreuXvSlyN0raW5vG6jS2AlpO7+9e0byY=;
 b=RiBUBAKBOREGgnmr95u0hH+df9l2RywyyoqQJ26t1k8zWQse94bFJ7ct
 9b2m78elaikcISFLriqiJL7JyBs1vYQX81E5/Dpm8FR1BvKXayT9d3hoT
 S3UcOe115Twtzt9FyFPBXLwTlQ70rKCQZzvulKQp9NuasRQPUrrT7E+yK
 bI7x4pEIFSDDIDfeXiMXj4/HfDVPIVEU/OPhfhySqKLHuUJziZPWC/6ux
 bqrCiW0VffW4sflU9o6eM3HMoo02mWrvu+QWHQqWuIQU9IyMei7wDkG38
 uWkx6rbTQdE72AZFFLgVKKmjXbmr2+ZK30YQ0872/PlaGPGL6F537pp5x Q==;
X-CSE-ConnectionGUID: v4j60kPUSLmFXgWXNW2Iiw==
X-CSE-MsgGUID: 2n9H/p+sT8GkQtsOkP+nsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36506098"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="36506098"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 11:11:58 -0800
X-CSE-ConnectionGUID: xr3IJlgbRquO1SSknzFY2w==
X-CSE-MsgGUID: FnsO0ICWQxSo72AqtwCWng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="108179360"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 11:11:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 11:11:57 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 11:11:57 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 11:11:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t4TdjF3zWYQoShfeHq3ZHpD4NG9n742JRkIXZwiqYTOLAe8VwZd58PcgTRD+JarHlT1KqwLAVPc+uI2HkWvRyj49FKb0gymJa7vxhrmzxs8nsrSnKxs91F9ETn1GslSwkCqZZ9RA2tfB/S9KjDNflTe4maGcIAgBGOaUx2HPHdN9pTHUB2jHW3hRHMwCE8ItNI/nujxGqQzuI5cagfSfEn+Z3caLI2tDe/Vq5+04gkNDP8qE4DUvvloiZwxb8Cq8dZFgMVFxFBjdCTk+3Ok4R7Ib186y7hLnQ3vUduU4VzOm/AAXG95iLHGRWnu4948TrgtlDqlEeEXKOjCbIeaVtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=omOcuUPjoHuN+sdM+Jw4WU23W2RGX30c08Ey8RVkBgk=;
 b=KkezZQCZiRzfdEzkfCk/Jg3XwU4vPiot/lt7AY+dWiQsh3NwwIi/IDYJIiQaE2WQO+h3G0Pk7Fx2dqjE/ffp/TZRaL7updJG730uhLI334TemTzweTAMEpbaT8jcIrBn7VZjbtRGZOaoXZdJqsz4whwtiYYOXV++KLO7/gdBftc39eTyQFHMHxopgn9Otj9N29khEGIUODWz6upc01OiTyOyzB8LIqDYAiHFXP2+Y+cwuLIn1ARW4ORKQchjdDZqOdYfALN3hePd1zs+70Wl97uSYYh0hbMmyaRxQu6LkgLFedTR19Nl4PfG/16S5XkKbPhCe9rYAs+HQhAlYJxtUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.18; Wed, 8 Jan
 2025 19:11:55 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 19:11:55 +0000
Message-ID: <9620547a-6512-4d54-bc11-08826da1adaf@intel.com>
Date: Wed, 8 Jan 2025 11:11:53 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915/guc/slpc: Enable GuC SLPC default strategies
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20250108141318.63823-1-rodrigo.vivi@intel.com>
 <20250108141318.63823-3-rodrigo.vivi@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20250108141318.63823-3-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0156.namprd03.prod.outlook.com
 (2603:10b6:a03:338::11) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|MW3PR11MB4666:EE_
X-MS-Office365-Filtering-Correlation-Id: cd181285-d3bf-4cd6-92b6-08dd301850d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZnRCMzBwSExwMDdWQi8xb3RUY2plNS9Dd0RrOEF5c3BzZDlybXB5VmtXRVVI?=
 =?utf-8?B?dXFKeVdTekNUOVdIbFhISi9WMzkvTXFQaWFnT3FHNFBaN0RNcXU4R3ZLSDRo?=
 =?utf-8?B?a25ESFNzWE9sYlZLUThocTY3Wm1acU0yTHZ5dHM4VDNqY2x2S05kblduZnM3?=
 =?utf-8?B?anFDdGtzOEN2TmhTc3JSR0lLRTRwN0xmaVhNaEJEN1ZGcVdGRmJwSlZBbmtX?=
 =?utf-8?B?TzM2d3hUTHQ2emhadWtwVFR4bEFVZ1dBY3RPeWVPSDVFbzZkTjNxY2pMTkJI?=
 =?utf-8?B?ZDYzUTcvNEJUMDRLZEEzYjNNN05vSC93U3FaWVluZnZVc04xTENrNzlodXlY?=
 =?utf-8?B?ZkdERi9kcFV2bXQrZS9hSDAwL0NiMFJTSnhwbGdtVWx5ckcrMm81bTVUQTBP?=
 =?utf-8?B?ZFNXSkkxQWxIb3FaM0J5SnBZZzFTQ2NwL3IxNkpIQ1BBalMxZTkrOHZaRG41?=
 =?utf-8?B?Qk1XZ1FLZHZuMk1UZzJnS2dNb3NRNzd3QUdJZlJnSG9rTzVpWnhCMlBXeDVT?=
 =?utf-8?B?VTFzL3hPYmZSSEhITjJ5SWp0L1NNNWhCREJacjVmdnpyNGZyOEFLRm1teFIx?=
 =?utf-8?B?WEF1ZXpkRHg3VTM1dUY3TlB6T09KaFR6aE9oZ21DVnlzSnp3aGRQK0huN3ky?=
 =?utf-8?B?RUY5bnNMWTdzZ0VHQXBJaXJ3K3RkSmF1WUdia3pFOHBIVFVWai8zRGpmZmZl?=
 =?utf-8?B?VDc5SmFDMjlpN3BQVVNZUFVUK2NMbTBXWnJmQmFTeFVBd1B3TGdMN3JPVFpF?=
 =?utf-8?B?RlYyOXlnWFpEemhPZS9jTVlVcUs2NnQ5dEx3RGNWYkZpMDZpeUNxcEtzOThU?=
 =?utf-8?B?OHRmSVBURThyZmRTTzRLVkNQZ1FkeW04QXE4QUZIU3d3U1BjQzFzNnlYbml0?=
 =?utf-8?B?VDBYdjdkUEZyblNJZmE0YlIrWTFYWHNMUnJPbGJLT2p6TERMRW50b2NLNGcw?=
 =?utf-8?B?SUU3UGZ5WDNxUk8vejdyRXoweWxMa3QvYmhSUGhmd0ZBNHNoZWVtYmRqQVdj?=
 =?utf-8?B?RUg1NHBTK0t0M2R2R21mdTN2b1dzOFhJbTVxYkpmSERsRERxUEluUXYwaHo1?=
 =?utf-8?B?bmh3RXIwUmNIS3FkTDJlMUxOdlMxNUNmN1V1djltL0lFMktVeWFnd0hpMHZp?=
 =?utf-8?B?a2orZlI1cE5JeFk3cm9xclZyN2pvTGQvT2o5WkRhRlR1bUFYWXVPNE5KVVJx?=
 =?utf-8?B?bi9IQUJwTzYxMlRCMjBTd2MwUTMzSk1aQzFtUDNEY1IxUmV3dy9wY1FhUXNj?=
 =?utf-8?B?bjVmT2xwdGFhcU84THAxWWlpM1NLRHRyOEhoVHhwMG1PTWFDSHRWN2liU0Zm?=
 =?utf-8?B?dHE4V1dRZlZtVWFFVVpDL21LcDVIdFdzbnFCKzRkMDVWL2tCTFdBZ0JLUzhT?=
 =?utf-8?B?MTRkY0F2cVlZZ3J4TzZqYzkrU3ZKLzVOMXJQNkRLK1BlMTFXdzBzYkl5U0FT?=
 =?utf-8?B?SHg1SytmbVVFQ1U0Z0ErcjJvV3RLendWZS8xZ1B2WjNEOXBLdG9RRjNrUldl?=
 =?utf-8?B?bzB4RjQ2VTBOWTdlZnRzNUE1RGtmeEM0RTl4aW5NaUVFY3BGblY1Ym9RYlJl?=
 =?utf-8?B?OCtwSjdDczQ3eHFmN0hDSThXMDdWbWFDemRNY21Vb25vN2Z3TUwwRjlvUkQv?=
 =?utf-8?B?clhBbXNSaHJ4ZGZoQnVwRDJkcExZakoxZU1kaGt4bC9GV1o3TFdOV0FRelQ1?=
 =?utf-8?B?ZHFnTWttaHNxK3lOMkVkRTAvNFpzTGNMd1lHektPYkd0aHo0ckJ2VkQzYVhE?=
 =?utf-8?B?N0QwZXFqZUx3ZG0vdXZWYUNyL3hxKzVid2YwaFJ5OU5VRjlKSU1Dbms1WHho?=
 =?utf-8?B?U0ljRm4yT1Vhd3F3elA2cWs2Tk1WcExVSk9UTk9icm5ZMFBOUW5kdUg3Wkw1?=
 =?utf-8?Q?V64E0bexUWdUx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THhtUms0RjlxQVU1MVdrSVpXN2RUQ2JhRXNDOE91QlhmOWVBcDBNUVFEQWlh?=
 =?utf-8?B?ZXhDS09lclAxMW1kRnBnVEc5cTJPZFNTZ3lYMHVSOWFHdFR4azgrN1RhV1Nh?=
 =?utf-8?B?UExUN3lmUXdIblpNZWFyVHd1RVMvNUQwTHczdUgrUXhwYW1jN1MwWEdyb1hm?=
 =?utf-8?B?R1I2b1ovWEpMbHBrTWNiZC9OellheGhuTmNtR3JHL2xhQ0NCeFplQlhhbVFp?=
 =?utf-8?B?Szd3VWYyZ2kxd05JdkVIc09SUkxET0hQQXp0bUNPOWxGVXpsc0xqTk8rNFVu?=
 =?utf-8?B?ZnFDaGpHWUVrN3U0V2tlbnpLbkFXVjJobGJNbUl4Y1BVcER3SDNWRXlsdk5S?=
 =?utf-8?B?UDhxcFpNRElDUUdVeTY3SitXbjY0RjB3SmhPMU5MVUZ0TC9FbGdLY3lpSzVU?=
 =?utf-8?B?TnV6VVlkZXFsUGhWTUgyRkNwbTYzcUMwNGlLazlDWFBGOEhxNkdoNlk2dGpW?=
 =?utf-8?B?cGJmNFVEKzIwdzY4T3lPVVdUNzhtVXNYZG51bjRLS05LcFBaamxNOGZRVEFZ?=
 =?utf-8?B?YzdUNHNnWUVwSDZkMmNHdFpMWDZnK3plRmN1bnBoN3FVaXNKUlZvVE1OaEIr?=
 =?utf-8?B?UjVsajJXc1hvRjVUaEIxc2w2bDE5SEUrc3FwclpDcmg3c09nUDVTNm9ydjFU?=
 =?utf-8?B?ZmRlNnl1VlhVMG04Q24vajZjeDN5YkRnN01OT3NVaDBMeVQvdXArWEUvVnBB?=
 =?utf-8?B?ZzdTQXRlSkViaTJIRzJmVGdKazRmcnhzU2lja0RPdTVrYnF1UHFlV2Z1YkVQ?=
 =?utf-8?B?S3FMK2dVQ2ZzSGlENCtoTnBkeUVwSnp4YW9UUk9nUTYwcWFkdUdiR29sYlJI?=
 =?utf-8?B?aDdGSk9WMk84R2s4V0hPcUZ0RXZjNmNKUTNkSUErelJaZWUweXVMczN1am5S?=
 =?utf-8?B?aTBFYktiTWs2VWhZQ1htbFBURDcvazl2UTY0MW1CTUJvYStaU2NVcVM0R1Vm?=
 =?utf-8?B?c2tyZFA1OVBDdmdQaE9OaERIMjkrUnBQbjdDQnd6TkhZYmRFenJVRDBnWDNE?=
 =?utf-8?B?eUZkcXdEbzV0YVhkcWJzQmlhZ0k4ZnhtRkhhUHU1MmFsVDhaSmswZHFyTllz?=
 =?utf-8?B?OElxLzg2czgrWnFLSGxjcndjbkNKd1QzODRwV1NESFBBK2JONWRENk1QQXBK?=
 =?utf-8?B?RC9GVkJlT29pMzBpa1M3VlFPM0haSXRFOUl4SHR4Vm5WbXZGdEhibjNXclZQ?=
 =?utf-8?B?OWs4RFl5UmRKUEd5VnljdXQxcmdIczgxaUZETjkxVnlubktRWHVNQ0xLSUZs?=
 =?utf-8?B?QkNhL1oxZ1FKaXFCbm9naytBQ3hLaVEzbXZTTFd5WVBGdEQ4SlFCSy80N3dp?=
 =?utf-8?B?Y0R4bGdaZWNlb0Q2T0plQ0o4MlZrOGtnays5VjBGcGpsZVFMUnR4MjArdkNi?=
 =?utf-8?B?Q1BjOVdxT3p1RGM0bGZSWnFKNlBUaXZuMWk1S3NYN0M3WURHZms0eGNEZTJk?=
 =?utf-8?B?cWdBNkZuNWhWaStxWFFlV2h1akFCZkVaSkZHbWd5Q1lmRTVBaXNRNmhqVmt6?=
 =?utf-8?B?Y1N2eUpnYVdZQWxkTUgvN1MrRytVQ1NpelRsblJIU1hQSDFXOTEyaEVmdGlQ?=
 =?utf-8?B?YkhqRkw3VXFGSFFseXNURWIzcTZiUG14K1RHb2JGUFdXU0IwN1Ewd2Q4L0pR?=
 =?utf-8?B?c0liY0s1bVhqKzF6MnE1aDRpYUVFR3E0NUFwdWV4R09QMDM1U0taSkVPL3Bk?=
 =?utf-8?B?ZWpZL09ydTlaUjRybmsvM3I3eHU0VlM1RDFGSklaSkpNZUJucWVra2ZhRE9I?=
 =?utf-8?B?dzF2YnNYZjVoWVlUY0d0U1dQSFVkQWpZcGhuNjhBc1JzNTJzZzBjVjJKTXNa?=
 =?utf-8?B?MDdUUzArQjE2V21OdGM2eWZPYmt1Z2N0ZHVGYWpMNktCU3V4cmRnRlBsbEY4?=
 =?utf-8?B?ZG51eE9jOFlwZVVVbzZhUm8vaFdkeXVNNEdDUngvUkUyRHNkeVMwOE5jdnV4?=
 =?utf-8?B?RzFaRmlqWnZXTm9yekxnbUFtRmF3dnlnbUZDWlRMeGRZZTk1VU1GeWQ1MmRj?=
 =?utf-8?B?T0szbmNaMG9uT1JYdCs3ZkxjNW5QSmJOUTVXV2N3Ym9NVm1uaDAvMTlGcENN?=
 =?utf-8?B?QkxJM0gybXE3b1NFdUZnTUdad3RieXkyUEZXMnRoZWFLQjlrS29LdXNiR3Ju?=
 =?utf-8?B?dE5LdUo0N3MxVnNZSXNqMzZyS09ESVcxVHJwOXZaRjl2QndaTG5hNUdLMXpr?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd181285-d3bf-4cd6-92b6-08dd301850d1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 19:11:55.1119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S0u4iP90H/AVgtI/VIo+aiC2u/QXK6tl2GrRPsEOEsktNmt26d+5IVieiIEFGbj4VqN01xyPnc7XsZ/XuH4fCSG1x74/E1Ao4D07rtBbPxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
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


On 1/8/2025 6:13 AM, Rodrigo Vivi wrote:
> The Balancer and DCC strategies were left off on a fear that
> these strategies would conflict with the i915's waitboost.
> However, these strategies are only active in certain conditions where
> the system is TDP limited. So, they don't conflict, but help the
> waitboost by guaranteeing a bit more of GT frequency.
>
> Without these strategies we were likely leaving some performance
> behind on some scenarious.

s/scenarious/scenarios

We should also mention that the platform defaults for enabling/disabling 
DCC/Balancer will now be chosen by GuC.

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

>
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 -----------------
>   1 file changed, 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 706fffca698b..722da8a7f852 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -76,17 +76,6 @@ static void slpc_mem_set_enabled(struct slpc_shared_data *data,
>   	slpc_mem_set_param(data, disable_id, 0);
>   }
>   
> -static void slpc_mem_set_disabled(struct slpc_shared_data *data,
> -				  u8 enable_id, u8 disable_id)
> -{
> -	/*
> -	 * Disabling a param involves setting the enable_id
> -	 * to 0 and disable_id to 1.
> -	 */
> -	slpc_mem_set_param(data, disable_id, 1);
> -	slpc_mem_set_param(data, enable_id, 0);
> -}
> -
>   static u32 slpc_get_state(struct intel_guc_slpc *slpc)
>   {
>   	struct slpc_shared_data *data;
> @@ -366,12 +355,6 @@ static void slpc_shared_data_reset(struct slpc_shared_data *data)
>   	/* Enable only GTPERF task, disable others */
>   	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
>   			     SLPC_PARAM_TASK_DISABLE_GTPERF);
> -
> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
> -			      SLPC_PARAM_TASK_DISABLE_BALANCER);
> -
> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
> -			      SLPC_PARAM_TASK_DISABLE_DCC);
>   }
>   
>   /**

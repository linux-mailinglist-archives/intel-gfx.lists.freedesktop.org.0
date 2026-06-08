Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TQrBCV+EJmqnXwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:59:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D316544D8
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 10:59:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AabxuwNY;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6112B10EFCB;
	Mon,  8 Jun 2026 08:59:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8676A10EFBD;
 Mon,  8 Jun 2026 08:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780909147; x=1812445147;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1tiHhG0cxQwYF8StBs8MCQSLSUbdZuTRjEJCm3VEiHg=;
 b=AabxuwNYnDnwWCUEeKjN9ejYaa8V4rRqaAq6Cn2xImmkTuPSi8shEQXM
 xWJU6o3SFuZM4CQj9dM34dootS1C4QoWV836cMpKevkmrkhDDZtJ8Li/U
 jqonZ03OCUpXjhbb+/E4rjAOwjQ8nTnb82NpENlT+Y4giQ6cqvEMAzwIg
 pZ6eo216vC2dzEAIoHi4Bp8Pho6MRc/8zcKjt9Cm5QcVyFbBp2+ocRO5I
 ajZjBJxlKu+TyIcQWRSa/ezCmv9Pf6RNL1UX9p/AQ8722I9OECRWkfKnm
 SP4x+WWyvRmKOBzSSB2fn8k5XmjjBRoeYLqTpLAe2FIfIBBjhbT7LWV2P Q==;
X-CSE-ConnectionGUID: YeAHBGpDSWWHGDj031apFA==
X-CSE-MsgGUID: 3y56z7C3Q0+wn2QWktKXTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81685878"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81685878"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 01:59:06 -0700
X-CSE-ConnectionGUID: FhtN1JHeQ82n1hsW/r2R8A==
X-CSE-MsgGUID: DQxLlSAVSm2llTqe0F1TtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="245586739"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 01:59:06 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 01:59:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 01:59:05 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 01:59:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OMFN6tyyc8l8p6DLYNHqgEegiLC4Gm8CKV+bH9nbhp91qwH+ac+6i4uN60Mx8CEBRDpeG5cWj/Gnq9YFPo9D19VdTld2mm7l/r3w2a6ZgI+Z/cevK/OfdE9AeYchMj/7EVImPKmBUp6ReTIu0BR4QiP8415biPW0IcuQdKsHJgTcRXU7v4AWu52ozsuuF+Ncl3K9gO+HBnaqhTpypAKylSnlv5H+66D2AqhETUhBZxpH0kkN47LZc69ku/2tZhlWPB81lvafIlnHGvLrr9mXD+QUVZvfKtdla2In6WCwTeRJU7QPI6VSnxARoYoykl04vM6Mmj/TIlznHzKdyDKFrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T2mh+15vrZM8wyWfgolrLGelvvKB1SUzXkHON65Ga1E=;
 b=IwsbmZBlph+ALwAYbG4sU35FFpxZwmgNpe71FQuUPmwg2b5UxqVodxrf5Tw3bem7fdGgOxQK1Mb407mE9EcEQ+KJ3qXhPr6GES+BrHaeyBZGolJ8JACmITq+SnnNjI4EbZlw8vEtdlM7mrshA447ZtFGAhil5yKOtG+M/5PwUaXoycDio0yL0phasaFdR+jlLtc4mjH+DkDDC42g5NHVFp5DpXBkIIDlpNNHgKIpOSXEzsGEkarqf5ayxMELv+OAiuURqZl9u1qQC1TXKKtk/rXrUhGOGRJFcyyR7fCYDGUNh9dpTKybg4P9HXiCj1lte+ZV4hG4MxIPI1AjVbfhLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by LV1PR11MB8850.namprd11.prod.outlook.com (2603:10b6:408:2b4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.11; Mon, 8 Jun 2026
 08:59:03 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 08:59:02 +0000
Message-ID: <3592f764-7e02-49ed-995b-f3c55c315df0@intel.com>
Date: Mon, 8 Jun 2026 14:28:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] drm/i915/color: cleanup plane pre/post csc lut code
Content-Language: en-GB
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <cover.1780499355.git.jani.nikula@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <cover.1780499355.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0358.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:219::17) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|LV1PR11MB8850:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fe245aa-2ce1-4d31-60c8-08dec53c2f91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|56012099006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: K2M1F8ngFmRToEhpw0zpQQyHS0lAogBRMIb2TwzRrDCa20Yv9RJXKS5W/eI9UG1UYJ0Srsd72D4zSLFipgFm3/bg33+tU74gEVmpFOFQidiVdrVG5MIa/dfKR+eJGir5DgTRARoSeO4NilJywpNqOKcXWO1fsNxPLgyRUcHifz3TuQk0uOSpaDhZxAUApFvc/rJv0FKUmXzV0kWwd4hqKTzEP0Ln92CRpIdYt6EmCWnw0f3yiI0RaUKAiueh99DJY3xDUlTCgeZQo+nRpfRsYzr+F5aSnVwQ+LygYm/rmUOrDsazvb0M9Oe6YWVbOiyEP6UC9HNCMphYhgf6HFE27DRvt6e0sx4CMuhicmyr1M4G81V2ITk5m03I3Ib8/2ebcqLVxTqbbFO730j0kmHFqVAi0aZawelmgEnpfqO7I9AlHKEKrrjyGoD1O6llJNO5qI3TrcxiKGKLsn98xaM2eY0ztKRSLmXg5SerOjwNgcTbt+MYsesyBuHPVuIsNLDubnpkRDFzzFOhLzwuLh6rx3uWXEpyak2edkIjw7N4CBirLHYxGRh9GjOdRw/w464Q4Avd2HE7+uI7cP/dU5jF/9gXu8VgDcfpSygCWey+WpMSgT0Jq0KawYI1c2IoffsWFWl/5L4ZYySGBg2KQdZ7+D33HTHKkImBLIQa+eXaSMkbjP4Dxv29QBROJuD0KIG0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlVpdDN3bjN1cHNtUVFPNTFLR1ZEbzRIZWxQbVVJUlNMQUFPdGF6clRqcWdp?=
 =?utf-8?B?OFN4ejgyaCtMRGFDcEhJYVlpaER5MkE3SVROVVMyamVRQWQyTFViUisyVndT?=
 =?utf-8?B?ZzVOdjBoYkVHbnVxMVRva25WdDYzSThYS3REejBObTBPdU5YaTlQQWZHWFV5?=
 =?utf-8?B?RFhkUnAzajkzSG1Pa3VuVElxRDBFdkR1bS9sT1FLck8vUWpxWUVHQVhRQlJX?=
 =?utf-8?B?Z1dEMnJBb1l6Q0tvalVrWFpmQVFpRGZuRC9lTUdEUC9tZ3F1M09tdlZkTnlF?=
 =?utf-8?B?R1NhYmlvaGM4NWJhTEVzMFh4bk9kUmkreU5jdGJlYnd2ejMwYm9ZTFBCNHQ2?=
 =?utf-8?B?THZPb2JrblJCVFJtbW9qSktNOGNSUXBHbGptRHQ1Ulh5bUE5U0l2SXNUN0VN?=
 =?utf-8?B?NEwrU1BhbEkveWZ6cUVraHQxYncyaVFPcis0TTV1WEZDSGNCNDgvSG1uN1ZN?=
 =?utf-8?B?SFlOZDFQd1FGczJ0bUFzSjBVMUFXcnU1VzA2Y2RKUUl1RDllaC94NGZiVjVK?=
 =?utf-8?B?aUZZNzhzREhlazZZM1J6QkVPb2JuR0lYREVQcGtqRHR0OXhWRVRIbUtaNkcy?=
 =?utf-8?B?RWV1U1FTWlQrRGxjNnVZMm1wMzRJMHYwTTZuQ0NZUFhKWXQxdGVOQm5CWWJZ?=
 =?utf-8?B?b3g3dHdYMEFCNlRwTzBYV1BqenBMcjN2cjJWTDMvNG5JS0p0WjcyUFRUM2ZU?=
 =?utf-8?B?QThzcVRoT3J2SzNtUVlMekhjNytGaFBXVmhIVmVsRE0xVHhVa3huOS9HOUF3?=
 =?utf-8?B?UGx1Zm9LbkhNUnlyVHJSN0M3Wmt3MnVaU2Y3R0RlNmNjMzVlMDRod1UzeG1Q?=
 =?utf-8?B?SWhjWVZicTFGb1RxSEZPWlBqL1VlVzNIeVlxdzY4eTFpc1JQMkFrNmpnaUgy?=
 =?utf-8?B?QUhoRzYrOEpDbGtjYzdNMTNIeWdKWEVpUHNMWDFtaXpHUmcrNmJWdHdrTTRx?=
 =?utf-8?B?ZnZxNnhOOFFGbWRxcVlwVm0vd1BoRis1MWVkS2NNV3htcG1SQUhjTXFIUXFP?=
 =?utf-8?B?SnVhWlRwdml3c2xpTklSemMxYWo0N2lUZml0U0lCVDAyYVlBZGd1dVJtTVFw?=
 =?utf-8?B?Kzh5Q05mMWQzUmVsTll5bkNJb0ZBNTJoSWdvZ2wvdmtmSjJGSnd2TVFTMDBs?=
 =?utf-8?B?NHFGQUNZMGI0NWQ1Z1J3SWJsTTZyLzhOWjlUSkRPZW1DNTBrejA2K3M1TnpP?=
 =?utf-8?B?cHc5dy9HbjVTLzYzZmNWcCt4ck9ZaEtua2N6M0VoNU9lR29MZHNhZnozV3FX?=
 =?utf-8?B?bzhqcncwT2FCa0xkUkI5NzV4OTE4ZXF2VWVKZVd6RmVSZk5pcy9MQ0FOc0hS?=
 =?utf-8?B?QkppWmdSeDhUQ2QzeUQxSzFFWTVOOU5RSmJ4S1Rkc2xxK2dEOHRFU2pINVJr?=
 =?utf-8?B?THZoa2FKQjdKRHVtbVBnQWNkSjJ1N2I2Qlp6UHlER01OVld5UE5mVmozOG45?=
 =?utf-8?B?OUMvU201QmFjQTRpMzdJRXc0djJMRWdzVGhkVHMzQUQ4Q0RKQ2hVM0Y1STlP?=
 =?utf-8?B?WU5vdU5xNjhMTVZ0Tkh1OTZEZWtiRFREWmdZWkF4VVF2d1RhRWN3UWU1bW41?=
 =?utf-8?B?WmdnT0tOQjlSa1lnNTQ2Qm80WTZpWEZmUlhCY1lUcjgwc2lTYmlHcTZueXhD?=
 =?utf-8?B?bE9KZ3l5OVJPWW56b1dDaCs5Z1RpVTRqU2R4czRueXdKa2NSSEdZbllCRXRI?=
 =?utf-8?B?MWNjcEpDR1NxU2xTZXMxTWJhZDhjZlh1b2dvY2d6QUNlME9Rc0didnB1bGF6?=
 =?utf-8?B?MnJYNmZyeVUrS1JGa2tCY2YzbnFyb1ZEZmpxNE5pVFpFYU9iSnhGSHA4dXVI?=
 =?utf-8?B?cXJ3RkRXMDdwaWZ4V3BqNFVXNkdZZzUvQzY2c2FrNmFFSjN2ZWNDMzBWWnRM?=
 =?utf-8?B?SDFWRXlBSEVjdDFBQ0NWZEZZQ0xVeTJaZTY4MEpjZ2drQllzUU92V05BYUVR?=
 =?utf-8?B?dzhIYlN4RFhGN3hzSExhbjRUUHJWTDlZL3R4RGd5SGFKVkVGYlNvYW00N3RG?=
 =?utf-8?B?YlhaZExSZU1IK0N4QnVCTDZmVW12Zkx4M3ludzhWL3Ayd081RlluRkVNcFZY?=
 =?utf-8?B?OWlub3dWUXNNQWxLc3l4aDR1cFJiL2hvYU5DNitoZ0lta2Z0aENvL0ZVR1NM?=
 =?utf-8?B?U1oxS1piUEhtRzZ3OW8vdFozZFJpbFNQenhkclZhMFVKbjFXVGQzUUxyY3ov?=
 =?utf-8?B?M241TjRtbW1qbElmdDFmUXVMdTk5L2lBckRieU5RVkZhL21tRS9IdDhLRU1C?=
 =?utf-8?B?RXZKMWFyTWdhck9qdW5RVDhVSUhpQU4vWWZXV2FtTVRoYTNOanlGZUc0MjND?=
 =?utf-8?B?RGNTZjkvMDZMQzUwOE5lRlg2OEI0aUQ3amtxd1FFZWYzSTg0MjYzak01M1Jq?=
 =?utf-8?Q?3DAv6lOGQFFGdieg=3D?=
X-Exchange-RoutingPolicyChecked: WOTJWSAC7ZUo9FDCYwQE4Ejg0PKcKpdTWxpyOFzjkKG2nYNriRTWIxvwt5rzitACm7ITUPYXCeEwywYP4YQ3Is0xHIsEIXqBUoAOfiDvvwwprqMRbKMpdx+yoIcrelNzAEN100TC5VkPmuThug+uW5Xdkv6LoiRLH+UznNhki5XRv9+YKkuKLpvHR4HqsQgV+4phBAmsY+JeZueyH/IRSvKJbEfi3EkexMnLTIr/++B6cQ6PahrbxoQ1LF04sTyRCVk8YfXzH4NwomAqkjk2V0O7fbJs8zd8jgolIiEsrKO3pshA6JL1BE+ipOZmiEHqSnVXraSEWv8sXuHE7zh9EQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fe245aa-2ce1-4d31-60c8-08dec53c2f91
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 08:59:02.3007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IrRRWNSIYKv+N1kfhjbfKLKHMTU6s1Tpxd5M+f4gaPKtYEkwbe9XmjjbnHzZnYdHx0XBg5pb2oMh8QT7NDXjc+T5Au0I69g0oV4yaNJ+KWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8850
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E2D316544D8



On 6/3/2026 8:44 PM, Jani Nikula wrote:
> While reviewing some patches I noticed the
> xelpd_program_plane_pre_csc_lut() and xelpd_program_plane_post_csc_lut()
> functions were a bit convoluted. Reduce the number of loops in each from
> four to one, among other things.


Other than the nit in patch 7, LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> 
> BR,
> Jani.
> 
> 
> Jani Nikula (8):
>    drm/i915/color: clean up variables in
>      xelpd_program_plane_pre_csc_lut()
>    drm/i915/color: clean up variables in
>      xelpd_program_plane_post_csc_lut()
>    drm/i915/color: reduce indent in xelpd_program_plane_pre_csc_lut()
>    drm/i915/color: reduce indent in xelpd_program_plane_post_csc_lut()
>    drm/i915/color: join loops in xelpd_program_plane_pre_csc_lut()
>    drm/i915/color: join loops in xelpd_program_plane_post_csc_lut()
>    drm/i915/color: deduplicate loops in xelpd_program_plane_pre_csc_lut()
>    drm/i915/color: deduplicate loops in
>      xelpd_program_plane_post_csc_lut()
> 
>   drivers/gpu/drm/i915/display/intel_color.c | 117 ++++++++-------------
>   1 file changed, 45 insertions(+), 72 deletions(-)
> 


Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E864E8C6762
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 15:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC1C10E1AD;
	Wed, 15 May 2024 13:29:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BaY/EEvN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B137410E1AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715779747; x=1747315747;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Lv13xlb4OJNxDcfZZsVxfoCK/YfcQ77DuawnD22vl+4=;
 b=BaY/EEvNOQATAjETZNOJtB3L0uilkVH4AszrG1zFV582qizxCuUCaHty
 izZ2FumTLBV1xve+xFtIPMYYhKfxH0dCeuse6GTVifaLVJYbjCKhr1q5z
 CGo3oxb5mJ1f5DU9mbFSR/7p8dHtZrFUatZLh++qBlf4b4goRdasx091t
 LWUrqzEhwvqGejMIHGPoSMPQR5zP16WerVJqsJavin8Imw7Nvbxd9SV0T
 4ScS9WlXdc1JEbho7QW8d0uVUgox7N/PkrHBafCh9SHZeDjMxnFHNkuwx
 E+onnU/xy6OPgVAkfpO3aUemYEyL033oLNrcT9GWLC3KXjLUUE1UYFT+f Q==;
X-CSE-ConnectionGUID: HZOcY3JxTUmAaqrvBeuVOQ==
X-CSE-MsgGUID: gtlleCFDQLmmfzHmU5cmRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11699236"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11699236"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:29:05 -0700
X-CSE-ConnectionGUID: LriHp/MsT5aZa1/PW6pJUw==
X-CSE-MsgGUID: b9beJ6HuSCOIo5g4xWuInA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31182252"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 May 2024 06:29:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 06:29:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 15 May 2024 06:29:03 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 15 May 2024 06:29:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GO3+tamvjJY6dwDJGF/psgsApyd9FgGiwSG/vYThlPbwRhwFxlDvpcnLdAhK7oESE8APvAlHET7VbwdKNM44uW9RQZTDhQ3YGQ5WCNJ0hklKJTKel8T0CP732ZikcT+rzvY0GzkAr3tcju9TkEUEN7qjCKbVnoi2Qr9xe7xieqkWE4GR7a66r1Db93VJws1OU/jq8oWx9+Ze6+cRfzyckIscCzoZldhUwruBmHv6StS5cJg6CO8Ay5sA3PS0P3RKvsgvgCjaiqUe9gQh22GLUGM95PDBjHOFs5yw3thNkc6fhle0RR9hKP+syVngy6ctsOnMzl28uwCiwrSFrkANFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wYqq0gCvnAmQX8pxwlpSmmVGXufewCJ3knugVUILVOI=;
 b=C069sjzVEU6eaVk8VZOb5BeaSRH9IOdZjzjgjGCCeIojL8BpUcfwFgVW5arBfAE1o3gOHjfzmJoYkUsqMKInRKsvJ2AA4pbYK9Upd4gOeUhD2OPugWV6c5b++0Z2vCxA/Eqo8GCiGEWa4zyzuTt5lOqHNS1+TuhMa6ra0O3V3+yMuEynQiZ+R5ugHdjuhMNptGtGnv/6aVi3kjyy87y7DGq6yqS4TuDqldfWT6pz0To/IWiu/K3fqKNkZAV15OM91+BkuM7TBDXmI/c3DDC3Bv80RbNnwpKkVxfg1Y69SdJsd8pppgQJdFleje/NMY3DkJGI3XuFIpY4PpvqqpGKzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL3PR11MB6433.namprd11.prod.outlook.com (2603:10b6:208:3b9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 13:29:00 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 13:28:57 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240515064524.164137-2-mika.kahola@intel.com>
References: <20240515064524.164137-1-mika.kahola@intel.com>
 <20240515064524.164137-2-mika.kahola@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Remove .clock from pll state
 structure
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 May 2024 10:28:45 -0300
Message-ID: <171577972543.27300.697660708854023975@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0184.namprd05.prod.outlook.com
 (2603:10b6:a03:330::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL3PR11MB6433:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c615382-2996-4970-a81c-08dc74e2f91c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VS9BV3hVUVNSMFNQUlBXU0F3QUhNenhBS2E5a3pEaXozaDYwQUhIL0lLZWd0?=
 =?utf-8?B?U1lnd3ArbFR3dEs5YWgya3lCYlhhMVJTMFpxN0sxdS8vYkxqMDR5QWxOcHVD?=
 =?utf-8?B?dE9DNllxdlNGUWxGekNMUG50dWFlbTdCMGNNRG0yS1FlUk1nTDV1aFdTUk4y?=
 =?utf-8?B?OHFaTTFGd09SZHZSa0FRTjkwaEJiaFMyQVdjem9HZkdERndnUnlGcWxUU252?=
 =?utf-8?B?SVpHWUVUdXFKMktIM1loR3Q3Y0hmVk54eDBld05tZ0pvM2FxUm04Zk9Cenlu?=
 =?utf-8?B?Qk81U1hGZzZuTHYyNG52cllPb3o3RE43NFJBTzdtNmZZVUt6K00xZUJEbUpz?=
 =?utf-8?B?MFlDcnVnTmE2cmNZc0dQME5YVkduL3lHdTV4V0dtZ1ZNLzdBZVNiNlFxdmNB?=
 =?utf-8?B?eWl6V05lYmxoL1FLYnJMeDV5aGxNaFRHa3hvc216QkxPdDFybllMZ1loelBX?=
 =?utf-8?B?RWNXZGZzQjhlSTNYVGdKTmRPN05ISEs4V05JeTdKeFlOQWN4YVBBNHNyZzVw?=
 =?utf-8?B?VmMzWkZleUVWUjZNY0lYdVl4VWZaOXNrcUtoRXdtd1gyVFBidGR1eUpZbUJu?=
 =?utf-8?B?M3gybjhOVHEzcHpEcldGWDdNYmFoVXBaMVc5TTNNY1FHVmovWVY3dVoyTUdG?=
 =?utf-8?B?dnBoZDN1Ry9kcS9GT0ZicUNBV2tjaFNPeVpnTEJYT2U1UHRub0lLMjFJYWkx?=
 =?utf-8?B?cmdWcUhwMm5aVGkydDh1M1BjQzJ5bFlyWjQyM3lJeDJuRHBpSUs2VG9wKyt3?=
 =?utf-8?B?WHZWbUNYa1ZtTUNZd3l4b0lwT1lUSC9vVVNURWtwOFkxTnk2VWJVaVBTa2xV?=
 =?utf-8?B?OWIvZmpGdmEzcDRTRkd4bWxnZHBTTzdqWkN4MGxMOFVkaXArMWt1WUs0aFdj?=
 =?utf-8?B?Qmd6aEdNN08zbCsveEt1REJoc2tIWllVQjIvN0ZadlFtOXdNUXIvamU0ZmJ1?=
 =?utf-8?B?Slk1cmkyWkw4enhucHFUaTFNTEFqd1RBa1UyTXFnOWJnbU9LOVFBbWY0ZGlB?=
 =?utf-8?B?YXJ3RWIzYmxLbUJSWjQvOGFaT3crM09IaENvSk1kQktOb0hOT0puUzNLVitH?=
 =?utf-8?B?MDdoMGR2ZEdBb3M0T2NWWDdWbVB0RW5Pd1Nrb0VsZURsY2x5WUl0TVBtSks3?=
 =?utf-8?B?dW1nTjZBTWI3R1NMZHVSZ0g5eXJZeDhpN0ZmSVBmTXdEMDQ3TjZZR2ZYVzc4?=
 =?utf-8?B?c3lsM1VMU0Z5czRQTkcwcjR6VHVmTm1lS2RuL0g5OXpRZkZVdTFLVnNvZ3BK?=
 =?utf-8?B?SEFQUDhnVCsyOGVmTGlBMmVoVzk3MkdqWlZ2dHNZcGFVUjNhTjI3Nlhjb3Ex?=
 =?utf-8?B?OUNXOHFCNm9JNldGOFFCc01FbGs1NmRGb0hNUCtWU3FDN0lxU0FEZzRuaFcy?=
 =?utf-8?B?VHB6Wmd2aThEYS9JVEw1M0lvTWxuTDdpSWRlMktqQ3AwVmUxSi9yemhpUFdE?=
 =?utf-8?B?cjlKcHV6MlBkWEppU2wzM29XcHFOeDJqc1pFdURGT3VmaFNHOGdJTXJSK1Y0?=
 =?utf-8?B?M2thZzB6VmVJdXhCR1ZDTEZEVTFFcEIvUnBXYlFxQkI1aXhrMzZvR3FBbGQx?=
 =?utf-8?B?aUoweFhONDk4SU5TSloybmZ0OXQ4YzRCR21GQ2twYVNPcEFlYmFURUNwd3l5?=
 =?utf-8?B?WURwQTF6bWxGME1qdEo3MGpudkdZT0VRSG9KUmNJdEo5NG43Ky9VU3FhcFdv?=
 =?utf-8?B?QmlkeUp1eGZ3UllaS3M1VDUwZUI0bEZIaUloOU9iVGVKOExYYzZTcWVBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1FlcURRMEVrZUtDSlhzTWIvMmNkZFdyVlhPamxaRm5Hc3JicTByVStERDhE?=
 =?utf-8?B?ZklyUEpIVmZnUk5IWlczTjdFN2FMQlROOGFZdzNtVmlFQm5ZeUJwSVlweU9y?=
 =?utf-8?B?NkRMM3BvNWJBaDlnM0tPeXZhVDBTK3Joamx3SHlUR0VqWmpuTVpMZm43cHJL?=
 =?utf-8?B?dnpSN2htSjV1VzlJcXdkaWRhc2dzZ0plNEhkMENTd2VYb1h6WnBzNGxETjVn?=
 =?utf-8?B?MzRqb1VVTjNNYllGWFcwS2hLM2xjWGVoaFJ4bkxCWnJDSEtOZFl6TFRKUWQw?=
 =?utf-8?B?bjFrZVBvaWI4MC9WdEJ5c054SW9ubHk3NUt5L2pabXd1SlZlRC8xelRUeFIr?=
 =?utf-8?B?WlpCL2hCNVdSZWpjZGdpYWx3WmJjSTFQUFpiVzh4elk5TFVuNUVvNjBYK2Jh?=
 =?utf-8?B?VDZkaDRGT01jNHJaanpwVEhvNVMwRVlINlB2SWlyOHAyeXpsU0YzcDN1M0pW?=
 =?utf-8?B?T0FKT0xNYjltRUVORkM4VGNoRkNsVW9GTGxkeGlBYzBIeTNSd3FuTnZHdmpE?=
 =?utf-8?B?ZFBXcmg0TCtubWhOVHBBait5K25CTE9Ma05MM0MvS2taazRNREoxeFZINFZw?=
 =?utf-8?B?WlpXb1FHcERpUFcxZHh1RFlaUTZpei9BZVZycytnMGJrcmpWekV2aHJaZmd0?=
 =?utf-8?B?a1NQKzRUemx3YzJQRm4vS0dnY3luMW5ONWFzRjM1RDFncElPQmU1OHhSRkU4?=
 =?utf-8?B?ajNxOXZNa0RaRCtIWWhCZS9UckhCSEs4K25UUjZLSUZxOVJFWmdoVncxTTV2?=
 =?utf-8?B?TW05TDZSU2JiZDkyK2IwMnJaWGJPaFViNTFFM3pmUVg4d0NoVHJpdzN1K0Fp?=
 =?utf-8?B?d1oxdFB3TEw4bTczcG5DbUhESVl2bE1rd2cwSGlvZkhYcjVNemc1K0FtTzZR?=
 =?utf-8?B?Ly9xVUduTUJBUUEwdy9meGI0UkZjYi9oNHJ6alZYZnpMOHpvQ2w4elg4N0lm?=
 =?utf-8?B?ckYvN2JjV05iTUpId0NhR0JtT3c1WDVkY2R1VU42d1V4NFBYaVoyZXp1QWdQ?=
 =?utf-8?B?WEpSTTkyNzdWekhRMXdNOFliQXMxb1Y0TzNIRi8wVDhZbmlVQjFGVGs2R1Ba?=
 =?utf-8?B?ZmFqekJJdFZtdC9aeit3eFNNcENwL0RjZXZodCtaa2NyN3F1YzV6cXFyWEQr?=
 =?utf-8?B?d2ZKeTZGVStsS3l4RDJkNldJN1ZpTFUxN2FNMnBBYUhKaDVrZGtNVXo5aG1F?=
 =?utf-8?B?c3NtRDVmeXNVRWpMK085aXU0SE90QWZYeDBRV0FvVXAzaHBwamdHS2ZFUEgz?=
 =?utf-8?B?NWFMYkp3Y0RzSE40SDFEUWdkejR0V2VjRVB6cTRXUWhwT2xac2tQWE5KeFdR?=
 =?utf-8?B?eEJmUE9KcGZ4VUJWd3Y4SCtuQ3RzS1A0U0Q3cHQvcUZ6Wmh5dnlaZHdUeTFv?=
 =?utf-8?B?YmJRQk1jMXl6eFNSZmNKMmNWYVdRTms1bXdQS3lmTXhFZUJvYmc4MnJSS1lU?=
 =?utf-8?B?UFJjQmFBTTdWSW5HRTVxNm9McFBPTjFLaDZ2V1M2blRKcFpOS1k3Q0lNeFJ3?=
 =?utf-8?B?bkFucG9sTklNZWoyY25tTXMzK0RLWG9BVXQxYjZIMlBqL1BUOFNqVlMvZURw?=
 =?utf-8?B?MHl4VWQ4T3E2Q0hHL1o3bEhmbWE4M3FmZW9KbGlpeDl6RVVldGxrditrRUQ5?=
 =?utf-8?B?VlJYa0VrNWFJb0prRDJ2WTcvWmF3bWhlN0ZVOHVGM09RVDErTVc4Ris0UDY5?=
 =?utf-8?B?UmJJU2d5NlNxNzFKNThiYk1YeGp6V1hIMXV0a1U3R0hENGNlUGlmVDVrcDhp?=
 =?utf-8?B?bnJFTHI3aHhhMlpFUkp4Qy95STVwZ29SY29mQ3R0dlRHRnJpbXcyaWw0cUtJ?=
 =?utf-8?B?Ukp2MndaeDFDSDRmaFM4b2RNa01IbVJtMFZvc3dnNWZhWkZ2V09kcDNsRHdr?=
 =?utf-8?B?UzVKdzJac0dSQjdaNjhtdjZaaXBVek9tTk81Y3hKa3V6YTZ5VFd3UGhiZGY5?=
 =?utf-8?B?Q05TcmNYWnRBeHdsVkU2bGQrZ2Ftd2p0WnVkeW5iQVQ0bFpvRGUybzVHbEFs?=
 =?utf-8?B?VGJoMnVhN3l3WGx0akRpbkdnVDlSLzZXdDhKcFVvekJjY0lCeVRHVHpBSk93?=
 =?utf-8?B?QUVBN2djc0dJZ1Q4c0ZMNzdHRkl6dnlPUkFsaU9hVStocHdrdEhmTndwUDB5?=
 =?utf-8?B?bkFyUXYrMEZkQ2xiSzRWK0Jmcm1sT0FwaHRBSC9HYXc2VXg3Nngxa0hLQmhH?=
 =?utf-8?B?MVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c615382-2996-4970-a81c-08dc74e2f91c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 13:28:57.4105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6fqcqV8fKDibjmwHA/ewbp+NF/m7JZqghAZvTvbBN9M7vuiU+NemD7hzqP1QSsxgFiRVad9GzeVtewL/eaaXpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6433
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

Quoting Mika Kahola (2024-05-15 03:45:24-03:00)
>.clock is not necessarily required to have in pll state
>structure as it can always recalculated with the *_calc_port_clock()
>function. Hence, let's remove this struct member complitely.
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 86 -------------------
> drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 -
> 2 files changed, 88 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 9f860a05e623..abb937368284 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -505,7 +505,6 @@ void intel_cx0_phy_set_signal_levels(struct intel_enco=
der *encoder,
>  */
>=20
> static const struct intel_c10pll_state mtl_c10_dp_rbr =3D {
>-        .clock =3D 162000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0xB4,
>@@ -531,7 +530,6 @@ static const struct intel_c10pll_state mtl_c10_dp_rbr =
=3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_edp_r216 =3D {
>-        .clock =3D 216000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0x4,
>@@ -557,7 +555,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r21=
6 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_edp_r243 =3D {
>-        .clock =3D 243000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0x34,
>@@ -583,7 +580,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r24=
3 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_dp_hbr1 =3D {
>-        .clock =3D 270000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0xF4,
>@@ -609,7 +605,6 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr1=
 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_edp_r324 =3D {
>-        .clock =3D 324000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0xB4,
>@@ -635,7 +630,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r32=
4 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_edp_r432 =3D {
>-        .clock =3D 432000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0x4,
>@@ -661,7 +655,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r43=
2 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_dp_hbr2 =3D {
>-        .clock =3D 540000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0xF4,
>@@ -687,7 +680,6 @@ static const struct intel_c10pll_state mtl_c10_dp_hbr2=
 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_edp_r675 =3D {
>-        .clock =3D 675000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0xB4,
>@@ -713,7 +705,6 @@ static const struct intel_c10pll_state mtl_c10_edp_r67=
5 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_dp_hbr3 =3D {
>-        .clock =3D 810000,
>         .tx =3D 0x10,
>         .cmn =3D 0x21,
>         .pll[0] =3D 0x34,
>@@ -761,7 +752,6 @@ static const struct intel_c10pll_state * const mtl_c10=
_edp_tables[] =3D {
>=20
> /* C20 basic DP 1.4 tables */
> static const struct intel_c20pll_state mtl_c20_dp_rbr =3D {
>-        .clock =3D 162000,
>         .tx =3D {        0xbe88, /* tx cfg0 */
>                 0x5800, /* tx cfg1 */
>                 0x0000, /* tx cfg2 */
>@@ -786,7 +776,6 @@ static const struct intel_c20pll_state mtl_c20_dp_rbr =
=3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_dp_hbr1 =3D {
>-        .clock =3D 270000,
>         .tx =3D {        0xbe88, /* tx cfg0 */
>                 0x4800, /* tx cfg1 */
>                 0x0000, /* tx cfg2 */
>@@ -811,7 +800,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr1=
 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_dp_hbr2 =3D {
>-        .clock =3D 540000,
>         .tx =3D {        0xbe88, /* tx cfg0 */
>                 0x4800, /* tx cfg1 */
>                 0x0000, /* tx cfg2 */
>@@ -836,7 +824,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr2=
 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_dp_hbr3 =3D {
>-        .clock =3D 810000,
>         .tx =3D {        0xbe88, /* tx cfg0 */
>                 0x4800, /* tx cfg1 */
>                 0x0000, /* tx cfg2 */
>@@ -862,7 +849,6 @@ static const struct intel_c20pll_state mtl_c20_dp_hbr3=
 =3D {
>=20
> /* C20 basic DP 2.0 tables */
> static const struct intel_c20pll_state mtl_c20_dp_uhbr10 =3D {
>-        .clock =3D 1000000, /* 10 Gbps */
>         .tx =3D {        0xbe21, /* tx cfg0 */
>                 0xe800, /* tx cfg1 */
>                 0x0000, /* tx cfg2 */
>@@ -886,7 +872,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr=
10 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 =3D {
>-        .clock =3D 1350000, /* 13.5 Gbps */
>         .tx =3D {        0xbea0, /* tx cfg0 */
>                 0x4800, /* tx cfg1 */
>                 0x0000, /* tx cfg2 */
>@@ -911,7 +896,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr=
13_5 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_dp_uhbr20 =3D {
>-        .clock =3D 2000000, /* 20 Gbps */
>         .tx =3D {        0xbe20, /* tx cfg0 */
>                 0x4800, /* tx cfg1 */
>                 0x0000, /* tx cfg2 */
>@@ -950,7 +934,6 @@ static const struct intel_c20pll_state * const mtl_c20=
_dp_tables[] =3D {
>  */
>=20
> static const struct intel_c20pll_state xe2hpd_c20_edp_r216 =3D {
>-        .clock =3D 216000,
>         .tx =3D { 0xbe88,
>                 0x4800,
>                 0x0000,
>@@ -975,7 +958,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp_=
r216 =3D {
> };
>=20
> static const struct intel_c20pll_state xe2hpd_c20_edp_r243 =3D {
>-        .clock =3D 243000,
>         .tx =3D { 0xbe88,
>                 0x4800,
>                 0x0000,
>@@ -1000,7 +982,6 @@ static const struct intel_c20pll_state xe2hpd_c20_edp=
_r243 =3D {
> };
>=20
> static const struct intel_c20pll_state xe2hpd_c20_edp_r324 =3D {
>-        .clock =3D 324000,
>         .tx =3D { 0xbe88,
>                 0x4800,
>                 0x0000,
>@@ -1025,7 +1006,6 @@ static const struct intel_c20pll_state xe2hpd_c20_ed=
p_r324 =3D {
> };
>=20
> static const struct intel_c20pll_state xe2hpd_c20_edp_r432 =3D {
>-        .clock =3D 432000,
>         .tx =3D { 0xbe88,
>                 0x4800,
>                 0x0000,
>@@ -1050,7 +1030,6 @@ static const struct intel_c20pll_state xe2hpd_c20_ed=
p_r432 =3D {
> };
>=20
> static const struct intel_c20pll_state xe2hpd_c20_edp_r675 =3D {
>-        .clock =3D 675000,
>         .tx =3D { 0xbe88,
>                 0x4800,
>                 0x0000,
>@@ -1088,7 +1067,6 @@ static const struct intel_c20pll_state * const xe2hp=
d_c20_edp_tables[] =3D {
> };
>=20
> static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 =3D {
>-        .clock =3D 1350000, /* 13.5 Gbps */
>         .tx =3D {        0xbea0, /* tx cfg0 */
>                 0x4800, /* tx cfg1 */
>                 0x0000, /* tx cfg2 */
>@@ -1127,7 +1105,6 @@ static const struct intel_c20pll_state * const xe2hp=
d_c20_dp_tables[] =3D {
>  */
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_25_2 =3D {
>-        .clock =3D 25200,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x4,
>@@ -1153,7 +1130,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
25_2 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_27_0 =3D {
>-        .clock =3D 27000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34,
>@@ -1179,7 +1155,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
27_0 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_74_25 =3D {
>-        .clock =3D 74250,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4,
>@@ -1205,7 +1180,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
74_25 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_148_5 =3D {
>-        .clock =3D 148500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4,
>@@ -1231,7 +1205,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
148_5 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_594 =3D {
>-        .clock =3D 594000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4,
>@@ -1258,7 +1231,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
594 =3D {
>=20
> /* Precomputed C10 HDMI PLL tables */
> static const struct intel_c10pll_state mtl_c10_hdmi_27027 =3D {
>-        .clock =3D 27027,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xC0, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1268,7 +1240,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
27027 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_28320 =3D {
>-        .clock =3D 28320,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x04, .pll[1] =3D 0x00, .pll[2] =3D 0xCC, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1278,7 +1249,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
28320 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_30240 =3D {
>-        .clock =3D 30240,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x04, .pll[1] =3D 0x00, .pll[2] =3D 0xDC, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1288,7 +1258,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
30240 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_31500 =3D {
>-        .clock =3D 31500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x62, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1298,7 +1267,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
31500 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_36000 =3D {
>-        .clock =3D 36000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xC4, .pll[1] =3D 0x00, .pll[2] =3D 0x76, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1308,7 +1276,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
36000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_40000 =3D {
>-        .clock =3D 40000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x86, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1318,7 +1285,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
40000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_49500 =3D {
>-        .clock =3D 49500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1328,7 +1294,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
49500 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_50000 =3D {
>-        .clock =3D 50000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xB0, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1338,7 +1303,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
50000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_57284 =3D {
>-        .clock =3D 57284,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xCE, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1348,7 +1312,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
57284 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_58000 =3D {
>-        .clock =3D 58000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD0, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1358,7 +1321,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
58000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_65000 =3D {
>-        .clock =3D 65000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x66, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1368,7 +1330,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
65000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_71000 =3D {
>-        .clock =3D 71000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x72, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1378,7 +1339,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
71000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_74176 =3D {
>-        .clock =3D 74176,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1388,7 +1348,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
74176 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_75000 =3D {
>-        .clock =3D 75000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7C, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1398,7 +1357,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
75000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_78750 =3D {
>-        .clock =3D 78750,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x84, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1408,7 +1366,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
78750 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_85500 =3D {
>-        .clock =3D 85500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x92, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1418,7 +1375,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
85500 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_88750 =3D {
>-        .clock =3D 88750,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0x98, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1428,7 +1384,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
88750 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_106500 =3D {
>-        .clock =3D 106500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xBC, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1438,7 +1393,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
106500 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_108000 =3D {
>-        .clock =3D 108000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xC0, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1448,7 +1402,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
108000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_115500 =3D {
>-        .clock =3D 115500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD0, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1458,7 +1411,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
115500 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_119000 =3D {
>-        .clock =3D 119000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD6, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1468,7 +1420,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
119000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_135000 =3D {
>-        .clock =3D 135000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x6C, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1478,7 +1429,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
135000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_138500 =3D {
>-        .clock =3D 138500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x70, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1488,7 +1438,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
138500 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_147160 =3D {
>-        .clock =3D 147160,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x78, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1498,7 +1447,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
147160 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_148352 =3D {
>-        .clock =3D 148352,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1508,7 +1456,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
148352 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_154000 =3D {
>-        .clock =3D 154000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x80, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1518,7 +1465,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
154000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_162000 =3D {
>-        .clock =3D 162000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x88, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1528,7 +1474,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
162000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_167000 =3D {
>-        .clock =3D 167000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x8C, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1538,7 +1483,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
167000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_197802 =3D {
>-        .clock =3D 197802,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1548,7 +1492,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
197802 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_198000 =3D {
>-        .clock =3D 198000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1558,7 +1501,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
198000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_209800 =3D {
>-        .clock =3D 209800,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xBA, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1568,7 +1510,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
209800 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_241500 =3D {
>-        .clock =3D 241500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xDA, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1578,7 +1519,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
241500 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_262750 =3D {
>-        .clock =3D 262750,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x68, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1588,7 +1528,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
262750 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_268500 =3D {
>-        .clock =3D 268500,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x6A, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1598,7 +1537,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
268500 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_296703 =3D {
>-        .clock =3D 296703,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1608,7 +1546,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
296703 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_297000 =3D {
>-        .clock =3D 297000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1618,7 +1555,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
297000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_319750 =3D {
>-        .clock =3D 319750,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x86, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1628,7 +1564,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
319750 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_497750 =3D {
>-        .clock =3D 497750,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xE2, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1638,7 +1573,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
497750 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_592000 =3D {
>-        .clock =3D 592000,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1648,7 +1582,6 @@ static const struct intel_c10pll_state mtl_c10_hdmi_=
592000 =3D {
> };
>=20
> static const struct intel_c10pll_state mtl_c10_hdmi_593407 =3D {
>-        .clock =3D 593407,
>         .tx =3D 0x10,
>         .cmn =3D 0x1,
>         .pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D=
 0x00, .pll[4] =3D 0x00,
>@@ -1707,7 +1640,6 @@ static const struct intel_c10pll_state * const mtl_c=
10_hdmi_tables[] =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_25_175 =3D {
>-        .clock =3D 25175,
>         .tx =3D {  0xbe88, /* tx cfg0 */
>                   0x9800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1732,7 +1664,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
25_175 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_27_0 =3D {
>-        .clock =3D 27000,
>         .tx =3D {  0xbe88, /* tx cfg0 */
>                   0x9800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1757,7 +1688,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
27_0 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_74_25 =3D {
>-        .clock =3D 74250,
>         .tx =3D {  0xbe88, /* tx cfg0 */
>                   0x9800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1782,7 +1712,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
74_25 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_148_5 =3D {
>-        .clock =3D 148500,
>         .tx =3D {  0xbe88, /* tx cfg0 */
>                   0x9800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1807,7 +1736,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
148_5 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_594 =3D {
>-        .clock =3D 594000,
>         .tx =3D {  0xbe88, /* tx cfg0 */
>                   0x9800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1832,7 +1760,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
594 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_300 =3D {
>-        .clock =3D 3000000,
>         .tx =3D {  0xbe98, /* tx cfg0 */
>                   0x8800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1857,7 +1784,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
300 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_600 =3D {
>-        .clock =3D 6000000,
>         .tx =3D {  0xbe98, /* tx cfg0 */
>                   0x8800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1882,7 +1808,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
600 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_800 =3D {
>-        .clock =3D 8000000,
>         .tx =3D {  0xbe98, /* tx cfg0 */
>                   0x8800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1907,7 +1832,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
800 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_1000 =3D {
>-        .clock =3D 10000000,
>         .tx =3D {  0xbe98, /* tx cfg0 */
>                   0x8800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -1932,7 +1856,6 @@ static const struct intel_c20pll_state mtl_c20_hdmi_=
1000 =3D {
> };
>=20
> static const struct intel_c20pll_state mtl_c20_hdmi_1200 =3D {
>-        .clock =3D 12000000,
>         .tx =3D {  0xbe98, /* tx cfg0 */
>                   0x8800, /* tx cfg1 */
>                   0x0000, /* tx cfg2 */
>@@ -2259,7 +2182,6 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel=
_clock, struct intel_c20pll_
>         else
>                 mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_0;
>=20
>-        pll_state->clock        =3D pixel_clock;
>         pll_state->tx[0]        =3D 0xbe88;
>         pll_state->tx[1]        =3D 0x9800;
>         pll_state->tx[2]        =3D 0x0000;
>@@ -2438,8 +2360,6 @@ static void intel_c20pll_readout_hw_state(struct int=
el_encoder *encoder,
>                 }
>         }
>=20
>-        pll_state->clock =3D intel_c20pll_calc_port_clock(encoder, pll_st=
ate);
>-
>         intel_cx0_phy_transaction_end(encoder, wakeref);
> }
>=20
>@@ -3299,14 +3219,8 @@ static void intel_c20pll_state_verify(const struct =
intel_crtc_state *state,
>         const struct intel_c20pll_state *mpll_sw_state =3D &state->dpll_h=
w_state.cx0pll.c20;
>         bool sw_use_mpllb =3D intel_c20phy_use_mpllb(mpll_sw_state);
>         bool hw_use_mpllb =3D intel_c20phy_use_mpllb(mpll_hw_state);
>-        int clock =3D intel_c20pll_calc_port_clock(encoder, mpll_sw_state=
);
>         int i;
>=20
>-        I915_STATE_WARN(i915, mpll_hw_state->clock !=3D clock,
>-                        "[CRTC:%d:%s] mismatch in C20: Register CLOCK (ex=
pected %d, found %d)",
>-                        crtc->base.base.id, crtc->base.name,
>-                        mpll_sw_state->clock, mpll_hw_state->clock);
>-

Maybe it would be better if we did not remove this check? We could
calculate port clock for mpll_hw_state and keep the check, this could be
done in a separate patch.

--
Gustavo Sousa

>         I915_STATE_WARN(i915, sw_use_mpllb !=3D hw_use_mpllb,
>                         "[CRTC:%d:%s] mismatch in C20: Register MPLLB sel=
ection (expected %d, found %d)",
>                         crtc->base.base.id, crtc->base.name,
>diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.h
>index f09e513ce05b..fedc5e41460c 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
>+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
>@@ -242,14 +242,12 @@ struct intel_mpllb_state {
> };
>=20
> struct intel_c10pll_state {
>-        u32 clock; /* in KHz */
>         u8 tx;
>         u8 cmn;
>         u8 pll[20];
> };
>=20
> struct intel_c20pll_state {
>-        u32 clock; /* in kHz */
>         u16 tx[3];
>         u16 cmn[4];
>         union {
>--=20
>2.34.1
>

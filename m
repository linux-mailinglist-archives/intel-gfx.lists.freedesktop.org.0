Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4209EB48AEB
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 13:02:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C101310E201;
	Mon,  8 Sep 2025 11:02:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l5gEDjPF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A6A10E4C4
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 11:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757329339; x=1788865339;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=c+Cek2y1HWA2TH77YoEBWGf6+YDyYFO89OvEIvzrkf4=;
 b=l5gEDjPF3EyIDJmkzUnkC29RtrnUgzltypV+dLFc1vul5GmkKtkOT8om
 3nLDhH0TIGKLcSWFFn1BoJSUvlEi2D7N4vc0JpQty6anIU7Fmc/ReiV7J
 aq3rR2nd8nHVUgk6Gdb8vlFFRS3DPwLhOW6ldd745iYoie+FQWh93EaWK
 lCpGEHrW0ljevK2V3Nvwrh8v/vwIVnSAYD2D4n20fyoPUB4FWH6pF0bk7
 1/wasd+s4+QRhdIZmurrfhnNhaI7Hk86ufP6WsUdf6QhXhPNE6lPfGGj5
 kq5nziVPglXabdalf4tyJM0s3NZSLEiQvW/tkBMUI5maaxaxw99A37LZm A==;
X-CSE-ConnectionGUID: Xer9NUYDQk6spO1ZFGkrsA==
X-CSE-MsgGUID: WatfnYSzTGa+/JPEPrp+Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="77199366"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="77199366"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:02:19 -0700
X-CSE-ConnectionGUID: 3znzssFRTbewrJXsffsixA==
X-CSE-MsgGUID: UYwU20PdRq6yAwF9xXvO5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="203728348"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:02:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 04:02:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 04:02:18 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.87)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 04:02:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xh6Xb9HxVOeswpQs8kACKfh+oiUggmKYvkoUZfzTTW1B2ly7RycREwsNcRY2NdX+EB4RZUNqvfnQLUXDXWC5H4of2ednvN+bsc6P+CgEgxsvYPAw9S1eh+J5Ib2KWF/TT6yuTDxs8yH7Jw3wKYs/ficJQIaXEJ5Cyg4vlMpLE//pW4+ScBoBMWWY5eG/MHJ5r1SK60E/vkOBsmfkZzcV+WGlx7iA5vkunAn3JOzj9ZYmHUqAs+4DRirQ850tgl5X1gi/8K9WxACWDynvq0sLictVMiVKYcKJo98o1zRWXj6yNk5vwdqYdq8TXaZa5MeDag66w0yU8AqkLPOZC69RLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+Cek2y1HWA2TH77YoEBWGf6+YDyYFO89OvEIvzrkf4=;
 b=PokgkjEoy0k+QtuhB524Jq9mDieKkGiEUFVnNwHrr+VxEEyuGVUmlVmtSFVXiGapkInVASwqPjbhNkuUfd2KToo9OqQRJm300Vu/zwShhKK2/36yV9p2tF5TkOEEknni5Td3fmJThMwvcvLtmFO+k1igK6UsJXobYCV2/iuimvf0WCFyTdQ3bq5BwX1Itbxz3wvbSJbKg0tmf1u6sKw5NEhEnmy9dIKt5ZkHtKpUjMdOtKfTh+Gdo1/pmCttBWPTVRAJHCN/Hiq4xiKKJ2nnBmq/yz4PEYmukgOqWAkxUci/n4oM11HJI9YdS045PY3ZX+qn0Xgq/BRsjxBFeG13LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA1PR11MB8326.namprd11.prod.outlook.com (2603:10b6:806:379::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Mon, 8 Sep
 2025 11:02:12 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9094.021; Mon, 8 Sep 2025
 11:02:12 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 8 Sep 2025 11:02:07 +0000
Message-ID: <DCND97WQEXWO.2W6UUZKWL1379@intel.com>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/gem: Avoid accessing uninitialized context
 in emit_rpcs_query()
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <3c911724dc4fc37d6c301c68de5d16ae10180dea.1756995162.git.krzysztof.karas@intel.com>
In-Reply-To: <3c911724dc4fc37d6c301c68de5d16ae10180dea.1756995162.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: TL2P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::11) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA1PR11MB8326:EE_
X-MS-Office365-Filtering-Correlation-Id: c71c5fe6-6a83-4b76-d735-08ddeec729c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WE0rTk1FK1VrUEZJQXE0N2tGWnIzTWk1TmlySWxQazFiR1lkaGg4WVpKQmx3?=
 =?utf-8?B?REtVeVpFbUZWSUF0VW8xRGFtMDhIMmRzckNWQXVoajB2REowNnh5Zk1VeGpw?=
 =?utf-8?B?dDNGTWhoN0EyWmU5Vm5nSkcyOXU1WnI3ckpGTDRKdEtVREtGOVN1ZndiMGk4?=
 =?utf-8?B?dkF0YTc0M012M3RVdktoNkFBMXQ5WFFrUC90V0czT1VyNXlQalYxajlET0Nw?=
 =?utf-8?B?MWVwWFkvampLU1pkV00ydlFBcHJ3dUVBSFl4dXNmK0t4amUzcE5HT1hNdWZm?=
 =?utf-8?B?dVRaTE85UjhnZjRmeWxTbEVzdERlTTVxYzErUGc3Q0RrTCthYU5ZS3FMZGlt?=
 =?utf-8?B?ZzMzYTNDNWJ3WnBVQTJ2emdUTEdpeTVJWmVPR2xTQzBlVlV0M0NYWFZKNVlJ?=
 =?utf-8?B?Q0xqTUFyOGhZRE9iUi9JWmJ3MStXc214NFhYRGI1WjJmb3lLRzZOQXlBWVZ0?=
 =?utf-8?B?cWVCTGtPcmhZQ1o3RDBFRDFIdDlvN0hhQTZrUVNQN09uWjlSd0wxbytEaFhz?=
 =?utf-8?B?eWpkdGNiaTZwbityV25PZndicC8rSHRnTHo3dWpDMTg1SzhDQTdBS3F5U2dq?=
 =?utf-8?B?eWdaanNSMWRURVFNMS9pa3Y2bDlWVmxLOVhDdGo1UzhTWUNoajl0MktDOEtw?=
 =?utf-8?B?R1pNZlIwYnhzUVFFcGduY0xoTFBhUUdOTlVuSEllaHFJbGxNdzdSbU0vTlZJ?=
 =?utf-8?B?emUrcGluNzRoRUtRREZRWXV2T2ZxVkZncEMvbWF3bWhtR1krUjFBTVZ1OWVX?=
 =?utf-8?B?NnRwbytGTVgxanlXOVVsNlNDTThaNFl4YjdIVDhWSzQvZDdsQUpzSTR2dTEr?=
 =?utf-8?B?R2NJcWFocEpHTXFyRDVaR1BieWdnMWwyV2V5V2U5bVdMTk1IYVlDZ05zNTh0?=
 =?utf-8?B?V0kwMGkvSVNuanAyS0NNZjJaTUsyZnlzbVB6WEo1TFNJQ1Nsa2szR2orU245?=
 =?utf-8?B?ZGQ5ZVIyMTZBQ0VVMnRQS1pFemlqMnhobjI0ekVFRm00R3c4cTZ2eW1qRS90?=
 =?utf-8?B?U1dTYXJoT3orWVllQkpiYnBSUTZ3N25LR1RvemZsWElqaDREdTMyRGRjQmEv?=
 =?utf-8?B?M211eENQd3MwWGJQVFRqS0ovMTlhUEc4NXVqOGdhNDRRR2hOaU82cHQvcDdu?=
 =?utf-8?B?V2ZJUE90dFVmUHA1b3lLNEx3U0N0SUJMWjZoSmttNXkzRVhMR1NOWTJXY010?=
 =?utf-8?B?UUhsUWJ1OHZnekFEYnMxNGh3dGhTbmVKQzVyZ0dKR0tjRlJ0ZnZEVTJVZmkx?=
 =?utf-8?B?eU5KcFBqaTFpdGJyZk4vOFRjU3NrOHVtSnFuNi9rRURIRkNiZS9tQStodUFv?=
 =?utf-8?B?RksySlJjRmprN1hrTjFmN2VPZG5BZHYvTWxXU3FISU5jMVNxZkpJNU5SQjls?=
 =?utf-8?B?WTB0YlZtU3BQOFlmK0FwTkoxMkhHemM2amRCUC85dDFzNytCbHIwbDRsTzJs?=
 =?utf-8?B?aGZEUVptcHJ0OUg1d3Q5WlI4cXZHYUNCanRvQlBLZmg1OVhJMEtWbVd2aHo0?=
 =?utf-8?B?MFA5ZUhrWEJJRFJzb3psS2NNQUtqUFRHY25VOEE3UGthZU9uR0Zrckh6RWhW?=
 =?utf-8?B?Vmp1blVxeXZTNUN6SloxRUpCKyt1SEROTEZPSGVjd0pheldYM0NGZm40RUV0?=
 =?utf-8?B?QVU4eFR1cVhxUTZUdHFTRTNpNTR3aTNzTDliODBRVHFkNUpFV1g0dkMvQmVO?=
 =?utf-8?B?U2hLUlQrQmIvWlR2VUZSM2VmWGIyTXRnaXFzUzlpamZZanVqbEZITWdGN0NZ?=
 =?utf-8?B?dHZ6Uk15WnRVcVlTME90MlB1aE9tMmRqVzdIU1Vjb01zbGxaQVZDSlMzR2Y5?=
 =?utf-8?B?OHh4SUtaZVhlQUJTRWpWNFRXN2t3UmVqN1JlM1V4MHdmeVVrQmNsNHVha2c0?=
 =?utf-8?B?a0J6SkFSQ24vUW1JRDgzWjZJdVhmVjQxKzlrRUF6a2E4OXZpajluZUNqbDdz?=
 =?utf-8?Q?GbCBfED6UQE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFlZTHVtM1l5R0NuRVRSWi90Y0lYVzhJUldCNE5PMWxyMTFKRGtQRjhtenEr?=
 =?utf-8?B?WVcyQ0wydStjTEtVMlNWM3VmbkFPNmN3aEpnVUtaa0NvUnV6NUpRN1JCWDRP?=
 =?utf-8?B?eW0zbDYzUWZBemF0bERTdVN6c3QvcTZOd2JzWDhxK0kvNmx2djUxMEJjcFVq?=
 =?utf-8?B?WEhiOEliZ2VDOWlta25weXJmUzVrVFkzSXo5TVlvZmxMRmE5UG9FWlZjNG9O?=
 =?utf-8?B?MzUrSEFZQjltazRtdEtmOTVYVWRhQmRPSmY2b1Vzd0tHSmRpQW1pSGpVQ1FW?=
 =?utf-8?B?TEtrZXVLd2dmNXRDaDRqMWw3OEdMMjF2a0RnZGNsY3lKSWVrVUYxV3gvenZQ?=
 =?utf-8?B?MUhLZ1IrY2d2M1l1aHYxanNrNXpXdHduNUpqVkh2aGJ1QURyeWpTQ0E1cmla?=
 =?utf-8?B?NERRazhmYnVsZ1V3eCtHZWc2L2IvU3B2L24waTNVd3ZpSmNxRVpXOUJXNG5O?=
 =?utf-8?B?dW9scmVFU3ZlazVQU29vTGVmRkNDZXA4OG5QNCtzVjFuelRkS1BwR3ZkR3ZJ?=
 =?utf-8?B?Um1MSTZBWHh6N1NGNnRCYW9ZVy8vcElsb0N0ZkpHc3JWUWZ4ekpBYWZpRW9y?=
 =?utf-8?B?bjdpUVBGSHc0blRtdFNEV0RPOFZwYVB6NkNsOFlMMmFqa2hBSGcrQmdTNG5D?=
 =?utf-8?B?bE1GeUEwMThvajhtUjVnWlBodzExYnZvd3BrNE52SDg4aUJPa1c3TEY2VlI4?=
 =?utf-8?B?WWVBd2JuOUFjcVpuZzhsLzNnaU1McDBiUmIzcjFiYy9rbmowWFpneHFIb05u?=
 =?utf-8?B?cUhselNPK1NUcjJFOUZSYng3ZmE3ZmZzOWYrNmxHdG9MOVF0cmtQeW1SS1M5?=
 =?utf-8?B?azZjK1BnWjVEYUsza2JYWDh2cDA0cC8veW02SUtGeVdCQ3V3Z0xiWXh4L3Zz?=
 =?utf-8?B?VVNIMHBTa0t5QWNoVVRZOFVkRUxZeXNFQVl6ckQ2ekxxOFRBQVA5bGZLR3dq?=
 =?utf-8?B?azJzTEZ1WlRHanMwdktuTlQvb2dDcWQ1SGk4SjBadmx4bENnVzNoUlhBSHl4?=
 =?utf-8?B?Y3BPR0h5OWtYVXNoaFpxYnJVTis5VGd5LzkwaGRMVHZYQnlnYmRsZ2JlYXpv?=
 =?utf-8?B?S1RHSDQzOVgrV3VnNmkyUTEreHE2cWNVblY4UnNpaUxqOUo2OGZzT1lyMHZ4?=
 =?utf-8?B?RU9uN2EwQ2U3VXNVQkZTUm9KYkFwS1J3amlvcStzdzhHRVFnaFpvbEtmK3Rj?=
 =?utf-8?B?TFJpYlIwUUxYeEQyZjl2aFhJdm96dmxtVGdacDB0MnJWVzVDQTh0a1BIMk02?=
 =?utf-8?B?MGxKZzRZRHM5TFZXSVFKRklwMFVuTU9NT1o5SnNVeFJXNW93djVJTzNnbzhG?=
 =?utf-8?B?Y093dG1RN1NRRG0rRXA4eXJoR0JFd0dHbGJlbDhnY2tHa3c4bWZ6Zm1NYWJr?=
 =?utf-8?B?aVRZSlROVEJXOUlaMzY3UUZFeWFDOTVxU2h2bUtOZ0krSlFpY0tLcWxqQmpq?=
 =?utf-8?B?bG9lenpDVnMvZSszNXM1Qlgyb2dZY3BJNFY2ZkNPUjY0QnoxYi9lNU80VjRH?=
 =?utf-8?B?N3NHZ1hZY0w5MFNabzI2MlVLQXlpYVNqL2ZLL3E3ZHRMdlhJVlZEek5LZU5G?=
 =?utf-8?B?SzF0QW5uekhyWFFTUHV5M0JNMU5sOEUxS05CVkd5dldZeHJ5TGEyTERKWUN0?=
 =?utf-8?B?V0RVbTlsVUVtcSttbkk3RytIUDBKcjVHSldBd1EraWdUZUZod21uVlcyVkN5?=
 =?utf-8?B?dW1FMWxqVDkvZ0k4WUkyTE1oQm8za0I1NUF3alZpS09oaWN4ZWRjcWtPcldZ?=
 =?utf-8?B?Mm1jN1FjTVd6eDV1SW10Qy9OZlJDUVFpT1lVRWNBWmNXdTRUUTlJaUFnRVlI?=
 =?utf-8?B?N0V4VXNXc0JjLy8yOU5ob1hwUGxxK01iTlJpZVdHVk5Xd2dVUUtGYVpZVWFz?=
 =?utf-8?B?a25PMWFMb0VIYytXMnVJS1MwWHJVcWQvcjVRWHd3NGp1Rmt2UEtRckNMbjVy?=
 =?utf-8?B?dFh1SWxwV01xdE9qdmhENDdYdStpVHZjUis2aW9yM2pEQmVlODRnSGN4ZU44?=
 =?utf-8?B?S0daOVg3NXF5clVUaUVUbWVhQjFHNEp2U29rR0Zpbm9sMGtUMmpZd003VVl1?=
 =?utf-8?B?WVlXdTdXU21aZ3ZNWHhXWUxoYmJ5WFpURS9xcm5uYm5BczBGYkUyWTJFcWVn?=
 =?utf-8?B?bDdyOTB3eDQ2Q3dmSWhCZkFDSFNTeU51elhKb0NuVVJmSHhxNUpFaXB1TVFq?=
 =?utf-8?B?a1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c71c5fe6-6a83-4b76-d735-08ddeec729c5
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 11:02:12.5618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zwRCPLhhFtcSd3OZgx2fRJLb9Lb3raKaRuvc2uJwljzNGU5ebm2cnFUATAJhvfNWFnNjtVwAB62KpoS7RS+ensOCSJiXavvBtZ0v/toF18Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8326
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

Hi Krzysztof

On Mon Sep 8, 2025 at 9:23 AM UTC, Krzysztof Karas wrote:
> Following the error path in that function may lead to usage of
> uninitialized struct i915_gem_ww_ctx object, so move call to
> i915_gem_ww_ctx_init() a bit earlier.
>
> Fixes: 15b6c9249870 ("drm/i915: Move i915_vma_lock in the selftests to av=
oid lock inversion, v3.")
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.10+
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
--=20
Best regards,
Sebastian


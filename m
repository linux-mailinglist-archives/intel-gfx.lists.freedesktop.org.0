Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMUZM0rXiWlXCQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 13:47:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FDD10EF24
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 13:47:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214B410E151;
	Mon,  9 Feb 2026 11:30:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YGuX3ljE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8345C10E151;
 Mon,  9 Feb 2026 11:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770636623; x=1802172623;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dLUcky7Gmd/+oQhEPMAQpJ1PSIdk1LiVFn88u/zD+VY=;
 b=YGuX3ljEGh3oFOFsdbqOIU22x5nsI95GOrzHvFq/s/atiNKoyW99dUsx
 skCFXxQ++sILOlLteWmRjPmDJa69ETwxKc87Z1Azl3T+agykRUO4uqC53
 5u33fHG9efka0izKaisKenwf3wufmhVn1MTgRtiuzQleydyx15hcv+/5D
 O3AHKDEVwg2BYllVTLqQ8PKPuGNP048JOuWOuQG6oQDPJmHo1wbLCb83I
 lRiMipKZrJ2JV98VeXjNyj1EJL0CVkfETkmTR5dM7rsX6toKTG8T34YVQ
 ELBrxMbmH4rmj+tCMP2s9dLR5ftBtXPAupfNMIM7w+slNnm741tIJHjlI w==;
X-CSE-ConnectionGUID: KPKu3+4cQty+wD1Ouz+Jbw==
X-CSE-MsgGUID: q9wLGxryStybNudPwKvGQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11695"; a="82480156"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="82480156"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 03:30:23 -0800
X-CSE-ConnectionGUID: H6AKwGR9TOSlx+is2yq2Lw==
X-CSE-MsgGUID: aG7F0AJoTw+V8F51gp1RIA==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 03:30:22 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 03:30:22 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 03:30:22 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 03:30:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=swttPshzfA2o28Pej0Fiv49/xVytmIY3XNrfkvwnJA+md72Rby0wWBny/v/G2iD76HJZabtJZnvb6mgnOnXHkdZWRivvbVhEFo1e8GFthLM3b/juNRWav1FDYUnOwJuQrlevrsFPn0lxBhgG3DOq+krl+lYbD4Vnyd5RcLDgmJrRA7EdP3qCuCQ/VtLTlw+a1AaYPfNrO4ASPBLZ7VzS575A+5JgmB0TVmPUqk4ybGH4SkVIr9dflLNxuppP5iDpxvCGCEfkHPBKUNTmhTgRsw+tpgVy1v+ahKD4DOsWjEWwsuVtSQeQpfYxGwrX/7Mwt2/8ApjcVPNcCuyCsgjhrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BvKjUqDM/L67BoMVnv+UhC+mCkM/18RoPBXeXIjl+hQ=;
 b=CaVBvAzLWnn5NFh6oaGc28VjpGsUML2Tq4mEi+0ps6MKRSskr7gOC8aJeSc8ajXcYJ+UiPrghX4e8XXRaruR1AGfjABWSaZXKoDBR8VFfh4YbrXUr9gp4j53Y1hFbfJehywEjCT6DWVPXFOP8JY5HSesYLmVlKNffC4Wsk58eTToWfiGec+HOEiLTM/oYIA57F6oafsIiWX17A3ipjycWXYwSdAsVmb3Q/0tXXOMmptK/WAeIsn+pa+aHJq2DJiE83LX5wlJy4aPwSY8cQPuXuOTyjyDZHlu3ZvJkGKCU8qaBT5YLIXePLxIsKnAbbnZkMpl0dKHPcKXZuUmTRDvcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.15; Mon, 9 Feb
 2026 11:30:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Mon, 9 Feb 2026
 11:30:20 +0000
Message-ID: <371ae01a-acb4-485b-b063-c23999a0f958@intel.com>
Date: Mon, 9 Feb 2026 17:00:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
To: <imre.deak@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <stable@vger.kernel.org>
References: <20260206104227.290231-1-imre.deak@intel.com>
 <f6b59555-01f6-49ff-aff4-a6da9d347332@intel.com>
 <9ca3365b-c595-4401-8663-9c18ccc45d45@intel.com>
 <aYmdYjjRljq0dVSL@ideak-desk.lan>
 <459f2c53-8679-4987-b190-c7f9c54f237a@intel.com>
 <aYmqKmGiEz7z6eUV@ideak-desk.lan> <aYmyafbsHVRH2crC@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aYmyafbsHVRH2crC@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0201.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1aa::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW5PR11MB5860:EE_
X-MS-Office365-Filtering-Correlation-Id: bd240612-7ee8-4de6-82bc-08de67ce9b11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R1dkdGViTUFGVDBFWksvWmFaaWtGbm5kTGxKT0ZyY2ZTRzBSblhQQ2RZK29I?=
 =?utf-8?B?U0VjdnFNS21vazVFVFZIeE1WV1hPNHpkeTlJQnRhdlIzdzhMTFYyaWtUZUZN?=
 =?utf-8?B?dzlwYW5wUzhGNXRPS0pteGt1S1BjRFFtSWlBREdsb21KNGwxMXJJYUhZazIy?=
 =?utf-8?B?U3FrMVVzNEtjV2xxS0Y2a3hmU2RFeEV1VDQ1QUVLenk1TUNBeUVpRHZ2NGZE?=
 =?utf-8?B?ZWZmWlp0MkxhSWlVeGZVakM2TXA4YW9rODlqSnlmbURzSWcwTGRwTUo3ZkVX?=
 =?utf-8?B?ZDZxcDcrbmdFZGt0WHpYYjZ0NHRZamRKek93L0krb3lsdHBhYXJLeHFsK2kv?=
 =?utf-8?B?ZU1Da3g1MHk2eW1zU0ZuK0p5TXZycS82ZVF4eXRyNjR5U2Q0dE80NHloK1RK?=
 =?utf-8?B?emFXenBvYzZLcWZWOUpvUXdyU0MzZy9LQ3hlTkR2RlM5dEQyWllvWE12d1dm?=
 =?utf-8?B?UGg4c3VNQzcvbWJiMVRUR1c3V2RLMlZFQXhVUGVvdlJET0ZkNU9nR0cxc0Vp?=
 =?utf-8?B?eG00MXNZQUU2RElyZ084dzFmeXlzL1JodmpSemM4UVlkUjBOMXFJeFd6aG1z?=
 =?utf-8?B?amJ0V2M4YnRWV3RsL1F2TEppMFBxK0ZMa1VoL2Z2L0lyekpxVGVURW8xK0tI?=
 =?utf-8?B?SU1zM3k3bzVxR3I0VWlPWnJzZThQOGNPV1REbEtsb2NrYklxTVJzOGdicWlj?=
 =?utf-8?B?OWllbHR0WHJFbnRQWEx2Zm8yeHJZRlR3clFlK2g5bWNYR01HTWRPV2ZybjE0?=
 =?utf-8?B?TWY4MGk1TDBFaEZTdVlXOVZlRmE0dCtFS3dUU1JqUEd5WWZ4QWxUZEFGV1lG?=
 =?utf-8?B?SWcxRCsrTWt6SnJiRC9RRXlxNEhjaHpqTDlGVnYwUDU4dmpyV3VvaExsa1Yy?=
 =?utf-8?B?STRPaExLK2NGdGRhd1VwR1FLQ0x2YlNyakhqQUNaUFFsRStmbEdaYUdUU0dr?=
 =?utf-8?B?UllCN2FwZXZEL0lhclY0M0ZFT1ZtMFh3eGppb0c5U2NUNUQ0aklxeFZiclRO?=
 =?utf-8?B?S2x1Y1JHalkya0xZQ1FsNVE1UXkrUmZMckYvc2hMbkFHd1Z6cDRPR0pUQzd1?=
 =?utf-8?B?Z0VwQ3EzYmRlVXpRdHJhaURLSmUyZGNvT3NKN2UvYVRsbWQ1ZEp2UnpDZzdW?=
 =?utf-8?B?SDMwSWlSdkwycU5VZ3RuRDFPczdMWDBENU1GU0VuSUZ2cjlBZWcxVWpOSjRU?=
 =?utf-8?B?c3Mxb0xRR0drcmhMRjFnWE5ieWdhR2oveUREeXRqTEdPVzhieVJyczREUVhj?=
 =?utf-8?B?MVM2Mkk3SmQ5VDdVVVBvZ1hSamtDcEJoa25YWjZsN1UzbHpQWlhyQWloTnly?=
 =?utf-8?B?dGpXT01BZ0t2NnBRYmxuSHJTU2JaQU1RU0o1cXVBdXhHd2piUktHbjBwQ1o3?=
 =?utf-8?B?T2RGa1ROZmZjcnRXb2VrWk9mWWhGeEFsWURaNWxpbXc4MnUxYWJlb05YMjJh?=
 =?utf-8?B?SGcydzdRb2xKelVsYkcvTmU4ditFc25XeXAyK2tCSUhtSkJPTlBWUHBzNUFJ?=
 =?utf-8?B?V1AySDBEcm9yWURxOEVEZ0lxQk5rKzhqSnNMNFdhZTArOWdPNmpBMFBIcWpB?=
 =?utf-8?B?a1pyeHlSdkl0VHhzQXlObTJpVExSYTl6M2xmbklyb3UrQkJldG5BMHZOeWFH?=
 =?utf-8?B?Z0hqZWMxcVBGY1ZmSHhkM3JRRTdzb0lROXRvTHArYms5b29zQlorUlpmb1Vu?=
 =?utf-8?B?NUk2TEhrWkF4NHhlR3VaT3RtWnRlWDN0dzl3dXFqTGJ5Z3A0NWNiK2lKRlFo?=
 =?utf-8?B?Tlc2SXBOWjFJRGJ5dzEvMkR1bElQcFRSdVVmamxhT1R2UFJrWnJKcjRHTzlw?=
 =?utf-8?B?aVp5Wmk0bGNDSVlJYmJqV0YwZ2pSTEJJbzBxVVRkMDZwMGI4ZjZrTzhYU0N0?=
 =?utf-8?B?c29RVFFBaWE3SmpIdmZZSGxnejEyT0NYNmJYRjhhcG5Ic293cU1uZmN2cGRx?=
 =?utf-8?B?NzI4VVI3cGoxNTRwMFYzTi9yVlJqVXh1N0R1N2RlU3NEeVZTcFpiQTQySmow?=
 =?utf-8?B?UFc0eTFySzBCaG5OSVJ0cC9aR1hTb3BtYUUrYW5OdkFNWm5vNmVpaXhmQnp6?=
 =?utf-8?Q?xcD4cx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGRDbVc0SXJjdE5nUkFjd3RFOUtvTCtlTVRudXRKY3hRSWM5ckJFL1ZzTVFo?=
 =?utf-8?B?ckFadlhDWEk1bUJpRTV6dHc4WURkbVNRTmNZcG1rVVJDVXdZbTZmNFh0ZXpQ?=
 =?utf-8?B?c0FlZFNiYkRPcnpJWkJDKzJNZk41L1NzZUxxNU5BNzdHcUJvYmVCZ2lsUEJC?=
 =?utf-8?B?MEdXUlRYeGFVZFJxMkVwTTVlWDk4Nm13T0orNjFMTGh4aUtuRElHdHFrL3Ex?=
 =?utf-8?B?b3VkMmhERTRHMWhxNlFKQWRYbjA3Q3h2YVFDU1V2cHdnZG55MHRFZ0RhbFdF?=
 =?utf-8?B?aFVMVytFUnJiNU52RlpYemRCa0hLRmJYQm9GODlpNGhHMWtKODBmdk9Wb3NJ?=
 =?utf-8?B?SjZPRFdnbVpidzBWS3JFKzFxc29UbEtXNmNmcUxoRzAvTFMyS3Y2WmwzaW1J?=
 =?utf-8?B?Mk44azlSV213amFqWjhJUDN2OE9qRTVKZFd2MGp6TWR4U1ZkODBoN05RaFNU?=
 =?utf-8?B?VHVOMzBqZ09iRE0rclcyZHdqVk4wSGhFTXUycjVOWGpqZFFhQXpCTW4wbWRL?=
 =?utf-8?B?dXpZOXhzaVNVcHozUllMTWUrUTJLVDRXYnJMdlZmZDRDTVpsM1Y0SUtBNGdu?=
 =?utf-8?B?aXhRVUZ5aUFJU0VLVSs3Zm1SS3FNakI4VzFvK3MxRjc3N25yZmwxNU5VejQ3?=
 =?utf-8?B?MjFwaEV0MFYrWUJqenN3RjlkbCt6TStXc1locFY2S2VNbXFKelJOZG0xOFFy?=
 =?utf-8?B?ZnNSWGJ3d29rc25RenpteDhGSTRyU0lKcEVtY2RDT21oWlFJSWZYL0orck11?=
 =?utf-8?B?VE1DTmZBKytaRnJySnRPRXBTN0JTTjVIQVdqaU8xNVRFTlBGRjc3c3VCVHAw?=
 =?utf-8?B?c1hYeHJuQW5IYWtUMHdpNDRoT1RCcEhDczlGdzNGMGpFdTl2aDhGeW1MbFFk?=
 =?utf-8?B?YWNPQXJDYWVhbEFIdndBTlhmMzNRY1BWOWNFQ0tzMmpXTno0YVJTV0hsOG5z?=
 =?utf-8?B?dUxvUVRLTHdKdGJsb2pHVElCU2VRbk41KzdXSFJlUEp4aXpLRUlINkcyS0VU?=
 =?utf-8?B?NWZQOWpBMUozZzJvNmxKY3RhcG9iNlRkejZSa29wM3prdDhEa2ZHOFI0eTVU?=
 =?utf-8?B?eFNadXc0eVBVRzZBdnY3b0hIeGcvTXczMkJqaHNvbWJVL0lNYW5lZ2F4cTVR?=
 =?utf-8?B?SW9qS1dNM1d4TEh5SHBFV0JzRjNZcXp0dTVVR2JWajVWN1JoNGYvMTVXRnly?=
 =?utf-8?B?NmQzVjV2eGIwSnJGZ0hNenlTYW9SNDNqczYxbGpEekxobXZ5dG1NZFdTdmJq?=
 =?utf-8?B?VTZ5L0JUVU1BL25FM0hld09OSkU0RGFHZ3pWaDZKMVI2Q1ZVUDRBQUJGNTFO?=
 =?utf-8?B?aEFQUHJYUEl0MzFKNWhnOEh4eFpKN3VZMnhqbFpRdWwxRlU3bU0vSFR6QU9X?=
 =?utf-8?B?dm82QWZ1bExkeStXaGlDNm1lWnMrdnZWQXVLWjlsTnJzbmQwcldmTGZuRDdC?=
 =?utf-8?B?Z2JETkR1T2RZVTNLOWtMallORUdYemxycXBYNTVvbGZiNzBZY1pMWmtmMnVk?=
 =?utf-8?B?dFZNa2w5V1J3MmVUWC9IVUUzenowc0RTUlV6Z0tMTitXVU9zL01tY2xIM0Ny?=
 =?utf-8?B?aXdHTHVJdC84MzgycWhQM21uaXRVMlBYZ0tpWk1UMVlsR2YzT091a29TWnlK?=
 =?utf-8?B?MTIrV0dGbHdUZG12bzdDaXVmbVN2bVdSazhFWVFpN2hZeWl4OGkrUldQRWNS?=
 =?utf-8?B?TDlDTTFUWDBQMkFhWW01SGtwOEVlemhkd3Z0QWJkdEw5cTMva1hta3F2d05k?=
 =?utf-8?B?WDdnRUdoa2Rya3lDcFh5N0RxS3FadnVKbGcrb1cvK1ZCRzZrN3pOalFpWXlK?=
 =?utf-8?B?VDM0V2Vicm4zY3hTVDVSQm1kUE5KdFFONVJZZDAva3ZmM2dLckwrbElsL1d4?=
 =?utf-8?B?Ui9DdVY5U2hCbloyejdndVRQU2NHM2IyR3NLZUdsc2d4NWE5S2pNdi9ISlBS?=
 =?utf-8?B?NGNCTDBnSlhGK05lNDdLUjlyUnJUNThMUXVKYlhmeTkzM0N3VnRYNXllR0dl?=
 =?utf-8?B?MzhQbGJDejlIeGZ1SlltWnViSytCRkVLRnFpV0hUdG0zb1l6ZHl1czc2OVBC?=
 =?utf-8?B?OW1ZbzRPK2Fpd1dlekw4MDE4WXFQeTFxNHpQSzhaU01aazZNRzdxaTJVbDNm?=
 =?utf-8?B?cWJqdW9xSnI2RVZHZ1IrQTU1RlpGOEpuTnhWaHBSZitMc0hLdFRVaXRoclFt?=
 =?utf-8?B?SVBkUjRiZ1UzNnRoOENYL1h5UHZ1NUtiYjFrc0JPTUk4ckJEUTV0d05tT1dF?=
 =?utf-8?B?TGRiUWxqb0RTNFlncUt0Um15cTJKTHo3Y29YaTNWM25RMWMveUxGazZSSFR5?=
 =?utf-8?B?M2JFUmMzVE9mdXRTbk5ENzExWkxoK3lMaVpmR1FLazZTczg5NkwxZ3pjMUFw?=
 =?utf-8?Q?XHTU8NElOsS2H7xo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd240612-7ee8-4de6-82bc-08de67ce9b11
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 11:30:19.9825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gRjJC0ksjSJjiZtZv1pcu60wrT44B40dv4vJFZIgZE/73UM1C+6XWOapz8MYxihNP8CtmTd3ioXS5ER7jvL1n7NdCdkKQp6cYZNJYac7zm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
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
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C6FDD10EF24
X-Rspamd-Action: no action


On 2/9/2026 3:39 PM, Imre Deak wrote:
> On Mon, Feb 09, 2026 at 11:34:34AM +0200, Imre Deak wrote:
>> On Mon, Feb 09, 2026 at 02:55:21PM +0530, Borah, Chaitanya Kumar wrote:
>>>
>>> On 2/9/2026 2:10 PM, Imre Deak wrote:
>>>> On Mon, Feb 09, 2026 at 12:06:20PM +0530, Borah, Chaitanya Kumar wrote:
>>>>>
>>>>> On 2/6/2026 7:20 PM, Nautiyal, Ankit K wrote:
>>>>>> On 2/6/2026 4:12 PM, Imre Deak wrote:
>>>>>>> The pipe BPP value shouldn't be set outside of the source's / sink's
>>>>>>> valid pipe BPP range, ensure this when increasing the minimum pipe BPP
>>>>>>> value to 30 due to HDR.
>>>>>>>
>>>>>>> Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
>>>>>>> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>>>>>> Cc: <stable@vger.kernel.org> # v6.18+
>>>>>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>>>>>> ---
>>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
>>>>>>>     1 file changed, 12 insertions(+), 2 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/
>>>>>>> drm/i915/display/intel_dp.c
>>>>>>> index 2b8f43e211741..4d8f480cf803f 100644
>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>> @@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp
>>>>>>> *intel_dp,
>>>>>>>                        bool dsc,
>>>>>>>                        struct link_config_limits *limits)
>>>>>>>     {
>>>>>>> +    struct intel_display *display = to_intel_display(intel_dp);
>>>>>>>         bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
>>>>>>>         struct intel_connector *connector =
>>>>>>>             to_intel_connector(conn_state->connector);
>>>>>>> @@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp
>>>>>>> *intel_dp,
>>>>>>>         limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>>>>>>>         limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
>>>>>>> -    limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
>>>>>>> -                intel_dp_min_bpp(crtc_state->output_format);
>>>>>>> +    limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
>>>>>>>         if (is_mst) {
>>>>>>>             /*
>>>>>>>              * FIXME: If all the streams can't fit into the link with their
>>>>>>> @@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct
>>>>>>> intel_dp *intel_dp,
>>>>>>>                                 respect_downstream_limits);
>>>>>>>         }
>>>>>>> +    if (intel_dp_in_hdr_mode(conn_state)) {
>>>>>>> +        if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
>>>>>>> +            limits->pipe.min_bpp = 30;
>>>>>>> +        else
>>>>>>> +            drm_dbg_kms(display->drm,
>>>>>>> +                    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of
>>>>>>> valid pipe bpp range (%d-%d)\n",
>>>>>>> +                    connector->base.base.id, connector->base.name,
>>>>>>> +                    limits->pipe.min_bpp, limits->pipe.max_bpp);
>>>>>>
>>>>>> pipe.max_bpp < 30 will be either due to the max_bpc property set to less
>>>>>> than 10, or perhaps when the panel itself does not support 10 bpc
>>>>>> (limited by EDID or VBT).
>>>>>> With these constraints doesn't make sense to enable HDR and send HDR
>>>>>> metadata.
>>>>>> However, as we see in some reported issues [1] [2], in practice some
>>>>>> compositor seems to enable HDR by default and with the hard limit set,
>>>>>> they report blankout.
>>>>>> So it does make sense to raise the min bpp limit only if its inside the
>>>>>> supported range.
>>>>>>
>>>>>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>
>>>>>>
>>>>>> [1] https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
>>>>>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/
>>>>>> issues/5969#note_3248404
>>>>>>
>>>>> I am not sure if this patch would help with the above gitlabs. For example
>>>>> in case of #7052 pipe max bpp is 30 and the commit still fails.
>>>> It does fix though reported cases where the sink does not support 10 BPC
>>>> at all. Yes the monitor in #7052 is still a problem, since it supports
>>>> 10 BPC only with lower resolution, where the link BW would allow this
>>>> and he monitor doesn't have DSC either.
>>>>
>>>>> However, I need to look deeper.
>>>>>
>>>>> I am thinking of relaxing this restriction all together because the earlier
>>>>> assumption that a panel advertising HDR will support atleast 10bpc in all
>>>>> it's mode turns out to be false.
>>>>>
>>>>> Currently, I am inclined on the following policy.
>>>>>
>>>>> - If DSC is not available, fall back to normal bandwidth calculations and
>>>>> select the highest bpp the link can support. (Also preferred by Kwin)
>>>>>
>>>>> - If DSC is available, prefer falling back to DSC and attempt the highest
>>>>> bpp allowed by bandwidth constraints.
>>>> The patch does the above, except for not handling the case where the
>>>> monitor doesn't support DSC. The attach patch handles that too and so
>>>> fixes #7052 as well, are you ok with it?
>>> This should work since [1] did.
>> I think the sink / source support for 10 BPC should be still checked as
>> in this patch.
>>
>>> There is one more (theoritical) scenario that I think is still not covered.
>>> What happens in a case where 30bpp doesnot fit into DSC bandwidth?
>>> As I understand, the min bpp limit of 30bpp would become a bottle-neck even
>>> then?
>> No, the link BW requirement is determined by the link BPP, not the pipe
>> BPP for which the minimum is set. The link BPP in DSC mode can be
>> lowered below that, based on the sink's minimum compressed BPP support.
>> So in the fallback case, where 30 BPP uncompressed mode is not
>> supported by the sink due to a BW limit, DSC is used instead lowering
>> the compressed link BPP as required.
> Although, it's still possible that the sink wouldn't support the minimum
> pipe BPP set here as a DSC input BPP. Setting a minimum (pipe/input) BPP
> in DSC mode isn't actually needed, since the highest possible BPP will
> be selected there anyway. So I think the actual condition for setting
> pipe.min_bpp = 30 above should be:
>
>          if (intel_dp_in_hdr_mode(conn_state) &&
>              intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
>              !dsc) {
>              ...

Hmm makes sense.

Perhaps we should also add a debug message right after pipe_bpp is 
finalized (and before the full link config dump) to make it clear when 
HDR is selected but the chosen input/pipe bpp ends up below 30 bpp.

Something like below, in intel_dp_compute_link_for_joined_pipes() before 
the link config dump:

if (intel_dp_in_hdr_mode(conn_state) && pipe_config->pipe_bpp < 30)
         drm_dbg_kms(display->drm,
             "HDR mode selected but pipe bpp is limited to %d\n",
              pipe_config->pipe_bpp);

This will help flag out the cases where HDR is enabled but the pipe 
can’t reach 10bpc due to sink or bandwidth limits.


Regards,

Ankit

>>> [1] https://github.com/ckborah/drm-tip-sandbox/commit/5dd10a763ae6e651a0ab494ab1ad0c9d81c2de47
>>>
>>>>> I am working on a patch for this and should be able to float something soon.
>>>>> Imre, if you agree with this policy, would you please wait for the patch.
>>>>> That should make it easier to send out fix for stable kernels.
>>>>>
>>>>> ==
>>>>> Chaitanya
>>>>>
>>>>>>> +    }
>>>>>>> +
>>>>>>>         if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector,
>>>>>>> limits))
>>>>>>>             return false;

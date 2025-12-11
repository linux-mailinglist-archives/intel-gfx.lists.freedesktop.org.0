Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA04CB4C65
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 06:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F05E10E03F;
	Thu, 11 Dec 2025 05:37:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MgAah7dk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B032010E03F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Dec 2025 05:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765431436; x=1796967436;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lF2ZftIt47UwE9/t7lVe1TJBGhsi8Tv5CIYCIGy79as=;
 b=MgAah7dkwBNTYEE1n02sLWxTOKgX0Go4cJPfmwquynDJT6MTzKIWA56y
 w/Aa4QuHWkYFMKcdHxPJleTG5zcB++EVqzSNtjKSCFZwW388qnzAtfHBG
 u8ciHG7zIR3RGCs3VB83AfN6YkzCAIgHMzVHj0BvPaPay/V5TYJ52eJWe
 HM3EKms6Bfc6HP9d60hopDVn/cb/4ON1dIB05NPwVj81cTb8uLiYmQJJG
 BvPZqvPxEMtEL+60v7aPT0fp4NOYGTdkt3KoTICfUiTD+Do54U+hfX7ck
 XiveRbdQUyPYpMFZKDeyQKTU7CBSkoL3pfteHxdgICDHTWt7+PauypmAT w==;
X-CSE-ConnectionGUID: 4pQGijzlST6+XFGJR7VbpA==
X-CSE-MsgGUID: qV115AUOT4+kXq1lbroQDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="78027213"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="78027213"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 21:37:16 -0800
X-CSE-ConnectionGUID: 716YXPO+RMml+6kVlui5KQ==
X-CSE-MsgGUID: THLFVT7kQRGPkj/Yjpaycw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201132744"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 21:37:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 21:37:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 21:37:15 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 21:37:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tRVHTxJxifoe86ukkNnqP5+25+KdjLmL7GYmHxiF9wj4Q/8BhWxNFYjYUNRpLZQgOFspvzLa+O1ZoVEGDD4MfYoa4B9a44psVHAYreEHBt5PLAZVlQwk9GTYxNC1XzYI4FSh9S09NtOiTTawl+0GCizdc07y9aHRngg86opWQWwFaAWDQqZQJCQtxMqkxmuMNdgrCDvZxRXGs9guqyqhFUqwNqNPpFecGzQlbkRRYtMbA2B1orb0bEvlbYjmOfwjaxDzMvzvkOuBm2eKB+137VJuGjcAr0yYYoEERaU6VMYky1mH9XvKp8lCbJ67uzUbQ9agM7rUrpX7pqs1GddYTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L14r7DgMI+7JXOE5ZHTKkk5nSqH4EMBEDPFNawUhMcs=;
 b=xXQPImCDAhCkL9RaoQI6yLg47XpazhP6AGWbeXcqd1GhrLNeHv/Nvvlb95R4q/1v/2l0rK91Uztr6hShCQ1tClQf7GOzKYJRENoTgugZh4VbUSPPBEyB3ysWax0lwNFmxByQtAasLA6I2ur0tF2hOFGefsmSPTICCIsKO1D+QO8RgkGTAuYetQfqWVkcd411gEiao1Ax4WOietd+zuj9D/SzhxN0pvdZL56TCn5AeqxBI+8W+0/fi0WGrwdntgAfGJ+vSTMP3blNagU10J5Ek+ApkIr+ODHCpAeOQKCcNDwtof5wgRY0lFB9u0gp9iskMsRo3KVkJ1v7quh2SeoaCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DM4PR11MB6216.namprd11.prod.outlook.com (2603:10b6:8:a8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.8; Thu, 11 Dec 2025 05:37:13 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 05:37:13 +0000
Message-ID: <a7af4b0a-31cc-4f8b-b90c-e5f3bc399f0e@intel.com>
Date: Thu, 11 Dec 2025 11:07:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to RPS
 selftests
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <raag.jadav@intel.com>, <soham.purkait@intel.com>, 
 <mallesh.koujalagi@intel.com>
References: <20251209055616.1095495-2-sk.anirban@intel.com>
 <phjuejgrtlhzocdcmvglngezt4u3xhcdkptyeatx7rtx66vpwy@mfitxo4m7txn>
 <40c877e4-a017-4056-a0d4-8cf3ada0c96e@intel.com>
 <tglsnnckzfji56d3vqzvbee7ax6yjh6o5lv7lpoco2clikdmzn@txrozp7qqebp>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <tglsnnckzfji56d3vqzvbee7ax6yjh6o5lv7lpoco2clikdmzn@txrozp7qqebp>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0168.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::10) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|DM4PR11MB6216:EE_
X-MS-Office365-Filtering-Correlation-Id: afc27521-e7ed-44da-d7ea-08de3877562a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUlUcXpvNlJXbzY3eWM0QUVRR2owbG00SEJ6OGZyUkJvWjlEalhMMktMMHRk?=
 =?utf-8?B?Rm5QUEtkempxTlJ1Ukc4SVpVdEllUHNmS1BzYjJUaDZ2cGxWVHdMVGF0dmJv?=
 =?utf-8?B?MzZhZnArZXRMNlhFZVBaREMyWkM1eGFBWFJMOTVxbGJ1Q3BkMXlEcHd3aHlS?=
 =?utf-8?B?ZWgrZklsamRDT3JXMGt4MmZteklhZ2s1ZTJBVFJud2NZbkhBa1R6VVI0OUJQ?=
 =?utf-8?B?OWQ3bTR0T2JUT0R3N3lYRlVIZGprU1B2VVUxdDVnUUZXZitacmc1UkthVGpZ?=
 =?utf-8?B?NlY2a0lyNXlaaHpodkJWYnJvN1M2NFIzbE5PNlpHY1NrWWpIOVYreGpZUmZu?=
 =?utf-8?B?L2RFRlFkSmFPNWY3L0hPMUdLa05SSzFsTHJ4L2hWZmk1RE8rcThHVW5Nc0h2?=
 =?utf-8?B?Y3RhS0VXVHBSU0FUVHdlcjRibnBSMlo5UGZFSTcxUXNFSVNPNURJV2J6VDMy?=
 =?utf-8?B?eHNEMS8xQmFOSk0vdE9TcWptMys2YzBhem9TcTZDcW9wbUtYWEJNcDcwTEEz?=
 =?utf-8?B?bWxkejBNNG1CRit5NS9hYkkzeVNhSjRwZHVwUjFCVEkrSlJ4am5QZWRzZy91?=
 =?utf-8?B?bUhsMTJaeFNaKzNlZ05PcUdNOHJnaHFHd3Q1UVNKZm0rOHN5QVNPRVQ0bi9O?=
 =?utf-8?B?Y2QvZGlpOVNaVlFweWxWdHRBNnRjckN4TndLelFUNEszTTcxSEthMXdSdU95?=
 =?utf-8?B?cFF2clZ6c3c0eUp4QlUzTSswWVh4dzdFVDZPVjZ0MjZacUUrdityMld2Ry9u?=
 =?utf-8?B?Mmh3U29FdGUwb0oyQk5HcE85ZUk0YjFDaEdHc3dMWVAwOWRDUURPbkVpRHR1?=
 =?utf-8?B?Y1VtR0dvbGRYMkFnZTREdlpaVmxLckY4RTlZTjAwL1hKMWMzcTQyc1YyZmJs?=
 =?utf-8?B?TDBpYXoyMVhLY0NKalFDMEh2WTA0NGVzSHBPdVhSZ0lOdU9UZGVKQ3ZjeGM4?=
 =?utf-8?B?a2g0b29yL0g3SEZ2emhaZllicnd3OFlXVzBLY3lobC9qazI0eWJsUzNGbVlV?=
 =?utf-8?B?STZUdHVSenU0ejR4Zmt3Tm1ETStCUHV1amozUTlRdnZkQjZMc29HOG1ZQ3ln?=
 =?utf-8?B?V1pKemRGcG5sYzNsdEpTYWtvSmtZU1l0aVJUQy82ek1IcHdOOUVIWmFOTGpW?=
 =?utf-8?B?Z0dqSDBZM3hKTE5sRGlFazlwQ2lJTE93N0NiWXhCbVRUUFY4Q1p3cGJHcUxH?=
 =?utf-8?B?RDJjdktsejFmVG9HZ3lLeDh6Tm14OHE2TkZOM0I5eDUwMlJ3VG9zekpQS3pC?=
 =?utf-8?B?a1ZreEtzdkRWZWxETWhWMTV0WFljcDhQbnI2Ui8vaEJ6S2k4b0VtaUNpbHVG?=
 =?utf-8?B?Sys3YXZobW1TNDVhMVFMUUlkbGxGQmo3dXJIc01MekJVSlFkTlZkS1hTcHNY?=
 =?utf-8?B?OXVJU0lYdWN0aER6cUpzYk10Ky9RVFNsbm52RVREclNQV3ArdTBkejVNSkMr?=
 =?utf-8?B?a0lQOHg3dE1lSW9FVGk1ZmxIZEVsRnI5eWw3Y0tpKyswSXU3Q0cxWTM2YzJq?=
 =?utf-8?B?Nis5R3lqMmtiakNqVVM3NTJyUkV6alZsOXI4a2xxamZMZm9WQTVuUFVDRU1R?=
 =?utf-8?B?YmhVbFpXQzA3U2xydDhBT2tmY3U1aTgzaXpWU2Z5TWpXcGZQZmt4MnkweHpD?=
 =?utf-8?B?VnpnUlRHcHdPK3dTYmJNT0xZb3VIaEppNUJTcjlBY3pNUHJGc1NVWWdmU0I3?=
 =?utf-8?B?R01GSE9Kc1hhS0k4Mks2M3ZhdWJ2STdMYm1XcE15VlBnUkJnRFZTUTNzc2NF?=
 =?utf-8?B?L1VOcmRRZ0IvazN2MmlOQjJKZmVwK2Zkb1lST1IvZlh5cXZwM0w4VUZhVHpX?=
 =?utf-8?B?MU50Z3hRTlNKaGx2UlNXekFMcGdUenp4QjIwam5kbVhpRkJTQ0J5Q05ibkNu?=
 =?utf-8?B?MFpERVZCMjlCZmZ4dllQQ3d3M2t4UUU0WmdjN25qdmx0bWJiTEk5WGZYY0ht?=
 =?utf-8?Q?nTikF8U31JPdxTgbfi6Q89f+5UR35F27?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUJ1UHJ2SHJuM2FlOE5aVHVIMzZNV0l1U1QvRUVQVDlwY3pUVHlGa0RWR0Na?=
 =?utf-8?B?bGdkZHpkbExhVW80UG8rNzhoSER5VG53S2pEQTY3U2hSTkw1WmQ5YzJ4djVQ?=
 =?utf-8?B?dVRaaDZhcDJSTHRvQWhtMTh0R3lOS3A0U2hqZVNPOFVHVmZFMmZ1U2lMaEVY?=
 =?utf-8?B?NWUrZEl3LytXR0t0YlpubGJ1U2FXUHZmdmZBSUVSRGVaNElJc29BUmg5b0ls?=
 =?utf-8?B?MTI4UDBNbXFPMjdFRXJEdkp6M2ovYjZhTVRtcldTbEx6N1kvbURzeW5Qcnhq?=
 =?utf-8?B?djhCVlJ3RHZlUGlyNml0RGRBRHRmb1ZPSU92ZkxZbmZ1clJWSU1DSGFVakxa?=
 =?utf-8?B?dGlsYW5uT3RXZTVWK04vYXJXb0lEYXVNeFVVNHNYZkZiVklzdnJVcmtkbndP?=
 =?utf-8?B?cElwbGFJZHFmaXNTOXl2VFRjaHZvN3ZOc2xVTWtud3lIcTFncXVXMEwzUlZn?=
 =?utf-8?B?bXpxTDVlWE9CNkkvVW84VTFXZXo2cGNhdkZXMFhEaFFrRHdMMlQ4cW5sVGdX?=
 =?utf-8?B?STBBV3ZncWZxTTVJcW50azVxNEZiVHJMNm53RjI0T2lwM1plRERSbXdROUk0?=
 =?utf-8?B?aWhFNGpMNzBucE90eGhzaGs0VmluNWVraDc2eWZBNGE5ZWxjR2FnNWRreTdl?=
 =?utf-8?B?dm9YQmhVUzZBTVVia3V1b1ZEeDNNVlkvcVNRSURsRDJPRC9jVjIza25FM3A2?=
 =?utf-8?B?dFpHK1ZyVW5Rck5NbEpncVRoM2I2cnhaNVRKd2VWdUlGRVZPeGZYUGRFS2dC?=
 =?utf-8?B?SVFYaFRLQUdZemovY2c0VjVpOStEcUhNOXNENkV3VG9mRUFoZUZneVVNVWl2?=
 =?utf-8?B?RHhoTktXTU9wemVWUmhVQzRBd2kwd0cxWVVQc2x4a1ZqTGFHbnNJQjlDa3Jy?=
 =?utf-8?B?bTZBNXUvdHRBdTdkamx1QmgvbHp3anFndVNxSUcrSjJBZVY3OXJPNGp4dDg1?=
 =?utf-8?B?U0hENGtYWS9sdkkxalhYTUpFdXhqZzBqMlV4UDNkSGtNVXF3THdyaWFxN3hX?=
 =?utf-8?B?THViRXc5TWZjeHF3RXlhdDNNKzZkNDdJMzV5ZFpGcjRXbmtHdnFEOXA0Y3lz?=
 =?utf-8?B?NEMvTlV1MTI2aTBxSSsvY1dOT2tzVmNKRkF4bnVEdlJSWTdQVFFVY20zOGZV?=
 =?utf-8?B?cE5PcEg1OTFPYWgwK1p2bzlnb1YxelhkY2dIN0hlcXRKb2dWWSt3Uk5YVndV?=
 =?utf-8?B?eEtjZGNPZ3U2VitZcVFhMHpwSTAyS0lVNDZTTVo4RlY1THpUdnFjMWkySmJ0?=
 =?utf-8?B?VDMwSHY4bUM3RjcvVlAzWS9DcWpreHFhYTRZdk1SZG9JVysxVWp0WkkwMnpl?=
 =?utf-8?B?ZERlL2NjZ1ZuY2xKTnRzSkJHK2ZoNU44cXBIWC9lZDlYTXB2clpOdkg1cXF3?=
 =?utf-8?B?UjJ3K21WWXFTRTc5ejgxZi9vRUI0N2xHNWF0NXFlbEg2Wno1M1p4eE1iR3lP?=
 =?utf-8?B?M1NDTkRjZHhsTERlUHpVdElKT1BBa2I3Zm9kZzdxZkdJaGV3ZE5aVE1UaVZr?=
 =?utf-8?B?Z2tSL1RlM3hFQVQzY1FzdFlTUTNjQkUwQzFEZXNIejh1STk5Q056cmVQQmRR?=
 =?utf-8?B?TUdiRWVoS3JwL2d1RUpEUnUvQjh6eksyeXN2aGhTTkZmR0ZiUFlIWk0rTUdS?=
 =?utf-8?B?d000UFNhRCtBUGNySUdmOFpvUEpReHNYclhMdHJwbUt3WVdBckowbzlVTXQx?=
 =?utf-8?B?RWM0WHVMSk9ScWJab0t5N2lwMnJ3L2N4STRJcTdxcFJveE55NUI4Vmo0TjVV?=
 =?utf-8?B?U1gyMjFKbkJ1QWxMTnJ1N3ZKS0lLWTQrbjBCbzBVZlo1WUF3YXBIMk5ZTlEy?=
 =?utf-8?B?dXdVOEJrekx6MnlEV2FsRFRhaU5YSEVOYU4veHlYeDl3SlJWR0N3Q0RJTGpH?=
 =?utf-8?B?SnVNM2RWb3JLYlNuWVY5R2pUY0wyeFdMZ3ByZUxsVmRJQ2F3NWQ1Ky9tUDJo?=
 =?utf-8?B?a2VYQVNYVkZSVjVWVmtxRFRDYkNoSTErV1FmZXdFcy8zUWdiQld1SFIyOWEx?=
 =?utf-8?B?OTRvdWJ3enA2T21BaThHSUVnSWV0OWovb3lFc1FOYktoY2YrWERLZXBtSzd1?=
 =?utf-8?B?dHo1ekRwbzhWOGV3dXJtYk53ZktjenVlVmRVOVZWZ1JlOEk4RmxibFFEQ2cz?=
 =?utf-8?Q?qAT0nCZDpxtiCKSmy2k6Sy3yu?=
X-MS-Exchange-CrossTenant-Network-Message-Id: afc27521-e7ed-44da-d7ea-08de3877562a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 05:37:13.2785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: URaWHqPXTm1bkHVmnRVqThJbdf/E69XclWJ8R4OzHqJH8oV99DcsSRsJOacBJqNlzfZCI8N0dV7drvLy1e64nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6216
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

Hi,

On 10-12-2025 02:21 pm, Krzysztof Karas wrote:
> Hi,
>
> On 2025-12-09 at 13:36:15 +0530, Anirban, Sk wrote:
>> Hi,
>>
>> On 09-12-2025 12:46 pm, Krzysztof Karas wrote:
>>> Hi Sk Anirban,
>>>
>>> On 2025-12-09 at 11:26:17 +0530, Sk Anirban wrote:
>>>> Report GPU throttle reasons when RPS tests fail to reach expected
>>>> frequencies or power levels.
>>>>
>>>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/selftest_rps.c | 17 +++++++++++++++++
>>>>    1 file changed, 17 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
>>>> index 73bc91c6ea07..01c671e00e61 100644
>>>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>>>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>>>> @@ -1138,6 +1138,7 @@ int live_rps_power(void *arg)
>>>>    	struct intel_engine_cs *engine;
>>>>    	enum intel_engine_id id;
>>>>    	struct igt_spinner spin;
>>>> +	u32 throttle;
>>>>    	int err = 0;
>>>>    	/*
>>>> @@ -1216,6 +1217,13 @@ int live_rps_power(void *arg)
>>>>    		if (11 * min.power > 10 * max.power) {
>>>>    			pr_err("%s: did not conserve power when setting lower frequency!\n",
>>>>    			       engine->name);
>>>> +
>>>> +			throttle = intel_uncore_read(gt->uncore,
>>>> +						     intel_gt_perf_limit_reasons_reg(gt));
>>>> +
>>>> +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
>>>> +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
>>>> +
>>> This feels like spamming the system messages. We are on error
>>> path already and exiting with -EINVAL, so printing an
>>> unconditional warning here is excessive, I think.
>>>
>>> [...]
>> Got it. Based on past experience, most failures occur due to throttling.
>> However, I can switch it to pr_info since we already print pr_err
>> beforehand.
> No, that would bunch up two reasons for potential failure.
> If you experienced problems in condition check:
>
> if (11 * min.power > 10 * max.power)
>
> due to throttling, then throttling detection could use its own
> error path, something like this could work:
>
>   		if (11 * min.power > 10 * max.power) {
> -                       pr_err("%s: did not conserve power when setting lower frequency!\n",
> -                              engine->name);
> +			if (read_cagf(rps) != rps->max_freq) {
> +                       	throttle = intel_uncore_read(gt->uncore,
> +                               	                     intel_gt_perf_limit_reasons_reg(gt));
> +                       	pr_err("%s: GPU throttled with reasons 0x%08x\n",
> +                               	engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> +			} else {
> + 				pr_err("%s: did not conserve power when setting lower frequency!\n",
> + 			       	       engine->name);
> +			}
> +
>   			err = -EINVAL;
>   			break;
>   		}
>
> The main goal would be to differentiate and print only one
> reason for failure, instead of emitting two of them and leaving
> people guessing which one of the two was the real reason the
> function returned with -EINVAL.
>
> I did not test the code above, so it may require some changes.

Throttle is not considered a failure in this context; it serves only as 
a debug indicator or a potential reason for failure.

The primary objective of the test is to measure power, and any failure 
will be related to power metrics.

Throttling is viewed as a defensive mechanism rather than a failure 
condition.


Thanks,

Anirban

>

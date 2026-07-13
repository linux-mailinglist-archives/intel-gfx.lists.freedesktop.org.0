Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7G3VI9UqVWovkwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 20:13:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0692074E613
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 20:13:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FipFXR5l;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3A610E634;
	Mon, 13 Jul 2026 18:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A6510E61A;
 Mon, 13 Jul 2026 18:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783966418; x=1815502418;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IlATXg22x2iQXflJziKf8S7JkZ0z9mG5JzW4nJUMg70=;
 b=FipFXR5llYU+tvhWkxdZzHVXhsFXAbvZ89cEIVpXIOm24njLNYpkztQy
 ZAX1ujj5j0vzoqx6NttX9w3cmA34HYXX7BocX7qRicFBSeGmusFVhLTKO
 ZBMyFLcbjSlekpops1Y92zMLoRp6vKeFTk8wg8XKAwhlIq9zGq7HLJRHS
 zb8gZa95dwL0nCNYFVapAc4iaSdPDs5A88jGj5R1DjJSFdmX23twZXGWH
 l37c1dyVbzCj1G6+Vj1Do0Yqmpc78KpqjB2j+fZ/CBkHrE0s8+aCFYTOS
 e4Dei67+NUEuGpXL8LObfgLunltSJGtA9Ugnyfa+kSKr8WRWnxXo62ZTx g==;
X-CSE-ConnectionGUID: v7xGwJK4RKCGYjiiTAuBLg==
X-CSE-MsgGUID: r6RwsSv5TLOxFc3fNyHU4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88406405"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88406405"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 11:13:38 -0700
X-CSE-ConnectionGUID: dL7JetHaTIqgoWnoXZSUDg==
X-CSE-MsgGUID: kyC0ec4QRlGOD26uwbi/oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="293815036"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 11:13:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 11:13:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 11:13:37 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 11:13:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZqY/miuaTH18d4SwKZv8Uo/XEEeVo51ZrOX4hzRadnDHx4WKtz5ytrLkdCTGqSnRYIhfUkjgWg/eVXKhap2IDCDajdr/CVL109O9XlewDb19v3NLUz8rRgI579CJcJM3oE0Em3HXlcO1cpmaUYxvKGs0Rlu+7wCcRiBHKnXljAi6Ri1tkQTWDtIZgRPDZrYRmBmeAUV4wSVnv9BKuiuqzSfHpjH2XCEnp4L+DyT8OCFEQxNCvncIeUzYPJSw3g9rRBW3V9w9hwFzXpgGTxR3bdKvNy6yh32AivQO3NE7BZwtaa60hCjplBI/hxoVEFj2bQ4nyCfEwcW3mYoDm6bpFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IbZjYo1Ec3R+Tx6XlfVA03NJs3fbRSvZ9MTpaO/sPvI=;
 b=jhA4mcx+Vk1sfcWhMsaNvZCRUtWzov2GTQ/D+AP4aWRMuP+LvnWpTp88ELi7bjXtcw8YCiHskRYQICmT5tn7DeLogxvLJSDJ0D8uAKEGjBLxni+8GsknY9uPQP7wd9CfHrwWXXoUNn6bDJGY3+4DxK/QKvoBS7/bAEUS8Qd4WrnjDesSSj2+hsc3GUt6omBkXzgfazIJniK/qoJnNoWLm8XyZAM2cbRuWw5NLcOwPeXu9qZ4/nlKDMdNcNAJDStNTDcQ1NImxUv2pwRNXvt49wfalam9GmpeidkvkqGE5jVhO/LeSmsHHcPo6/Ig/16Xmt9DZiNyUBUPmqlI+AwHag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Mon, 13 Jul
 2026 18:13:34 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 18:13:33 +0000
Message-ID: <8774acd0-055d-4adc-9995-5fb752ca0956@intel.com>
Date: Mon, 13 Jul 2026 23:43:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
 generically
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-3-mitulkumar.ajitkumar.golani@intel.com>
 <eaec82d5-7f46-44b5-98ae-14048c6ab33c@intel.com>
 <IA1PR11MB63480EFA18E25BB00C189103B2FA2@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <IA1PR11MB63480EFA18E25BB00C189103B2FA2@IA1PR11MB6348.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0282.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:21d::7) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: cb535d58-2806-4cf7-c664-08dee10a738c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|22082099003|18002099003|3023799007|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: UfBKqevAMwwUVPRrL6vapnWxsQNO9T7lzrSG9ZGY7lFoXcnGpErSFXDR3VBARaYgJAr9eJ2FqgTZv4yhoRW2R0mJzuSdc1WpveYSLudpmHUo2HMaCs17gxO04uQafVpAFbluqWjTDAJD2w436AcmArGfFJUNEgmbC2AVtxnAqPWdLOTNbY4oujRdnTBpmF6JJYK9aR272ymyfPKTxq+Y4cGaHsTbgPEBui2mpAKnRARZwB0FhbgTChH22bySJXGy96P3vtXcLqeoFIaxDzWQkDzD9NulxG73NsiTgmloMxZg5ox3cgNvQP2NMwsgCAF+UzYjvq2OltFrogFSFiSF/ONURtVPoObVKlUQOdYLsVFGlPEOyqW6JgrGOYp/1gJkypMR+a0iFHqEmHY2D2ks1fhbinqmLjEssYxMZtlIsVJfFeMNtSM8rZZRcoE+VAPqhRDdymiB5A+hqItbc+hijBQXfHY/oJYz5me6t8+i4lE3LXXvf+DVF8kJQq+KNNqtfXNDyC6T17CIonu91E72cG8jEI5fzM7ssLR1Q2EclmYCSgwtZprrs6Ed/t2jS7RSzmLN1y3Ko+iicoL8NY4l9StyOjh7MxhsbPdSxqBrRA1bE3KZVZH6+2i9JOz5JQ3/TAGu+VsxnOy4dxJUTANwCGe94q/oLQeoktmyK44T0t8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(22082099003)(18002099003)(3023799007)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3doT21JTlFMVkN5OUM5WlNJb2FkSyswRkUvWW5veTUvclZXVVNMYnZpeVNm?=
 =?utf-8?B?MmZWUWEvSHc1UGJRWG5oR2FpNFQxUVNCS2ZXOUc3QkY3RnpDbDg2dGlMNGRP?=
 =?utf-8?B?bkxuS2MrYUhET25ZRFF1dk1Mci9LRDF0ZW5xbk5WUmE3ZnR2WUJGdUVhcVN4?=
 =?utf-8?B?STE2bCtoQkRQcnZDN1NYKyszQ0JWT0k3Yjd6Q1NJR0JaY01HRCtxQVRKSmFa?=
 =?utf-8?B?d0QxczlrL0lZczhEV2UyT1Jvai9JYjVObkdJOHhocEgzeHUyLzFCeG1iRkMr?=
 =?utf-8?B?eTZNZVlIcUxiVEVCQ3FMU3BCdU9neEhHc1puaHRLYncvaFF6OVIrbzZTdW9E?=
 =?utf-8?B?YzdCSXRrT0VKN05LRlVFMkZNWE1seFFuVkhkWm9nWDhpWk4rVG5iR2hNNk5I?=
 =?utf-8?B?ZEhxZnJDelRpeW1tZ2VCaUttdnI1Q3hKYWRpdmJ3WXJJb09mcjYrajRFeUov?=
 =?utf-8?B?VmNWZGQ1cDk5UllFR2kzT0RXd2xWNW84L2FDd2dzRlNuZmxhVFBPTVQ4K0cv?=
 =?utf-8?B?L3ZFMjExZVJtNGJmTEJXUGNZMjhYVDRrM3BuWnorSFVCTnErNXFhd05ML09N?=
 =?utf-8?B?eEtMclFlYjhJWGRnUmJPbWxjek1RdVpiakVPMktNaDZrL2VIN09qZGIrMWtO?=
 =?utf-8?B?VzdIS3lGWU0zRVNPK1Z0N1ErTk9ONkpBd1ZPSjhJUVprQllnRzdwZXpWUzlO?=
 =?utf-8?B?Q0RCdE1OWkxKR1l2S2FuY1dWL3g3UW80VGVZUG94R1VnSHFLNDhNTEZtUEkv?=
 =?utf-8?B?MUlzbDZEUkpQRkFuck96M0pGYnNPVXpybW9mVkNTUVpQbmdMdEp3VURXUDhF?=
 =?utf-8?B?dElPa2pDeE5TdUVINS9SZnhiRDNjcElBYzNZSGkzWERhSGU4V3lURzhaV0th?=
 =?utf-8?B?dG5EeWVKTUc0bWkyTVNPTTlrTmRCN0tQeDRJN0RHTDZKSWYvb0dTblhvbHBm?=
 =?utf-8?B?emhFY2ZxNVRCeEhqdmxvVFVVTlNiWE5kSnlURTJ6dlN2aGhITi9sVjhZYkdE?=
 =?utf-8?B?ZStDTnkxZk1sUU5tZ09wK0FZMWJ0Tms4NFlqOVEvNDVMN1FPMUZodnNnRmFZ?=
 =?utf-8?B?VXovZTlhaHZDQ3JYN0cxbGI1bUo5Nm9PSkliVVVBR0htb3ZPbitCQlBTY3la?=
 =?utf-8?B?NzlVRWJVUkxjLzVwdG1yOUFWYlhieGxlMmFkL1hmczRjakhDMXA4R1h2UnE5?=
 =?utf-8?B?NXZqUEJDWGk1bFp5YitXODdiYXAvZXBDTGJrdTU2OXQyak9zdVJSMnRWT1Mw?=
 =?utf-8?B?ejJjbVM0ZEcrWWZHVEliZVgzajl6V0ZSY0hCS0x5Yytkb3BSSm1LV0pFdDRu?=
 =?utf-8?B?L1BhQnpVTUlrSUI1Q2ZrZVZDL3c1SjFEeHM3eDFIeFgxVWJqSnh1N3V1ZHkr?=
 =?utf-8?B?SnBiUkhaWGlUa0hMUXpqWTJXNXhOVEFxakp6SVBnbjVGSzlPUXpDRmdZYjF5?=
 =?utf-8?B?bjBXOVgvbmVBNVh0Mk9NOGxleW5ibm81d0s4dmZiQlJiRVlLSHR6bFIxb3hT?=
 =?utf-8?B?Z3Q1WVRKeGFkTDlIck84Y2lmeDFIWUoyMW9nZDJKWVUrWGt5VW15Rm9mNURG?=
 =?utf-8?B?UVpySnNsUW9VRXprZ2tnRGdPVlljTEVUeCszTXZIUXV3TEdHTXRLYm9HT1l4?=
 =?utf-8?B?RTV5aGh4MWluUXRMSS9McWhINWg0UlZyVkE3a29MaXhEWkFaMXRaK0ROdXV6?=
 =?utf-8?B?QkhlTWc2dkZwTzk0aVdOUnBlK3NhSHdSWko3aGp2ZnEwRnRTNllSNjBIa3FT?=
 =?utf-8?B?MUkzUUJCQmpkNGdYUFM3Y3UvbW9RMndpeFZYY1NLYWxJZk5LWTFWYzBQOW9V?=
 =?utf-8?B?M0N3YW5BUS9xMTFmaVVId04xekRteUZ0K1JtU1ZJdzA2d0pJcXhRYzduRTdU?=
 =?utf-8?B?cnpzakcxZVpsRGdjRC9aNy8vVkxMMjAvWTUzRWt1UDB1NzBuTkd4R0N1YkFu?=
 =?utf-8?B?ZjJkMlhQdExHRVByN1dWUEVRNjRIQWhSaldoUDhYWWZwK3hXc2dQcVA3S0NP?=
 =?utf-8?B?T2NUNUl1VFI3NDVSVkNIU3ZsaDBpRjQzdWN0TVU3NmxXSEZtV2NjdDl6eGlM?=
 =?utf-8?B?ZTVMOGlBcFd3d2ZOdzNmR2hmRDRnMEJRWWI1dXBjUW1FSlE2aEorL1Q0SVRT?=
 =?utf-8?B?cUVkNlRXenpCdjlEQkFTZFFydzgrWmlVVWVaaVdoQ29oVlJGVnBVbWNwQXBM?=
 =?utf-8?B?OEdWLzZUU2VhV0RRTlNoVGp4VTFaaGNGWVpWeldWSHIzblNxYmc3bDZqZmJp?=
 =?utf-8?B?dUdnbHlpeG13RGZrSEdXNDBsR0ZRRUplWHUrbnpiVVV3YzRPaEJRYWU2ZERD?=
 =?utf-8?B?cUwreGhFRVlVZW4veU1TR3hMZWIzNFNDVUpXU2hRYm9qQkRqZEtDR3VJeFhQ?=
 =?utf-8?Q?csmEp+Jp9NzgIHv1fTYbVbauwFAOav+EV8iuF?=
X-Exchange-RoutingPolicyChecked: WLaFta9Ap09sNBvIWjXjxZKK97iP0AbV8zKIBpP07ry4CFrNiJ2OyFIWgZ18H6QZfD2SXI3klGcARlq+ExrxLUDHZaKxX3rKH7nNJFy6OFbFpxsfUt7cB1/mehOWDI/sNalwKgPwlouroaObmQgj4Ae9AAwKhcHr/bgQvrO1ZQc82ey2i0xWWD5rhu2136fOULbhxx2kLevmoWsgsH81vfMFNtxQvLHRmDTuhRjfw8BWTZqVWytxXYmOL3Jpwuy1d4PiG7a3Mdpv7KzBt5OHkRQxIsGPt+kq/X3CZaPvszQXDjqVJRkMEF/jp2wTjvOTxe+RsL5mpSrPhf+ADnsgWg==
X-MS-Exchange-CrossTenant-Network-Message-Id: cb535d58-2806-4cf7-c664-08dee10a738c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 18:13:33.8549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IcjkDwWfEp1HQkOgpB0fd0SidfQ9bnhJFY+JOlRZtu9FO6nlZDy+FdN5XyvaN8iJzyyPeLSfj+qvUWBrzjysjcmgX3qkXL+g3ZXXCUaEJew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0692074E613



On 7/13/2026 7:27 PM, Golani, Mitulkumar Ajitkumar wrote:
> 
> 
>> -----Original Message-----
>> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
>> Sent: 06 July 2026 17:29
>> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
>> intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>
>> Subject: Re: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
>> generically
>>
>>
>>
>> On 6/16/2026 8:12 PM, Mitul Golani wrote:
>>> Replace the disabled,
>>
>> I guess it is still disabled at this point, so the commit message is a bit
>> misleading.
>>
>> eDP-only,
>>
>> Should be a separate patch.
> 
> Since this patch rewrites the CMRR compute path as a transcoder-agnostic helper, keeping the old eDP-only gate did not make sense; if this is acceptable, I’ll call this out explicitly in the commit message.
> 

I guess this would work because the whole CMRR path currently is dead 
code anyway. Making it explicit in the commit message should be fine.
Same goes for the disabling part.

>>
>> fractional-CMRR code
>>> with a generic, transcoder-agnostic computation driven by an explicit
>>> per-CRTC target. Compute CMRR_M and CMRR_N timings based on video
>> mode
>>> reqirement
>>
>> typo
>>
>>    if CMRR is required to be enabled.
> 
> I will update with next revision.
> 
> Thanks
> 
>>>
>>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>> ---
>>>    .../drm/i915/display/intel_display_types.h    |   2 +
>>>    drivers/gpu/drm/i915/display/intel_vrr.c      | 121 +++++++++---------
>>>    2 files changed, 63 insertions(+), 60 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index 897a1ffd7b79..39e11362630c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1548,6 +1548,8 @@ struct intel_crtc {
>>>    	struct {
>>>    		u32 numerator;
>>>    		u32 denominator;
>>> +		/* Derived during atomic check: 1000/1001 video timing
>> required */
>>> +		bool video_mode;
>>
>> I am not sure why this is needed at all, since you can just use the numerator
>> and denominator to derive if it is a video mode within compute_config.
> 
> Agree, Same opinion  from Jani too. I will update in next revision.
> 
>>
>>>    	} cmrr;
>>>
>>>    	int scanline_offset;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index 41118883b845..e36c0cab096a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -26,9 +26,6 @@
>>>    #include "skl_prefill.h"
>>>    #include "skl_watermark.h"
>>>
>>> -#define FIXED_POINT_PRECISION		100
>>> -#define CMRR_PRECISION_TOLERANCE	10
>>> -
>>>    /*
>>>     * Tunable parameters for DC Balance correction.
>>>     * These are captured based on experimentations.
>>> @@ -186,69 +183,69 @@ int intel_vrr_vmax_vblank_start(const struct
>> intel_crtc_state *crtc_state)
>>>    	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
>>>    }
>>>
>>> -static bool
>>> -is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
>>> +static void
>>> +intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>> -	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>    	struct drm_display_mode *adjusted_mode =
>>> &crtc_state->hw.adjusted_mode;
>>> -
>>> -	/* Avoid CMRR for now till we have VRR with fixed timings working */
>>> -	if (!HAS_CMRR(display) || true)
>>> -		return false;
>>> -
>>> -	actual_refresh_k =
>>> -		drm_mode_vrefresh(adjusted_mode) *
>> FIXED_POINT_PRECISION;
>>> -	pixel_clock_per_line =
>>> -		adjusted_mode->crtc_clock * 1000 / adjusted_mode-
>>> crtc_htotal;
>>> -	calculated_refresh_k =
>>> -		pixel_clock_per_line * FIXED_POINT_PRECISION /
>> adjusted_mode->crtc_vtotal;
>>> -
>>> -	if ((actual_refresh_k - calculated_refresh_k) <
>> CMRR_PRECISION_TOLERANCE)
>>> -		return false;
>>> -
>>> -	return true;
>>> -}
>>> -
>>> -static unsigned int
>>> -cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool
>>> video_mode_required) -{
>>> -	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
>>>    	u64 adjusted_pixel_rate;
>>> -	struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>>> +	int requested_refresh_rate, current_refresh_rate;
>>> +	int multiplier_m = 1, multiplier_n = 1;
>>>
>>> -	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
>>> +	if (!HAS_CMRR(display))
>>> +		return;
>>>
>>> -	if (video_mode_required) {
>>> -		multiplier_m = 1001;
>>> -		multiplier_n = 1000;
>>> -	}
>>> +	/* No CMRR ratio configured through debugfs */
>>> +	if (!crtc->cmrr.numerator)
>>> +		return;
>>>
>>> -	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate *
>> adjusted_mode->crtc_htotal,
>>> -					      multiplier_n);
>>> -	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode-
>>> crtc_clock * 1000, multiplier_n),
>>> -				  crtc_state->cmrr.cmrr_n);
>>> -	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock *
>> 1000, multiplier_m);
>>> -	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state-
>>> cmrr.cmrr_n);
>>> +	/*
>>> +	 * The numerator encodes the requested refresh rate in kHz, so the
>>
>> Not accurate, because numerator/divider together provides the refresh rate.
>> If anything the numerator is in mHz as commented in patch 1.
>>
>>> +	 * requested refresh rate in Hz is numerator / 1000. It must match the
>>> +	 * refresh rate of the current mode.
>>> +	 */
>>> +	requested_refresh_rate = crtc->cmrr.numerator / 1000;
>>
>> Integer division loses precision. It can be used in the comparison below but
>> incorrect to use it in actual M and N value calculations done later.
> 
> Good catch, I agree, this will loose precision later. I will fix this in next revision.
> 
>>
>>> +	current_refresh_rate = drm_mode_vrefresh(adjusted_mode);
>>> +
>>> +	if (requested_refresh_rate != current_refresh_rate) {
>>> +		drm_dbg_kms(display->drm,
>>> +			    "[CRTC:%d:%s] CMRR requested refresh rate %d Hz
>> does not match current mode refresh rate %d Hz\n",
>>> +				crtc->base.base.id, crtc->base.name,
>>> +				requested_refresh_rate,
>> current_refresh_rate);
>>> +		return;
>>> +	}
>>>
>>> -	return vtotal;
>>> -}
>>> +	/*
>>> +	 * A 1:1 ratio (denominator == 1000) means no video timing is
>> required
>>> +	 * Any other ratio (e.g. 1000/1001) requires the video timing.
>>> +	 */
>>> +	crtc->cmrr.video_mode = crtc->cmrr.denominator != 1000;
>>> +	if (crtc->cmrr.video_mode) {
>>> +		multiplier_m = 1000;
>>> +		multiplier_n = 1001;
>>> +	}
>>
>> more intuitive to use names like rr_multiplier, rr_divider. Also the names are
>> reversed now.
> 
> No worries, In-intention to create better readability of this code, I will update in next revision, although these names were picked based on existing algo jargons from Bspec.
> 
>>
>>>
>>> -static
>>> -void intel_vrr_compute_cmrr_timings(struct intel_crtc_state
>>> *crtc_state) -{
>>>    	/*
>>> -	 * TODO: Compute precise target refresh rate to determine
>>> -	 * if video_mode_required should be true. Currently set to
>>> -	 * false due to uncertainty about the precise target
>>> -	 * refresh Rate.
>>> +	 * Let pixel_clock_hz = adjusted_mode->crtc_clock * 1000.
>>> +	 *
>>> +	 * cmrr_n = requested_refresh_rate x htotal x multiplier_m
>>> +	 * cmrr_m = (pixel_clock_hz x scale_m) % cmrr_n
>>> +	 *
>>> +	 * where multiplier_m/multiplier_n = 1000/1001 when the
>>> +	 * video timing is required, else 1/1. The integer vtotal
>>> +	 * term is tracked in SW (it is the programmed mode vtotal)
>>> +	 * while the fractional part represented by cmrr_m/cmrr_n
>>> +	 * is tracked in HW.
>>>    	 */
>>> -	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
>>> -	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
>>> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>>>
>>> -	crtc_state->cmrr.enable = true;
>>> -	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>
>> where do we set this flag now?
>>
>>> +	crtc_state->cmrr.cmrr_n =
>>> +		mul_u32_u32(requested_refresh_rate * adjusted_mode-
>>> crtc_htotal,
>>> +			    multiplier_m);
>>> +	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock,
>> 1000) *
>>> +multiplier_n;
>>
>> Please align the calculation as per BSpec-68925, calculate the cmrr votal here
>> and retain the cmrr_get_vtotal semantics.
>>
>>> +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate,
>>> +crtc_state->cmrr.cmrr_n);
>>> +
>>> +	return;
>>>    }
>>>
>>>    static
>>> @@ -424,8 +421,6 @@ intel_vrr_compute_config(struct intel_crtc_state
>> *crtc_state,
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>    	struct intel_connector *connector =
>>>    		to_intel_connector(conn_state->connector);
>>> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>> -	bool is_edp = intel_dp_is_edp(intel_dp);
>>>    	struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>>>    	int vmin, vmax;
>>>
>>> @@ -459,13 +454,19 @@ intel_vrr_compute_config(struct intel_crtc_state
>> *crtc_state,
>>>    		vmax = vmin;
>>>    	}
>>>
>>> -	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>>> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax) {
>>>    		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
>>> -	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>> -		intel_vrr_compute_cmrr_timings(crtc_state);
>>> -	else
>>> +	} else {
>>>    		intel_vrr_compute_fixed_rr_timings(crtc_state);
>>>
>>> +		/*
>>> +		 * CMRR is a fixed average Vtotal mode and is only computed
>> on
>>> +		 * the fixed refresh rate path. It is generic across transcoders
>>> +		 * and gated on platform support and a valid debugfs ratio.
>>> +		 */
>>> +		intel_vrr_cmrr_compute_config(crtc_state);
>>> +	}
>>> +
>>>    	if (HAS_AS_SDP(display)) {
>>>    		crtc_state->vrr.vsync_start =
>>>    			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> 


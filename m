Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NBR3Lw4KTmpeCAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:27:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C973B72326B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 10:27:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=V7TO4eQD;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7778C10F033;
	Wed,  8 Jul 2026 08:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B71BD10F018;
 Wed,  8 Jul 2026 08:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783499273; x=1815035273;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pIMGYJT/FVQqc88Y8fnewZGJ1DqjvOIc64eZXHxHVOk=;
 b=V7TO4eQDY57wdd/WpUyk54F0LKV+5FloMbnVSLHhR0SH3pLw7hpEHnqa
 pHlaPUiCdheILpFUhdLK0iQStGuOOOKpUL08amhlO89iRVrjtKliumu0F
 0ODY5CqYtu3G5xJsXFG384DqVZBufPIaFUvDLnSf687e3YzqRDMk9va7S
 I+bWhwbv8TDrmTzcBPkMdCiiXj/1ET0TN+scouHJrNIwUra7xe7WGWsmw
 R33AceMPmQbGN/x2poG4DnjOf2A6fX81nKuXYNpjCcRAFB+azhMaz/Ueg
 yz+ynEMbbwWaI6NlpR+fiPWBg9B83qousLu9NSEe7qjaHTy8ptHHGxLqW w==;
X-CSE-ConnectionGUID: N9ynS8oZSIKINk/n3t4EYA==
X-CSE-MsgGUID: lRmFUc67RhS+qSYd3wEnMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="84129643"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84129643"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 01:27:52 -0700
X-CSE-ConnectionGUID: t5kqZRvuR+S8p75dAgEg+Q==
X-CSE-MsgGUID: sQeD3xYiQRem4zaHUHF0eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="257806149"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 01:27:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 01:27:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 01:27:52 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 01:27:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LX/EI05R+YSGoZJ9qNMEbwbVQQIdz+2SuZCzguNiJtA5LtHjG0Wc2OYLs7SgBFDWAWoCpIyTCot2oZMvtDFvDnmY7MGOCAnGlGKD/Is6dDvEHhsMjSJiN5sUn7S9LK/BoDbdgB19dJ3YOIdXZJUfgP4DetJQ5urmSgbMWlolgQ4qzfqXP4CYWfBjuUcfLULyD4wxCxLRfu0lmhyXcIpY3ud9UeJEW2gjKXzSP1A2F+1ioAf80HtQej49pvOWkOM1eu1/LL6RBaBR/BqGrWwTzb9cOAsd6WT4sE9MxZiJpkL5kGTia1Hci6EGnFAxy8nGQxBcWjmhKsdUYXgHSvY3XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a+oRMON1n84G48HGXBE01CWZ6oFgi/9MUPxYwQMR6/4=;
 b=E+vivyjxYlKyWFsWeJPTTe4VvkgeUIj9P5ctpG5hYXm5aQq9VBa4DJN0z7tPG5ZzP6R+YgyrBX8jDzrgzlAsHchE7kz6877hqhA1SmsDhAPm0ppjBDN24YfOtnIEu2LBbzmseNfaafxLM08tlaZeOfWWXxFcuylcrbUQ+qaK/0nMX85ytnWaYZnIjBe5RAjT23pGZZoJtSSnSTd5XEizWrWJf6sggxctcAf+hcNTek15HG1x5Sef1joT+CR8Vsd8KASthyYeW2iba5FrihnDOxyBl/zTb2xVmdq1QRuxOj9TF5iZ/CZsdUbIhhzMPsSoX43gDqiv+HXrs+TcoTaM9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by IA3PR11MB9228.namprd11.prod.outlook.com (2603:10b6:208:57a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 08:27:44 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Wed, 8 Jul 2026
 08:27:44 +0000
Message-ID: <0391f4dd-5c56-41d6-9d4d-25f0181a5b7d@intel.com>
Date: Wed, 8 Jul 2026 13:57:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Skip TRANS_VTOTAL.Vtotal write on NVL
 pre-C0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20260703032653.2122784-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260703032653.2122784-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0084.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::18) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|IA3PR11MB9228:EE_
X-MS-Office365-Filtering-Correlation-Id: 0942df80-3ba6-4f4b-f1ce-08dedccac894
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|3023799007|56012099006|10063799003|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 6dMzjGW6zgmqhPAw1UvDxPoYgO3oh7asKIKZWddEioESDNn9jzChMojR/zxZ7x7Pdlb+b5ScOoIsGR0tUttd2+wFw3jt5V58D+ZAetn+83iqqBTG8H6TJfYb3lYxtkvUx6rpUz5qi5ltWy7QvMjk47oHQviTNDdqziBgIr4bOeY4SUoyOPYVT0/acfZh3trpdO8zdBkdnY4EO+LAlALD/22U7YrqJ0896aAvIbuzVmAC7LEjoiIHDZPRYXKdEs3H0kxbJF1+n6uRta9ckNPDtUZPSYwj7JWimw33kGI+plRU/Y8zZtXoPDJmuvhNgmrnUROraH9a/yS/P/jlXIxE5oJboVhggPR99NnpL+TjQnPVKZPeDKzUURZ4qzKB34NMDzNy9P1ynD7AGH+6kUC7DHyS1104FL8beGNZ0+WQiGv7vqElYI9DPhzJsOZv1EswCebA+KI3r5uDv4IIIbZPWQjbrxwY0KYi02w1OKHPeSoCE/NIKvIXIuy1QQUiuSu38bPSZQ5kPN501g7iFoQVhmOfB5yHWexrF+Ce2clyzCLUCfxrDmTU/RctDEUXaJm7JTyN538EWGOchnM6en3S31uvQD/RzDtzlwEA+Q6Vs7GiuJ8Ahrx1/T+VIt4RVl4/k83BJ7elrxTrAosgIxSfboWUxxW8GXyz4glwmlWXQZ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(3023799007)(56012099006)(10063799003)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUkybU95RS9UK3ZQeHBkSDB2cFQrdmVjbVZyMHM4SXBsWkpaVURqQlBNZlBa?=
 =?utf-8?B?T0FqUVRwcEdHbExDRTZhRWMyaW9QTDlOWitzeW45RWgxZnhYbStxV1lCSStl?=
 =?utf-8?B?SDNrWUlMbXF5eUpiVGx2aUhvSW1tcENNa3N1RHE3ZWJLalZMR1pLWDZ2VjIy?=
 =?utf-8?B?em5aMVcrUnZpdDlvVmZ4TW52OWZ5b1BLRkpvWE5yU3dIZ2h2VkJWRjE5dlBt?=
 =?utf-8?B?WFQzUmx5TkJGMnh0d294SVBEUmFUUGFYY2xWbzI3WTlaZWk3VXdOYlhJdDAr?=
 =?utf-8?B?aVllYUhZbDRnQU5BRGtMVVV6Z281REd5RVhvWDE4OEFYN3pxdVFERUFzSHph?=
 =?utf-8?B?NVIvQXF6b0NrUnhReUswbDAwd20wc2NvQXdwSkJoYmFXVzJsTmY1Q3YwVE5G?=
 =?utf-8?B?MVRqd2NpRkh1dWlDMFBObHdmRjZRNlVTOGxLZDRmN0JQbVhCOTVlNFZOclZx?=
 =?utf-8?B?a0VvcGlWc0tKT1J0SVZEZkNxbGppMmx1MmpzazNNRUNwaUxpNHlkZmV0VmRq?=
 =?utf-8?B?MER3cnlkdTdWU0hCWjl0dlJSbXpyN054WDdQakptejQ4b1BCTGRUZkRqV29K?=
 =?utf-8?B?MWEveUxVMlBpOUY1Q05DbXQ5RmFBeW51Zk15UDN3aVZpVGhRZ2xSZFNGL01h?=
 =?utf-8?B?K3V1MS9mNExvbmw2RDNFQ1oxTVVQbEFRS0E3K0tTdVBlck1xQjdndXhBRWtl?=
 =?utf-8?B?Q3hBT2VxVGE2WXRUSTBkTHg5OFdiNmVaSjRWTW5ZZndja0xteERPdHloOGlk?=
 =?utf-8?B?aFFRcTNQQzc3TnBDd1lBQzJMSDdETEtOakNYTmFhVWZaVE40Ymh4bjluQml1?=
 =?utf-8?B?Q3Vicjc3YThsL2JkM1RWcHE5OVJJQ1M0Smo1V2NyemVQeStqMGF0cmpxMzdH?=
 =?utf-8?B?WEtOb3dPMW42Y2ZQQ3pERk4rNVo3dmUyRkF0a0llWHFzOUxGVDhmbkhKZjB6?=
 =?utf-8?B?UmVJR2toSkFDa1VkSkRDWE9ZVGpiZE1RTVlna016RDlvODVEYlptWWxWakhr?=
 =?utf-8?B?c2dJb0F2b0JjMlNhWTNCNkp3cGF5VkU2c3M2SFlTaHVJamJlQjd2OGt6U3FF?=
 =?utf-8?B?MGp4Mlo2eVdCSko5WkJtZFhGa0xtTHZ0VERheFBFTTQ2c3pYaHIyMitUN2dm?=
 =?utf-8?B?Vno2UnMrRzh5QlFsVnpIY0hENUVqbjBmZCtodjBTT2lKZ3U4Z3VNTE9IWVBm?=
 =?utf-8?B?N3U0b0xqZitPSnhKME5qc2xEREF4aEFLT3QxTGVFSXlwNHB0TWRPQ09Wb3Vv?=
 =?utf-8?B?bjBDUzZwMDJpTVZ6MkN1Q2luS01jNFJXT0lsSnpHVnNSRmw1bDFvQWdrNzRB?=
 =?utf-8?B?RGJBSW10TWRFQVNGOWtoc05neXlLa09QaHpqNmEvVmVub0ZFUHRIY3pic0Jy?=
 =?utf-8?B?clJUZGI0NUExVDFtZXJSM0U4YjRsUjZJSzZZQ3ZSVVp0ejkzWEEyWGNFdHI4?=
 =?utf-8?B?TGp0cDV2UEdiQzVNdGtRTlV5elhZM2pVQW9iUjlENkcxU2FCWjNhMGxxNzVo?=
 =?utf-8?B?M1Y2VlBBSU9aeSs2Z3VCd3hLUGJYK09NUXJsN2JPeEdXTHJEb21kWUhibkh4?=
 =?utf-8?B?Mm03U2NsY010MWZRWERHT01GSENjdDFOcTl5YXQrWllWTlNZS095VnhqWWhF?=
 =?utf-8?B?MElpRE1KREE4REJlVEtVSmM4WGc1enJ4ZkppWEp0dDJVQ3MrRkpLY05KUGF4?=
 =?utf-8?B?UUFQb3ovSXVPWThNbGNXeWhrZ2hzYzc1YUt5Ym5xelRTb2Fod1VCZzJtRzdn?=
 =?utf-8?B?bUxubGhlS0ZlaWVUcG9Udkw2d0hNbTFFVXpoM2lyVlRVVENVVktjb2FqbXF5?=
 =?utf-8?B?aDZjZDVJUXVFbjUwa290b05FNjZvQU5GeExaUXo5alBiclBqZnJKYmN4Umx1?=
 =?utf-8?B?UGZHUmRVUTNkVE5ZRDdTR1RaRzhWZU9RbmlKaEorcHpxaFZ0N3lpK0VXZ3BS?=
 =?utf-8?B?MEZsQmNMb2VGRG4yOWZKUHp4MDlaR3NBb2U4cnJDTzMvYkdKWXJHbWtLTC95?=
 =?utf-8?B?bUhneU9ETWdiVjhrejNjeHFVaTl6NXFkUGZDaldaY0N0aTFTTkVleU43THpK?=
 =?utf-8?B?Uk5JTmVQTzBmRS84WWpKR3RpSTVvMEpyVDk0WHZrVlJqZHJHRjIrZzhueE5C?=
 =?utf-8?B?NmtOa1pkdS81MGFLWFh1Z25TNGxFa3pZK0pMZnlkYkdENmRLQWVEWEJ0ZzFW?=
 =?utf-8?B?aFhlb29NUjNxb0pNUEZPMVBwRVVtM3lkRFFDb1RCYmo4R0szT3Q3bS9rbGZM?=
 =?utf-8?B?WWVzSkZQdWxvVUQ4QkU5Vi80MEZ1SC81VDlEbGhXbkdTeFJMdXNlWU5yMnlO?=
 =?utf-8?B?V1lob2taZWxlKzAyZDF3ZzZDSHUyZHhwSVVuVTN5aVlrNVcyZDByaW9jYm1m?=
 =?utf-8?Q?AL68DfmyHp8n8y24=3D?=
X-Exchange-RoutingPolicyChecked: U8QwVfVB9bD77XvAssHoa4LtDGfZ8D+RK56JKiZOGBzdrqKb9MqislOegWbIOpui6ZLQTOM1pNrvHjGntK44GfWKKMWHn8WcZGCjndHfPKUMHy7ILTG6nZw4F7GYzlZ9Kpgz7PA8meuX35AZo7qEzs6nbbdQlbMWhR2edvMWLIq6ZJZN5NH5JpBksh3mqAOTmBCgxGvsKsA0rh1UV3BfvUL6jx0u3OcRiQKGnNzL1t4rPI8l1imiAihiyVRvmIvIRvmXtHTSMYOccBUFDl/xzYc8c37Th7TIqm1uJCfUOeK2BuG2XQ3TQNxwvT5ESUeXBUfcsWA29gyxltadKX0UJQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0942df80-3ba6-4f4b-f1ce-08dedccac894
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2026 08:27:44.3307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pFwh55+L2nxf7I9qbbHQnsCbNPCzqNjJgP59glWQOQbFqKKp753nW1mt3tVaNKtoEjvBxnjcRCMXpEPrvR9UoMaGlqgy/z4sn4xh5a0IBEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9228
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,lists.freedesktop.org:from_smtp];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C973B72326B


On 7/3/2026 8:56 AM, Suraj Kandpal wrote:
> On Nova Lake A/B steppings the GOP breaks DP-Alt / native DP output
> when TRANS_VTOTAL.Vtotal is programmed with a non-zero value, and the
> initial hardware readout of that field on such systems ends up in
> adjusted_mode.crtc_vtotal = 1 -- tripping the DSB scanline WARN in
> assert_dsl_ok() during intel_initial_commit.
>
> Keep TRANS_VTOTAL.Vtotal at 0 on Nova Lake pre-C0 (A0..B3) in both
> transcoder timing paths, and restore adjusted_mode.crtc_vtotal from
> TRANS_VRR_VMIN in intel_vrr_get_config() so downstream state stays
> consistent.


This matches the GOP fix.

I'm not sure whether this is required for all A0-B0 steppings or only A0.

However, since this has been observed to fix the issue on both A0 and 
B0, I'm fine with the change.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> Fixes: f26a8df8dff9 ("drm/i915/display: Program TRANS_VTOTAL from mode vtotal")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 6 ++++++
>   2 files changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 90c05ad08f86..214454f419e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -45,6 +45,7 @@
>   #include <drm/drm_probe_helper.h>
>   #include <drm/drm_rect.h>
>   #include <drm/drm_vblank.h>
> +#include <drm/intel/step.h>
>   
>   #include "g4x_dp.h"
>   #include "g4x_hdmi.h"
> @@ -2737,6 +2738,10 @@ void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state,
>   		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>   		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>   
> +	if (display->platform.novalake &&
> +	    IS_DISPLAY_STEP(display, STEP_A0, STEP_C0))
> +		crtc_vtotal = 1;
> +
>   	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
>   		       VACTIVE(crtc_vdisplay - 1) |
>   		       VTOTAL(crtc_vtotal - 1));
> @@ -2830,6 +2835,10 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
>   	 * The double buffer latch point for TRANS_VTOTAL
>   	 * is the transcoder's undelayed vblank.
>   	 */
> +	if (display->platform.novalake &&
> +	    IS_DISPLAY_STEP(display, STEP_A0, STEP_C0))
> +		crtc_vtotal = 1;
> +
>   	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
>   		       VACTIVE(crtc_vdisplay - 1) |
>   		       VTOTAL(crtc_vtotal - 1));
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index bffbdee76ee1..51e4f3309b8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -5,6 +5,7 @@
>    */
>   
>   #include <drm/drm_print.h>
> +#include <drm/intel/step.h>
>   
>   #include "intel_alpm.h"
>   #include "intel_cmtg.h"
> @@ -1106,6 +1107,11 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
>   		}
>   
> +		if (display->platform.novalake &&
> +		    IS_DISPLAY_STEP(display, STEP_A0, STEP_C0))
> +			crtc_state->hw.adjusted_mode.crtc_vtotal =
> +				intel_vrr_vmin_vtotal(crtc_state);
> +
>   		if (HAS_AS_SDP(display)) {
>   			trans_vrr_vsync =
>   				intel_de_read(display,

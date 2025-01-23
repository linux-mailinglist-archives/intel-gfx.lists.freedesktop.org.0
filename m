Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5992AA1A624
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 15:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1A310E26A;
	Thu, 23 Jan 2025 14:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nfjugaik";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F20310E82D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 14:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737643908; x=1769179908;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=+qsz9t+qCa4DST7bNutk4VOvklZXNDVzKwi7gWRBMo0=;
 b=nfjugaiks2PCGh2/COPfNAh7iXOR+GP9N1xuLqShEs8OnfGXhNp+53Iq
 uNdTg3fH9KQ93yCXOiXGiLsRNz8VMww+ZAKMbgurtDcc4MyD37kdzA3qK
 /LLoC/3kgXWFosiAVBZR73oY/7cEoKEkJrAT3tTFxmmkR2yQC0UugGNft
 kprtUqESHbkCdhoRt+joG43k8DlSZGq7wUMHq0hXTBdiRJcnn0RpOmUmZ
 J9luih+Oa9iWqRisrnzHcIi48ZymVA/PZL2OnGU0NtJkmhONPVeDHMDKa
 RmQ8Hm8tSHxVVF+osLGQbhIeDGBgrOr+HneYeN+x7sNssh9TngatM8oOW Q==;
X-CSE-ConnectionGUID: MtSk0o75R2m4lB+2pMMhCw==
X-CSE-MsgGUID: 8BfpMgt6R6ufZwAfsRa1bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="38023963"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="38023963"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 06:51:48 -0800
X-CSE-ConnectionGUID: PXMtUk/OQiCGBZ6whdjMcA==
X-CSE-MsgGUID: uervKWjrSMem0EjzLls/vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="108083941"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 06:51:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 06:51:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 06:51:47 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 06:51:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W3Z+SRPac+XUJY/Vu5hjVkaDRR0H1C4q2DMIDx5YJ6Nxx/6KzY1UhEPsictaRM3gOyATGkBIP8fwbRisqSxu1nKuwx2cWKCCji+hL5Pe7UeBKmAWyHcuNk5DyzoidNNmT//cshpXdHLBI8ZZHVzgbU/A5vQGqWJpIisiCWxvbkCgnWKBZMqbw06yo4izzGngIQZGNg9TbC2gaJD7cdKCQKj8x5nJc4Qhky7PE//ZCfCYggVHAxPr9QbvXVUiAs2QcK34O/enNRS+/4pgEAljsYmdhjmOJY9b9xFC+0mB2okk+u3Ywh6+wP+cNLDKm/wajtjQW0P+LyudAYKzcE5/bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OF/juiPPGkF7lWbgSLOm6HRc1bg9YlHN+Cs2cado2oY=;
 b=fFHXRtwrx9HQSvGrZf8H23dy85ikLGnU2L7IHB4jsF/84vZxjM39HP54R8jWBnB908XyVm3/ctDqyYE/FiOyCHA+922ouLZEcZy34sh4whvgfyKQ1jUZkr0fT2CxjCME0fJ0IoUdsqvuJSg0ENd0CtFt+Q6tN0l5qz4jp+HrOE+rARaTuBHTiTsfNNZ2zvbwjBu9/j9BN+iutc7WqKgYSSrFs67CGfmi7VxRWa91YAqbNNNIQilqDD/An6u7Jb5RXs1y4Nuuqee89rdoxrnp9B12fvQ2flLd4NMbaEC2k4Q+yDz9TBi8V/P4F9wnmQ7eObnaMGE9zH5nQrINu6KGCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CO1PR11MB4865.namprd11.prod.outlook.com (2603:10b6:303:9c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 14:51:44 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%6]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 14:51:44 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 23 Jan 2025 14:51:40 +0000
Message-ID: <D79JCRK9WZXQ.2JFW0ZT1H08F2@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <chris.p.wilson@intel.com>,
 <krzysztof.karas@intel.com>
Subject: Re: [PATCH] Revert "drm/i915/gt: Log reason for setting TAINT_WARN
 at reset"
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <yawjxnu62q6obpz6yy2ksrrwfprafdq5b23lktvcu2oiydbmgt@oag7ts74jxu4>
 <ja7pu6redaaas5uxmornnmdp3c2acqtal2c53h3z7r4qactwow@fk3o6g4qcxkf>
In-Reply-To: <ja7pu6redaaas5uxmornnmdp3c2acqtal2c53h3z7r4qactwow@fk3o6g4qcxkf>
X-ClientProxiedBy: ZR0P278CA0114.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::11) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CO1PR11MB4865:EE_
X-MS-Office365-Filtering-Correlation-Id: 50344a49-6d9b-4480-f569-08dd3bbd7453
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUJsdXhGZ3ZBZTJMMSswbk8vV0hWZ0Z5Q2pFNHo5Y281Q3h2RkN2Q2xWK0ww?=
 =?utf-8?B?eS9XL0ljMk9oLy9ZNWRWb2JNcGtWOHJpUzIza2J5bmlDRFBCZHNyVUE2V1I0?=
 =?utf-8?B?SGtXc0QzV0hyOUJEcjJ4b05tcFFlRWVxWDNPUHpGQ2xYQkRuWWk1UUV5Y1c5?=
 =?utf-8?B?Nkx2ZVZtQVFOQjdMTVlyNXovQzFrUkYxZlBnV05lRGxad1BDbXd4ZDMvQWk3?=
 =?utf-8?B?L3lTUUJJT2VhZDBuK3JSYUt4NEJKUTF2MWJ1RlMvdGJBYi9RcHgzOGlzb1l6?=
 =?utf-8?B?MkozVThwVVQxRmpxSEJ5TVlHZXQ3ZUhQUVRQQ21QSkdkU3pDemlSWDFwMEVs?=
 =?utf-8?B?cXBKeGRoUDBIUHZEUmd6ZmZ4TTQyNXdtM0pwdWZTbTNiQVo3SU1MZ2F0dlo0?=
 =?utf-8?B?TW85NVdxVE1CTDFmOHRxdGQxN05idWZoeWNjNjhoMnpjQkp5RzMwemFBV2xO?=
 =?utf-8?B?bXg4NHg2eC9pTGlyODVsUkxjNllHS3lwNC9ZTWZ4bzFrZlppZmVnbTZqZUZS?=
 =?utf-8?B?TmV6WHVWM1FZNzI1NmxyUi9iSGF4MGNnakhjRlloUVg4NEdaVkhoUkNZWXlG?=
 =?utf-8?B?a2hMY3ZXbDlVYnRxdDk0OHQvRURQRjdLU3EwR3BLTGZKQWNBNkJBdHdPY1Nl?=
 =?utf-8?B?eTFnMlpEMkNPNExKV001c3ZlNklpZE5BUWQvNHVuM2l6eHBKdXFvQ0dta0ds?=
 =?utf-8?B?K2lFNGdGM25Ec2l3Y1luRzNwQlRHVTZIOFZlWDNUb0huS1NSMkZQblVmTlhZ?=
 =?utf-8?B?ZVpvUGNwdVVuc2EvejZMU1hIR1lmTVhUanRlaWJWa1hwUGhsazk4RFZoSnk5?=
 =?utf-8?B?eG56Uzl2RHhMTHdHYmp1SXd3RDd6NzMzUncrcXl4em5UMHVWamxHZ3hUU2lv?=
 =?utf-8?B?ODdRLy9tak9mbHk4OTZReG9OZGdGU0JCZ3psSVJqelh1S3NqVmNTK0R5bWFi?=
 =?utf-8?B?K2huWTZmYWxwR2VHdDZmZEROOUQvdm5wR1BqNWQxUFV4SWpESWw2UjJreTRD?=
 =?utf-8?B?eHBZaktTV1pLY1UwMEhvenNaNTc4Qkpkekl0UmxmZ0tocFdVMFViK1R0UlR2?=
 =?utf-8?B?UlNSVFZCMzNJbTAxLzlvV1FsZzNyRDJ5ZmFNZUZpZU1kSjNBWTZtR1haQWpE?=
 =?utf-8?B?K1Vzczd2RVNNdnE4OGFGNmFQR3JFaStWOUdBc1pUQ05HY1hjdVBhNFlMYTRi?=
 =?utf-8?B?eHp1dHpST1d5MjgzRXBuN1pVYmMxY0NpSmdlbEJqVXhBenhGcFRmMmV1OTMz?=
 =?utf-8?B?RXpLdVpOZ2U4TmxDMXJJZmkwRStJUk5HQlBjWU9OaTVOM2pEY1BSRmhlcVRX?=
 =?utf-8?B?VUZOTHMzY0hiZlpHUXVXNnIxMkRhbnpmWkdEaUVaSUtLM0NPcy9XMG9NcXJP?=
 =?utf-8?B?eDFLRjd0amlyUnk5MVVIS2NTTnJvMlpnamVxMXVyQ1NMN1FFejhyR1l3NHZR?=
 =?utf-8?B?aG1hR2FmM2QwMjFlVmNxTEM5c3QybURLcXJlS0QzUzFOY2llckZDa0xKRzhk?=
 =?utf-8?B?cGFUUGtJUkUvajkvUEYvK3VwTkxNYUlkbWMwbllFVHFIK3hwSVgvVmNwM20y?=
 =?utf-8?B?d3Z5WFZWRFVqVlE1cEVkdjE4Q3JlUWFVREQ3bDgwS09oYzFuYjU0M1BKbis5?=
 =?utf-8?B?L1hPZWlud2ozZ3VoMXFHcGwrYURFL1M2WWNsSFp5cnBIQnlCdkdxU1p0YzQ5?=
 =?utf-8?B?eWRFR0lXZFJqQkZRbVhiblhPS0tlZ0hwNGJ4ZVpud0E2RHBiVW1waEdMTFRG?=
 =?utf-8?B?d3dweVB6cHRWU3VqNHpvSWwrdVhieGlscnZFRW5oN2pSNVVOVm1XTEprbSs5?=
 =?utf-8?B?RkZJVUZpa3dUN0ZJalpEUW9VbUdybUJiT0dLU1FuOHdqMWtiN0h6RnZ3YlZH?=
 =?utf-8?Q?qT3vGo49+c59r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzBpWHVIQVdudU1DN0o1UXVkZWc4VjlqUEFiZ1FKOXI1S29BMkFsc2xSbjJs?=
 =?utf-8?B?N1BNcjFFZXF6aS9LQjh2em9iYmhDcjFEY0Z3YXkyZGtFeW4wNXRReGRIcnUx?=
 =?utf-8?B?MUhRZzE3NHlSUmhRWDlNM3RQd25lSU9FdTNhNS90UXpOMVE2bUdWUG5Bdmd3?=
 =?utf-8?B?cHd5WFdHakdMblhKYkNKTE9YVGJvN3RkTlB1THBRTVZsSlJhL0J3OEJXaWEw?=
 =?utf-8?B?K1VHeTZOcGRXZzVnRHRuYlNtazFweVVsR2Q1T0dNZURZNGJiRnZ3WWE3VnRo?=
 =?utf-8?B?NkNDaENWYkhyckxIV2NmVGFEYkhTeFFXWmVrKy9UNFpPcXRrSUdjaXdxbUNt?=
 =?utf-8?B?dy9FZDQvdVBMNHdPVHBpQ01GaFRMby9NYUlQS3dhK253M1d2ZWNtY0tUQzJa?=
 =?utf-8?B?eUtuN1FrMUo3MG56Rm9WYzEyUUp3U2lmQnRieSt5SC9LbnNFazNkcVhYbUc1?=
 =?utf-8?B?RmYvS2pGZElsOUNTQWVRRGVOZStxK1ppWUpYNGhSRkdoTS9kcFE5WWRBTFJE?=
 =?utf-8?B?bTQ1Ym05bWF3aDI2TlRtMHBPQ3hlQUZjeTBtdEdXMldJNjZsSmhMS0JudFcr?=
 =?utf-8?B?c0Y4QXNFY3BwTVN1K1ZXOHlOLzhqVGRHdFJRc0JKSW1nZ2V2SlZONkRiMEI5?=
 =?utf-8?B?dzdvOHZMaGI2RDF0RUMzNWdDRkN4RjNlbXB2TFJoSlFHRmZoTDlUN25lcnc4?=
 =?utf-8?B?T1pZbGI0VE95MnJOYVI5NHhra084OWI1NnBPYWZUQlBJdDFUd1BYdVlLM1Zn?=
 =?utf-8?B?cXV0RE5wUnduK0ZMZGFveXZDeC9Yb2w0c0owVjFzMDZRWnQ1S2hDMk9Danls?=
 =?utf-8?B?Mm5OT1AwYzVXS3VJTVFZUnZkUE5JNGR3VWdFMWt0eXgwSGxMZ3FtUXhsK3kr?=
 =?utf-8?B?VS90VXBFOWt3bTRpSnFCMXRyMlRrTkdzYzhNMWsxQXFlcVR5aHhFQktJL3dL?=
 =?utf-8?B?UUl3dXhiZFVSVVBPd0FtTWNydDk0MU9wN1AweElFQ213U00wTTQzS0t5Smxj?=
 =?utf-8?B?eThvazF2QVpwVFV4ZHYxNGVTS0Fxc0NFczk4RStwWHdXYk1mN1UwMG5Qckxs?=
 =?utf-8?B?T2NReGtIQVVIRFZQR2VPRGdNd1hjVjlSbzhuRnJJZitiQkc0RVdqbWdnMlpO?=
 =?utf-8?B?eDd2eTlhMHNWRENLTDFGK01JeWY3QWtpN2lWL3pTVDVNLzhxdWp5Rmw2Zysx?=
 =?utf-8?B?bFVoeDc4WTFoeG1yTW9rRVdTcVhNc3ZjSllNN1NzVEdHTndObitTMk9MQlJx?=
 =?utf-8?B?Vi9yaGVxaXZ0a1RJUWFuSXJ2NGtWc2pITUJGTklIc1BDdko0MmZyVEgreVda?=
 =?utf-8?B?NzgzRG5UOVdtbm1Ub3NldkkraWo0UWkyV0k5TGlhUXJvSE1ONDk1ZHQrcVBY?=
 =?utf-8?B?dlVxeFdpYUdoaW9iZTdIdXJQSW5rTGVmUFpTUVFNL3VpbkFzTFBYaUIwQ0tt?=
 =?utf-8?B?SHNEM25SWTJJVzZUdUNaaVFjQ1NIZ0s5WjNIUWFMWUI1UjZpVnNpajlHNU1B?=
 =?utf-8?B?WDZsNThSOUxMWlR1a3k5YmxydThYb1dhY3Q2aGlzK05TRkt1dFRHVkxsNHBL?=
 =?utf-8?B?b1N6MDVVRVFiVEY2T1pOREdWUTNsekFwYkZ2UVppTEhFMGNHVHhwZmd0ZldU?=
 =?utf-8?B?T3N3M0xEUE5pbzRUSTlrSHVXeHF1QWFTNlNxNkRoSWlxMC9oN3hWMHhmRzFw?=
 =?utf-8?B?VXdnMVUyZm94c3lNY0I4YWVrRW9xOFM3VmQxNE9XVDJCS0JkOW5aOWZsYU55?=
 =?utf-8?B?Y3NMQzZQWXI2SFVzTFF1aldxRm9ERXlmTHJScHhteEUwZ2NlVXZFWU5rT3pC?=
 =?utf-8?B?K3Q4Nko0VlVkd0RLbnZzeFprbjdSenAveU51dDl1WnFtWjlmVWVQWnFqdUNu?=
 =?utf-8?B?NndIK0EyM1VmanNpRmVnRTRBK3A2b2RQVG5ENjgvbFFFeE5nVmhNVmJNM0dD?=
 =?utf-8?B?UTRQeFVaRnhabERLb1dLVzYrK2NmTExEWGVXeVlmQThHTWhuS2FFZmNmSnk3?=
 =?utf-8?B?cjZuTUgzdWt6YnNZd1VkcTlVT0JUMDY5WCtFM3BiZGhWS2FKZ2pRei9YV1RE?=
 =?utf-8?B?dm50YkswbU8vUktwRnBvdkVhM3lUOG16bkUrZVppWkg0d3dZYkdXNmdpdHRh?=
 =?utf-8?B?dDUvcFgxVWpIS29vR2pQK3BnTGVJZHlac1owZk5wbWNGZWRKczJjcVZENGUy?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50344a49-6d9b-4480-f569-08dd3bbd7453
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 14:51:44.5260 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZM4hllBHtw9L586snv2unAdDHVSNfwhb/7vD7imA1JlFOK4mc+3j2l1nMiQHDAPBxHy1K80im8Oj5/JfCfpY4yk3SpsAIXrRqafe4YjeVQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4865
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

On Thu Jan 23, 2025 at 1:54 PM UTC, Krzysztof Niemiec wrote:
> Hi Sebastian,
>
> On 2025-01-23 at 11:33:00 GMT, Sebastian Brzezinka wrote:
>> This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.
>>=20
>> Kernel taint information is present in dmesg already, and in
>> the case of an unrecoverable error, the CI restarts the device
>> accordingly. Raising an error causes intentional error injection
>> to report an undesired error notification.
>>=20
>> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>
> I'd rephrase the last sentence of the commit log a bit. It's a little
> unclear why the patch should be reverted, e.g.:
>
> - turns out that logging with gt_err() causes CI to pick up an error
>   even in intentional error injects,
> - the unintentional (real) errors are already reported correctly by CI,
> - a gt wedge is already being logged without this patch, so we should
>   revert the new message instead of, for example, relaxing the loglevel.
>
> I obviously have the context on this so I know exactly what's happening,
> but the maintainers might not be as familiar with the issue, so going
> into more detail in the patch log would be good.
>
> Thanks
> Krzysztof

Thank you for the review, I sent a second version with a corrected
commit message.

--=20
Best regards,
Sebastian Brzezinka

